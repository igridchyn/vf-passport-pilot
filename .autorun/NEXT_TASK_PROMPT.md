You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: research -->
<!-- item: R1 -->
**R1 — Feasibility refresh (run 3) as a dated delta, incl. test P** · lane **decision**
- Plan: `autorun-plan show R1` (docs/planning/validation-plan.md).
- Operator's part (15 min): Read the delta and test P's status; continue / adjust / stop
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
