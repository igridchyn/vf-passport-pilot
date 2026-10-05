You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: research -->
<!-- item: MV.1 -->
**MV.1 — Desk-verify the build spec's open items** · lane **auto**
- Plan: `autorun-plan show MV.1` (docs/planning/validation-plan.md).
- Hand-off from CH.1:
  - `docs/spec-pack.md` is not imported yet (S0 / card A-001 open). Work from the item list
    in the plan section itself, and say in the doc that the spec's own wording was not seen.
  - The proxy refused page fetches in R1, FD.1 and CH.1, so expect snippet-only evidence.
    Tag accordingly. For the SP-API attributes, prefer developer-docs / GitHub
    selling-partner-api-models search results.
  - The manual-cost estimate must be non-vendor. R1 §3 vendor prices are not it.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
