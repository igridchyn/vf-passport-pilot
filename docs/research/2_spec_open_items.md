# 2_spec_open_items.md — Build-spec open items: desk verification

Date: 2026-10-05. Task MV.1 (`docs/planning/validation-plan.md`). Non-blocking. Serves the
build that follows a GO at G1, and test **D** indirectly (the pitch's cost baseline, item 4).

**What this is.** The spec pack (18 July 2026) ends with an "unverified — must confirm before
build" list. The spec is **not in the repo yet** (S0, card A-001), so **the spec's own wording
was not seen.** The five items below come from the MV.1 section of the validation plan. Where
the plan's short label leaves the question open (item 1's "title rule"), the gap is stated. This is
a research note for the founder and the build, **not public copy.**

**Method and its limit.** Desk research with WebSearch on 2026-10-05. The session's proxy
refused WebFetch again (tried on developer-docs.amazon and sellercentral.amazon.com), so
**every finding rests on search-result snippets; no full page was read.** Tags:
[established] = the platform's or authority's own page (Amazon, Tencent, Supabase, Eurostat,
NBS, ECB), snippet-read; [plausible] = credible secondary (integrator help centres, law and
trade press, guides); [vendor claim] = a vendor about its own offer; [assumption] = a number
set here, with no source. "Undated" means the snippet carried no page date; read it as
"accessed 2026-10-05". Before the build relies on an item, open the starred (★) sources in
full.

## 0. Summary

| # | Item | Status | Changes the gate or the pitch? |
|---|---|---|---|
| 1 | Amazon GPSR product-safety document limits | **Partly confirmed.** Safety documents as PDF, ≤10 MB, uploaded per EU store in that store's language; images PS01–PS06 named `<ASIN>.PS01`…; via API, a public URL. A "title rule" for documents was not found. | No |
| 2 | SP-API GPSR attributes | **Available** since 18 Nov 2024 in Listings Items API v2021-08-01 and JSON_LISTINGS_FEED, in 8 EU stores; the attributes themselves were not deprecated. The legacy XML/flat-file path was **removed on 31 Jul 2025**. Access depends on Amazon's developer registration and review. Announced SP-API fees were **cancelled on 12 May 2026** (trade press). | No (the spec uses a manual export pack) |
| 3 | WeChat Official Account / Login for a foreign sole proprietor | **Unresolved — conflicting sources.** Overseas entities get a Service Account only, with US$99 verification. Whether a non-Chinese sole proprietorship is accepted is contradicted between sources. Website login needs Open Platform developer verification (US$99) and appears to need a company. | Not for the test; a build risk |
| 4 | Independent manual cost/time of a GPSR technical file | **Unconfirmed: no non-vendor figure found.** Only vendor prices were found, and "€400–500" is one vendor's. A labelled, assumption-based range is given. | No: PREREG-F already drops the comparison |
| 5 | Supabase EU region and DPA | **Confirmed.** Four EU-member regions (Frankfurt, Ireland, Paris, Stockholm). The click-through DPA includes SCCs. The contracting party is Supabase Pte. Ltd. (Singapore). | No |

**No item changes the gate or the pitch.** The gate is `decisive-test.md`, and PREREG-F §1.1
already keeps cost and speed comparisons off the page. **One by-product does get a card:** a
competitor R1 missed, Sevarto, sells generated GPSR drafts from €99 net for up to 10 products
(§4.1). Non-blocking card D-003 puts it in front of the founder before D-002's price;
the recommendation is keep. Item 3 is recorded as a build risk in
decision-log #10, together with a test risk it surfaced: personal-account outreach on WeChat
(§3).

## 1. Amazon GPSR product-safety document limits

The question as the plan words it: "size, type, title rule".

| Finding | Source (date) | Tag |
|---|---|---|
| Product-safety documents (manuals, user guides with warning and safety information) are uploaded **per EU store** as **PDF, at most 10 MB**, in (or including) the language of that store. | ★[Amazon Global Selling China: GPSR — what sellers should do](https://gs.amazon.cn/zhishi/article-250205-1) (Feb 2025, from the URL); [Linnworks help](https://help.linnworks.com/support/solutions/articles/7000091455-amazon-listings-gpsr-compliance-requirements-december-13-2024-) (undated) | [established] (Amazon's own CN seller site), snippet-read |
| Instead of (or as well as) a document, up to **six safety images**, PS01–PS06. For image upload they are named `<ASIN>.PS01` … `.PS06`. Standard Amazon image rules apply: 500–10,000 px on the longest side, JPEG preferred, and TIFF, PNG or non-animated GIF accepted. | [Seller forum: GPSR images PS01–PS06](https://sellercentral-europe.amazon.com/seller-forums/discussions/t/ce2d7d98-090d-4a4e-a505-4f79ffce16e6) (undated); [Dexport](https://dexport.com/en/gpsr-regels-voor-amazon/) (2024) | [plausible] (forum and agency; the image spec is Amazon's general one) |
| Via listings feeds/API, a document is a `compliance_media` entry with **content type**, **language** and a **source URL**. The file must sit at a **publicly accessible** URL. One integrator says Google Drive and Dropbox links are not accepted. File types for this path: PDF, JPEG/JPG, PNG. Content types include `safety_information`, `user_manual`, `user_guide`, `instructions_for_use`, `installation_manual`, `safety_data_sheet`, `certificate_of_compliance` and others. | [Linnworks help](https://help.linnworks.com/support/solutions/articles/7000091455-amazon-listings-gpsr-compliance-requirements-december-13-2024-) (undated); ★[SP-API: Submit media attributes](https://developer-docs.amazon/sp-api/lang-en_US/docs/submit-media) (undated) | [plausible]; the SP-API page is [established] but the snippet did not show the exact rule |
| In Seller Central the same fields sit under Inventory → Edit → Safety & Compliance → Compliance media: language, content type, file URL. Manage Your Compliance (Account Health) shows the ASINs that are missing information. | [Amazon Global Selling China: new GPSR feature](https://gs.amazon.cn/zhishi/article-250212-1) (Feb 2025, from the URL); [AMZ123 summary of Amazon's GPSR FAQ](https://www.amz123.com/t/rqNg2M2R) (undated) | [established], snippet-read |
| Amazon's general **Product Documents** programme (brand owners, separate from GPSR) also caps files at 10 MB. Documents must be PDF (CAD formats excepted) and must not carry promotional content, prices, shipping details, QR codes or personal information. | [Feedvisor](https://feedvisor.com/resources/amazon-marketing-advertising-strategies/amazon-product-documents-program-tool/) (undated); [Seller forum announcement](https://sellercentral.amazon.com/seller-forums/discussions/t/48e53e554531095d5c64e779ba77626d) (undated) | [plausible]; whether GPSR documents get the same content review is **not confirmed** |
| **Title rule: not found.** No source states a rule for a GPSR document's title or file name, apart from the `<ASIN>.PSxx` image naming. Without the spec's wording, the intended rule is unknown. | — | gap |

**For the build:** the export pack should produce **a PDF (≤10 MB) for each EU store's language**,
plus optional PS01–PS06 images. Keep promotional text, prices and QR codes out of the safety
PDF. If "title rule" meant something specific, re-check it against the spec after S0.

## 2. SP-API GPSR attributes — generally available?

| Finding | Source (date) | Tag |
|---|---|---|
| Since **18 November 2024**, GPSR attributes and document uploads are accepted in **Listings Items API v2021-08-01** and **JSON_LISTINGS_FEED**, for **ES, FR, BE, NL, DE, IT, SE, PL**. | ★[SP-API changelog: Support for GPSR compliance in Listings Items API and JSON Listings Feeds](https://developer-docs.amazon/sp-api/changelog/developers-can-use-attributes-in-their-programmatic-listings-submissions-to-comply-with-gpsr) (date from [Anderson Associates' copy](https://www.andersonassociates.net/news/2024-11-update-support-gpsr-compliance-listings-items-api-json-listings-feeds/), Nov 2024) | [established] content, snippet-read; the date is [plausible] (taken from a secondary copy) |
| The attributes: `gpsr_manufacturer_reference` (sub-field `gpsr_manufacturer_email_address`, **ASIN level**); `dsa_responsible_party_address` (Responsible Person contact, **SKU level**); `gpsr_safety_attestation` (Boolean; the seller attests that the product needs no warning/safety information, available for certain products only); `compliance_media` (documents, §1). PS01–PS06 images are `image_locator_ps01`…`ps06`. | Same changelog; [GitHub selling-partner-api-models Discussion #4208](https://github.com/amzn/selling-partner-api-models/discussions/4208) (Oct 2024; answered by an Amazon SP-API solutions architect); [ChannelUnity KB](https://kb.channelunity.com/article/general-product-safety-regulation-gpsr/) (undated) | [established] for names, [plausible] for the attestation's exact meaning |
| A correction reversed an earlier statement: **legacy XML and flat-file feeds** also took the attributes from 3 February 2025. **That path has since gone.** The Feeds API stopped accepting legacy XML and flat-file listings feeds on **31 July 2025**, and those feeds now return a fatal processing status. The supported paths are the Listings Items API and JSON_LISTINGS_FEED. | [SP-API changelog: Correction — Legacy Feeds API can now support GPSR attributes](https://developer-docs.amazon.com/sp-api/changelog/correction-legacy-feeds-api-can-now-support-gpsr-attributes) (Nov 2024); ★[SP-API changelog: removal date of Feeds API support for XML and flat-file listings feeds changed to 31 July 2025](https://developer-docs.amazon.com/sp-api/changelog/update-removal-date-of-feeds-api-support-for-xml-and-flat-file-listings-feeds-changed-to-july-31-2025-1) (2025) | [established], snippet-read |
| **The GPSR attributes themselves:** no deprecation or replacement found in a 2026 search. Not seen: whether Amazon.ie (opened after Nov 2024) is covered. | Search 2026-10-05 | gap |
| **Access is not automatic.** A third-party tool needs a public developer registration that Amazon reviews; developers report long waits for restricted-access reviews. Amazon announced SP-API fees on 3 Nov 2025: US$1,400/yr for third-party developers, plus fees on GET calls. It postponed them indefinitely on 9 Mar 2026 and **cancelled them on 12 May 2026**. | Review: [GitHub selling-partner-api-models issue #5396](https://github.com/amzn/selling-partner-api-models/issues/5396) (2026, a developer's report of a 24-day wait). Fees: [GitHub Discussion #5025](https://github.com/amzn/selling-partner-api-models/discussions/5025) (Nov 2025); [ppc.land](https://ppc.land/amazon-introduces-fees-for-third-party-developer-api-access-in-2026/) (Nov 2025); [novadata: chronology](https://novadata.io/resources/news/amazon-sp-api-subscription-fees-2026) and [cancellation](https://novadata.io/resources/news/amazon-cancels-sp-api-fees-may-2026) (May 2026) | [plausible] (developer reports and trade press; no Amazon page seen) |

**Status: available** (not a beta) for the 8 stores, through the Listings Items API or
JSON_LISTINGS_FEED, but **only to a registered developer that Amazon has approved.**
**For the build:** the spec's manual export pack stays the right first step. An SP-API
integration needs an approved developer registration, not a missing attribute. Re-check the
fee status before building one; any fee goes on a card. The field names above can be the
export pack's column names, so a later API push needs no remapping.

## 3. WeChat Official Account and WeChat Login — foreign sole proprietor

The question: can a non-Chinese sole proprietor (the founder's likely legal form) open a
verified Official Account and use "Login with WeChat" on a website?

| Finding | Source (date) | Tag |
|---|---|---|
| Overseas (non-mainland) entities can register **Service Accounts only**; Subscription Accounts are not open to overseas entities. Verification costs **US$99** per application. Secondary guides add that it must be applied for within 30 days of registration. | ★[WeChat Open Community: overseas Official Accounts](https://developers.weixin.qq.com/community/develop/doc/000ce2d9830b807423cbe78ca56400) (undated); [Tencent Cloud developer news](https://cloud.tencent.com/developer/news/479148) (undated); [KAWO guide](https://kawo.com/en/blog/how-to-open-a-wechat-official-account-oa-and-apply-for-verification) (undated) | [established] (Tencent community) for Service Account only and US$99; the 30-day window is [plausible] |
| **Conflict on entity type.** One summary of Tencent's overseas rules says "non-mainland countries/regions: **enterprise-type** Service Accounts only". Other sources list sole proprietorship as a selectable overseas company type ("at most 2 accounts"), or say overseas entities may be enterprises, **individual businesses (个体工商户)**, government, schools or other organisations. That last list may be the **Mini Program** rule rather than the Official Account rule. | [yiban.io](https://yiban.io/blog/20520) (undated); [KAWO](https://kawo.com/en/blog/how-to-open-a-wechat-official-account-oa-and-apply-for-verification); [bwb.agency 2026 guide](https://bwb.agency/latest-news/guide-how-to-create-and-verify-official-wechat-account-as-a-non-chinese-business-in-2026) (2026) | [plausible], **contradictory** |
| Verification asks for the registered name and registration number exactly as on the local business-registration certificate, plus an administrator's ID. A sole proprietor's trade-register extract (where one exists) is the document that would be tested. | [KAWO](https://kawo.com/en/blog/how-to-open-a-wechat-official-account-oa-and-apply-for-verification); [flow.asia](https://www.flow.asia/insight/wechat-offcial-account-guide-for-global-businesses/) (undated) | [plausible] |
| A **foreign individual** (no business) can hold a *personal* Subscription Account only via a WeChat account bound to a **mainland bank card**. | [yiban.io](https://yiban.io/blog/20520) (undated) | [plausible] |
| WeChat polices **marketing from personal accounts**. Secondary guides report caps on daily friend additions for new accounts, and penalties up to a ban for content judged to solicit sales. In June 2026, WeChat's security centre announced a campaign against personal accounts posting marketing of prohibited goods. | [Sina Tech](https://finance.sina.com.cn/tech/discovery/2026-06-17/doc-inicsvwq8940230.shtml) (17 Jun 2026); [SMZDM guide](https://post.smzdm.com/p/apq4d63w/) (2026) | [plausible] (press and guides; Tencent's rule text not seen) |
| **WeChat Login on a website** is a "website application" on the **WeChat Open Platform**. It needs **developer qualification verification**: ¥300 for mainland developers, **US$99 overseas**, with business-licence documents. For overseas entities without a company seal, a handwritten signature can replace it on the website registration form. Whether the callback domain needs an ICP filing is unclear: one guide says it does, another says not for offshore hosting. | ★[WeChat Open Platform: Website App WeChat Login guide](https://developers.weixin.qq.com/doc/oplatform/en/Website_App/WeChat_Login/Wechat_Login) (undated); [WeChat Open Platform: website app review rules](https://developers.weixin.qq.com/doc/oplatform/Website_App/operation.html) (undated); [Mingdao integration guide](https://docs-pd.mingdao.com/en/faq/idp/weixin-open/) (undated) | [established] for the fee and the need for verification; [plausible] for the rest |

**Status: unresolved.** A verified Service Account for an overseas *company* is clearly
possible (US$99). For a foreign **sole proprietorship** the sources conflict, and only an
attempt at registration settles it. WeChat Login looks company-oriented and costs US$99 to
verify.

**For the test:** no Official Account and no login are needed. PREREG-F and CH.1 already run
the test through the founder's own WeChat and the partners' channels (decision-log #8, #9).
One **test risk** remains: a new or busy personal account that adds many sellers and posts
an offer could be limited mid-test. Partner-led routes (a partner posts in its own groups)
reduce that risk. The founder should know about it before FD.3 and CH.2, so card D-003 repeats
it. No change to FD.2
or the bar. **For the build:** treat a WeChat Official Account and WeChat Login as
**not assumed**. Plan e-mail/password or phone login first. If WeChat matters after G1, the
cheapest check is to start an overseas Service Account registration with the sole
proprietorship's documents, which is free up to the US$99 verification step. **Paying the
US$99 is spend (hard rule 6) and goes on a card when it comes up.**

## 4. Manual cost and time of a GPSR technical file — independent estimate

Per decision-log #5's summary of the spec, its headline compares "≤20 min" with "**€400–500 and 3–5 days** manual". Decision-log
#5 already flags that baseline as vendor-sourced (it matches EaseCert's done-for-you price,
R1 §3). The task was a **non-vendor** estimate.

**What was searched:** the Commission's GPSR impact assessment (SWD(2021) 168/169), Händlerbund
(German online-retailers' association) and IHK chamber guidance, Commission GPSR guidance
coverage by law firms, seller forums, and Chinese trade press.

| Finding | Source (date) | Tag |
|---|---|---|
| The impact assessment gives **aggregate** figures only in what the snippets show: first-year business cost ≈ **0.02% of turnover** of EU firms making or selling non-harmonised products, and **€111.1 M** total compliance cost for EU SMEs (one-off and ongoing). **No per-product or per-file cost** surfaced. | ★[Proposal COM(2021) 346, explanatory memorandum](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:52021PC0346) (30 Jun 2021); ★[SWD(2021) 168 on EUR-Lex](https://eur-lex.europa.eu/legal-content/EN/ALL/?uri=CELEX:52021SC0168) (2021) | [established], snippet-read; the annexes were not reachable |
| GPSR Art. 9(2) sets **proportionality**: the technical documentation must contain at least a general description and the product's essential safety characteristics. Its depth scales with the product's complexity and the risks identified. So a single cost figure across product types is not meaningful. | [Regulation (EU) 2023/988, EUR-Lex](https://eur-lex.europa.eu/eli/reg/2023/988/oj/eng) (10 May 2023); [IHK guidance](https://www.ihk.de/darmstadt/produktmarken/beraten-und-informieren/innovation/normen-und-richtlinien/produktsicherheit-2530284) (undated) | [established] / [plausible] |
| Händlerbund survey (about 600 German online retailers, 14 Nov–5 Dec 2024): **71%** call the **time required** a major difficulty, 74% practical implementation, 73% uncertainty; 55% want online self-check tools. **No hours or euros per product.** | [Händlerbund: GPSR study](https://www.haendlerbund.de/de/news/presse/pressemitteilungen/studie-zur-produktsicherheitsverordnung) (Dec 2024) | [plausible] (association survey) |
| Every per-product price found is a **vendor's** price: EaseCert's done-for-you file is ~€400 one-time, EUProof €190/yr for one product, and Chinese labs publish no prices. | R1 §3 | [vendor claim]; excluded here by design |

**Status: unconfirmed.** No independent source gives a per-file cost or time.

**A labelled, assumption-based range** (internal use only, never public copy). Cost of doing it
in-house = hours × labour cost. The hours are an **[assumption]** with no source: 4–16 hours
for a low-complexity textile, furniture or jewellery item, covering the risk analysis, product
description, warnings in one language, and assembling existing supplier test reports.
**Excluded:** testing, and **translation of the warnings into each store's language**, which
is a core output of the offer (PREREG-F §1.1) and probably the largest manual cost [assumption]. The
Chinese rate is an average **wage**, not total labour cost as Eurostat's is. It is a lower
bound: someone able to write the file likely earns more, and the 2,000-hour year is itself
an assumption.

| Who does it | Labour cost (source) | 4 h | 16 h |
|---|---|---|---|
| EU in-house staff, EU average | €34.9/h, whole economy, 2025 ([Eurostat, 31 Mar 2026](https://ec.europa.eu/eurostat/web/products-eurostat-news/w/ddn-20260331-2)) [established] | ≈ €140 | ≈ €560 |
| Chinese seller's own staff | ¥71,590/yr, urban private units, 2025 ([NBS, 18 May 2026](https://www.stats.gov.cn/english/PressRelease/202605/t20260518_1963740.html)) [established]. ÷ 2,000 h [assumption] ≈ ¥36/h ≈ **€4.7/h** at ~¥7.6/€ ([ECB reference rates](https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/eurofxref-graph-cny.en.html): about 7.8 early in September 2026 and 7.6 at its end, snippet) | ≈ €19 | ≈ €75 |

**What it means.** For a **Chinese seller doing it in-house**, the cash cost of drafting
hours alone is small (tens of euros, before translation). The real costs are **expertise,
language and the risk of getting it wrong**. "€400–500" is **one vendor's** done-for-you price
(EaseCert, about €400 per product type, R1 §3). Others sell document sets for less: EUProof from €190/yr and EAS from €199/yr (R1 §3), Sevarto
(§4.1) from €99 net **per one-off order** of up to 10 products, and possibly GPSRCheck from
about €49 (R1 §3, unchecked). All are [vendor claim], and one-off and yearly prices do not
compare directly. So "€400–500" is
neither the market's price nor an independent *manual* cost. "3–5 days" has no independent
support. This does not change the pitch: PREREG-F §1.1 already removes the speed/cost
comparison from the page. If a comparison returns after G1, it should cite the vendor price
range as such, or be measured in a usability test, and never be presented as a manual
baseline.

### 4.1 A competitor R1 did not list: Sevarto

Found while checking the review's price range. It is outside MV.1's question, but the founder
should see it before answering D-002 (PREREG-F's price).

| Finding | Source (date) | Tag |
|---|---|---|
| Sevarto (Germany) sells **generated drafts** for two GPSR needs: the Art. 19 listing information with safety and warning notices **in German**, and a **risk-analysis PDF per product** for the technical documentation, with a product description and a list of relevant standards. The seller approves each draft, which then carries the seller's name. Delivery is "usually within minutes" of payment. | [Sevarto pricing](https://sevarto.de/pricing) (undated); [Sevarto](https://sevarto.de/) | [vendor claim] |
| Prices are **per order, one-off**: €99 net (€117.81 incl. 19% VAT) for up to 10 products; €199 net for up to 30; €399 net for up to 100. | [Sevarto pricing](https://sevarto.de/pricing) (undated) | [vendor claim] |
| Not seen: a Chinese interface, languages other than German, or a full technical file beyond the risk analysis. | — | gap |

**What it means.** It is the same shape as PassportPilot's offer: generated drafts that the
seller reviews and attests. Its price is below PREREG-F option A (€249/yr for 10 products),
though a one-off order and an annual price are not directly comparable. As with EUProof (R1
§3), feature parity is not the wedge. Chinese input, output in *several* EU languages and the China
channel are, and none of these was seen at Sevarto.
That leaves R1's conclusion and the decisive test's band unchanged, but the founder should
see it before fixing the price. Non-blocking card D-003 (recommendation: keep D-002 as drafted).

## 5. Supabase EU region and DPA terms

| Finding | Source (date) | Tag |
|---|---|---|
| Specific regions in **EU member states**: Frankfurt `eu-central-1`, Ireland `eu-west-1`, Paris `eu-west-3`, Stockholm `eu-north-1`. In Europe outside the EU: London `eu-west-2`, Zurich `eu-central-2`, both with EU adequacy decisions. Supabase runs on AWS (17 regions in all). | ★[Supabase docs: Available regions](https://supabase.com/docs/guides/platform/regions) (undated); [Supabase: Regions](https://supabase.com/regions) (undated) | [established], snippet-read |
| Supabase recommends a **general** region, such as "Europe", and then picks the AWS region by capacity. That general "Europe" region can land in **London or Zurich**, which are **not EU**. To keep data inside the EU, choose a **specific** region (Frankfurt). Postgres, Auth and Storage stay in the chosen region. Regional pinning is reportedly unavailable in Ohio and Stockholm. | [erfi.dev: Supabase data residency](https://erfi.dev/reference/supabase-data-residency/) (undated); [Supabase docs: Available regions](https://supabase.com/docs/guides/platform/regions) | [plausible] for the general-region detail |
| The **DPA** is a click-through addendum that binds on acceptance of the terms. It incorporates the **EU SCCs** (its clause 12.2: acceptance has the effect of signing them), covers GDPR, Swiss law and US state laws, and comes with a published **sub-processor list**. Customers can object to a new sub-processor within a short notice window ("five days" per one source). One secondary source dates the current version **1 August 2026**. | ★[Supabase: Data Processing Addendum](https://supabase.com/legal/customer-resources/data-processing-addendum) (undated); [axonbuild](https://axonbuild.com/blog/is-supabase-gdpr-compliant) (2026); [complydog](https://complydog.com/blog/is-supabase-gdpr-compliant) (undated) | [established] for existence and SCCs; [plausible] for the clause number, notice window and date |
| The contracting party and data importer is **Supabase Pte. Ltd. (Singapore)**. Not confirmed: whether the DPA applies on the Free plan as well as paid plans. Region choice covers the stored data. It does not by itself cover logs, support access or US sub-processors, which is why the transfer question stays open. | ★[Supabase: Data Processing Addendum](https://supabase.com/legal/customer-resources/data-processing-addendum) (undated); [complydog](https://complydog.com/blog/is-supabase-gdpr-compliant) (undated) | [established] for the entity, snippet-read; the rest [plausible] |

**Status: confirmed** for EU hosting plus a standard DPA with SCCs. **For the build:** choose
**Frankfurt** explicitly, not the general "Europe" region. Record the DPA version accepted
(date and PDF copy) in the build's records. Because the data importer sits outside the EU, a
transfer assessment is still needed. That sits with the open GDPR Chapter V question already
in decision-log #8. A paid Supabase tier, if the build needs one, is spend and goes on a card.

## 6. What a session with page access should open first

1. The SP-API "Submit media attributes" page and the GPSR changelog, to confirm the
   `compliance_media` URL rule and whether Amazon.ie is covered (§1–2).
2. Tencent's own overseas Official Account registration FAQ (kf.qq.com / mp.weixin.qq.com),
   to settle sole proprietorship versus enterprise-only (§3).
3. SWD(2021) 168's cost annex, for any per-product figure (§4).
4. Supabase's DPA, for the entity, version, plan coverage and clause numbers (§5).
