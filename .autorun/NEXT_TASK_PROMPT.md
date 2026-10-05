You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: default -->
<!-- item: wait -->
**Nothing is eligible.** Waiting on the operator: A-001, D-001, D-002, D-003, M-001. At session start run `autorun-plan card inbox`, then `autorun-plan next`; if it still says wait, write PAUSE.
- Hand-off from MV.1: D-003 (non-blocking) is an FYI for D-002's price. If D-002 is answered
  first, close D-003 as "keep". If the answer is "reconsider", apply it together with D-002/D-001.
  The proxy refused all page fetches again, so the starred sources in
  `docs/research/2_spec_open_items.md` §6 still need a full read before the build.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
