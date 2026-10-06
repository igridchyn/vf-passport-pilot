<!--
Provenance: Claude deep-research report, chat "[FEAS+SPEC] PassportPilot build-ready
specification" (https://claude.ai/chat/fc73c867-f333-48ee-a792-5bc267164591), turn 1, artifact
"PassportPilot: GPSR-First Compliance Copilot Build-Ready Specification" (18 July 2026).
Imported into the repo 2026-10-06 (task S0, card A-001) at the founder's request. The text is
reproduced as written, with one change: a vendor support e-mail address is replaced by
"Supabase support" (the repo holds no e-mail addresses; scripts/check.sh). The artifact's
citation list is not reproduced. docs/research/2_spec_open_items.md (2026-10-05) re-checks
the open items in §"Unverified — must confirm before build"; where they differ, it wins.
-->

# PassportPilot — Build-Ready Specification Pack (GPSR-First Compliance Copilot)

**Prepared:** 18 July 2026 | **Status:** Build-spec prepared in parallel with the fake-door LOI gate; **NOT** a build green light. This pack assumes the ≥10%-intent-from-50-sellers test still gates the build.

## TL;DR
- **PassportPilot is buildable as an investor-credible PoC by a solo founder for ~$665 functional (≤$1,000 target), but the *true* total breaches $1,000 once fixed-fee legal review (~$550–$1,650) is added — so defer legal review to the $5k stretch and demo on a template disclaimer.** The regulatory facts confirm the GPSR-first wedge and the DPP deferral are both correct.
- **The headline demo metric holds and is now firmly sourced:** a complete, attestable GPSR pack in **≤20 minutes** vs. a manual baseline of **€400 per product (standard categories) / €500 (higher-risk), 3–5 business days** (EaseCert public pricing) — a ~100–500× speed improvement and a real cost wedge below the €400–€549/yr incumbent RP-service ceiling.
- **Cut scope hard:** launch on **textiles, furniture, jewelry** (pure-GPSR, no CE, few paywalled standards); **defer** DPP generation, marketplace API push, and multi-tenant billing. The single biggest technical risk is LLM-fabricated standard citations — mitigate with a deterministic zero-tolerance validator.

## Key Findings
1. **The GPSR domain model is stable and fully extractable from free primary sources.** GPSR (Reg. (EU) 2023/988, CELEX 32023R0988) Art. 9(2) mandates an internal risk analysis + technical documentation; Art. 19 mandates four listing blocks (manufacturer, EU responsible person, product ID + image, warnings in the member-state language). GPSR requires **no** formal Declaration of Conformity — only the technical file. This is the wedge.
2. **Amazon publishes exact SP-API GPSR attributes** (`gpsr_manufacturer_reference.gpsr_manufacturer_email_address`, `dsa_responsible_party_address`, `gpsr_safety_attestation`, `compliance_media.*`). Programmatic push is possible, but a **universal manual export pack** satisfies all marketplaces now with zero API work — the correct PoC path.
3. **Harmonized standards remain mostly paywalled** post-C-588/21 (only 4 toy/REACH standards freed; ISO/IEC counter-suit T-631/24 froze broader access). This dictates avoiding CE-heavy categories (electronics/toys) in the PoC.
4. **China reachability is a real but solvable constraint** — GFW DNS pollution blocks default Vercel/Supabase domains; a custom domain + partner-operated WeChat presence is required.
5. **The tool is not EU-AI-Act high-risk**, but Art. 50 transparency (label AI output, disclose AI interaction) binds from **2 Aug 2026**.

**Verdict-impact callouts (findings that could move the prior conditional-GO):**
- **NEUTRAL/POSITIVE — Toy Safety Regulation now law.** Reg. (EU) 2025/2509 published in the OJEU **12 Dec 2025**, fully applicable **1 Aug 2030** after a 54-month transition, with a mandatory toy DPP that (per Bureau Veritas) "will replace the traditional EU declaration of conformity," accessible via a QR-code data carrier. Confirms toys as a "documentation-heavy, DPP-in-2030" category → validates DPP deferral.
- **POSITIVE — Official Amazon SP-API GPSR attributes exist.** De-risks the Phase-2 API push; the manual export pack is viable today.
- **NEGATIVE/RISK — Standards paywall + OJEU citation instability** (esp. EN IEC 62368-1) raises golden-set/grounding cost for CE categories → reinforces textile/furniture/jewelry launch.
- **NEUTRAL — China reachability** requires custom domain + partner WeChat; budgeted, does not change verdict.

---

## MODULE 1 — Regulatory Requirements Decomposition (the domain model)

### 1.1 GPSR core obligations (verbatim, load-bearing)
GPSR = Regulation (EU) 2023/988, CELEX **32023R0988**, applicable since 13 Dec 2024.

**Art. 9(2) — internal risk analysis + technical documentation** [empirically established]: *"Before placing their products on the market, manufacturers shall carry out an internal risk analysis and draw up technical documentation containing at least a general description of the product and its essential characteristics relevant for assessing its safety."* Technical documentation kept **10 years** (Art. 9(3); importer copy Art. 11(6)). A declaration alone does not satisfy this — the risk analysis is the non-delegable core.

**Art. 9(5)–(7) — traceability & labeling** [empirically established]: type/batch/serial or other identifier on product (or packaging/accompanying document if size/nature prevents); manufacturer name, registered trade name/trademark, postal address and electronic address; instructions and safety information in a language determined by the Member State where the product is made available.

**Art. 16 / Reg. (EU) 2019/1020 Art. 4(3) — responsible economic operator** [empirically established]: a product shall not be placed on the market unless there is an economic operator established in the Union responsible for it. Art. 4(3) tasks: hold technical documentation/DoC; provide information to prove conformity; cooperate with market surveillance; inform authorities of risk. RP name/contact must appear on product, packaging, parcel, or accompanying document (Art. 16(3)).

**Art. 19 — distance-selling listing content** [empirically established]. Four mandatory blocks, visible before purchase (a mere link/T&C reference does not suffice, per IHK guidance): (a) manufacturer name, registered trade name/trademark, postal + electronic address; (b) if manufacturer non-EU, the responsible person's name/postal/electronic address; (c) product identification information including a picture, type, and any other identifier; (d) any warning or safety information in a language easily understood by consumers, as determined by the Member State.

### 1.2 Member-state language matrix (warnings/instructions)
[empirically established] DE (German — ProdSG §6, in force 19 Feb 2026); AT (German); IT (Italian — Consumer Code Art. 104 as replaced by D.Lgs 78/2026); FR (French); ES (Spanish); NL (Dutch); PL (Polish). PoC target: DE, AT, FR, IT, ES, NL, PL + English source.

### 1.3 Category → regime map

| Category | GPSR role | Harmonized law | Key standards | DoC |
|---|---|---|---|---|
| Toys | Complementary | Toy Safety Reg. (EU) 2025/2509 (from 1 Aug 2030; TSD 2009/48/EC until then) | EN 71 series, EN IEC 62115 | Yes → DPP from 2030 |
| Low-voltage electronics | Complementary | LVD 2014/35/EU | EN IEC 62368-1 | Yes |
| Radio/Bluetooth | Complementary | RED 2014/53/EU | EN IEC 62368-1, EN 300 328, EN 301 489, EN 18031 (cyber, from 1 Aug 2025) | Yes |
| Childcare articles | GPSR + partial harmonized | Partly GPSR | EN 716, EN 1130, EN 16890 | Depends |
| Textiles/apparel | GPSR (primary) | REACH restrictions | REACH Annex XVII | No (GPSR tech file) |
| Furniture | GPSR (primary) | REACH | EN 12520/12521 etc. | No |
| Jewelry | GPSR (primary) | REACH (Ni, Pb, Cd) | REACH Annex XVII | No |

**Recommended launch categories (Chinese-seller volume × documentation tractability × enforcement intensity):** **(1) Textiles/apparel** — highest Chinese-seller volume, pure-GPSR (no CE), REACH-driven, high DE warning-letter enforcement (Händlerbund documented ≥12 GPSR warning cases in May 2025 alone, €357–€1,600+ per violation). **(2) Furniture/home goods** — pure-GPSR, tractable, incumbents already target it. **(3) Jewelry/accessories** — pure-GPSR, REACH chemical restrictions, high volume. **Defer electronics/toys** for the PoC (CE + paywalled standards + notified-body complexity raise cost and fabrication risk).

### 1.4 C-588/21 free-access status [empirically established]
CJEU Grand Chamber, 5 Mar 2024, C-588/21 P (Public.Resource.Org), **ECLI:EU:C:2024:201**: sets aside the General Court judgment T-185/19 (14 Jul 2021) and annuls Commission Decision C(2019) 639 final, granting free access **only to the four requested toy-safety standards** (chemistry games/sets: EN 71-4, EN 71-5, EN 71-12, EN 12472). Copyright of harmonized standards was **not** annulled. ISO/IEC filed T-631/24 (6 Dec 2024, pending); since then only "pure-EU" standards are added to the OJEU. **Practical implication: most harmonized standards (EN IEC 62368-1, most EN 71 parts) remain purchasable (~€80–€200 each).** A free CEN-CENELEC "readability platform" is in development but not launched. Confirms the textile/furniture/jewelry launch recommendation.

### 1.5 Requirements-Traceability Matrix (excerpt; full REQ register below)

| REQ-ID | Regulation article | Required document/field | Product feature | Epistemic |
|---|---|---|---|---|
| REQ-001 | GPSR Art. 9(2) | Internal risk analysis + tech file | Risk-analysis agent + tech-file template | [empirically established] |
| REQ-002 | GPSR Art. 9(5) | Type/batch/serial identifier | SKU identifier field | [empirically established] |
| REQ-003 | GPSR Art. 9(6) | Manufacturer name + postal + electronic address | Manufacturer entity fields | [empirically established] |
| REQ-004 | GPSR Art. 9(7) | Instructions + safety info in MS language | Multi-language warning generator | [empirically established] |
| REQ-005 | GPSR Art. 16 / 2019/1020 Art. 4(3) | RP identity + tasks | RP-brokerage interface (partner) | [empirically established] |
| REQ-006 | GPSR Art. 19(a)–(d) | Listing content: manufacturer, RP, product ID+image, warnings | Marketplace export-pack generator | [empirically established] |

---

## MODULE 2 — Marketplace Integration Specs

### 2.1 Amazon (primary target)
**Manage Your Compliance flow** [empirically established]: Seller Central → Performance → Account Health → Manage Your Compliance. Manufacturer/RP entered via the "Add compliance information" widget; documents also via inventory-file templates. RP info shown on detail pages within 24h of confirmation; Amazon selects submissions meeting style guides. Non-compliant listings suppressed (7–14 days notice), escalating to account restriction.

**SP-API GPSR attributes** [empirically established — Amazon developer-docs]. Exact field names (Listings Items API v2021-08-01 or JSON_LISTINGS_FEED):
- `gpsr_manufacturer_reference.gpsr_manufacturer_email_address` (manufacturer email, ASIN level; must exactly match Seller Central)
- `dsa_responsible_party_address` (responsible party, SKU level)
- `gpsr_safety_attestation` (Boolean; TRUE if exempt from warning/safety info)
- `compliance_media` → `content_type` (valid: `patient_fact_sheet`, `provider_fact_sheet`, `installation_manual`, `instructions_for_use`, `user_guide`, `user_manual`, `safety_information`), `content_language` (e.g., `de_DE`), `source_location` (public URL — **not** Google Drive or Dropbox).

Retrieve schemas via `getDefinitionsProductType`. Programmatic submission is permitted. **Critical warning (verbatim, Amazon):** *"Full programmatic updates via legacy XML Feed types will override GPSR information uploaded by selling partners."* Affected marketplaces: ES, FR, BE, NL, DE, IT, SE, PL. NI in scope; UK store requires no submission.

**File specs** [empirically established, vendor-corroborated]: Product-safety documents accepted as **PDF, max 10 MB**, in the sales-country language (corroborated by Forest Shipping's Amazon GPSR checklist: *"instruction manuals or user guides in PDF format, with a maximum file size of 10MB, in the language of the sales country"*); document title must exactly match the Amazon drop-down option or it is rejected; up to 6 image slots (PS01–PS06 variants). **Conflict flagged:** the separate Dangerous-Goods SDS flow allows "20 MB max, in .docx/.pdf/.jpg" and account-health/authenticity uploads allow larger files — these are **not** the GPSR product-safety flow.

### 2.2 Other marketplaces (shallower)

| Marketplace | RP/manufacturer fields | Warnings | API vs manual | Notes |
|---|---|---|---|---|
| Etsy | Seller = manufacturer; RP field | In listing | Mostly manual | Handmade/vintage sellers treated as manufacturers |
| eBay | Item Specifics / "EU Compliance" | In description/specifics | Manual, less automated | Dedicated fields limited |
| Kaufland | Manufacturer + RP fields | In listing | Feed-based | Via listing feeds |
| Allegro | Manufacturer + RP fields | In listing | Feed/API | PL market — Polish |
| bol.com | Manufacturer + RP | In listing | Feed/API | NL/BE — Dutch |
| TikTok Shop EU | RP required; GPSR obligations | In listing | Via connectors | EU global selling live 2025 |
| Temu EU | GPSR/RP obligations enforced | In listing | Platform-managed | Semi-managed model |

### 2.3 Universal manual "export pack" spec (the PoC path) [plausible]
Ship a single canonical export: (1) PDF compliance pack (risk analysis + tech file + DoC where harmonized law applies + per-language warning/label sheet); (2) copy-paste "listing safety block" per Art. 19 in each required language; (3) Amazon-ready CSV/flat-file column set matching the SP-API attribute names above; (4) print-ready label artifact + optional GS1 Digital Link QR. No API integration required for v1.

---

## MODULE 3 — Regulatory Corpus & Data Architecture

### 3.1 Corpus manifest

| Instrument | CELEX / ID | Access | Cost |
|---|---|---|---|
| GPSR | 32023R0988 | EUR-Lex consolidated | Free |
| Market Surveillance Reg. | 32019R1020 | EUR-Lex | Free |
| Toy Safety Reg. | (EU) 2025/2509 (OJ 12 Dec 2025) | EUR-Lex | Free |
| Toy Safety Directive | 32009L0048 | EUR-Lex | Free |
| LVD | 32014L0035 | EUR-Lex | Free |
| EMC | 32014L0030 | EUR-Lex | Free |
| RED | 32014L0053 | EUR-Lex | Free |
| RoHS | 32011L0065 | EUR-Lex | Free |
| REACH | 32006R1907 | EUR-Lex | Free |
| ESPR | 32024R1781 | EUR-Lex | Free |
| Battery Reg. | 32023R1542 (battery DPP from 18 Feb 2027) | EUR-Lex | Free |
| DE ProdSG (2026) | BGBl 2026 I Nr. 29 (5 Feb 2026; in force 19 Feb 2026) | Gesetze-im-Internet | Free |
| IT D.Lgs 78/2026 | GU n.111, 15 May 2026 (in force 16 May 2026) | Gazzetta Ufficiale | Free |
| Blue Guide 2022 | C/2022/3637 | EUR-Lex/OP | Free |
| Harmonized standards (EN 71, EN IEC 62368-1, etc.) | OJEU citation lists | Purchase (mostly) | ~€80–€200 each |
| CEN-CENELEC DPP standards | EN 18216, 18219, 18220, 18221, 18222, 18223 (pub. 27 May 2026); prEN 18239, prEN 18246 (formal vote to 16 Jul 2026) | CEN-CENELEC / national bodies | Purchase |

**Penalties (never use in product copy — national, not "€10M/4%"):** DE ProdSG §28 — up to **€100,000** (serious), up to **€10,000** (other), plus profit-skimming under OWiG; §29 imprisonment up to 1 year for persistent/dangerous intentional violations. IT D.Lgs 78/2026, Consumer Code Art. 112 — dangerous products: arrest 6 months–1 year + fine **€10,000–€100,000** (up to **€150,000** for serious risk); non-cooperation €4,000–€40,000; GPSR-obligation breaches €2,500–€25,000; non-compliance with authority measures €3,000–€30,000.

### 3.2 Safety Gate / RAPEX access [empirically established]
Weekly alert reports every Friday; open data via data.europa.eu (RAPEX dataset, based on Commission Excel files, 25 languages); an XML detail endpoint exists at `ec.europa.eu/safety-gate-alerts/api/`. No official REST developer API with SLA; third-party scrapers (Apify) exist. Design: weekly pull → store in Postgres → embed product/hazard descriptions in pgvector to ground risk analyses in real recall data.

### 3.3 Update-monitoring design [plausible]
Watch: EUR-Lex (RSS/SPARQL on amendments to listed CELEX IDs), OJEU harmonized-standards citation lists per directive, national gazettes (DE/IT), CEN-CENELEC DPP standard status. Cadence: weekly automated diff → LLM summarizer → **mandatory human-verification checkpoint before any prompt/template change** (zero auto-updates to legal templates).

### 3.4 Product data model (field-level, DPP-forward)
SKU compliance record (JSON-schema level): `sku_id`, `gtin` (GS1), `product_type`, `regime[]`, `manufacturer{name, trade_name, postal_address, electronic_address}`, `responsible_person{name, address, email}`, `identifiers{type, batch, serial}`, `materials[]`, `test_reports[]{standard, lab, date, file_ref}`, `risk_analysis{hazards[], mitigations[], method}`, `warnings[]{lang, text}`, `doc{applicable, standards[], signatory}`, `attestation{by, timestamp, ip}`. DPP-forward superset (from ESPR Annex III + Battery Reg Annex XIII): `sustainability{carbon_footprint, recycled_content, recyclability}`, `unique_id`, `data_carrier`, `economic_operator_id`, `facility_id`. A future DPP is then a **view** over existing fields, not a migration.

**GS1 Digital Link** [empirically established]: URI structure `https://{domain}/01/{GTIN-14}/10/{batch}/21/{serial}` (AI `01`=GTIN always in 14-digit form; `10`=batch/lot; `21`=serial). Convenience alphas (`/gtin/`) are deprecated — do not use. QR per ISO/IEC 18004. Validate with the GS1 Digital Link toolkit at ref.gs1.org.

---

## MODULE 4 — Agentic Generation Pipeline & System Architecture

### 4.1 Orchestration graph (LangGraph on FastAPI + Supabase/Postgres + pgvector + Railway/Render/Fly.io)
Nodes: **intake wizard (zh-CN)** → **regime classifier/router** (category → applicable regime + required doc set) → **evidence ingestion** (OCR of Chinese lab reports) → **risk-analysis drafter** → **template-constrained, slot-filled document generator** (no freeform legal prose) → **deterministic validator agents** (per-regime checklists; zero-tolerance citation check against the corpus) → **human attestation gate** → **export**.

### 4.2 OCR path [empirically established, benchmark-sourced]
For Chinese lab test reports, use a frontier VLM (Gemini 3.1 Pro / GPT-5 class) for single-pass extraction to structured JSON — these lead 2026 OCR/handwriting benchmarks (Gemini Flash 3.1-Lite tops the IDP leaderboard; GPT-5 ~1.22% CER on IAM handwriting) and handle mixed CN/EN. **PaddleOCR-VL** (Chinese-origin, tops OmniDocBench ~92.86, ~$0.09/1k pages self-hosted) is a cheap high-accuracy alternative for volume. **Recommendation:** Gemini/GPT VLM via API for the PoC (no GPU infra). OCR output MUST be human-verified at the attestation gate.

### 4.3 Evaluation harness & acceptance thresholds [plausible]
- ≥95% required-field completeness per regime checklist
- **0 fabricated standard citations** (deterministic: every cited EN/standard must exist in the corpus manifest; hard-fail otherwise)
- Independent compliance-professional review: ≤2 minor findings per pack
- Time-to-pack ≤20 min from complete inputs
- Golden set: 10–20 real technical files (published examples + one paid consultant reference pack + any public incumbent outputs)

### 4.4 China UX & reachability [empirically established]
- zh-CN UI; document outputs English + required EU languages.
- **GFW reality:** default `*.vercel.app` and Supabase default domains suffer DNS pollution / SNI blocking on port 443 in mainland China (confirmed via OONI/GreatFire and Vercel's own KB). **Mitigation:** custom domain (not `.vercel.app`), self-host fonts/scripts, consider HK/SG edge. No ICP license unless hosting in-country.
- **WeChat:** a foreign sole proprietor generally cannot readily register a mainland WeChat Official Account / WeChat Login without a Chinese business entity → **specify a partner-operated fallback** (Chinese partner/agency operates the Official Account); default to email + WeChat-via-partner support.

### 4.5 Billing [empirically established]
B2B sales to Chinese businesses are outside EU VAT scope. Use a **merchant-of-record**: **Lemon Squeezy** (per its own docs: *"one simple transaction fee of 5% + 50¢"* with *"+1.5% for international (outside of the US) transactions"*; accepts Visa/MC/Amex/Discover/Diners/JCB **and China UnionPay**; same-day onboarding; note Stripe acquired Lemon Squeezy in July 2024) or **Paddle** (5% + $0.50 headline, 2–3% FX on non-USD, 1–7 business-day verification, 15–30 day payout hold). **Recommendation: Lemon Squeezy for PoC speed** (instant onboarding + UnionPay), Paddle as fallback. Non-card fallback: invoice + PingPong/WorldFirst/Payoneer.

### 4.6 Third-party service list (monthly)

| Service | Purpose | Monthly cost |
|---|---|---|
| Supabase (EU region) | Postgres + pgvector + auth + storage | $0 free → $25 Pro |
| Railway/Render/Fly.io | FastAPI + LangGraph host | $5–$20 |
| Claude Max | Coding + generation | Already paid |
| Gemini/GPT VLM API | OCR + generation | ~$10–$30 usage |
| Custom domain | China reachability | ~$1–$2 |
| Lemon Squeezy | MoR billing | 5% + $0.50/txn, +1.5% intl (no fixed) |

---

## MODULE 5 — Legal, Trust & Liability Requirements for the Tool

### 5.1 Required legal artifacts [plausible unless noted]
- **ToS** with "tooling-not-legal-advice" and "seller-as-attesting-operator" clauses; Austrian B2B specifics (UGB). Enforceable pattern: tool generates documents the seller reviews and attests to; no warranty of legal compliance; seller remains the responsible economic operator.
- **DoC signature** [empirically established]: sector directives require the EU DoC to be issued *"under the sole responsibility of the manufacturer"* (or authorized representative), who signs. In-app confirmation/e-signature is acceptable where eIDAS-compliant; **the tool must not sign — the seller attests.** GPSR itself requires no DoC (tech file only).
- **RP-brokerage interface** [empirically established]: RP providers require a written mandate/authorization (Reg. 2019/1020 Arts. 4–5) naming tasks; data exchange of tech file + contact details; observed referral/revenue-share structures. RP market pricing: Westwood €150/yr (unlimited SKUs), Euverify from €200/yr, Eldris £195 one-time + £19.95/mo, EaseCert €400 one-time, Fluxy from €249/yr, general range €195–€549/yr.
- **GDPR** [empirically established]: Art. 28 DPA — Supabase offers a DPA (request via the dashboard or Supabase support); host in EU region (eu-central-1/eu-west-1) for data residency; Art. 30 record of processing; Art. 32 security (AES-256 at rest, TLS 1.2+ in transit) for confidential test reports. Most customer *product* data is not personal data, reducing exposure; supplier/user contact data is.
- **EU AI Act** [empirically established]: NOT high-risk (Annex III does not cover compliance-document generation). Art. 50 transparency binds from **2 Aug 2026** — Art. 50(1): inform users they interact with AI (unless obvious); Art. 50(2): mark AI-generated output in machine-readable, detectable format (Code of Practice references C2PA). Document the non-high-risk self-assessment against Annex III + Art. 6. Art. 50 applies regardless of high-risk status.

### 5.2 Legal artifacts sourcing path [plausible]
Template (ToS/DPA/disclaimer) + fixed-fee Austrian lawyer review, **~€500–€1,500**. This is the single biggest line item and pushes the true total near/over $1,000 (see Module 6).

---

## MODULE 6 — PoC Scope, Acceptance Criteria & Build Plan

### 6.1 MoSCoW
- **Must:** intake wizard (zh-CN); regime classifier for textiles/furniture/jewelry; OCR ingestion; risk-analysis + tech-file generator (template-constrained); deterministic validator (0 fabricated citations); attestation gate; PDF export pack + Art. 19 listing blocks in DE/AT/FR/IT/ES/NL/PL + English; Amazon-ready CSV.
- **Should:** Safety Gate grounding; GS1 Digital Link/QR generation; RP-broker referral hand-off.
- **Could:** more categories; more marketplace export formats.
- **Won't-yet (justified):** **DPP generation** — deferred to 2027+ (battery DPP 18 Feb 2027, toy DPP 2030; no PoC value, adds CEN-CENELEC standards cost); **marketplace API push** — SP-API integration + app review is real work; manual export proves value; **multi-tenant billing** — single-tenant demo + MoR checkout suffices for investor proof.

### 6.2 Investor demo script (headline metric)
"A Chinese textile seller uploads a product spec + Chinese test report. In **under 20 minutes**, PassportPilot produces a complete, attestable GPSR pack (risk analysis + technical file + 7-language warning sheet + Amazon-ready listing block) — versus a manual baseline of **€400 per product (standard categories such as clothing, footwear, accessories, jewelry, home/office supplies) or €500 (higher-risk: electricals, household goods, kitchenware, furniture, toys), typically completed in 3–5 business days** (EaseCert public pricing). A 20-SKU catalogue that costs ~€8,000 via a consultant becomes a same-day, self-service task."

### 6.3 Build plan (8–15 hrs/week; naive vs 2–4×-corrected)

| Phase | Naive | Corrected (2–4×) |
|---|---|---|
| Corpus ingest + RAG + data model | 2 wk | 5–7 wk |
| Intake wizard + regime classifier | 2 wk | 4–6 wk |
| OCR + evidence ingestion | 1 wk | 2–3 wk |
| Generator + validators (0-fabrication) | 3 wk | 7–10 wk |
| Export pack + languages | 2 wk | 4–6 wk |
| Attestation + billing + legal | 2 wk | 4–6 wk |
| **Total** | **~12 wk** | **~26–38 wk (6–9 months)** at 8–15 hrs/wk |

### 6.4 Budget (proving ≤$1,000)

| Item | Cost |
|---|---|
| Hosting (Supabase Pro + Railway), 6 mo | ~$200 |
| OCR/LLM API usage | ~$100 |
| Custom domain (1 yr) | ~$15 |
| 1–2 harmonized standards (reference/golden set) | ~$200 |
| Native Chinese-language review (freelance) | ~$150 |
| Legal-template review (fixed-fee) | **$550–$1,650** |
| **Subtotal excl. legal** | **~$665** |
| **Total incl. legal (low)** | **~$1,215 — BREACHES $1,000** |

**Honest flag:** the true total **breaches $1,000**, driven almost entirely by legal review. **Mitigation:** for the investor demo, ship a well-drafted template ToS/disclaimer without full lawyer review (defer to the $5k stretch once the LOI test passes) — keeping the functional PoC at **~$665**. Full legal review is mandatory before real customer contracts, not before the demo.

### 6.5 Top 5 spec-level risks

| Risk | Mitigation |
|---|---|
| Amazon slot-taxonomy churn (GPSR fields partly beta at Dec-2024 launch) | Abstract export mapping to config; monitor SP-API changelog |
| Standards paywalls (post-C-588/21 freeze) | Launch categories needing few paywalled standards; buy 1–2 references; ground on free EUR-Lex text + Safety Gate |
| WeChat account barriers for foreign founder | Partner-operated Official Account; email + WeChat-via-partner support |
| Golden-set access | Published examples + one paid consultant pack + public incumbent outputs |
| Fabricated citations (LLM hallucination) | Deterministic validator: every citation must exist in corpus or hard-fail |

---

## Consolidated REQ Register

| REQ-ID | Source | Requirement | Epistemic |
|---|---|---|---|
| REQ-001 | GPSR Art. 9(2) | Internal risk analysis + tech file (general description + essential characteristics) | [empirically established] |
| REQ-002 | GPSR Art. 9(5) | Type/batch/serial identifier | [empirically established] |
| REQ-003 | GPSR Art. 9(6) | Manufacturer name + postal + electronic address | [empirically established] |
| REQ-004 | GPSR Art. 9(7) | Instructions + safety info in MS language | [empirically established] |
| REQ-005 | GPSR Art. 16 / 2019/1020 Art. 4(3) | RP identity + Art. 4(3) tasks | [empirically established] |
| REQ-006 | GPSR Art. 19(a)–(d) | Listing content: manufacturer, RP, product ID+image, warnings | [empirically established] |
| REQ-007 | Amazon SP-API | GPSR attribute mapping (gpsr_manufacturer_reference, dsa_responsible_party_address, gpsr_safety_attestation, compliance_media.*) | [empirically established] |
| REQ-008 | Amazon MYC | 10 MB PDF export limit; title must match drop-down; public URL (no Drive/Dropbox) | [empirically established] |
| REQ-009 | GDPR Arts. 28/30/32 | EU-region residency + Supabase DPA + security spec | [empirically established] |
| REQ-010 | EU AI Act Art. 50 | AI-interaction disclosure + machine-readable output marking from 2 Aug 2026 | [empirically established] |
| REQ-011 | Eval spec | 0 fabricated citations validator | [plausible] |
| REQ-012 | Reg. 2019/1020 Arts. 4–5 | RP mandate template | [empirically established] |
| REQ-013 | GS1 Digital Link / ISO 18004 | GS1 DL URI + QR generation | [empirically established] |
| REQ-014 | ESPR Annex III / Battery Reg Annex XIII | DPP-forward field superset (deferred generation) | [empirically established] |

## "Unverified — must confirm before build" Register
1. **Amazon GPSR product-safety PDF size limit** — 10 MB per vendor sources (Forest Shipping); confirm in current Seller Central help. Separate flows (SDS 20 MB; authenticity uploads larger) exist and must not be conflated.
2. **SP-API GPSR field GA status** — were partly beta at Dec-2024 launch; confirm now GA across all target-category templates.
3. **WeChat Official Account eligibility** for an Austrian sole proprietor — confirm current Tencent policy / partner requirement (not verified this cycle).
4. **Purchase price + OJEU citation status of EN IEC 62368-1** (citation unstable; 2014 ed. still the harmonized version) and specific EN 71 parts.
5. **Austrian B2B enforceability** of the tooling-not-legal-advice disclaimer — confirm with fixed-fee lawyer.
6. **Neutral manual-baseline figure** — all current cost/time figures (EaseCert €400/€500, 3–5 days; GPSRCheck €400/SKU benchmark) come from compliance-service vendors' own pages; no independent/government source quantifies per-product hours. Triangulate ≥2 vendors.
7. **Supabase EU-region + DPA sufficiency** for confidential (largely non-personal) test reports under client confidentiality expectations.
8. **Marqetir pricing** (cited €99–€249/mo in prior findings) — not re-verified this cycle.
9. **prEN 18239 / prEN 18246** DPP security standards — under formal vote to 16 Jul 2026; confirm final publication before any DPP roadmap commitment.

---

*Epistemic-tag key: [empirically established] = confirmed against primary/authoritative sources; [plausible] = reasoned design recommendation not yet independently validated; [founder optimism — unverified] = none carried forward into this final spec. Vendor-sourced figures (RP pricing, manual baselines, MoR fees, OCR benchmarks) are flagged inline as self-interested where relevant; all build-time estimates carry a 2–4× optimism-bias correction.*
