You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: design -->
<!-- item: card:D-002 -->
**Apply card D-002 — Approve PREREG-F: fake-door price and rules** (task FD.1).
- The operator answered: **A** — Founder approves the PREREG-F rules as drafted and delegated the price choice to Claude, who picks A: EUR 249/yr for up to 10 products (mid-band, so a PASS or FAIL is not an artefact of the band's edge; consistent with D-003 = keep). Mark PREREG-F approved.
- Read `.autorun/attention/D-002.md`, carry the answer out (autorun:item, *Cards*), then `autorun-plan card close D-002`.
- Operator (2026-10-05): this block names card:D-002 directly because a session that starts on
  `wait` does not get the card task's allow_paths from the gate (LESSONS.md, 2026-10-05).
  D-003 is answered too (keep); apply it here or as the next item.
  The proxy refused all page fetches again, so the starred sources in
  `docs/research/2_spec_open_items.md` §6 still need a full read before the build.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
