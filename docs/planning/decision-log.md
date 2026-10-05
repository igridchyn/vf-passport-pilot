# decision-log.md — PassportPilot decisions

Date: 2026-10-05. Append-only, dated, numbered. A decision that changes the decisive test is
the founder's alone. Entries marked *(delegated)* were taken by Claude under the founder's
standing delegation of 2026-10-02 ("make any decisions yourself unless they involve costs")
and stand unless the founder overrides them on a card.

## 2026-10-05

**#1 — First phase: validation only** *(delegated)*. Both feasibility runs (June 2026 and
15 July 2026) gate any code on pre-code tests. The loop runs them and stops at G1; the
landing page is built because it is the test. The product build is planned after a GO (E0.1).

**#2 — Decisive test pre-registered** *(delegated; the founder may revise before the first
outreach)*. `decisive-test.md`: D (≥5 of the first 50 qualified sellers sign a non-binding
LOI or state pre-pay intent at €150–300/yr; contact rate reported as a diagnostic) is
decisive; P (platform risk) and C (a channel partner) feed the gate. Thresholds are the
runs' own; the 4-week window (+ one logged 2-week extension) is set here because the runs
give only "Stage 0, weeks 1–3" for the tests.

**#3 — Process** *(delegated)*. claude-autorun v0.3, permission mode `auto` with the Bash
sandbox; the supervisor pushes each accepted item to `autorun/loop`; `main` is the
founder's. No GitHub paid plan, no branch protection. CI runs `scripts/check.sh` on push.

**#4 — Source documents not yet in the repo.** The two feasibility runs and the build spec
are claude.ai artifacts; S0 (founder, ~15 min) imports them. Until then this log's #5 is the
working summary.

**#5 — Working summary of the feasibility runs (to re-check in R1; not a source).**
Verdict: conditional GO on a GPSR-first pivot; DPP is the later expansion story, never the
urgency hook. The 19 July 2026 date is the Commission's registry obligation (ESPR Art. 13),
not a seller duty; battery passport from 18 Feb 2027; textiles realistically 2028+. GPSR
(Reg. 2023/988) has applied since 13 Dec 2024; penalties are national (run 2 cites DE ProdSG
up to €100k and IT D.Lgs 78/2026 €10k–150k). Amazon enforces through Manage Your Compliance
and has free native GPSR fields; Etsy too. Run 2's platform signals: Amazon's Munich Safety
Day (May 2026) discussed DPPs; AWS published an agentic-DPP reference architecture; no native
full-DPP seller product yet. Competitors (vendor-reported): RP services ~€195–549/yr,
Fluxy.One from €249/yr and ~€1 per DPP, Marqetir repriced (run 2: €99–249/mo, managed tier
from €3k/mo), EaseCert €400–500 one-time. Not EU-AI-Act high-risk; B2B SaaS to Chinese
businesses outside EU VAT scope. A China channel partner is effectively mandatory; broker
RP services, never provide them; tooling, not certification. Spec (18 July 2026): launch
categories textiles, furniture, jewellery; manual export pack instead of marketplace APIs;
headline metric "attestable GPSR pack in ≤20 min vs €400–500 and 3–5 days manual"
(vendor-sourced baseline, flagged unverified).

**#6 — Rules** *(delegated)*. CLAUDE.md hard rules: never contact anyone; no personal data in
the repo; an honest fake door (in development, early access, no payment, no invented proof);
regulatory accuracy (no "€10M / 4%", no DPP-date urgency); tooling, not certification; no
spend without a founder card; no secrets.

**#7 — Feasibility refresh (run 3) read: continue; test P PASS (provisional)** *(delegated;
the founder answers on the R1 card)*. `docs/research/1_feasibility_refresh.md` is a dated delta
since run 2 (15 Jul 2026). Every source was read as a search snippet, because the session's
proxy refused page fetches.
- **Test P: PASS, provisional.** No announcement found that Amazon or Etsy ships a free native
  GPSR technical-file generator or full-DPP automation.
- **Amazon at Accelerate (22–24 Sep 2026):** compliance checking and lab routing ("test once,
  sell globally"), a 2027 "requirements and costs before manufacture" view, and a free year of
  Quick Plus, a general-purpose AI workspace. Five watch items are listed for the G1 re-check.
- **Regulation:** the DPP Registry went live on 20 Jul 2026, a Commission deliverable. Textiles
  DPP is likely 2029 (adoption planned Q4 2027). The battery passport date is unchanged.
  GPSR-first is reinforced.
- **Competitors:** EUProof generates the same GPSR document set from €190/yr (1 product,
  English). EAS bundles RP and AI-assisted documents from €199/yr with a Chinese site.
  Chinese EU-rep anchors are ¥268–568/yr.
- **Channel:** compliance reaches Chinese sellers bundled, through SPN-listed VAT/EPR/EU-rep
  agents, ERP compliance arms and test labs.

**Recommendation: continue.** No change to `decisive-test.md`. "Adjust D's band before
outreach" is steelmanned in the refresh's §5 and offered on the card. Refinements inside the
plan:
- FD.1: price stated with a product-count scope, plus a "current provider and price paid"
  diagnostic.
- FD.2: position on Chinese-first plus partner, not "AI documents".
- CH.1: partner-type order as in the refresh's §4.

**Precision on #5** (secondary-sourced until the gazettes are opened):
- IT D.Lgs 78/2026: €10k–100k base, ~€150k only for serious risk.
- DE ProdSG (in force 19 Feb 2026): €10k general, €100k top tier.
- AT: no adopted GPSR penalty law found (PSG 2004 still consolidated in RIS, June 2026).
- Textiles DPP: likely 2029, not 2028.
- Marqetir's managed tier: from €5k/mo.

**#8 — PREREG-F drafted (proposed); blocking card D-002** *(delegated draft; the founder
approves or revises on D-002, and nothing goes out before that)*.
`docs/planning/PREREG-F-fake-door.md` fixes what test D leaves open without changing
`decisive-test.md`.
- **Offer:** GPSR document pack for textiles, furniture and jewellery, Chinese input, seller
  attests, RP providers introduced and not provided. In development, early access, no payment.
- **Price:** recommended **€249/yr for up to 10 products**. Alternatives €199/5 and €290/25.
  Euros only. "Product" = a product model (unsourced assumption, checked at E0.1).
- **Counting:** qualified = self-declared EU sales + launch category + decider, with the shop
  name required for de-duplication. Reached = shown the price, then answered as qualified;
  the bar is therefore conditional on a response, so the funnel above the 50 and D by route
  are reported. One timestamp. Void grounds fixed in advance; D also reported with voids in
  place. LOI or pre-pay intent counts only when confirmed in writing 1:1 (a form signature or
  tick alone does not). One per business.
- **Tools:** Cloudflare Pages + custom domain (about US$10.44/yr: a cost item, the founder's),
  because github.io, pages.dev and vercel.app are reported blocked in China. Tally (EU, free),
  linked rather than embedded. Both tested from a mainland phone, in WeChat, at FD.3.
- **Data:** the founder's Tally, WeChat/e-mail and files only. Partners introduce and never
  hold seller data. Deletion within 30 days of G1 (opted-in launch contacts at most 12
  months). GDPR Chapter V transfers via WeChat/e-mail and PIPL Arts. 3/53 are open legal
  questions, with an optional review on the card.
- **R1 hand-off applied:** price with a product-count scope; "current provider and price
  paid" diagnostic; the ¥268–568 EU-rep anchor and EUProof (€190/yr, 1 product) in the
  pre-mortem.
- **Provisional** on D-001 = continue. If the founder adjusts the band, the price moves
  inside it before approval.

Deviation: the quality gate for this docs-only item used two independent read-only review
passes (skeptic and claims rubric) in place of `/simplify` and `/code-review`, which target
code. Round 1 found 14 issues (5 blocking: self-selected denominator, ambiguous ordering,
discretionary voids, a false "no transfer outside the EEA" line, no legal basis for LOI
data). Round 2 found 6 consistency issues. All were fixed; none remain open.

**#9 — CH.1 channel-partner map drafted; comms card for the founder's picks** *(delegated
draft; the founder picks whom to approach on the card and keeps contact people in their own
tracker)*. `docs/outreach/channels.md` maps 28 organisations, by organisation and role title
only. Tiers 1–4 follow R1 §4's order, provisional on D-001; tiers 5–6 come from the CH.1
task text.
- **Tiers:** 5 China-facing VAT/EPR/EU-rep agents, 4 ERP/seller-SaaS vendors, 7 test labs,
  4 associations and government training platforms, 4 payment-provider ecosystems, and 4 EU
  RP providers (the RP-brokerage leg, after G1 only). Directories and venues are listed
  separately and are not partners. Forwarders are left out: no evidence they bundle GPSR.
- **Partner terms copied from PREREG-F §2.2, §5.1 and §6.2:**
  - partners introduce sellers and share a channel-coded link, and never hold seller data or LOIs;
  - no outcome-dependent pay;
  - a fixed fee goes on a cost card;
  - no post-gate promise during the test.
  The per-row "later interest" column is post-G1 context and is never pitched. §1's common
  list is the only test offer.
- **Recommended first wave:** eVatMaster, J&P, Taxually, Mabang, CTI and the Shenzhen
  Cross-border E-commerce Association. Rows that already sell GPSR documents (AVASK, SGS,
  Intertek, EAS) are held back.
- **BD-partner profile:** the market norm is commission or revenue share, which the test
  excludes. It recommends an unpaid co-run with an organisation, or a fixed fee on a card.
- **Open question for the founder (on the card):** read `decisive-test.md`'s partner-type
  list for test C as examples, so that a VAT agent, ERP or lab partner counts. Recommended:
  yes. The first wave depends on the answer. If the list is read as closed, the fallback is
  to lead with the associations, start the BD-freelancer route and research sourcing
  agencies and forwarders.
- **Method limit:** WebSearch snippets only, because the proxy refused page fetches again.
  The first-wave rows were re-searched. One search result exposed a named person's phone and
  e-mail, and none of it was recorded.

Deviation: the quality gate for this docs-only item used independent read-only reviews
(claims-audit rubric plus PREREG-F consistency) in place of `/simplify` and `/code-review`.
Round 1 found 0 blockers, 2 majors and 12 minors:
- the per-row gains read as post-gate inducements;
- a first-wave rationale leaned on referral tiers;
- tags were too strong;
- one cross-reference was wrong;
- a CSDN user-handle URL was cited.
All were fixed. The first session stopped on the session limit before round 2. A resumed
session ran round 2 and the step-8 skeptic together, as one independent subagent with web
spot-checks of the first-wave rows. It found 0 blockers, 3 majors and 7 minors:
- the first wave quietly depended on reading test C's list as examples (now stated, with a
  fallback for a closed reading);
- the "Later interest" column mixed in what is offered during the test (now "—");
- the draft of this entry claimed a round 2 that had not yet run (rewritten);
- R1 §4 was cited for tiers 5–6;
- CTI's textile coverage had no source;
- row 5 was unlinked (now pinned to the agent's own 2021 article);
- §8 was mis-paraphrased;
- a wording slip about Payoneer.
All were fixed, except that the Sohu article URLs, which end in a numeric 搜狐号 account ID,
are kept. They are article links, not profile links, and name no one. Spot-checks of
Taxually's tiers, J&P's cooperation page, Mabang's service market and CTI's GPSR service
were supportive. They also turned up J&P's first-mile logistics service (March 2025), which
is now on row 2. No finding remains open.
