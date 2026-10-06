#!/usr/bin/env bash
# FD.3b: make the deploy copy of site/ that the founder fills and uploads (card A-002, steps 1-6).
# It writes only to the target folder, which must be outside the repo: the filled copy holds
# the operator's identity details, and the repo never does (hard rule 2). It deploys nothing.
set -euo pipefail

usage() {
  echo "usage: bash scripts/make-deploy-copy.sh <new folder outside the repo> [--form-url https://tally.so/r/<id>]" >&2
  exit 2
}

repo=$(CDPATH='' cd -P -- "$(dirname -- "$0")/.." >/dev/null && pwd -P)
[[ -d $repo/site ]] || { echo "error: no site/ folder in $repo" >&2; exit 1; }
target='' form_url='' form_flag=''
while (($#)); do
  case $1 in
    --form-url) (($# >= 2)) || usage; form_url=$2; form_flag=1; shift 2 ;;
    --form-url=*) form_url=${1#*=}; form_flag=1; shift ;;
    -*) usage ;;
    *) [[ -z $target ]] || usage; target=$1; shift ;;
  esac
done
[[ -n $target ]] || usage

# Resolve symlinks, including for a folder that does not exist yet.
abs=$(python3 -c 'import os, sys; print(os.path.realpath(sys.argv[1]))' "$target")
inside() {
  echo "refused: $abs is inside the repo ($repo). The filled copy must live outside it (hard rule 2)." >&2
  exit 1
}
[[ $abs == "$repo" || $abs == "$repo"/* ]] && inside
# Same folder under another spelling (case-insensitive disks, bind mounts): compare by inode.
p=$abs
while :; do
  [[ -e $p && $p -ef $repo ]] && inside
  [[ $p == / ]] && break
  p=$(dirname -- "$p")
done
if [[ -e $abs ]] && { [[ ! -d $abs ]] || [[ -n $(ls -A "$abs") ]]; }; then
  echo "refused: $abs exists and is not an empty folder. Choose a new folder, so a filled copy is never overwritten." >&2
  exit 1
fi
# A bare https URL: the page appends ?ch=web to it, and it goes into a perl replacement.
if [[ -n $form_flag && ! $form_url =~ ^https://[A-Za-z0-9./_~-]+$ ]]; then
  echo "refused: --form-url must be a plain https:// link with no ? or # (the page adds ?ch=web): $form_url" >&2
  exit 1
fi

if [[ -n $(git -C "$repo" ls-files --deleted -- site) ]]; then
  echo "error: tracked files under site/ are deleted in your checkout; restore them first (git checkout -- site)." >&2
  exit 1
fi
commit=$(git -C "$repo" rev-parse --short HEAD)
branch=$(git -C "$repo" rev-parse --abbrev-ref HEAD)

# Tracked files only (working-tree versions), so no stray local file gets uploaded.
mkdir -p "$abs"
git -C "$repo" ls-files -z -- site | xargs -0 tar -C "$repo" -cf - | tar -xf - -C "$abs" --strip-components=1

# Internal review notes out of the page source: zh-check, DRAFT and FD.3 comments only.
# A comment alone on its line(s) goes with its line; a trailing one goes on its own.
comments() { cat "$abs"/*.html "$abs"/en/*.html | { grep -o '<!--' || true; } | wc -l | tr -d ' '; }
before=$(comments)
# (?:(?!-->).)* stops at the comment's own end, so no match can run on into page text.
perl -0777 -pi -e '
  s/^[ \t]*<!--\s*(?:zh-check|DRAFT|FD\.3[a-z]?)\b(?:(?!-->).)*-->[ \t]*\n//gms;
  s/<!--\s*(?:zh-check|DRAFT|FD\.3[a-z]?)\b(?:(?!-->).)*-->//gs;
' "$abs"/*.html "$abs"/en/*.html
after=$(comments)

if [[ -n $form_url ]]; then
  FORM_URL=$form_url perl -pi -e 's/\{\{FORM_URL\}\}/$ENV{FORM_URL}/g' "$abs/index.html" "$abs/en/index.html"
fi

echo "Copied site/ from $branch @ $commit to $abs"
if [[ -n $(git -C "$repo" --no-optional-locks status --porcelain -- site) ]]; then
  echo "WARNING: site/ has uncommitted changes in the repo; they are in the copy too."
fi
echo "Removed $((before - after)) review comments (zh-check / DRAFT / FD.3); $after other comments remain."
[[ -n $form_url ]] && echo "Filled {{FORM_URL}} with $form_url (the button links to it with ?ch=web)."

echo
echo "Placeholders left to fill by hand (A-002 step 3):"
left=$(cd "$abs" && grep -rnE 'class="placeholder"|\{\{|example\.com' . | sed 's#^\./##' || true)
if [[ -n $left ]]; then
  spans=$(cat "$abs"/*.html "$abs"/en/*.html | { grep -o 'class="placeholder"' || true; } | wc -l | tr -d ' ')
  echo "($(wc -l <<<"$left" | tr -d ' ') lines; $spans placeholder spans, some lines hold more than one)"
  echo "$left"
else
  echo "  none"
fi

echo
echo "Step 6, after filling: compare with a fresh copy, so only your fills show:"
base_cmd="base=\$(mktemp -d)/site && bash $(printf %q "$repo/scripts/make-deploy-copy.sh") \"\$base\""
[[ -n $form_url ]] && base_cmd+=" --form-url $(printf %q "$form_url")"
echo "  $base_cmd >/dev/null && diff -r \"\$base\" $(printf %q "$abs") | less"
