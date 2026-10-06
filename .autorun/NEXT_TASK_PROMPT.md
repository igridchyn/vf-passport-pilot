You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: impl -->
<!-- item: wait -->
**Nothing is eligible.** Waiting on the operator: A-002, D-001, M-001, M-002, M-003, M-004, M-005, M-006. At session start run `autorun-plan card inbox`, then `autorun-plan next`; if it still says wait, write PAUSE.
- Hand-off from FD.3b (decision log #20): the publish kit is committed (121c94e).
  - The kit: `scripts/make-deploy-copy.sh` (smoke test `scripts/test-make-deploy-copy.sh`),
    `docs/outreach/tally-paste.md` and `docs/outreach/privacy-safeguard-options.md`.
  - A-002 now points to the kit in steps 1, 3, 4, 6 and 7. A-002 stays open and blocking.
  - **Applying M-006:** log the founder's privacy §5 choice (A / B / C / D / D+A / D+B) in
    the decision log.
    - B: draft tick T3 + the first-message line into `form.md`, `tally-paste.md` and the
      FD.4 kit on a comms card.
    - C: open a PREREG-F change card (protected file).
    - Never write the founder's providers or identity details into `site/`.
  - **Applying M-002** (if it edits `form.md` or `loi.md`): regenerate `tally-paste.md` in
    the same change (sections C and D), and re-check it line by line against both files.
  - **Applying A-002** (`done`): as in decision #15. If the ECB rate used is not dated the
    publication day, log it as a deviation from PREREG-F §4 (decision #20).
  - The textile/jewellery scope question (#19) stays with E0.1.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
