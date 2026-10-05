# tracker.md — Aggregate tracker template for the fake-door test, draft

Date: 2026-10-06. **Status: draft**, for the founder's review on the FD.4 comms card. Task
FD.4 (`docs/planning/validation-plan.md`). Serves test **D** (the counts the bar is computed
on) and test **C** (counts by channel and partner). Definitions are PREREG-F §2–§4, not
repeated here.

**Aggregate columns only.** The template `tracker-template.csv` has one row per **week ×
channel code** and holds numbers, never names, shop names, contacts or messages (hard rule 2).
Fill it in your own spreadsheet, **outside the repo**. The repo gets only the weekly line in
the decision log (below) and, at G1, the diagnostics table.

**Your own per-seller record stays outside the repo.** To number sellers and count each
business once (PREREG-F §2.3, §3.4) you need a private list in your own files. It needs only:
the number, the timestamp of the qualifying answer, the channel code, the route (1:1 or form),
qualified yes/no, the void ground if any, the shop name (for de-duplication only), and the
signals (contact left, LOI confirmed, pre-pay confirmed, unconfirmed form LOI or pre-pay,
price objection). Delete it on the schedule of PREREG-F §6.3. No template for it is kept in
the repo.

## Columns (`tracker-template.csv`)

Counts are for that week and that channel code (`kit.md` §5). A seller keeps the first
channel they came through.

**The weekly rows are provisional.** A void found later (a duplicate, a self-correction)
moves number 51 into the 50, and shifts signals between "among the 50" and "after the 50".
Do not correct past rows; note the change in the next weekly line. **At G1, D and every
"among the 50" figure are recomputed from your private per-seller list**, not summed from
the weekly rows (PREREG-F §2.3, §3.4).

| Column | Counts (PREREG-F) |
|---|---|
| `week`, `week_start` | week 1 starts on the day the first outreach message goes out (§9) |
| `channel` | `DM`, `P1` …, `WG1` …, `BB1` …, `E1` …, `web`, `X` |
| `first_1to1_sent` | standard first messages sent (`kit.md` §2) — funnel above the 50 (§4) |
| `replies_1to1` | sellers who replied to a first message |
| `unqualified_1to1` | 1:1 replies whose answers do not qualify (§2.1) |
| `form_submissions` | all form submissions with this code |
| `form_not_qualified` | form submissions that do not qualify |
| `reached_1to1`, `reached_form` | non-void sellers numbered this week **within the 50**, by the route of the qualifying answer (§2.2–§2.3); sellers after the 50 go only in `reached_after_50` |
| `void_duplicate`, `void_excluded`, `void_self_corrected`, `void_pre_outreach` | voids by ground 1–4 (§2.3) |
| `contact_left_1to1`, `contact_left_form` | among the 50: on the form, gave one contact and ticked T1; in 1:1, explicitly agreed to be contacted at launch (§3.1). An open WeChat chat alone is not a contact left |
| `loi_confirmed` | among the 50: LOIs confirmed in writing in 1:1 this week (§3.2) |
| `prepay_confirmed` | among the 50: written "yes" to the pre-payment question this week (§3.3) |
| `counting_businesses_1to1`, `counting_businesses_form` | among the 50: businesses whose **first** counting signal was confirmed this week, split by the route through which the seller was **reached** (§2.2, §3.4; one per business) |
| `unconfirmed_form_loi`, `unconfirmed_form_prepay` | among the 50: form LOI signatures and pre-pay "yes" ticks not (yet) confirmed in 1:1 (§4) |
| `price_objections` | LOIs or answers that changed the price or scope (§3.2; `kit.md` FU6) |
| `reached_after_50`, `signals_after_50` | sellers numbered after the 50, and their counting signals, kept apart (§2.3) |

**Among the 50** means the first 50 non-void numbers. Until number 50 is assigned, every
non-void seller is among them.

## The weekly line for the decision log

Copy, fill, and append under the week's date (aggregate only):

> **Fake door, week [n] ([start]–[end]).** Reached this week [r] (1:1 [a], form [b]);
> cumulative [R] / 50. Counting businesses this week [s] (cumulative [S]): LOIs confirmed
> [l], pre-pay confirmed [p]. Contacts left [c]. Unconfirmed form signals: LOI [u1],
> pre-pay [u2]. Voids [v] (by ground: [v1]/[v2]/[v3]/[v4]). Funnel: first messages [m],
> replies [y], unqualified replies [q], form submissions [f] of which not qualified [fq]. By
> channel: [code: reached / counting], …. Price objections [o]. Deletions on request [d].
> Changes to earlier weeks (late voids): none / [what]. Deviations: none / [what].

**Stopping.** Outreach may stop once PASS is fixed (§3.4); nothing else stops the test early.
Keep the weekly lines until the window ends.

## At G1: the result and the diagnostics

**D** (`decisive-test.md`; PREREG-F §3.4): counting businesses among the 50, out of 50.
**PASS** when at least 5 and the 50 are complete; **FAIL** when the window ends with fewer than
50 non-void sellers reached or fewer than 5 counting businesses among the 50. Report beside it
(§4): D by route; D with voids left in place as non-signals; D without the partner code with
the most counting businesses; signal type (LOI only / pre-pay only / both); reached and
signals after the 50.

Diagnostics among the 50, as counts per value (from the form and 1:1 answers):

| Diagnostic | Values (PREREG-F §4) | Count per value |
|---|---|---|
| Marketplaces | Amazon EU · eBay EU · Etsy · Temu · AliExpress · Kaufland · Cdiscount · Allegro · OTTO · bol · Zalando · other · own store (multi) | |
| Launch category | textiles and apparel · furniture · jewellery (multi) | |
| Products to cover | 1 · 2–10 · 11–50 · more than 50 | |
| Current GPSR or EU-rep provider | none · RP or EU-rep only · one-stop agent bundle · the marketplace's own service · test lab · other · don't know | |
| Price paid per year | nothing · under ¥600 · ¥600 to under ¥[B1] · ¥[B1] to ¥[B2] · above ¥[B2] · don't know | |
| Price reaction | too high · about right · low · no view | |
| Reason for no | price · already covered by provider · not needed · distrust · timing · other | |
