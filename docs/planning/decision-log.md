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

**#10 — MV.1 build-spec open items desk-checked; card D-003 for a new competitor** *(delegated; non-blocking)*.
`docs/research/2_spec_open_items.md`. The spec pack is not imported (S0), so its wording was
not seen; the five items come from the plan. All evidence is snippet-read, because the proxy
refused page fetches again.
- **Amazon document limits:** partly confirmed. Safety documents as PDF ≤10 MB per EU store,
  in that store's language; PS01–PS06 images; via the API, a public URL. No "title rule" found.
- **SP-API GPSR attributes:** available since 18 Nov 2024 through the Listings Items API and
  JSON_LISTINGS_FEED. The legacy XML/flat-file feeds took them from 3 Feb 2025, but those
  feeds were removed on 31 Jul 2025. Access needs an approved developer registration. The
  announced SP-API fees were cancelled on 12 May 2026 (trade press). The manual export pack
  stays; use the attribute names as its column names.
- **WeChat for a foreign sole proprietor:** unresolved, because sources conflict on whether
  overseas Service Accounts are enterprise-only. WeChat Login needs Open Platform verification
  (US$99). Recorded as a **build risk**: the build plans non-WeChat login first. The US$99 is
  spend and goes on a card if it comes up. The test needs neither (founder's own WeChat,
  #8/#9). It does carry a **test risk**: WeChat polices marketing from personal accounts
  (friend-add caps, bans; [plausible]), so partner-led posting is the safer route at FD.3/CH.2.
- **Manual cost of a GPSR technical file:** no non-vendor per-file figure exists in what was
  reachable. "€400–500" is one vendor's done-for-you price (EaseCert). Others sell from about
  €99 (one-off, per order) to €199/yr, and possibly from €49 (GPSRCheck, unchecked), so it is neither the market price nor a manual baseline, and "3–5 days" is
  unsupported. An assumption-labelled in-house range is given for internal use only. The
  pitch is unaffected, because PREREG-F §1.1 already drops the comparison.
- **Supabase:** four EU-member regions; choose Frankfurt explicitly (the general "Europe"
  region can land in London or Zurich). Click-through DPA with SCCs; the importer is
  Supabase Pte. Ltd. (Singapore), which joins the open Chapter V question in #8.
- **New competitor (by-product):** Sevarto (DE) sells generated GPSR risk-analysis drafts
  and German warnings from €99 net per order for up to 10 products ([vendor claim]). This
  adds to R1 §3. **Card D-003** (decision, non-blocking, keep | reconsider; recommended:
  keep D-002's option A) puts it before the founder ahead of the price decision.

No item of the five changes the gate or the pitch.

Quality gate (docs-only, as #9): one independent read-only review, run together with the
step-8 skeptic and with web spot-checks. Round 1 found 0 blockers, 3 majors and 7 minors.
Majors:
- the legacy feeds' removal was missed;
- SP-API access and fees were not mentioned;
- "€400-plus" was presented as the market price.

Minors:
- the wage and labour-cost bases were not alike;
- translation was not excluded;
- the WeChat personal-account risk was missing;
- "one PDF" was overstated;
- the changelog date's tag was too strong;
- the Supabase entity was cited from a secondary source;
- the 30-day WeChat window's tag was too strong.

All were fixed after the removal, fees and Sevarto facts were re-searched by this session.
Round 2 found 0 blockers, 2 majors and 9 minors.
Majors:
- a WeChat table row was broken;
- the card said Sevarto showed no EU-language output, but its output is German.

Minors (tags, a source for the fee postponement, wording of the price comparison, the card's
readability, this count): all were fixed. Nothing remains open.

**#11 — PREREG-F approved; test price €249/yr for up to 10 products** *(founder, card D-002;
price delegated to Claude)*. On 2026-10-05 the founder answered D-002 "A". They approved the
PREREG-F rules as drafted (offer, qualified seller, reached, LOI and pre-pay-intent
definitions, voids, tools, data handling, honesty rules) and delegated the price choice.
Claude chose option A: **€249/yr for up to 10 products**. It sits inside the €150–300/yr band
and away from both ends, so a PASS or FAIL is not an artefact of testing the band's edge. It
is also consistent with D-003 = keep (#12). `docs/planning/PREREG-F-fake-door.md` is now
**approved** and binding; only its status lines and the price rows were changed (option A
marked chosen). No rule, definition, bar or window changed. It rests on "continue" on card
D-001, which is still open: if the founder answers D-001 "adjust" with a band that excludes
€249, the price changes through a new card before the first outreach. Costs stay unspent and
go to the founder at FD.3 (domain about US$10–11/yr; zh-CN review and legal review on quote).
FD.1 is done; FD.2 (landing page and LOI drafts) is unblocked. Serves test D (and C through
the per-channel counts).

**#12 — Sevarto noted; price kept** *(founder, card D-003)*. The founder answered D-003
"keep" with the note to record Sevarto as a competitor. Sevarto (DE) sells generated GPSR drafts
(German warnings, risk-analysis PDF) from €99 net per order for up to 10 products ([vendor
claim], snippet-read, #10). It is added to R1 §3 (`docs/research/1_feasibility_refresh.md`).
The positioning stays as R1 states it: generating documents is not the wedge. The wedge is
Chinese input, output in several EU languages and the China channel, none of which was seen
at Sevarto. PREREG-F §4's "reason for no" and "current provider and price paid" fields are
where a cheaper rival would show up in the test. Serves test D.

**#13 — FD.2 landing page, privacy notice, form copy and LOI drafted; comms card for review**
*(delegated; comms lane)*. On 2026-10-05/06 the loop drafted the public texts test D needs
before FD.3. Nothing is published or sent.
- `site/`: `index.html` (zh-CN) and `en/index.html`; `privacy.html` and `en/privacy.html`;
  `imprint.html` (bilingual placeholder); `style.css`. It is plain HTML and CSS, with no JS,
  no web fonts, no trackers, and the Tally form linked through a `{{FORM_URL}}` placeholder.
- `docs/outreach/`: `loi.md`, `form.md` (Tally copy, screens 1–6) and
  `after-test-notices.md` (PREREG-F §10).
- `docs/research/3_gpsr_copy_sources.md`: sources for the legal statements.

The privacy notice lives in `site/`, the published form, not as a second copy in
`docs/outreach/`, so the two cannot drift.

Choices and deviations, all inside approved PREREG-F, which was not edited:
1. **GPSR statements limited to what §1.1 allows.** The page says only that GPSR has applied
   since 13 Dec 2024, that major EU marketplaces ask for product-safety information, and,
   under "what it is not", the Art. 16(1) point. A fuller paragraph (Art. 9(2), 9(7), 19)
   was drafted, then cut after the claims audit. No article number appears in the copy,
   because EUR-Lex could not be opened (proxy) and every number is only [plausible].
2. **Consent tick T1 finalised** (§6.5 left the wording to FD.2). The zh-CN text no longer
   reads as "free". The purpose "ask me to confirm any LOI or pre-pay answer" is added,
   because §3.2–§3.3 require that follow-up.
3. **"No payment now" is tied to "not available / cannot be bought yet"** in every zh-CN line.
   This avoids the 现阶段免费 ("free for now") reading. 抢先体验 is glossed as access at
   launch.
4. **Launch not promised.** "Whether it launches has not been decided" sits beside §1.3's
   "launch date not fixed".
5. **The form adds Q4, business type,** so that a provider, agent or lab declares itself.
   This is a §2.1 exclusion, applied to everyone alike. The pre-pay question P1 is on the
   form and counts only as unconfirmed interest (§3.3).
6. **No Chinese-speaking contact is promised** (CH.2 has no partner yet). No partner or RP
   provider is named.

Claims audit (independent read-only subagent, rubric `/claims-audit`):
- Round 1: 2 BLOCKER, 6 MAJOR, 15 MINOR. The blockers were the status line missing on form
  screens 2–5 and the imprint not offering early access.
- Round 2: 0 BLOCKER, 0 MAJOR, 7 MINOR.
- All were fixed. Nothing open in the copy.

`/simplify` and `/code-review` were not run: the diff is copy and static markup, so the
claims audit was the review. The visual preview was not done, because the browser tool
blocks `file:` URLs and the headless loop cannot run a local server. The founder previews
the page at FD.3.

**Pre-publish gates (FD.3, founder):**
- fill `{{FORM_URL}}`, `{{PAGE_URL}}`, `{{CONTACT}}`, the operator identity, the hosting
  and e-mail providers, the supervisory authority and the D3 yuan edges;
- settle the GDPR transfer safeguard in privacy §5 (placeholder; optional legal review);
- open EUR-Lex and confirm L1, L5 and the marketplace statement;
- have a native speaker check every zh-check line.

Serves test D.

## 2026-10-06

**#14 — FD.4 outreach kit drafted; comms card for review** *(delegated; comms lane)*. The loop
drafted the outreach texts for test D and the partner pitch for CH.2. Nothing is sent or
posted.
- Files, all in `docs/outreach/`:
  - `kit.md`: a WeChat group post; the standard first 1:1 message, with a partner-introduction
    variant; a seller-forum post; follow-ups FU1–FU8; channel codes; short answers to common
    questions.
  - `partner-pitch.md`: the pitch and the written co-run confirmation.
  - `tracker.md` and `tracker-template.csv`: aggregate columns only.
- Every text is zh-CN and EN, and reuses the FD.2 wording. The pre-payment question is
  `form.md` P1 word for word.

Choices and deviations. All stay inside the approved PREREG-F, which was not edited:
1. **The forum post is not for Amazon's own Seller Forums.** The plan says "Amazon-seller-forum
   post", but Amazon's Seller Forums guidelines prohibit commercial content: advertising,
   promotions, solicitations ([guidelines, EU](https://sellercentral-europe.amazon.com/seller-forums/guidelines);
   [established], snippet-read 2026-10-06).
   - A post there would break the rules of the platform that test P is about.
   - It could also read as Amazon's endorsement.
   - So the post targets independent seller forums, only in sections whose rules allow it,
     and is written as a question to sellers with a disclosure.
2. **Quote-reply is the way to confirm an LOI** (PREREG-F §3.2 asks for a reply that "quotes or
   attaches" the LOI text). In both FU2 (1:1) and FU3 (form signers), the founder pastes the
   full LOI text into the message. A seller's quote-reply saying "we agree" counts as quoting
   it, and so does a signed or chopped copy. Both routes use the same standard.
3. **No cold messages.** The founder writes first only to a seller who wrote to the founder or
   added the founder, or who asked in a thread to be contacted. There is no list-building and
   no scraping. A partner never forwards a seller's contact card (§6.2).
   - **Recorded defect in FD.2's privacy notice:** it has no GDPR Art. 14 source-of-data
     statement. Under the rule above it does not need one, because all data comes from the
     seller.
   - If the founder wants founder-initiated messages, the notice needs that statement first,
     plus the transfer safeguard already gated on M-002.
4. **Messages link the form, not the page.** The form carries the channel code; the page's
   button is coded `web` and would misattribute sellers. Codes: `DM` (founder), `P1…`
   (partners), `WG1…` (WeChat groups), `BB1…` (forums), `E1…` (events), `X` (other).
5. **The first 1:1 message has five questions.** Three are the §2.1 qualification questions.
   Two are the form's Q4 business type (#13) and the shop name.
6. **A call recap carries no signal.** A verbal yes leads to FU2, and only a written reply to
   FU2 counts.
7. **Tracker:** the weekly rows are provisional. At G1, D and every "among the 50" figure are
   recomputed from the founder's private per-seller list. Its fields are described, but no
   template is kept in the repo.
8. **Partners:**
   - They introduce 1:1 only; no group chats (拉群).
   - They answer only with the kit's short answers.
   - They do not introduce their own staff or relatives.
   - They are never named in public text, and there is no exception by consent: PREREG-F
     §7.3.
9. **Every message**, including short replies in a thread, carries in development · early
   access · no payment now. The one exception is the deletion reply (FU7). It carries "in
   development, not available, no payment taken" but no sign-up invitation, which would be
   inappropriate after a deletion request.

Claims audit (`/claims-audit`, run by an independent read-only subagent):
- Round 1: 0 BLOCKER, 9 MAJOR, 17 MINOR.
- Round 2: 0 BLOCKER, 1 MAJOR, 5 MINOR. These were the contact-card loophole in the
  no-cold-message rule; a gate placed on the wrong card; status lines in the §6 answer cells;
  this entry missing; the tone of FU7; and price referrals.
- All were fixed after round 2. That last set of fixes was not re-audited, because the gate's
  two rounds were used up.
- `/simplify` and `/code-review` were not run: the diff is copy only, so the claims audit was
  the review.

Serves tests D and C.

**#15 — FD.3 hand-off: runbook card A-002 opened (blocking; a read-only skeptic raised 14 points, all fixed in the card)** *(delegated; act lane)*. FD.3 is
the founder's own task, so the loop wrote the runbook and did nothing else: nothing was bought,
registered, deployed or sent. FD.3 is **not done**; it closes when the founder answers A-002
(`done|hold`).
- Gates on the card: M-002 approved, D-001 answered, and the EUR-Lex check of L1, L5 and the
  marketplace statement (`docs/research/3_gpsr_copy_sources.md`). The native-speaker check of the
  `zh-check` lines comes after the founder fills the text (card step 7), by a trusted speaker or
  a partner that does not sell EU-representative services (M-004 step 3); a paid reviewer is a
  cost card.
- Cost items, with the free alternative for each (PREREG-F §5.4): domain about US$10.44 first
  year [plausible, secondary]; native and legal review: quote needed. Hosting and form are free
  tiers (Cloudflare Pages, Tally).
- Decision: the operator identity (imprint, privacy), the role e-mail address and the GDPR
  transfer safeguard are filled only in a **deploy copy outside the repo**; `site/` keeps its
  placeholders (hard rule 2; `scripts/check.sh` rejects e-mail addresses). After the answer the
  loop fills only the public `{{FORM_URL}}` / `{{PAGE_URL}}` placeholders.
- The Cloudflare project is created by direct upload of that copy, never connected to the
  private repo; Web Analytics stays off.
- The China check covers the page, privacy and imprint, and the form, from a WeChat chat and a
  browser; a form that fails there triggers PREREG-F §5.3's fallback on a separate card.
- Open founder cards: A-001, A-002, D-001, M-001, M-002, M-003, M-004.

Serves test D (and test C: the partner confirmation in M-004 needs these links).

**#16 — Operator fix after FD.2's independent verifier (2026-10-06)** *(delegated)*. The
verifier passed FD.2 with one MAJOR: the landing page stated an Art. 19 listing duty ("the EU
Responsible Person's name and address go on the listing") that PREREG-F §1.1 does not allow and
that the FD.3 EUR-Lex check does not cover. The sentence is removed in both languages; the
marketplace sentence already names the Responsible Person field. One MINOR is fixed with it:
the form's thank-you screen now promises a launch notice only to sellers who ticked T2
(PREREG-F §6.3). The imprint placeholder's missing zh-check markers are left as they are,
because the placeholder will be replaced. M-002's review covers the corrected text.

**#17 — S0 done: feasibility runs and build spec imported (2026-10-06)**. At the founder's
request, Claude imported the three artifacts from their claude.ai chats into
`docs/background/feasibility-run1-2026-06.md`, `docs/background/feasibility-run2-2026-07-15.md`
and `docs/spec-pack.md`, verbatim except one vendor support e-mail address in the spec (the
repo holds none). Card A-001 is closed and S0 marked done. They are archival evidence:
`docs/research/1_feasibility_refresh.md` and `2_spec_open_items.md` supersede them where they
differ, and nothing from them goes into public copy without the primary source (hard rule 4).
E0.1 (planning the build after a GO) no longer waits on S0.
