You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: impl -->
<!-- item: handoff:FD.3 -->
**Hand off FD.3 — Publish the landing page** (the operator's own task).
- Open the runbook card: `autorun-plan card new --type act --task FD.3 --blocking …` with exact steps and commands. Do not do the task.
- Plan: `autorun-plan show FD.3` (docs/planning/validation-plan.md).
- Operator's part (90 min): Decide the cost items, get the zh-CN copy checked, deploy, wire the form, check it loads from China, answer with the URL
- Hand-off (2026-10-06): CH.2 runbook card M-004 is open (blocking; CH.2 stays not done,
  founder-owned). FD.3 is an act card only: write the runbook, do not deploy.
  - Gates on the card: M-002 (page, form, LOI, privacy notice) approved; D-001 answered;
    native-speaker check of every [zh-check] line (a partner from M-004 can do it free;
    a paid reviewer is a cost card).
  - Cost items and the free alternatives: PREREG-F §5.4 (domain ~US$10.44 first year
    [plausible, secondary]; native review: quote needed). Hosting: PREREG-F §5.2 recommends
    Cloudflare Pages + custom domain (default subdomains reported blocked in China; Netlify
    custom domain as fallback). Operator identity (imprint, privacy) placeholders:
    `site/index.html:14`.
  - Form wiring: Tally hidden field `ch` (PREREG-F §5.1; `kit.md` §5 codes); the page's own
    button carries `web`. Fill {{FORM_URL}}/{{PAGE_URL}} placeholders listed in `site/` and
    `docs/outreach/`.
  - China load check by a partner or a mainland test; answer with the public URL only
    (no account details, no secrets).
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
