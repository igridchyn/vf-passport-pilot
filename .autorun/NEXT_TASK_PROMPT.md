You are continuing the autonomous execution of the **PassportPilot validation track (docs/planning/validation-plan.md)** in this repository. Work the **single next open item to completion in this session, then stop** — a fresh session is opened for each item.

**First action: invoke the `autorun:item` skill** (`/autorun:item`). It carries the per-item sequence, the control-signal contract and the state-file roles, and tells you to read `.autorun/POLICY.md` (this repo's boundaries, guardrails and conventions). Then read, in order:

1. `.autorun/state/CURRENT_TASK.md` — resume state and the last checkpoint (may not exist yet on the first item).
2. The CURRENT ITEM block below — what this session's item is.
3. The plan documents it names.

`.autorun/LEDGER.md` is the one-line-per-item history. **Do not read it as part of an item** — `git log` has the detail if you need it.

<!-- ===== CURRENT ITEM — step 11 replaces ONLY this block; change nothing else in this file ===== -->
<!-- kind: comms -->
<!-- item: FD.4 -->
**FD.4 — Outreach kit: WeChat post, DM, forum post, partner pitch, follow-ups, tracker** · lane **comms**
- Plan: `autorun-plan show FD.4` (docs/planning/validation-plan.md).
- Operator's part (30 min): Adapt the voice and approve the kit
- Hand-off (2026-10-06): FD.2 drafts are committed (23d9b8e) and waiting on comms card M-002.
  Reuse their wording; do not re-derive it.
  - The offer, price and early-access lines are in `site/en/index.html` and `site/index.html`.
  - The zh-CN no-payment line is tied to "尚未上线 / 无法购买", never 现阶段不收取 (it reads as
    "free for now"). Keep "whether it launches has not been decided".
  - The pre-pay question's fixed wording is `docs/outreach/form.md` P1 (zh-CN + EN); PREREG-F
    §3.3 says FD.4 uses it.
  - The LOI is `docs/outreach/loi.md`.
  - The first 1:1 message carries the offer, the price and the three qualification questions
    (PREREG-F §2.2).
  - Form links carry `?ch=<code>` per channel.
  - The tracker has aggregate columns only, as in PREREG-F §4. It holds no names and lives
    outside the repo; the repo gets a template only.
  - Partners are named nowhere in public copy. The channel list is
    `docs/outreach/channels.md`; M-001 is still open.
  - Run the claims audit as a read-only subagent; it caught 2 blockers on FD.2.
<!-- ===== END CURRENT ITEM ===== -->

Begin with the skill, then the reads, then the current item.
