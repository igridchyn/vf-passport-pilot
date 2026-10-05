You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: impl -->
<!-- item: wait -->
**Nothing is eligible.** Waiting on the operator: A-001, A-002, D-001, M-001, M-002, M-003, M-004. At session start run `autorun-plan card inbox`, then `autorun-plan next`; if it still says wait, write PAUSE.
- Hand-off (2026-10-06): FD.3 runbook card A-002 is open (blocking; FD.3 stays not done, founder-owned).
  When any card is answered, `autorun-plan card inbox` then `autorun-plan next` renders the
  `card:<ID>` item. Applying A-002 (`done`): log the URLs, check result and ECB rate in the
  decision log; fill `{{FORM_URL}}` in `site/` and `{{PAGE_URL}}`/`{{FORM_URL}}` in
  `docs/outreach/` (public addresses only; never the founder's identity details or e-mail);
  apply the reviewer's listed corrections; `autorun-plan card close A-002 --done-task`.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
