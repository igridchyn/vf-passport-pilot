# 1_feasibility_refresh.md — Feasibility refresh (run 3): dated delta since 15 July 2026

Date: 2026-10-05. Task R1 (`docs/planning/validation-plan.md`). Serves test **P** (platform
risk) directly, and tests **D** (price band, positioning) and **C** (channel types) indirectly.

**What this is.** A delta against feasibility run 2 (15 July 2026), whose facts are summarised
in `decision-log.md` #5 (the runs themselves are not yet imported, task S0). It re-checks the
facts the gate and the pitch depend on. It is a research note for the founder, **not public
copy**. No sentence here goes onto the landing page or into outreach without re-checking its
primary source.

**Method and its limit (read this first).** Desk research on 2026-10-05 with WebSearch. The
session's proxy refused every WebFetch, including EUR-Lex, ec.europa.eu, aboutamazon.com and
the vendor sites, so **every finding rests on search-result snippets and summaries; no full
page was read.** Each line still names the URL the snippet came from. Tags: [established] =
an official or primary source (Commission, Council, EUR-Lex, a national gazette, a
marketplace's own pages), but snippet-read; [plausible] = credible secondary (law firms,
trade press); [vendor claim] = a vendor about itself or its market. The verdict-bearing items
(test P, the DPP registry, the DE/IT/AT penalty facts, the two DSA fines, EUProof's pricing)
were searched twice, independently. Before G1 re-runs test P, a session with page access
should open the starred (★) sources in full. Rows marked "undated" carry no page date in the
snippet; read them as "accessed 2026-10-05".

## 0. Bottom line

- **Test P: PASS (provisional, snippet-read) as of 2026-10-05.** No public announcement found that Amazon or Etsy ships a
  free native full-DPP automation or a free native GPSR technical-file generator for sellers.
  Amazon moved closer at Accelerate (22–24 Sep 2026), with compliance automation, a "test once,
  sell globally" pilot, a 2027 plan to show requirements and costs before manufacture, and a
  free year of a general-purpose AI workspace that can draft documents.
  That is the watch item for G1 (§1).
- **Regulation: run 2's framing holds and DPP moves further out.** The DPP registry went live
  on 20 July 2026, a Commission deliverable, not a seller duty. Textiles' delegated act is
  planned for Q4 2027, so it applies in 2029 at the earliest. The battery passport date
  (18 Feb 2027) is unchanged. GPSR penalties stay national. Run 2's IT and DE figures need
  more precision (base tier vs top tier), and no adopted Austrian GPSR penalty law was found
  (§2).
- **Competitors: one new direct match at the same price.** **EUProof** sells
  questionnaire-generated GPSR risk assessments, technical files, DoCs and multilingual
  warnings. It charges €190/yr for 1 product and €390/yr for 10, in English with no Chinese
  UI found. **EAS Project** sells RP bundles with "AI-assisted" documentation from €199/yr and
  has a Chinese-language site. The €150–300/yr band is in the market. Feature parity alone
  is not a wedge; Chinese-first plus the channel is (§3).
- **Channel: compliance reaches Chinese sellers bundled.** The visible routes are Amazon's
  SPN "Compliance" listings, VAT/EPR/EU-rep one-stop agents, ERP vendors that bought compliance
  arms, and test labs. Chinese EU-rep prices (¥268–568/yr) anchor far below €150 (§4).
- **Recommendation: continue.** The conditional GO (GPSR-first) holds, and the decisive test
  needs no change. §5 steelmans "adjust", the case for revising D's band before the first
  outreach. Refinements that stay inside the plan: positioning (FD.1/FD.2), the
  partner order (CH.1), and correcting #5's penalty figures (§5).

## 1. Test P — platform risk

The test (`decisive-test.md`): PASS if, as of the gate date, there is no public announcement
that Amazon (or Etsy) ships free native full-DPP automation or a free native GPSR
technical-file generator for sellers.

### 1.1 Amazon Accelerate 2026 (Seattle, 22–24 September 2026)

| Finding | Source (date) | Tag |
|---|---|---|
| The headline was AI. Seller Assistant gained memory and approval-gated "always-on" workflows, and the seller chooses whether it surfaces insights, drafts actions or acts. A Selling Partner plugin brings Seller Assistant into third-party assistants. No GPSR, DPP or technical-file generation appears in recap snippets. | ★ [Accelerate 2026 recap](https://sellingpartners.aboutamazon.com/accelerate-2026-recap) (late Sep 2026); [Code3 recap](https://code3.com/resources/amazon-accelerate-2026-recap-ai-moves-to-the-center-of-the-seller-experience/) (Sep 2026) | [established] / [plausible] |
| **"Test once, sell globally"**: one safety-test submission counts toward several countries' certification. It started with toys; electronics and baby products follow by year-end. Each country's labelling, safety and tax rules still apply. Pilot sellers report "up to 60%" compliance-cost savings (Amazon's figure). | ★ [Amazon: new tools to help sellers go global](https://www.aboutamazon.com/news/innovation-at-amazon/amazon-sellers-global-expansion-tools) (24 Sep 2026); [PPC Land](https://ppc.land/amazons-test-once-pilot-cuts-seller-compliance-costs-by-up-to-60/) | [established]; savings [vendor claim] |
| **2027 plan:** Amazon will "give sellers requirements and costs before they manufacture a single unit". Automated listing creation flags each destination's compliance requirements. | same Amazon post (24 Sep 2026) | [established] (announced, not live) |
| Amazon says its systems auto-confirmed compliance for >8M products in the past year and expects to double that by end-2026. Flagged listings stay live while the seller fixes them, with steps shown and a way to dispute. | ★ Accelerate recap (above) | [established] |
| Seller Assistant scans listings against policy and safety rules, flags missing certifications and offers "guided compliance document remediation". Remediation guides an **upload**; no source says it writes a risk assessment or technical file. The compliance-flagging capability probably dates from the agentic Seller Assistant launched at Accelerate **2025** (Sep 2025), not 2026. | [SellerSprite](https://www.sellersprite.com/en/blog/amazon-ai-seller-assistant-agentic-2026) (undated); [SentryKit](https://sentrykit.com/blog/amazon-accelerate-2026-announcements/) | [plausible] |
| **Selling Partner plugin and free Amazon Quick Plus:** Seller Assistant connects listings, performance and analytics data to Amazon Quick and to Anthropic's Claude (beta, US stores; announced 23 Sep 2026). Primary account holders get Quick Plus free for 12 months if they sign up by 31 Dec 2026. Quick is a **general-purpose** AI workspace that can create documents. It is not a native GPSR technical-file generator, but a seller could prompt it to draft one from listing data. | [Seller Central forum announcement](https://sellercentral.amazon.com/seller-forums/discussions/t/f1daefcb-8fe8-4526-9c06-fb34169c9804) (Sep 2026); [Amazon: Seller Assistant plugin](https://www.aboutamazon.com/news/innovation-at-amazon/seller-assistant-plugin-amazon-quick-claude) (Sep 2026) | [established] |

**Read.** Accelerate pushed compliance **checking, routing to labs, and remediation**, not
document **generation**. The 2027 "requirements and costs before manufacture" view, joined
to an agentic Seller Assistant that drafts actions, is the shortest path to Amazon one day
drafting GPSR paperwork itself. Watch it at G1.

### 1.2 Seller Central GPSR tooling (Manage Your Compliance and since)

| Finding | Source (date) | Tag |
|---|---|---|
| Manage Your Compliance has free native GPSR fields (manufacturer, Responsible Person, safety information as PDFs or images). The SP-API Listings Items API and JSON feeds carry GPSR attributes and document uploads. No 2026 change found. Matches run 2. | [Amazon: Manage Your Compliance](https://sell.amazon.com/blog/manage-your-compliance) (undated); [SP-API changelog: GPSR attributes](https://developer-docs.amazon/sp-api/changelog/developers-can-use-attributes-in-their-programmatic-listings-submissions-to-comply-with-gpsr) | [established] |
| A German 3PL's blog says that from 23 March 2026, Seller Central added a compliance dashboard, pre-submission validation, technical-file **storage**, and an "AI-assisted risk assessment that scans listings… for compliance gaps". **No Amazon source confirms it**; a search for its "REO appointment wizard" term finds nothing else. Even taken literally, it is upload, storage and gap-scanning, not a generated GPSR risk analysis or technical file. | [FLEX Logistik](https://flexlogistik.de/amazon-introduces-tools-to-simplify-product-compliance-checks/) (Mar 2026) | [plausible], weak; unconfirmed |
| Secondary sources also describe a per-ASIN EU GPSR status dashboard with a 30-day removal countdown (Q3 2026), compliance review before new listings go live, and 30-day ASIN notices (May 2026). No Amazon page confirms any of these. | [SentryKit](https://sentrykit.com/blog/amazon-asin-creation-policy-crackdown-2026/); [Novadata](https://novadata.io/resources/news/amazon-asin-creation-policy-crackdown-may-2026) (May 2026) | [vendor claim]; unconfirmed |
| Direct Product Validation routes sellers to accredited test labs through Account Health. EU/UK scope at Safety Day: toys, children's sand, portable power supplies. Sellers pay the labs. | ★ [Amazon Safety Day 2026, Munich](https://trustworthyshopping.aboutamazon.com/en-uk/advancing-product-safety-across-europe-amazon-hosts-first-safety-day-2026-in-munich) (May 2026) | [established] |
| Amazon Global Selling China sends sellers to the Service Provider Network (filter: location China, category Compliance) for EU Responsible Person services. | [gs.amazon.cn module 27-7](https://gs.amazon.cn/learn/module/module-27-7) (undated) | [established] |

### 1.3 Amazon / AWS and the DPP after May 2026

| Finding | Source (date) | Tag |
|---|---|---|
| At Safety Day (Munich, May 2026), Amazon promoted DPPs, including "one-click" packaging updates for small businesses. This is advocacy, not a product. | ★ Safety Day page (above) | [established] |
| No Amazon DPP seller product or pilot found after May 2026. The only AWS item is still the agentic-DPP reference architecture already in run 2, an enterprise data pattern rather than a seller tool. No evidence of Amazon registering with the EU DPP Registry. | [AWS blog: DPP with agentic AI](https://aws.amazon.com/blogs/industries/managing-sustainability-data-for-digital-product-passports-with-agentic-ai) | [established] (absence: searches only) |

### 1.4 Etsy and other marketplaces

| Finding | Source (date) | Tag |
|---|---|---|
| Etsy: native listing fields for manufacturer, EU Responsible Person and safety warnings. Etsy points sellers to paid RP/authorised-representative partners. No 2026 tool and no technical-file generator found. | [Etsy Seller Handbook: GPSR](https://www.etsy.com/seller-handbook/article/1093438529659) (undated); [ShieldMyShop](https://www.shieldmyshop.com/blog/2026-03-23-etsy-gpsr-compliance-eu-sellers-2026) (23 Mar 2026) | [established] / [plausible] |
| eBay collects GPSR data and refers sellers to paid RP partners. Temu has a compliance section with manufacturer and RP fields, plus a paid-testing partnership in Seller Center (Apr 2026). Kaufland shows a GPSR status report. AliExpress requires document uploads. **None offers a free native technical-file or risk-assessment generator.** | [eBay GPSR](https://www.ebay.com/sellercenter/resources/general-product-safety-regulation); [Kaufland Seller University](https://www.kauflandglobalmarketplace.com/en/seller-university/formal-framework/gpsr/); [M2E Temu guide](https://docs.m2ecloud.com/docs/temu-gpsr-compliance-guide/) | [established] / [plausible] |

### 1.5 Free non-marketplace generators (not part of test P)

Test P is about the platforms, but a free third-party generator can hurt demand the same way.
**GPSR Kit**, a Shopify app announced 17 May 2026, is free for up to 10 products. It produces a
checklist, a written risk assessment, label text and multilingual warnings for **low-risk**
categories, and sends toys, cosmetics and electronics to lab testing. **Alnage**, a Shopify app
with a free plan, says it "builds compliance files". Both are English, aimed at Shopify and
handmade sellers, and have no China channel.
([Shopify Community](https://community.shopify.com/t/feedback-wanted-free-gpsr-paperwork-generator-for-handmade-sellers/690379),
[GPSR Kit](https://apps.shopify.com/gpsr-kit),
[Alnage](https://apps.shopify.com/gpsr-compliance-hub); [vendor claim])

### 1.6 Test P status

**PASS (provisional, as of 2026-10-05; snippet-read).** No announcement matches the FAIL
condition. The near-misses all fall short of it:
- Amazon's compliance automation checks and routes to labs.
- The Seller Central features (unconfirmed) store and scan.
- Free Quick Plus is a general AI workspace, not a native GPSR generator.
- Etsy and the others have fields plus paid partners.

The "provisional" label goes away once the ★ pages are read in full.

**Watch at G1:**
1. Amazon's 2027 "requirements and costs before manufacture" view.
2. Seller Assistant's "guided compliance document remediation", if it starts drafting documents.
3. Any Amazon page confirming the March 2026 "risk assessment" feature.
4. Free Shopify generators moving onto Amazon or Etsy.
5. Amazon packaging a compliance or GPSR document workflow (template or plugin skill) into
   Seller Assistant or the free Quick Plus. That would move it toward "free native generator".

## 2. Regulation

### 2.1 DPP — registry and timing

| Finding | Source (date) | Tag | Δ vs run 2 |
|---|---|---|---|
| **The DPP Registry is live.** The Commission launched it with a testing environment, technical documentation and a helpdesk on **20 July 2026**, one day after the ESPR Art. 13 date. The system is decentralised: the registry holds identifiers, passport locations and metadata, and economic operators keep the data. Batteries are the first product group. | ★ [Commission: DPP Registry now live](https://single-market-economy.ec.europa.eu/news/digital-product-passport-registry-now-live-2026-07-20_en) (20 Jul 2026); [Transition Pathways](https://transition-pathways.europa.eu/retail/news/digital-product-passport-registry-now-live) | [established] | Confirms "registry = Commission duty, not a seller duty" |
| Commission Implementing Regulation **(EU) 2026/1778** of 16 July 2026 sets the registry arrangements (website, registration API, verification platform, identifier schema, semantic repository). Scope: ESPR delegated-act products and batteries. | ★ [EUR-Lex OJ L 2026/1778](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=OJ%3AL_202601778) | [established], snippet; OJ date not seen | new |
| Implementing Decision **(EU) 2026/1736** (14 Jul 2026) cites the first six harmonised DPP standards (EN 18216, 18219–18223:2026). | [EUR-Lex OJ L 2026/1736](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=OJ%3AL_202601736) | [established], snippet | new |
| The delegated act on DPP service providers was **not found** as adopted; the public web portal is described as "planned". | searches only | [plausible] | — |
| **Textiles:** apparel is a priority in the ESPR Working Plan 2025–2030, and the Commission page places adoption of the delegated act in **Q4 2027**. The JRC DPP-content study (13 May 2026) is preparatory work, and no draft act is out. With the standard 18-month transition, that means application in **2029 on the Commission's own plan**. ESPR allows a shorter transition where justified, and some secondary sources say "2028 onward". | ★ [Commission: textile apparel DPP](https://single-market-economy.ec.europa.eu/single-market/digital-product-passport/textile-apparel_en); [JRC study PDF](https://susproc.jrc.ec.europa.eu/product-bureau/sites/default/files/2026-05/Textiles_DPP_20260513.pdf) (13 May 2026) | [established] | Run 2 said "2028+"; now likely 2029 |
| Iron and steel was consulted on 20 May–12 Aug 2026, with adoption targeted for Q4 2026. As of late August, no ESPR product delegated act had been adopted. | [dpp-tool.com](https://dpp-tool.com/en/blog/espr-delegated-acts/) (Aug 2026) | [vendor claim] | new |
| The unsold apparel/footwear destruction ban has applied since **19 July 2026**, to **large** enterprises only (medium from 2030; micro and small exempt). | [Commission (DG ENV)](https://environment.ec.europa.eu/news/ban-destruction-unsold-clothes-and-shoes-enters-application-2026-07-17_en) (17 Jul 2026) | [established] | Not a seller-SME hook |
| Omnibus IV (provisional deal 9 Jun 2026) brings a digital DoC and digital instructions to 20 product acts, but keeps paper safety information where serious harm is possible. One secondary source puts the EP plenary vote on 11 Nov 2026 (source not captured; unverified). Secondary sources say it moves no DPP date. **No proposal to change GPSR timing found.** | [Council press release](https://www.consilium.europa.eu/en/press/press-releases/2026/06/09/simplification-council-and-parliament-strike-deal-to-help-growing-businesses-thrive-and-accelerate-digitalisation/) (9 Jun 2026) | [established]; plenary date unverified | new; watch the GPSR interplay |

**Battery passport.** The 18 Feb 2027 date (Batteries Reg. 2023/1542 Art. 77) is unchanged,
with no Commission postponement proposal found. Industry bodies are asking for 2029–2030
([CECE position, 5 May 2026](https://www.cece.eu/stream/5-may-2026-position-paper-cece-position-on-the-battery-passport);
[plausible]). The Art. 77(9) access-rights implementing act was due 18 Aug 2026; a law-firm
note says it had not been published and the Commission now shows Q4 2026
([Taylor Wessing, Aug 2026](https://www.taylorwessing.com/en/insights-and-events/insights/2026/08/battery-passport);
[plausible]). Battery due diligence moved to 18 Aug 2027 under the Omnibus IV
stop-the-clock (Council press release of 19 Jun 2025, deep link not captured, so tagged
[plausible] until opened). Batteries are outside PassportPilot's launch
categories.

### 2.2 GPSR penalties — national (precision on run 2)

**Every figure in this table comes from a secondary source.** The gazette (BGBl, GU, RIS,
Dz.U.) was not opened, so the figures are not usable in public copy until it is (hard rule 4).

| Member state | Finding | Source (date) | Tag | Δ vs run 2 |
|---|---|---|---|---|
| DE | Per two law-firm notes: amended ProdSG promulgated in BGBl. 2026 I Nr. 29 (5 Feb 2026), in force **19 Feb 2026**. § 39: fines up to **€10,000** in general, up to **€100,000** for certain breaches (e.g. not taking corrective action on dangerous products). Gazette text not opened. | [ORKA newsletter PDF](https://orka.law/wp-content/uploads/2026/02/260217_Newsletter_Aenderung_ProdSG-1.pdf) (17 Feb 2026); [fn.legal](https://fn.legal/en/new-product-safety-act-prodsg-to-come-into-force-on-19-february-2026/) | [plausible] | Run 2's "up to €100k" is the top tier; the general tier is €10k |
| IT | Per two Italian trade sources: D.Lgs. 8 April 2026 n. 78, GU n. 111 of 15 May 2026, in force 16 May 2026. Placing dangerous products on the market: 6–12 months' arrest plus a **€10,000–100,000** fine, raisable by up to half for serious risk. Lower administrative tiers exist for non-cooperation and other GPSR breaches; their amounts are not re-confirmed here. | [CityNext](https://citynext.it/2026/05/16/sicurezza-prodotti-decreto-78-2026-regolamento-ue-2023-988/) (16 May 2026); [Certifico](https://www.certifico.com/marcatura-ce/news-marcatura-ce/decreto-legislativo-8-aprile-2026-n-78) | [plausible] (GU not opened) | Run 2's "€10k–150k" is the full range including the uplift; the base is €10k–100k, and ~€150k applies only for serious risk |
| **AT** | **No GPSR penalty law adopted found.** RIS shows the Produktsicherheitsgesetz 2004 consolidated as of 10 Jun 2026. Austrian law-firm pages (June 2026) say the current ceiling is **€25,000** and a revision is expected. Search summaries that put a "new ProdSG of 5 Feb 2026" in Austria confuse it with the German law. | [RIS: PSG 2004](https://www.ris.bka.gv.at/GeltendeFassung.wxe?Abfrage=Bundesnormen&Gesetzesnummer=20004009) (version of 10 Jun 2026); [Austrian law-firm practice guide](https://eustacchio.com/trends-und-entwicklungen-zur-produktsicherheit-2026-oesterreich-chambers-global-practice-guide/) (2026) | [established] (RIS listing) / [plausible] | Open; re-check at G1 |
| PL | Act of 7 Nov 2025 on general product safety supervision, Dz.U. of 19 Dec 2025, in force **3 Jan 2026**. Administrative fines up to **PLN 1,000,000**, marketplaces included. | [Rzecznik MŚP](https://rzecznikmsp.gov.pl/od-3-stycznia-obowiazuje-pelna-implementacja-unijnego-rozporzadzenia-gpsr-ws-ogolnego-bezpieczenstwa-produktow/) (Jan 2026) | [established] (government ombudsman; Dz.U. position not captured) | new |
| NL | The NVWA GPSR intervention policy is on wetten.overheid.nl (BWBR0050500, version valid 23 Jul 2026). Fine amounts are only in secondary sources and are not cited here. | [wetten.overheid.nl](https://wetten.overheid.nl/1.3:c:BWBR0050500&g=2026-07-23) | [established] (existence) | new |
| FR, ES | FR: no new 2026 law found; the 2024 regime stands, and its penalty figures appear only in vendor sources, so they are not cited. ES: nothing found. | searches only | — | — |

**For copy:** hard rule 4 stands. Penalties are national and differ by member state and
breach, and any figure in public text needs its gazette reference opened first.

### 2.3 Enforcement pressure on marketplaces and Chinese parcels

| Finding | Source (date) | Tag |
|---|---|---|
| **Temu fined €200M under the DSA** (28 May 2026) for failing to assess the risk of illegal products. Mystery shopping found products that would fail basic safety tests, including baby toys with hazardous chemicals. Action plan due 28 Aug 2026. | ★ [Commission IP/26/1178](https://ec.europa.eu/commission/presscorner/detail/en/ip_26_1178) (28 May 2026); [Ecommerce Europe](https://ecommerce-europe.eu/news-item/commission-hits-temu-with-a-e200-million-fine-over-unsafe-products/) | [established] |
| **AliExpress fined €550M under the DSA** (20 Jul 2026), the largest DSA fine so far, for failing to assess and mitigate the risks of illegal, unsafe and counterfeit products (unsafe toys and dangerous cosmetics among them). Remedies due 20 Oct 2026. | ★ [Commission (DG CNECT)](https://digital-strategy.ec.europa.eu/en/news/commission-fines-aliexpress-eu550-million-breaching-digital-services-act) (20 Jul 2026) | [established] |
| Shein: DSA proceedings opened 17 Feb 2026 (illegal products among the grounds). | [Commission IP/26/420](https://ec.europa.eu/commission/presscorner/api/files/document/print/en/ip_26_420/IP_26_420_EN.pdf) | [established] |
| Safety Gate 2025 report (5 Mar 2026): a record 4,671 alerts. | [Commission IP/26/537](https://ec.europa.eu/commission/presscorner/api/files/document/print/en/ip_26_537/IP_26_537_EN.pdf) | [established] |
| The €150 customs-duty exemption on small parcels is replaced by a temporary €3-per-item duty from **1 Jul 2026** to 1 Jul 2028. A €2 per-item handling fee on distance sales (Commission delegated regulation C(2026) 6694, 21 Sep 2026) is to apply by 1 Nov 2026; OJ publication unconfirmed. | [Council, 12 Dec 2025](https://www.consilium.europa.eu/en/press/press-releases/2025/12/12/customs-council-agrees-to-levy-customs-duty-on-small-parcels-as-of-1-july-2026/); [Council, 3 Sep 2026](https://www.consilium.europa.eu/en/press/press-releases/2026/09/03/eu-customs-council-greenlights-landmark-reform/) | [established]; fee date [plausible] |
| A Chinese seller forum reports that Amazon EU blocks new FBA shipments lacking MRN/EORI import details from 1 Sep 2026. This is customs, not GPSR. No official Amazon page found, so do not cite it. | [mjzj.com](https://mjzj.com/article/fv1rcs2i2bcw) (2026) | [plausible], unconfirmed |
| Delisting counts for missing GPSR data: **no official data found**, only vendor blogs. | e.g. [AuraDPP blog](https://auradpp.com/blog/amazon-gpsr-listing-deactivated-eu-customers-only) | [vendor claim] |

**Read.** The Commission is fining **marketplaces** for unsafe-product risk. Marketplaces pass
that pressure down to sellers through automated compliance checks (§1.1). That supports the
"GPSR now" urgency without any DPP date. For public copy, cite the Commission press releases
and do not imply a seller faces the DSA fine.

## 3. Competitors (all prices [vendor claim], snippet-read on 2026-10-05)

| Vendor | Current offer | Δ since July |
|---|---|---|
| **Marqetir** | Listing-compliance data tool, not RP and not a document generator. Starter €990/yr, Growth €2,490/yr, Pro €4,990/yr; managed from **€5,000/mo**. ([site](https://marqetir.com/)) | Managed floor €3k → €5k/mo; tiers now annual, and the top tier is above run 2's €249/mo ceiling |
| **Fluxy.One** | RP/GPSR "from €249/yr", bundles from €999/yr; DPP €1 each (promo: 500 for €500). Opening a Tashkent hub with a trade-promotion partner, plans for India and Bangladesh; no China move found. ([GPSR page](https://fluxy.one/eu-product-safety-compliance-gpsr)) | Unchanged price; geography expanding |
| **eugpsr.eu** | RP with EU address and documentation storage: €199/yr (1 product), €299 (2), €549 (5). ([site](https://www.eugpsr.eu/)) | Unchanged |
| **EaseCert** | Done-for-you GPSR technical file, US$473 or about €400 one-time per product type. ([product](https://easecert.com/products/gpsr-technical-file-documentation)) | In line with €400–500 |
| **Euverify** | EU/UK representative from £490/yr (5 product types) plus £200/yr UK; DoC generator; sells a "GPSR test report and compliance certificate". ([pricing](https://euverify.com/pricing/)) | — |
| **Eldris** | RP: £195 onboarding, then £19.95–195.95/mo by SKU count; claims "certificate in under 60 minutes". ([RP page](https://eldris.ai/eu-responsible-person/)) | — |
| **24hour-AR** | Premium authorised representative: €1,650/yr (20 products) to €4,950/yr (1,000). ([pricing](https://www.24hour-ar.com/pricing)) | — |
| **Webinterpret** | eBay-focused GPSR plans £26–85/mo by SKU count; optional RP, translated documents, AI-suggested GPSR data. Courting users of an eBay listing tool that closed on 1 Jun 2026 ([Webinterpret blog](https://webinterpret.com/en/blog/inkfrog-shutting-down)). ([pricing](https://support.webinterpret.com/hc/en-us/articles/22961364678674-Pricing-plans-for-GPSR-compliance)) | — |

**New since run 2 (or newly found):**

- **EUProof**: closest **functional** match. A questionnaire generates the GPSR risk
  assessment, technical file and DoC, plus safety warnings, with 10-year storage. Starter
  **€190/yr** (1 product, English warnings only), Pro **€390/yr** (10 products, every EU
  language), Scale €890/yr (50 products, API); also monthly from €19/mo. 14-day free trial, no card. Per
  product that is about €39/yr at Pro and €18/yr at Scale. Aimed at non-EU sellers on
  Etsy, Shopify and Amazon EU. No RP service and no Chinese UI found. Launch date unknown.
  ★ [pricing](https://www.euproof.com/pricing), [about](https://www.euproof.com/about)
  [vendor claim]
- **EAS Project**: closest **bundled** match, with a **Chinese-language site**. RP plus
  "AI-assisted" documentation and labelling guidance, automatic DoC: €199/yr (1 product type),
  €349 (2), €690 (6), €1,790 (16); bundled with IOSS and UK VAT. Cited in Chinese trade-portal
  coverage. ([pricing](https://easproject.com/pricing/), [CN site](https://easproject.com/cn/))
  [vendor claim]
- **Complir** (Copenhagen): $11M seed (Sep 2026) for AI product-compliance monitoring per SKU.
  It sells to retailers and brands, not marketplace SMEs. Signals that investors are funding
  the category.
  ([Enterprise Times, 16 Sep 2026](https://www.enterprisetimes.co.uk/2026/09/16/copenhagen-startup-complir-raises-11m-to-support-global-compliance-requirements/))
  [plausible]
- Possible entrant, unchecked: "GPSRCheck" (solidwaretools) advertises GPSR technical files
  from about €49 for exporters (snippet only). [vendor claim]
- Store scanners and RP-only offers: EuroComply (scan €29–79/mo), GPSR Solutions (RP from
  €500/yr), AuraDPP (RP from €99/mo), EU Compliance Partner (RP from US$500/yr). [vendor claim]
- **Chinese-language:** no AI GPSR technical-file generator in Chinese found.
  - Chinese ERPs offer GPSR **labels** only; Dianxiaomi has EU-order filtering and GPSR label
    printing ([blog](https://www.dianxiaomi.com/blog/article/143); [vendor claim]).
  - Test labs (e.g. CTI) sell GPSR testing and "one-stop" packages without published prices.
  - Alibaba.com OneTouch has sold its own EU-rep service since 8 Feb 2024.

**Read for the pitch.** The €150–300/yr band sits inside the self-serve documentation
market. EUProof's €190 Starter is in it, and RP bundles start at €199. Generating the
documents is **no longer a differentiator by itself**. What no one visible offers is a
Chinese-first workflow (input in Chinese, output in EU languages) sold through Chinese
channels. Chinese sellers, though, anchor on **cheap RP** (§4), so the page has to say what
the documents do that an RP address does not.

## 4. Channel — how Chinese sellers buy compliance

Every item below is snippet-read; no full page was opened.

| Finding | Source (date) | Tag |
|---|---|---|
| Amazon's own China route for EU RP is the **SPN "Compliance" category**, filterable by location China. Chinese VAT and compliance consultancies are listed there. | [gs.amazon.cn module 27-7](https://gs.amazon.cn/learn/module/module-27-7); [Cifnews 86944](https://www.cifnews.com/article/86944) | [established] |
| **Platforms resell in-house**: Alibaba.com OneTouch EU-rep service (since 8 Feb 2024). Temu-linked EU reps at about ¥568/yr. | [OneTouch notice](https://onetouch.alibaba.com/moBasedata/public/news/content3faab4f3-8685-4f72-8af9-09135aa4bf17); [AMZ123 Q&A](https://www.amz123.com/ask/LafYNPe1) | [established] / [vendor claim] |
| **ERP + compliance integration**: Dianxiaomi bought 70% of Kuaxintong, a VAT, product-compliance and IP platform (Feb 2024). Kuaxintong lists EU/UK rep at **¥268–368/yr** (list ¥669) and a new-seller pack at ¥8,888. | [Cifnews 155282](https://www.cifnews.com/article/155282); [Kuaxintong news](https://www.kuaxintong.com/news) | [plausible] (deal, trade press) / [vendor claim] (prices, 120k+ customers) |
| **VAT/EPR agents** sell one-stop bundles (EU rep + VAT + EPR + trademark) through content portals (Cifnews, AMZ123, 卖家之家, Zhihu) and directories (AMZ123 "找服务"). One agent lists a UK rep at ¥490/yr and packaging registration at ¥329. | [eVatMaster prices](https://www.evatmaster.com/ost/price); [AMZ123 services](https://www.amz123.com/fuwu) | [vendor claim] |
| **Distrust of cheap reps** is a recurring public theme. A widely reposted Cifnews piece describes four low-price EU-rep scams: shared addresses, unregistered reps, hidden fees for forwarding authority mail, and steep renewal rises after cheap 2024 sign-ups. It advises choosing established providers. | [Cifnews 172825](https://www.cifnews.com/article/172825) (2025) | [vendor claim]; the pattern repeats across sources |
| **Associations** run matchmaking events and training (e.g. Wuhan, about 100 industry-matching events in 2026; Yiwu, free government training). No GPSR-specific programme or group-buy found. | [Wuhan Commerce Bureau](https://sw.wuhan.gov.cn/xwdt/gzdt/202601/t20260113_2710252.shtml) (13 Jan 2026) | [established] |
| **Test labs** (CTI and others) sell GPSR testing and "one-stop" packages (consulting, testing, label review, technical file). No prices published. | [CTI GPSR page](https://www.cti-cert.com/service/32214.html) | [vendor claim] |
| Survey data: an industry report puts compliance at 8–10% of costs for small sellers vs 3–5% for large; method unknown. A widely repeated "37% of Chinese Amazon EU sellers lack an EU rep" figure traces to a page with an invented GPSR date, so it is **unreliable; do not cite.** | [Sohu](https://www.sohu.com/a/851643728_122120704) (2025) | [plausible] / unreliable |
| WeChat-group and KOL buying behaviour: **no public evidence** found. | — | gap |

**Read for CH.1.** The partner types most likely to carry a GPSR document tool, in order:
1. **SPN-listed mid-size VAT/EPR/EU-rep agents.** They already sell bundles, lose customers
   at annual renewal, and could add documents as an upsell.
2. **ERP vendors with a compliance arm**, on the Dianxiaomi + Kuaxintong model.
3. **Third-party test labs**, which already produce technical files.

Associations look better for credibility and events than for distribution. Forwarders are
possible, but there is no public evidence of them bundling GPSR. **Price anchor:** a bare EU rep
costs ¥268–568/yr at discounted prices (roughly €30–70; exchange rate not checked).
Kuaxintong's list price is ¥669, about €80. Run 2's €150–300/yr band is about **2–9×** the
discounted range, so the page must sell audit-ready documents plus trust, not an address.

## 5. Does the conditional GO hold? Does anything change the decisive test?

**The conditional GO (GPSR-first) holds.**
- **For it:** GPSR obligations are in force. Penalties keep arriving nationally (DE Feb 2026,
  PL Jan 2026, IT May 2026). The Commission is fining marketplaces for unsafe-product risk,
  and marketplaces are automating seller checks. DPP moved further out (textiles 2029+), so
  "GPSR now, DPP later" is, if anything, more right.
- **Against it:** a same-price English competitor (EUProof) now generates the same documents.
  Chinese RP anchors are far below the band. Amazon is building toward requirement and cost
  views that could absorb part of the job from 2027.

**Steelman for "adjust"** (the founder's call, on the card). `decision-log.md` #2 lets the
founder revise the test before the first outreach, so now is the legitimate time:
- EUProof charges about €18–39 per product per year, with a free trial.
- EAS sells RP plus documents at €199 with a Chinese-language site.
- Bare EU reps sell at ¥268–568.

A €150–300/yr docs-only offer could look expensive to a one-product seller and cheap to a
fifty-product one. Possible adjustments:
- (a) lower or narrow D's band before outreach;
- (b) fix the product-count scope inside the band in PREREG-F;
- (c) add "current provider and price paid" as a D diagnostic.

(b) and (c) are PREREG-F decisions that leave `decisive-test.md` untouched, so they belong
under "continue". Only (a) changes the decisive test. The argument against (a): run 2 set the
band from incumbent prices, it still sits inside the market (§3), and lowering it before any
seller has seen a price would pre-empt the one question D exists to answer.

**Decisive test: no change proposed.**
- **D**'s band (€150–300/yr) is within the market, and D is the instrument that measures
  whether Chinese sellers pay it. Moving the band before the test would pre-empt the answer.
- **P** is PASS and its wording still captures the risk.
- **C** is unchanged. §4 supports run 2's view that a channel partner is effectively
  mandatory.

**Refinements inside the plan (no change to `decisive-test.md`):**
1. **FD.1 / PREREG-F:** state the page price as a single figure with a per-product scope (e.g.
   "€X/yr for up to N products"), so LOIs are comparable with EUProof and EAS. Add "current
   compliance provider and price paid" as a reported diagnostic. Record the RP price anchor
   as a known risk in PREREG-F's pre-mortem. The founder picks X and N on that card.
2. **FD.2 (landing page):** position on Chinese-first input, multilingual EU output and a
   Chinese-speaking partner, not on "AI-generated documents" (no longer unique). Never claim
   to be the only tool.
3. **CH.1 (channel map):** order the map by §4 (SPN-listed VAT/EPR/EU-rep agents, then ERP
   compliance arms, then test labs; associations for credibility).
4. **Add precision to #5's working summary** (decision log #7 records this; figures are
   secondary-sourced until the gazettes are opened):
   - IT: €10k–100k base; about €150k only for serious risk.
   - DE: €100k is the top tier; €10k is the general tier.
   - AT: no adopted GPSR penalty law found.
   - Textiles DPP: likely 2029.
   - Marqetir's managed tier starts at €5k/mo.
5. **G1 refresh of test P:** open the ★ sources in full and re-check the five watch items
   in §1.6.
