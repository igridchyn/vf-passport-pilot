You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: comms -->
<!-- item: handoff:CH.2 -->
**Hand off CH.2 — Recruit a Chinese-speaking channel partner** (the operator's own task).
- Open the runbook card: `autorun-plan card new --type comms --task CH.2 --blocking …` with exact steps and commands. Do not do the task.
- Plan: `autorun-plan show CH.2` (docs/planning/validation-plan.md).
- Operator's part (180 min): Approach the picked partners with the pitch; agree a co-run in writing
- Hand-off (2026-10-06): FD.4 is committed (21f2da3); comms card M-003 is open, and M-001 (which
  partners to approach, and the test-C reading) is still open. Write a runbook card only.
  - Pitch and co-run confirmation: `docs/outreach/partner-pitch.md` §1–§2. Send with the
    confirmation: `kit.md` §2b (the introduction) and §6 (the short answers).
  - Who to approach: `docs/outreach/channels.md` §5, wave 1, pending M-001. Overlap rows get the
    〔overlap〕 paragraph. No RP-brokerage mention to EU-rep agents.
  - Terms: introduce 1:1 only; no group chats; no forwarding of contact cards; no seller data;
    no commission or outcome pay (a fee goes on a cost card first); no post-G1 promise; never
    named in public.
  - Record: "partner P[n] agreed on [date]" in the decision log, as an aggregate with no names.
    Each partner gets its own `?ch=P[n]` link.
  - Steps depend on M-001 and M-003 being answered; say so on the card.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
