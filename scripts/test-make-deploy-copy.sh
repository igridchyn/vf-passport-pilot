#!/usr/bin/env bash
# FD.3b smoke test for scripts/make-deploy-copy.sh, on temp folders outside the repo.
set -euo pipefail
CDPATH='' cd -P -- "$(dirname -- "$0")/.." >/dev/null
repo=$(pwd -P)
script=scripts/make-deploy-copy.sh
t=$(mktemp -d)
trap 'rm -rf "$t"' EXIT
export TMPDIR=$t   # the printed step-6 command's mktemp lands here too
fail() { echo "FAIL: $*"; exit 1; }
refused() {  # refused <what> <args…>: exit status 1 with a "refused:" message, not a crash
  local what=$1 rc=0 err; shift
  err=$(bash "$script" "$@" 2>&1 >/dev/null) || rc=$?
  [[ $rc == 1 && $err == refused:* ]] || fail "$what (exit $rc: $err)"
}

# Refusals: inside the repo (directly and through a symlink), a non-empty folder, a bad form URL.
refused "target inside the repo" "$repo/deploy-test"
[[ ! -e $repo/deploy-test ]] || fail "created a folder inside the repo"
ln -s "$repo" "$t/link"
refused "symlinked target inside the repo" "$t/link/deploy-test"
mkdir "$t/full" && touch "$t/full/x"
refused "non-empty target" "$t/full"
for bad in '' http://tally.so/r/x 'https://tally.so/r/x?ch=web' 'https://tally.so/r/x#a' 'https://x/$(id)'; do
  refused "--form-url '$bad'" "$t/bad" --form-url "$bad"
done
[[ ! -e $t/bad ]] || fail "created a folder for a refused --form-url"

# Plain copy: the tracked files of site/; text equals site/ with the three comment kinds
# removed by an independent implementation; nothing else touched.
out=$(bash "$script" "$t/plain")
diff <(git ls-files -- site | sed 's#^site/##' | sort) <(cd "$t/plain" && find . -type f | sed 's#^\./##' | sort) \
  || fail "file set differs from the tracked files of site/"
python3 - "$t/plain" <<'EOF' || fail "copy differs from site/ beyond the review comments"
import pathlib, re, subprocess, sys
copy = pathlib.Path(sys.argv[1])
review = re.compile(r'<!--\s*(?:zh-check|DRAFT|FD\.3[a-z]?)\b.*?-->', re.S)
def norm(s):  # drop review comments, then whitespace-only lines and trailing blanks
    return [l.rstrip() for l in review.sub('', s).splitlines() if l.strip()]
for name in subprocess.run(['git', 'ls-files', 'site'], capture_output=True, text=True, check=True).stdout.split():
    src = pathlib.Path(name)
    a, b = src.read_text(), (copy / src.relative_to('site')).read_text()
    if src.suffix == '.html' and norm(a) != norm(b) or src.suffix != '.html' and a != b:
        sys.exit(name)
EOF
grep -rqE '<!--[[:space:]]*(zh-check|DRAFT|FD\.3)' "$t/plain" && fail "review comments left"
grep -q '{{FORM_URL}}?ch=web' "$t/plain/index.html" || fail "{{FORM_URL}} filled without --form-url"
grep -q '^imprint.html:[0-9]*:.*class="placeholder"' <<<"$out" || fail "placeholder list misses imprint.html"

# Form URL filled in both languages, with ?ch=web kept.
out=$(bash "$script" "$t/form" --form-url https://tally.so/r/TEST01)
for f in index.html en/index.html; do
  grep -q 'href="https://tally.so/r/TEST01?ch=web"' "$t/form/$f" || fail "form URL not filled in $f"
done
grep -rq '{{' "$t/form" && fail "{{…}} left after --form-url"

# The printed step-6 command: runs cleanly and shows nothing on an unfilled copy…
cmd=$(grep 'diff -r' <<<"$out" | sed 's/ | less$//; s/^ *//')
[[ -n $cmd ]] || fail "no step-6 diff command printed"
res=$(bash -c "$cmd" 2>&1) || fail "step-6 command failed on an unfilled copy: $res"
[[ -z $res ]] || fail "step-6 diff not empty on an unfilled copy: $res"
# …and shows a fill, and only that.
echo 'FILLED-BY-FOUNDER' >>"$t/form/imprint.html"
rc=0; res=$(bash -c "$cmd" 2>&1) || rc=$?
[[ $rc == 1 && $res == *FILLED-BY-FOUNDER* ]] || fail "step-6 diff misses a fill (exit $rc): $res"
[[ $(grep -c '^[<>]' <<<"$res") == 1 ]] || fail "step-6 diff shows more than the fill: $res"

echo "make-deploy-copy smoke test: ok"
