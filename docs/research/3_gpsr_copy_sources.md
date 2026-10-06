# 3_gpsr_copy_sources.md — Sources for the legal statements in the FD.2 copy

Date: 2026-10-05, updated 2026-10-06 (FD.3a EUR-Lex check). Task FD.2 (`docs/planning/validation-plan.md`). Serves test **D**.

**What this is.** Hard rule 4 needs a primary source for every statement about EU law in
the landing page (`site/`), the form copy and the LOI (`docs/outreach/`). This note lists
five candidate statements, with the article numbers that PREREG-F §1.1 said FD.2 must
confirm.

**Used in the copy: L1 and L5 only.** PREREG-F §1.1 says that if the page mentions GPSR at
all, it says only that GPSR has applied since 13 December 2024 and that marketplaces ask
sellers for product-safety information. It also covers the Art. 16(1) point under "what it
is not". L2–L4 were drafted and then cut from the copy after the FD.2 claims audit; they are
kept here as checked background for FD.4 and E0.1. The page cites the regulation as a whole for L1
and the marketplace statement; since FD.3a it gives article numbers for L5, read in the
official text.

**Method and its limit (FD.2, 2026-10-05).** Web search only; the session proxy refused the
EUR-Lex page fetch. Each row of the table below rested on search-result snippets. **FD.3a
(2026-10-06) replaced that for L1, L5 and the marketplace statement and re-checked the article
numbers of L2–L4 against the official text: see the next section.** The table keeps the FD.2
sources; the article numbers in it are now read in the official text.

## EUR-Lex check (FD.3a, 2026-10-06)

**What was read.** The full text of Regulation (EU) 2023/988 as published in the Official
Journal, OJ L 135, 23.5.2023, pp. 1–51, English, from recital 1 to the signature ("Done at
Strasbourg, 10 May 2023") and the correlation table. **The EUR-Lex HTML page could not be
read:** `eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32023R0988`, the ELI page
`eur-lex.europa.eu/eli/reg/2023/988/oj/eng` and the EUR-Lex PDF link all came back empty to the
session's fetch tool on 2026-10-06. The same Official Journal PDF was fetched instead from the EU
Publications Office, which publishes the Official Journal and runs EUR-Lex: the CELEX resolver
`https://publications.europa.eu/resource/celex/32023R0988` points to Cellar work
`b5f5fb53-f906-11ed-a05c-01aa75ed71a1`, English PDF
`https://publications.europa.eu/resource/cellar/b5f5fb53-f906-11ed-a05c-01aa75ed71a1.0006.01/DOC_1`
(SHA-256 `84fd233de6b78d2f6a42275c24b0a74c2255d5da481d89d71ff01bf6079e9cf7`). Its text was extracted locally with `pdftotext`. This is the
original act. **No consolidated version was read**, and whether the act has been amended since
was not checked on EUR-Lex (one web search found no amending act). **This departs from FD.3a's
wording**, which asked for the EUR-Lex HTML: the Official Journal PDF is the authentic text of
the same act, but if the founder wants the EUR-Lex page itself opened, that is a two-minute
check in a normal browser. Regulation (EU) 2019/1020 was
read the same way (Cellar work `903d90ee-9712-11e9-9369-01aa75ed71a1`, OJ L 169, 25.6.2019,
SHA-256 `1f4f85cbea550c052b5412c2660d0c235cedc258afdad851b2e6bdf4db03e1f5`) for Art. 4 and
Annex I only. Its Art. 4(1): "a product subject to legislation referred to in paragraph 5 may
be placed on the market only if there is an economic operator established in the Union who is
responsible for the tasks set out in paragraph 3 in respect of that product"; Art. 4(5) lists
the acts, among them the toy safety directive 2009/48/EC and the low-voltage directive
2014/35/EU. Access date for everything in this section: 2026-10-06.

| Line | Article | Verbatim (OJ L 135, 23.5.2023) | Verdict |
|---|---|---|---|
| L1 | Art. 52, second paragraph (p. 48) | "It shall apply from 13 December 2024." Art. 51 also refers to products "placed on the market before 13 December 2024". | **Confirmed.** Copy unchanged. [established] |
| L5 | Art. 16(1), first sentence (p. 28); scope: Art. 2(1), third subparagraph, point (b) (p. 19); Recital 39 | Art. 16(1): "A product covered by this Regulation shall not be placed on the market unless there is an economic operator established in the Union who is responsible for the tasks set out in Article 4(3) of Regulation (EU) 2019/1020 in respect to that product." Art. 16(2) speaks of "the product it is responsible for". Art. 2(1): "With regard to products subject to specific requirements imposed by Union harmonisation legislation […] (b) Chapter III, Section 1, Chapters V and VII and Chapters IX to XI do not apply." Art. 16 is in Chapter III, Section 1 (Arts 9–18). Recital 39: the Art. 4 obligation of 2019/1020 is extended "to products falling outside the scope of Union harmonisation legislation". | **Wrong in scope; reworded.** Right for the products Art. 16 applies to, but the copy said "a product" with no limit, and Art. 2(1)(b) takes products under Union harmonisation legislation out of Art. 16 (Recital 8: "most of the obligations of economic operators should not apply to products covered by Union harmonisation legislation"). Reworded in `site/` (below); [established] for the new wording. |
| Marketplace statement | Art. 22(9) (p. 32), with Art. 19 (p. 30) | Art. 22(9): providers of online marketplaces "shall design and organise their online interface in a way that enables traders offering the product to provide at least the following information for each product offered", including "(a) name […] of the manufacturer", "(b) where the manufacturer is not established in the Union, the name, postal and electronic address of the responsible person" and "(d) any warning or safety information". Art. 19 puts the same list on the trader's offer. | **Confirmed** as to the legal basis, read plainly: the law requires marketplaces to let traders enter, and to display, the information the page gives as examples. It says "enables traders […] to provide", not "ask", and the responsible person only where the manufacturer is outside the EU, which is the case for the sellers the page addresses. Art. 22(9) is framed as compliance with Art. 31 of the Digital Services Act, Regulation (EU) 2022/2065. That marketplaces actually ask is the observation in R1 §1.2 and §1.4 ([established], snippet-read 2026-10-05); the regulation cannot confirm practice. Copy unchanged. |

**L5, new wording** (`site/en/index.html` and `site/index.html`, "What PassportPilot is not";
the Chinese is marked `zh-check`). It follows Art. 16(1)'s own "a product covered by this
Regulation" and states the Art. 2(1) limit without saying which products fall under it. The
claims audit of the first rewording found that "does not apply" alone could read as "no EU
operator needed", so the sentence on 2019/1020 Art. 4 was added:

- EN: "Under GPSR, a product it covers may be placed on the EU market only if an economic
  operator established in the EU is responsible for it (Art. 16(1)). This GPSR rule does not
  apply to products subject to specific requirements of EU harmonisation legislation
  (Art. 2(1)); for some of those, such as toys and electrical equipment, Regulation (EU)
  2019/1020 sets the same requirement (Art. 4). Check which rules apply to your product."
- zh-CN: "根据 GPSR，该法规适用的产品，只有在有一个在欧盟境内设立的经营者对其负责时，才能投放欧盟市场（第 16 条第 1 款）。受欧盟协调立法具体要求约束的产品，不适用 GPSR 的这一条规定（第 2 条第 1 款）；其中部分产品（例如玩具和电气设备）由法规 (EU) 2019/1020 规定了同样的要求（第 4 条）。请核实适用于您产品的规定。" [zh-check]

No file in `docs/outreach/` carries L5, so nothing there changed. The page now gives article
numbers for L5 only, since they are now read in the official text.

**L2–L4 article numbers** (not in the copy; background for FD.4 and E0.1), read in the same
text: L2 is Art. 9(2) ("Before placing their products on the market, manufacturers shall carry
out an internal risk analysis and draw up technical documentation"); L3 is Art. 9(7) ("clear
instructions and safety information in a language which can be easily understood by consumers,
as determined by the Member State in which the product is made available on the market"); L4 is
Art. 19 (a)–(d). All three numbers: [established]. **L2 and L3 sit in Chapter III, Section 1
as well**, so the Art. 2(1)(b) limit applies to them too.

**Open question this raises (not decided here; for the founder, E0.1 and any legal review).**
Union harmonisation legislation is defined in Art. 3(27) as the legislation in Annex I of
Regulation (EU) 2019/1020 and other EU legislation harmonising the conditions for marketing
products. That Annex I lists REACH, Regulation (EC) No 1907/2006 (item 22) and the textile
labelling regulation, (EU) No 1007/2011 (item 40) [established, read 2026-10-06]. Textiles and
jewellery are two of the test's three categories. Whether a textile or jewellery product is
"subject to specific requirements imposed by Union harmonisation legislation" in the sense of
Art. 2(1)(b) (and so outside Arts 9 and 16 of GPSR) is a question of interpretation. If they
were, neither GPSR Art. 16 nor 2019/1020 Art. 4 would require an EU operator for them, because
REACH and 1007/2011 are not among the acts in 2019/1020 Art. 4(5). That reading is untested here, and the
Commission's guidance on it was not read: one secondary search snippet says those chapters are
disapplied only "to the risks that legislation already covers" [plausible, unverified]. The page
no longer depends on the answer. The product plan (the GPSR technical file for those categories)
does, so it is logged for E0.1 (decision log #19).

| # | Statement in the copy | Article | Sources (accessed 2026-10-05) | Tag |
|---|---|---|---|---|
| L1 | GPSR has applied since 13 December 2024. | Art. 52 (confirmed FD.3a) | [EUR-Lex summary of the GPSR](https://eur-lex.europa.eu/EN/legal-content/summary/general-product-safety-regulation-2023.html); [EU Monitor, main contents](https://eumonitor.eu/9353000/1/j9vvik7m1c3gyxp/vm3b871agxyb) | [established] (date and article number, FD.3a) |
| L2 | Before placing a product on the market, the manufacturer carries out an internal risk analysis and draws up technical documentation. | Art. 9(2) | [Your Europe: preparing technical documentation](https://europa.eu/youreurope/business/product-requirements/compliance/preparing-technical-documentation/index_en.htm) (European Commission); [CATAS, 28 Jun 2024](https://catas.com/en-GB/news/the-new-european-regulation-eu-2023-988-on-product-s-safety); [Bureau Veritas](https://www.cps.bureauveritas.com/newsroom/risk-assessment-new-regulation-eu2023988-gpsr) | [established] (duty); [established] (article number, read FD.3a) |
| L3 | The manufacturer ensures the product comes with instructions and safety information in a language consumers can easily understand, as determined by the member state where it is sold. | Art. 9(7) | Search summary of the regulation; [German ProdSG §6](https://www.buzer.de/6_ProdSG.htm) (national act alongside it, for context only) | [established] (duty, article number and wording, read FD.3a) |
| L4 | An online offer shows the manufacturer's name, postal and electronic address, the EU responsible person's details when the manufacturer is outside the EU, product identification, and warnings or safety information. | Art. 19 | [Commission GPSR presentation, Safety Gate](https://webgate.ec.europa.eu/safety/consumers/consumers_safety_gate/obligationsForBusinesses/documents/GPSR-Presentation-website.pdf); [Fieldfisher](https://www.fieldfisher.com/en/insights/new-obligations-under-the-eu-general-product-safety-regulation); [VIMM](https://www.vimm.be/en/blog/gpsr-article-19-product-information-webshop) | [established] (Commission source, snippet only); [established] (article number, read FD.3a) |
| L5 | A product GPSR covers may be placed on the EU market only if an economic operator established in the EU is responsible for it; the rule does not apply to products subject to other EU harmonisation legislation (reworded in FD.3a). | Art. 16(1), which refers to Art. 4 of Regulation (EU) 2019/1020; Art. 2(1) third subparagraph (b) | [FPS Economy, Belgium: obligations of companies](https://economie.fgov.be/en/themes/quality-and-safety/safety-products-and-services/regulations/obligations-companies); [Soulier Avocats, 4 Mar 2025](https://soulier-avocats.com/en/regulation-eu-2023-988-on-general-product-safety-an-overview-of-key-developments); [Eurofins](https://www.eurofins.com/consumer-product-testing/media-centre/news/know-the-obligations-of-economic-operators-under-the-gpsr/) | [established] (national ministry); [established] (article number, read FD.3a) |

**Marketplace statement.** The page also says that major EU marketplaces ask sellers for
product-safety information in their listings. Its sources are R1 §1.2 (Amazon's Manage Your
Compliance) and §1.4 (Etsy, eBay, Temu, Kaufland, AliExpress), [established], snippet-read
2026-10-05. Following PREREG-F §7.3, the page names no marketplace in that sentence.

**Left out of the copy on purpose:** penalties (national; R1 §2.2), any DPP date, any
"deadline", the 2019/1020 article text, and anything about which seller is the
"manufacturer" in a given supply chain. That last one depends on the facts of each case, so
the page says "the manufacturer" and leaves the seller to apply it.
