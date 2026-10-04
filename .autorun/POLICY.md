# vf-passport-pilot autorun policy

Read in full at step 0 of every autorun item (the `autorun:item` skill says so). The skill
carries the generic procedure; this file carries what is this repo's own, and **where the two
disagree, this file wins.** `CLAUDE.md` (hard rules, founder zones, definition of done) binds
every item and outranks this file.

## Plan documents

- The plan the loop drives: `docs/planning/validation-plan.md`, as tasks in
  `.autorun/backlog.json`. `autorun-plan next` picks the item; `autorun-plan show <task>`
  prints its section. A task is done when `autorun-plan done` records it with the close-out
  commit.
- The gate: `docs/planning/decisive-test.md` (protected). The loop stops at G1; E0.1 waits for
  the founder's GO. No product code in this phase; the static landing page is the test.
- Decisions, scope shifts and recorded defects: `docs/planning/decision-log.md`
  (append-only, dated, numbered — continue the numbering). Until the founder imports the
  feasibility runs and the spec (S0), #5 there is the working summary.
- New docs: `docs/research/N_<topic>.md`, first line `# <filename> — <Title>`, then `Date:`.

## Lanes and approval boundaries

- **Public-facing work** (landing page, outreach texts, LOI, privacy notice) is the `comms`
  lane: draft, run `/claims-audit`, open the card, never publish or send. The independent
  verifier (REVIEW_ZONES `site/**`, `docs/outreach/**`) checks it against the same rubric.
- **PREREG-F** is a `decision` card (`--blocking`): draft with status *proposed*, log it, open
  the card. After approval it is protected; a change is a new card.
- **Founder-only tasks** (`owner: founder`: S0, CH.2, FD.3, FD.5, G1): write the runbook card
  with exact steps, nothing more.
- **Spend.** Nothing here costs money beyond the session budget. Any item with a price (domain,
  hosting tier, form tool tier, ads, seller lists, translation review, legal review) goes on a
  card with the price and a free alternative, for the founder.
- **Remote git.** Sessions never push or merge. The supervisor pushes each accepted item to
  `autorun/loop`; the founder merges to `main`. Never commit on `main`.

## Running jobs (step 7)

The acceptance check (also CHECK_CMD and CI): `bash scripts/check.sh`. It also trips on the
GPSR "€10M / 4%" myth in `site/` and `docs/outreach/`, and on any e-mail address in the repo
other than `@example.com` placeholders. To preview the page, open the HTML file; there is no
build step.

## Guardrails

**Enforced for you** by the guard (`.autorun/guard_rules.py`): no recursive deletes on `data/`,
`docs/planning/`, `site/` or outside the repo and `/tmp`; no `git push` / `git merge` /
`gh pr merge`; no mail clients or chat webhooks.

**Enforced by the supervisor's gate** (`autorun-gate --no-plan` shows it before you claim): no
change to this policy, the config, the backlog, CI, `scripts/check.sh`, `CLAUDE.md`,
`.claude/`, the decisive test or an approved PREREG-F (except a task's `allow_paths`); no
credential shapes in any commit.

**Enforced by the session settings** (`.autorun/settings.loop.json`): the protected files are
read-only even to subprocesses; `data/` and `.env*` are unreadable; the shell reaches PyPI only
(research uses WebSearch/WebFetch).

If one fires, it is right — change the approach, do not work around it.

**Yours to keep:** the seven hard rules in CLAUDE.md. In particular: never write a person's
name or contact; never imply the product exists, is certified, or is endorsed; never use a
penalty or deadline without a dated primary source.

## Conventions

- Commit subjects: `docs: R1 <what>` / `feat: FD.2 <what>` / `fix: …`, naming the task id.
- The commit body is CLAUDE.md's one paragraph: what changed, which test (D/P/C) it serves.
- Research: dated sources, inline links, each claim tagged [established] / [plausible] /
  [vendor claim]. Prefer primary sources (EUR-Lex, national gazettes, Seller Central help,
  vendor pricing pages) and say when only a snippet was available.
- Chinese copy: simplified Chinese, plain and concrete; mark every sentence a native speaker
  must check with `<!-- zh-check -->` in HTML or `[zh-check]` in Markdown.
- Cards must make sense alone: what was done, what the founder decides or does, the options,
  your recommendation, prices if any, and the minutes it takes.
