You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: comms -->
<!-- item: FD.3b -->
**FD.3b — Publish kit: deploy-copy script, Tally paste text, safeguard drafts** · lane **comms**
- Plan: `autorun-plan show FD.3b` (docs/planning/validation-plan.md).
- Hand-off from FD.3a (decision log #19): L1 and the marketplace statement are confirmed
  against the OJ text. L5 was reworded in `site/` ("What PassportPilot is not", now with an
  Art. 2(1) limit and a 2019/1020 Art. 4 link), and comms card M-005 (non-blocking) asks the
  founder to approve it. A-002's gate 3 counts as met only once M-005 is approved. The deploy
  copy must take the current `site/`, and the Tally text must not restate L5 in its old form.
  Leave the textile/jewellery scope question (decision #19) to E0.1. Do not put it in public copy.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
