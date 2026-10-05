You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: comms -->
<!-- item: FD.2 -->
**FD.2 — Landing page (zh-CN + EN) and non-binding LOI, draft** · lane **comms**
- Plan: `autorun-plan show FD.2` (docs/planning/validation-plan.md).
- Operator's part (30 min): Review the page and LOI copy; mark changes
- Hand-off (2026-10-05): PREREG-F is **approved** (D-002, decision log #11) and binding. The
  page and LOI follow it exactly: the price is €249/yr for up to 10 products (§1.2), with the
  early-access wording of §1.3, the honesty rules of §7 and the after-test notices of §10.
  Tally is linked, not embedded. The copy must not name any partner or RP provider. Do not
  edit PREREG-F; a change is a new card. D-003 = keep (#12): Sevarto is in R1 §3, and the copy
  must not claim to be the only tool. D-001 is still open, and the price rests on "continue".
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
