You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: research -->
<!-- item: FD.3a -->
**FD.3a — EUR-Lex check of the page's GPSR claims (A-002 gate 3)** · lane **auto**
- Plan: `autorun-plan show FD.3a` (docs/planning/validation-plan.md).
- Queued by the founder (2026-10-06, decision log #18): FD.3a then FD.3b prepare A-002 (EUR-Lex
  gate 3, then the publish kit). Neither deploys, buys or contacts anything; A-002 stays open
  and blocking, FD.3 stays founder-owned.
- Applying A-002 (`done`) later: log the URLs, check result and ECB rate in the decision log;
  fill `{{FORM_URL}}` in `site/` and `{{PAGE_URL}}`/`{{FORM_URL}}` in `docs/outreach/` (public
  addresses only; never the founder's identity details or e-mail); apply the reviewer's listed
  corrections; `autorun-plan card close A-002 --done-task`.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
