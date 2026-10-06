<!--
Provenance: Claude deep-research report, chat "[FEASIBILITY] PassportPilot feasibility analysis"
(https://claude.ai/chat/4a84b12a-5326-40d3-9bec-b9012168092f), turn 1, artifact
"PassportPilot: GPSR-First Compliance SaaS Feasibility Assessment" (run 1, June 2026).
Imported into the repo 2026-10-06 (task S0, card A-001) at the founder's request. The text is
reproduced as written; the artifact's citation list is not reproduced. Status: ARCHIVAL
EVIDENCE — superseded where run 2 (feasibility-run2-2026-07-15.md) or docs/research/ differ.
Do not copy numbers from here into public copy without re-checking the primary source
(CLAUDE.md hard rule 4).
-->

# PassportPilot: A Source-Cited Feasibility Investigation
*Lead Venture Architect assessment for a Vienna-based solo founder. Claims are tagged [empirically established], [plausible], or [founder optimism — unverified]; self-interested vendor data is flagged.*

## TL;DR
- **CONDITIONAL GO — but pivot the wedge from DPP to GPSR.** The "why now" thesis is partly false: the 19 July 2026 date is verified [empirically established] as an *infrastructure* deadline on the European Commission to build the central DPP registry (ESPR Art. 13), **NOT** a date on which any Chinese seller of textiles or electronics must have a live Digital Product Passport. The genuinely live, enforced clock is **GPSR** (in force since 13 Dec 2024), which Amazon is actively enforcing by delisting non-compliant sellers.
- **The buyer is real and desperate, but already well-served by €199–500/yr incumbents.** Chinese sellers are 50.03% of Amazon's global active third-party base [empirically established], and Amazon delists non-compliant listings. But EaseCert, Euverify, eugpsr.eu, Fluxy.One and Marqetir already bundle Responsible-Person + technical-file generation at €59/mo–€500/yr, some in Chinese. PassportPilot would enter a crowded, low-priced market against a thin, decaying moat.
- **Build the PoC to de-risk DISTRIBUTION, not technology.** A senior AI engineer can build the RAG/document-generation/QR pipeline easily; that is not the risk. The single most important investor assumption is whether a solo EU founder with no China presence can acquire Chinese sellers profitably. Spend the ≤$1,000 budget on a fake-door demand test, not on a polished product.

## Key Findings

### 1. The "why now" is half-right — and the wrong half is the one the thesis leans on
The founder's deck leans on "the DPP registry goes live 19 July 2026." Primary-source verification of Regulation (EU) 2024/1781 (EUR-Lex official Official Journal text) confirms this is **infrastructure, not a seller obligation** [empirically established]:
- **ESPR Article 13(1), verbatim:** *"By 19 July 2026, the Commission shall set up a digital registry (the 'registry') which stores in a secure manner at least the unique identifiers… the registry shall store the commodity code."* The obligation falls on the **Commission**, not sellers — confirmed.
- A DPP is required only *"as specified in the applicable delegated act"* (Art. 2(28), Art. 3(1), Art. 7(1)), and each delegated act carries a **minimum 18-month transition** (Art. 4(4), verbatim: *"The date of application of a delegated act shall not be earlier than 18 months from its entry into force"*). No ESPR delegated act for textiles or electronics has yet entered into force.
- The registry stores **unique identifiers + commodity codes for customs**, not full product data; actual DPP data sits in a decentralised system run by economic operators (Recital 41). The registry's communication of a registration ID *"shall not be deemed to be proof of compliance"* (Art. 13(5)).
- The only legally fixed mandatory product passport is **batteries, from 18 February 2027**, under the *separate* EU Battery Regulation (EU) 2023/1542, Art. 77 — applying to LMT batteries, industrial batteries >2 kWh, and all EV batteries; *"from 18 February 2027, a battery without a passport cannot legally be placed on the EU market"* (confirmed via EUR-Lex; characterization per Fluxy.One, a vendor [flagged]).

**Realistic DPP timeline by category** [empirically established for batteries; indicative for the rest]:
- **Batteries**: 18 Feb 2027 (legally fixed, separate regulation).
- **Textiles/apparel**: a draft textiles DPP delegated act is anticipated around 2026–2027 (Circularise's guide states the Commission *"will publish a delegated act regarding DPPs for textiles… expected to enter into force in July 2027"* — vendor forecast, conditional/future tense [flagged]); with the mandatory ≥18-month transition, mandatory textile DPP is realistically **no earlier than 2028** (Fiegenbaum Solutions, Apr 2026). The ESPR Working Plan COM(2025)187 lists textiles as a priority with indicative 2027 adoption.
- **Electronics/ICT**: later still; not a standalone priority product group in the first Working Plan; horizontal repairability/recyclability measures ~2027–2029.
- **Iron & steel, furniture, tyres, aluminium**: 2026–2030 delegated-act adoption, compliance ~2028–2030.

**Implication:** The "DPP clock forcing compliance on 19 July 2026" is, for the founder's target (Chinese textile/electronics Amazon sellers), **[founder optimism — unverified] bordering on incorrect**. Building urgency on the registry date will not survive due diligence by a regulatory-literate VC.

**However, the GPSR clock is real and live** [empirically established]:
- GPSR (Regulation (EU) 2023/988) has applied since **13 December 2024**.
- Article 16 requires every product on the EU market to have an **EU-established Responsible Person**; without one the product *"cannot legally be placed on the market."*
- Amazon actively enforces: it ended its own Responsible-Person program in 2024, runs a "Manage Your Compliance" dashboard (ASIN.PS01–PS06 document slots), and has removed non-compliant EU listings.

**Verdict on wedge:** Pivot the headline from DPP to **GPSR compliance + Responsible-Person brokerage now, with DPP as the 2027–2029 expansion narrative.** The DPP is the "why we'll still be here in 3 years" story, not the "why pay today" story.

### 2. The buyer is real, large, and reachable — but already served cheaply
- **Who is desperate:** Non-EU (esp. Chinese) sellers on Amazon EU/Etsy/eBay facing delisting *today* under GPSR. Per Marketplace Pulse (Ben Donovan, 18 Sep 2025, *"China Reaches Global Majority on Amazon"*): *"Chinese sellers now make up more than half of all third-party sellers globally, 50.03% to be exact."* Chinese sellers were 62.3% of new Amazon.com registrations in 2024 vs 26.8% US; SellerSprite/Smartscout put Chinese share at 54.6% (US) and 51–59% across major EU markets [empirically established]. Shenzhen alone is estimated at up to ~25% of all third-party sellers.
- **Hardest-hit categories first under the *live* GPSR clock:** toys, electronics, children's products, cosmetics — the categories with the most stringent safety documentation and Amazon's most aggressive enforcement. (Not batteries/textiles for DPP — that is a later, separate clock.)
- **Willingness to pay (WTP):** Bounded by what incumbents charge. Responsible-Person-as-a-service runs **€150–500/yr** (Euverify from €200/yr; EaseCert €400 low-risk / €500 regulated, one-time; eugpsr.eu and EAS from €199/yr; 24hour-AR €1,650/yr for ≤20 products). Amazon-marketplace RP providers were quoted €650–2,000/yr in seller forums. Full GPSR technical-file + RP bundles (Fluxy.One) start at **€249/yr**. This sets a hard ceiling: a software-only compliance tool must price *below or alongside* these, likely **€100–400/yr per brand** or a per-document fee. [Vendor-reported — flagged.]
- **Named competitors with real 2026 pricing** [empirically established from live vendor pages]:
  - **Marqetir** — multi-marketplace listing + GPSR compliance push (centralizes RP/manufacturer data, pushes to marketplaces, translates warnings). Pricing: **Starter €59/mo (500 listings, 2 marketplaces); Growth €179/mo (5,000 listings, unlimited marketplaces, 13-language AI translation).** The closest direct analog and most dangerous competitor — already shipping GPSR automation.
  - **Fluxy.One** — AI GPSR technical-file generation + RP + 27-language translation + GS1 Digital Link QR/DPP generation, from **€249/yr**, and DPP generation *"from €1 per DPP."* Already doing essentially what PassportPilot proposes, including agentic document generation and the DPP carrier.
  - **EaseCert, Euverify, eugpsr.eu (English & Chinese, Poland/EU-based), EAS, EU Compliance Partner, Taxually, Eldris** — RP services €150–500/yr, several Amazon-focused.
  - **DPP platforms** (later DPP wave): Caruma, Kezzler, Circularise, Avery Dennison, Digimarc, EON, Protokol, Authena, Trust Codes, Bluestone PIM, Akeneo, Renoon, TrusTrace — mostly enterprise/brand-focused; SaaS DPP from ~€0.40–1.00 per product.
- **Channel reality:** A solo EU founder with no China presence faces real friction. Viable paths: (a) Chinese cross-border seller WeChat groups and the Shenzhen Cross-Border E-Commerce Association (2,600+ members); (b) freight-forwarder / sourcing-agent partnerships (these touch the seller at point of EU shipment and are natural resellers); (c) marketplace-agency reseller channel. A **partner/reseller channel is effectively mandatory** given the lack of on-the-ground presence and the need for Chinese-language trust and support. Direct cold outreach to scraped seller databases is possible but low-yield without a local persona.

### 3. The moat is thin and decaying — be honest with investors
- **Regulatory know-how decays:** rules change and the knowledge is replicable and increasingly commoditized (Fluxy.One, Marqetir already automate it).
- **What could compound:** (a) **Compliance-data lock-in** — once a seller's technical files, BOMs, test reports and RP mandates live in PassportPilot, switching is painful; (b) an **accumulating product-attribute dataset** keyed to GTINs/ASINs that makes each new SKU faster to onboard (a weak data-network effect); (c) a **Responsible-Person partner network** with preferential pricing (brokerage margin + retention hook). None is a strong long-run moat.
- **The metric that makes an investor act:** Given a thin moat, investors fund **demand proof + velocity**, not defensibility. The single highest-signal metric is **signed LOIs or pre-paid conversions from Chinese sellers** at a stated price (e.g., ≥10 pre-pays or signed LOIs from a 50-seller cold outreach = ≥20% intent). Secondary: demonstrated **time-to-compliance reduction** (e.g., "3 days of manual work → 20 minutes") and **CAC via the partner channel**.
- **Is "why now" enough despite moat decay?** Yes for a fast pre-seed *if* repositioned on GPSR (live clock) — timing-driven compliance businesses are fundable as "land grab now, expand to DPP later." No if pitched on the 19 July 2026 DPP date, which won't survive diligence.

### 4. Reality-check hurdles
- **Platform-risk kill scenario (the dominant threat):** Marketplaces shipping native compliance automation. **This has already partially happened**: Amazon runs a GPSR compliance dashboard with structured document fields and ended its own RP program (pushing sellers to third parties — which actually *helps* PassportPilot's RP-brokerage angle). For full **native DPP automation**: AWS has published an "agentic AI for DPP" architecture (Amazon Bedrock AgentCore) and commissioned Oxera DPP research — signaling intent, but **no announced native full-DPP automation product for sellers as of June 2026** ([empirically established] that none is announced; AWS activity is a [plausible] precursor). Likelihood Amazon ships native DPP automation within 2–4 years: **moderate-to-high**, which caps the long-run DPP opportunity and reinforces the "grab GPSR revenue now" thesis.
- **Legal exposure of generating documents the founder isn't certifying:** Real but manageable. PassportPilot should generate documents the *seller* attests to (self-declaration model, like Fluxy/Marqetir), with clear "not legal advice" terms. The founder must **not** sign Declarations of Conformity or act as the certifying party.
- **EU Responsible-Person liability:** The RP carries real obligations (hold technical file, liaise with surveillance authorities, cooperate on recalls). The founder should **broker/partner** RP services (revenue share with EaseCert/Euverify-type providers), **not** become the RP — becoming RP at scale is unbounded liability and operational burden for a solo founder.
- **EU AI Act high-risk?** **No** [empirically established]. A compliance-document-generation SaaS does not fall in any Annex III category (biometrics, critical infrastructure, education, employment, essential services, law enforcement, migration, justice). It is minimal/limited-risk; only transparency obligations (disclose AI interaction) apply. Document the Art. 6(3) self-assessment, but it is not a blocker.
- **GDPR:** Light — business contact data, not consumer profiling. Standard Art. 28 processor terms, Art. 30 records.
- **Cross-border VAT on selling SaaS to Chinese entities:** Favorable [empirically established]. B2B electronically-supplied services to a non-EU business (Chinese company) are **outside the scope of EU VAT** (place of supply = customer's country); the Austrian founder charges no EU VAT and generally has no EU VAT registration obligation for these sales. Invoice must document the business customer. (OSS/Non-Union OSS is for B2C; not needed for B2B-to-China.) Austrian corporate/income tax on profits still applies.

### 5. Timeline & budget
**Naive build estimate (founder optimism):** "Working compliance-document demo in 4–6 weekends."
**Optimism-corrected (per requested 2–4× correction):** A *credible investor demo* (not production) of a GPSR technical-file + DoC + GS1 Digital Link QR generator with RAG over GPSR text:
- Naive: ~6 weekends (~80–100 hrs).
- **Corrected: ~12–16 weekends / ~3–4 calendar months at 10 hrs/wk (~150–250 hrs).** The technology is squarely in the founder's wheelhouse (RAG, doc-gen, multi-agent orchestration via Claude Code/LangGraph), so the *technical* multiplier is closer to 2×; the *calendar* multiplier is larger due to the full-time job + 3.5-year-old.

**Architecture note (Module 2):** RAG over GPSR/ESPR corpora and harmonized standards → document-generation pipeline (technical file, DoC, risk assessment, multilingual safety warnings) → GS1 Digital Link QR generation is well-supported by **free, production-grade open-source tooling** (GS1 Barcode Syntax Resource; standard QR libraries), so the DPP data-carrier path is low-cost and low-risk. The maintenance burden — keeping current as delegated acts roll out 2026–2029 — is automatable via a monitored RAG index over EUR-Lex/Green Forum feeds, which plays directly to the founder's strengths. Chinese-language UX is the one genuine non-technical gap (needs a native reviewer).

**Itemized budget to a functional PoC (≤$1,000)** [budget proof]:

| Item | Cost |
|---|---|
| Claude Max (LLM/agent orchestration) | $0 (already paid) |
| Supabase (free → Pro) | $0–25/mo |
| Railway/Render/Fly.io hosting | $0–20/mo |
| Domain | ~$15/yr |
| GS1 Digital Link (open-source libraries) | $0 |
| QR generation libraries | $0 |
| Landing/fake-door page (Framer/Carrd) | $0–20/mo |
| Cold-outreach / WeChat test + small ad spend or seller list | $200–400 |
| Chinese-language copy (freelance translation/review) | $100–200 |
| Contingency | ~$150 |
| **Total** | **~$600–900** |

Comfortably under $1,000; no need to stretch to $5k for a PoC. The $5k stretch is justified **only** to pay a Chinese-speaking BD partner for a pilot cohort — and only *after* the fake-door test passes.

### 6. Go / No-Go and validation tests
**Decision: CONDITIONAL GO**, contingent on passing the three pre-code tests below. Reposition on GPSR (live clock) with DPP as expansion. Build to de-risk distribution, not technology.

**Three lowest-effort validation tests BEFORE any code, each with a numeric threshold:**
1. **Demand fake-door (the decisive test).** Stand up a Chinese-language "GPSR-compliant in 24h + DPP-ready" landing page; drive 50 qualified Chinese EU-importing sellers to it via WeChat groups, the Shenzhen Cross-Border association, a sourcing-agent intro, or a purchased seller list. **Threshold: ≥20% (≥10/50) leave an email/WeChat AND ≥10% (≥5/50) sign a non-binding LOI or pre-pay intent at €150–300/yr.** Below 10% LOI → **No-Go** (distribution unsolvable solo).
2. **Platform-risk check.** Confirm Amazon has **not** announced native full-DPP automation or a free native technical-file generator for sellers. **Threshold: no such public announcement as of test date** (re-check Seller Central release notes + AWS DPP blog). If Amazon announces free native DPP automation → **No-Go on the DPP expansion thesis** (GPSR brokerage may still stand).
3. **Scope/clock verification (DONE — passes).** Verified via EUR-Lex: 19 July 2026 = registry infrastructure only; no textile/electronics DPP mandatory then; batteries 18 Feb 2027; textiles realistically ~2028. **Threshold: confirm the live revenue clock is GPSR, not DPP — confirmed.** Action: rewrite the pitch around GPSR.

**Staged next steps:**
- **Stage 0 (Weeks 1–3, ~$400):** Run Test 1 + Test 2. Recruit one Chinese-speaking BD/reseller partner to co-run the WeChat outreach.
- **Stage 1 (Weeks 4–16, ~$200, only if Stage 0 passes):** Build the GPSR technical-file + DoC + GS1 Digital Link QR demo with RAG over GPSR/standards. Sign an RP-brokerage partnership (revenue share) with an existing RP provider.
- **Stage 2 (pre-seed raise):** Pitch on signed LOIs/pre-pays + time-to-compliance metric + partner-channel CAC; frame DPP (2027–2029) as the expansion wedge.

**Benchmarks that change the decision:**
- LOI/pre-pay <10% → No-Go.
- Amazon ships free native DPP/GPSR document automation → DPP thesis dies; reassess GPSR-only.
- A funded competitor (Fluxy.One, Marqetir) locks the Chinese-seller channel with Chinese-language GPSR+DPP automation before the raise → window closing; move faster or No-Go.

## Recommendations
1. **Reposition immediately from DPP to GPSR.** The live, enforced clock that makes sellers pay *today* is GPSR + Amazon delisting. Use DPP (batteries 2027; textiles ~2028) as the "expanding TAM" narrative, never as the 19 July 2026 urgency hook.
2. **Run the fake-door demand test before writing product code.** This de-risks the single most important and most uncertain assumption: can a solo EU founder acquire Chinese sellers? Threshold ≥10% LOI/pre-pay.
3. **Secure a Chinese-speaking distribution partner and an RP-brokerage partner before building.** Distribution and RP liability are the two hardest non-technical problems; solve both via partnership, not in-house.
4. **Do not become the Responsible Person and do not certify documents.** Broker RP via revenue share; ship a self-declaration document tool with clear disclaimers.
5. **Price at/below the €150–400/yr incumbent ceiling**, ideally with a per-document or freemium hook to undercut Fluxy.One (€249/yr) and Marqetir (€59–179/mo).
6. **Budget ≤$900; reserve the $5k stretch** for a paid pilot cohort only after the fake-door passes.
7. **Document the EU AI Act non-high-risk self-assessment** (Art. 6(3)) and use B2B-to-non-EU VAT treatment (no EU VAT on sales to Chinese businesses).

## Caveats
- **"€10M / 4% of turnover" GPSR penalty is misleading as stated** [vendor spin flagged]. Penalties are national. Germany's new ProdSG (published in the Federal Law Gazette 5 Feb 2026, in force 19 Feb 2026) introduces, per Freshfields, *"a detailed catalogue of 32 new administrative offences… less serious violations may result in a fine of up to EUR 10,000, the maximum fine for the most serious offences remains at EUR 100,000"* — only 2 of the 32 offences reach €100k (plus profit-skimming above that). Comparators cited in the German parliamentary debate: Italy €50,000, Austria €25,000. The €10M/4% figure was a legislative-process discussion point and appears in vendor marketing; do not present it as the uniform statutory fine.
- **DPP timelines beyond batteries are indicative, not binding.** Textiles ~2027 adoption / ~2028 compliance and electronics timing are Commission Working Plan and vendor forecasts (conditional/future tense), subject to slippage.
- **ESPR entered into force 18 July 2024** (adopted 13 June 2024; per White & Case), though the registry deadline is correctly stated in the text as "19 July 2026."
- **Vendor pricing is self-reported** from vendor sites (EaseCert, Euverify, Fluxy.One, Marqetir, eugpsr.eu, Eldris) and seller-forum reports; treat as directional and verify at contract time. Eldris pages in particular read as SEO/affiliate content.
- **Payment-rail fees are vendor-reported:** PingPong ~1% all-in (USD→USD free), WorldFirst ~0.3% FX, Payoneer up to ~3.99% receiving / ~1.2–2.34% all-in. Practical for collecting USD SaaS fees from Chinese sellers, but vendor figures.
- **Competitor set is fast-moving:** Fluxy.One and Marqetir already occupy much of PassportPilot's intended footprint; this is the single biggest commercial risk and was confirmed from their own live pricing/product pages.
