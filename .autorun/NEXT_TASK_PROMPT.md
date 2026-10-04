You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: design -->
<!-- item: FD.1 -->
**FD.1 — PREREG-F fake-door pre-registration (proposed)** · lane **decision**
- Plan: `autorun-plan show FD.1` (docs/planning/validation-plan.md).
- Operator's part (30 min): Approve or revise PREREG-F: offer, price, qualified seller, LOI definition, tools and their costs, data handling
- May touch protected paths: docs/planning/PREREG-F-fake-door.md
- Hand-off from R1 (provisional until card D-001 is answered; default "continue"): state the page
  price as one figure with a product-count scope ("€X/yr for up to N products") inside the
  €150–300/yr band; add "current compliance provider and price paid" as a reported diagnostic;
  record the Chinese EU-rep anchor (¥268–568/yr) and EUProof (€190/yr, 1 product) as known risks
  in the pre-mortem. See docs/research/1_feasibility_refresh.md §3–§5 and decision #7.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
