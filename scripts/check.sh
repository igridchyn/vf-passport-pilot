#!/usr/bin/env bash
# The acceptance check: the loop's CHECK_CMD and the CI job.
set -euo pipefail
cd "$(dirname "$0")/.."

# JSON parses; planning/research docs carry their title line.
for f in $(git ls-files '*.json'); do
  python3 -m json.tool "$f" >/dev/null || { echo "invalid JSON: $f"; exit 1; }
done
for f in $(git ls-files 'docs/planning/*.md' 'docs/research/*.md'); do
  head -1 "$f" | grep -q '^# ' || { echo "missing '# ' title line: $f"; exit 1; }
done

# Hard rule 4 tripwire in public-facing text: the GPSR "€10M / 4% of turnover" myth.
public=$(git ls-files 'site/*' 'docs/outreach/*')
if [[ -n "$public" ]] && grep -nEi '(€|eur|euro)? ?10 ?(m|mio|million)\b|4 ?% (of|des|vom)? ?(global |annual |worldwide )?(turnover|umsatz)|1000 ?万欧元|营业额(的)? ?4 ?%' $public; then
  echo "hard rule 4: GPSR penalty myth in public-facing text (see lines above)"; exit 1
fi

# Hard rule 2 tripwire: e-mail addresses in the repo outside an allowlist of role addresses.
if git ls-files -z | xargs -0 grep -nIE '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' -- 2>/dev/null \
   | grep -vE 'noreply@anthropic\.com|@example\.(com|org)|mssohelp|\.autorun/|scripts/check\.sh' ; then
  echo "hard rule 2: e-mail address in the repo (see lines above) — use a placeholder"; exit 1
fi
echo "check: ok"
