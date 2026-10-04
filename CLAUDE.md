# CLAUDE.md — standing instructions for every session

PassportPilot: a GPSR-first compliance copilot that drafts EU product-safety documentation
(GPSR technical file and risk analysis, multilingual warnings, marketplace listing safety
blocks) for Chinese sellers on EU marketplaces. The seller reviews and attests; the tool
does not certify. **Current phase: validation.** The work is the pre-code tests of the 2026
feasibility runs (`docs/planning/decisive-test.md`): a fake-door demand test with 50
qualified sellers, a platform-risk check, and channel-partner recruitment. No product code
is written before the founder records a GO at the gate (task G1). The fake-door landing page
*is* the test, so it is built. Any test may fail honestly; that is an accepted outcome.

## Required reading & document precedence

Before a task, read what it cites: `autorun-plan show <task>` prints its section of
`docs/planning/validation-plan.md`. On any conflict, precedence is:

1. `docs/planning/decisive-test.md` and an approved `docs/planning/PREREG-F-fake-door.md`
2. `docs/planning/decision-log.md` (dated, append-only)
3. `docs/planning/validation-plan.md`
4. `docs/spec-pack.md` (the six-module build spec, once imported — task S0)
5. `docs/background/` — **archival evidence** (feasibility runs). Use for market-facing work
   and the refresh; never cite it for an implementation choice or a number without
   re-checking the primary source.

## Commands

```bash
bash scripts/check.sh            # the acceptance check (CI runs the same)
```

## HARD RULES — never violate; on conflict, stop and ask the founder

1. **Never contact anyone.** The loop drafts; the founder (or a partner the founder recruits)
   sends every message, posts in every group and holds every conversation. No scraping of
   seller contact data. Target lists name organisations, channels and role titles only.
2. **No personal data in the repo or sessions.** No names, emails, phone numbers or WeChat
   IDs of sellers or partners. Form submissions and replies live in the founder's own tools,
   outside the repo (`data/` is gitignored and unreadable to the loop); the repo gets
   aggregate counts only.
3. **An honest fake door.** Every page and message says the product is in development and
   offers early access; no payment is taken; no invented testimonials, customer counts,
   logos, partner names, certifications or endorsements; nothing implies Amazon or any
   marketplace endorses PassportPilot.
4. **Regulatory accuracy.** Never write "€10M / 4% of turnover" for GPSR (penalties are
   national), never present 19 July 2026 or any DPP date as a seller obligation that has
   arrived, never state a deadline or fine without a primary source (EUR-Lex, national
   gazette, official marketplace documentation). GPSR now, DPP later.
5. **Tooling, not certification.** Never describe PassportPilot as certifying products,
   giving legal advice, acting as the EU Responsible Person, or signing Declarations of
   Conformity. Responsible-Person services are brokered through partners.
6. **No spend.** Anything that costs money — a domain, a paid hosting tier, ads, a seller
   list, translation or native-speaker review, a lawyer, a paid API, a pre-pay checkout —
   is a decision card for the founder, never done by the loop.
7. **No secrets** in code, config, commits or logs.

## FOUNDER-REVIEW-REQUIRED zones

Everything that will be seen outside the repo: the landing page (`site/`), outreach and
partner messages, the LOI template, the privacy notice (`docs/outreach/`). The independent
verifier checks them against `/claims-audit`; the founder approves each on its card before
anything is published or sent. PREREG-F is a blocking decision card.

## FREELY DELEGABLE zones

Desk research, competitor and channel mapping, drafting, the static landing page's markup
and styling, CI, scripts, docs.

## Definition of done — every task

- `bash scripts/check.sh` passes.
- Claims carry dated sources and an epistemic tag ([established] / [plausible] /
  [vendor claim]); public-facing text passes `/claims-audit`.
- Decisions and deviations are in `docs/planning/decision-log.md`.
- The commit body is one paragraph: what changed and which test (D demand / P platform /
  C channel) it advances.

## Style

- Plain static HTML/CSS for the landing page (no build step, no trackers, no third-party
  scripts unless a card approved them). Simplified Chinese first, English second.
- Every number in public copy comes from a cited source or from PREREG-F.

## Audit commands

- `/claims-audit` (`.claude/commands/claims-audit.md`): honesty, regulatory accuracy,
  tooling-not-certification and personal-data checks for anything public-facing.
