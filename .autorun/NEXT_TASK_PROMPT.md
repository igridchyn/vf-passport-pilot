You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: research -->
<!-- item: CH.1 -->
**CH.1 — Channel-partner map (organisations and roles only) + BD-partner profile** · lane **comms**
- Plan: `autorun-plan show CH.1` (docs/planning/validation-plan.md).
- Operator's part (20 min): Pick the partners to approach; names stay in your own tracker
- Hand-off from R1 / FD.1:
  - Order the map as in docs/research/1_feasibility_refresh.md §4: SPN-listed VAT/EPR/EU-rep
    agents first, then ERP compliance arms, then test labs; associations for credibility.
    This order is provisional on card D-001.
  - PREREG-F (proposed, card D-002 blocking) sets the partner terms CH.1 should describe:
    - partners only introduce sellers and share a channel-coded form link; they never hold
      seller data or LOIs (§2.2, §6.2);
    - pay is never tied to the outcome, so no per-LOI pay and no revenue share that depends
      on a GO; a fixed fee is a cost card (§5.1);
    - a deal for after the gate is negotiated only after G1.
    The BD-freelancer profile must not recommend per-LOI or revenue-share pay for the test.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
