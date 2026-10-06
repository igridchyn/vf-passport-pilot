You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: impl -->
<!-- item: wait -->
**Nothing is eligible.** Waiting on the operator: A-002, M-001, M-003, M-004, M-005, M-007. At session start run `autorun-plan card inbox`, then `autorun-plan next`; if it still says wait, write PAUSE.
- Hand-off from the D-001 / M-002 / M-006 session (decision log #21): all three are applied
  and closed; privacy §5 = paragraph H + option D + option B (chosen by Claude on the founder's
  delegation; the founder confirms on A-002).
  - New comms card **M-007** (non-blocking, but a fourth gate on A-002): T3 in `form.md` and
    `tally-paste.md`, the WeChat consent paragraph in `kit.md` §2a and rule 15.
  - **Applying M-007:** `approve` closes it. `changes` means edit `form.md`, then regenerate
    `tally-paste.md` (T3 block, setup checklist and zh extract) and re-check it against `form.md`,
    then `kit.md` §2a. `hold` opens a cost card for a legal review.
  - **Applying M-003** (if it edits `kit.md`): keep rule 15 and §2a consistent with M-007.
  - **Applying A-002** (`done`): as in decision #15. If the ECB rate used is not dated the
    publication day, log it as a deviation from PREREG-F §4 (decision #20). If the founder
    changes the §5 choice, redraft T3 and §2a on a new card.
  - The textile/jewellery scope question (#19) stays with E0.1.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
