# PREREG-F-fake-door.md — Fake-door pre-registration for test D

Date: 2026-10-05. **Status: approved** on card D-002 (2026-10-05). The founder approved the
rules as drafted and delegated the price choice to Claude, who chose option A (§1.2). Card
D-003 (Sevarto, a cheaper German-language generator) was answered "keep" at the same
time, so the choice was made with it in view (decision log #10–#12). Binding from that date. This file
is protected: any change is a new card and, after the first outreach goes out, a new test
(`decisive-test.md`). Task FD.1
(`docs/planning/validation-plan.md`). Serves test **D**, and test **C** through the
per-channel counts.

**What this is.** `decisive-test.md` fixes test D's bar: of the first **50 qualified sellers
reached**, at least **5 (10%)** sign a non-binding LOI or state pre-pay intent at the page's
stated price in the €150–300/yr band. This file fixes everything that bar leaves open: the
offer and its price, who counts as qualified and as reached, what counts as an LOI or as
pre-pay intent, how the founder counts, which tools are used, and how the data is handled.
None of this changes the bar, the window or the gate table.

**Rests on D-001.** Approved while card D-001 (the R1 refresh: continue / adjust / stop) was
still open; it assumes "continue" and the €150–300/yr band. If the founder answers D-001
"adjust" with a band that excludes €249, the price in §1.2 changes through a new card before
the first outreach.

**Sources.** External facts were checked on 2026-10-05 by web search. As in R1, the session
could read only search-result snippets, not full pages. Tags: [established] = official or
primary source; [plausible] = credible secondary; [vendor claim] = a vendor about itself.
Every fact in §5 should be confirmed by a real test at FD.3 (a partner loads the page and
the form from mainland China), which matters more than any source.

## 0. Summary for the card

| Item | Approved |
|---|---|
| Offer | GPSR document pack (risk analysis, technical file, multilingual warnings, listing safety blocks) for textiles, furniture and jewellery. Chinese input, EU-language output. The seller reviews and attests. No Responsible-Person (RP) service: RP providers are introduced, priced by them. In development; early access; no payment now. |
| Price | **€249/yr for up to 10 products** (option A, chosen on card D-002). Not chosen: B, €199/yr for up to 5; C, €290/yr for up to 25. |
| Qualified seller | Self-declared: sells on an EU marketplace or ships to EU consumers; at least one product in a launch category; owns the business or decides on compliance purchases. |
| Reached | A seller who was shown the offer **with its price** (1:1 or on the form) and then answered the qualification questions as qualified. Group posts do not count until someone responds. The bar is therefore conditional on a qualifying response; the funnel above it is logged too. |
| Counts toward D | A non-binding LOI **or** pre-pay intent, each confirmed in writing in a 1:1 channel (a form signature or tick alone never counts). One per seller business, de-duplicated by shop name. |
| Order | Numbered by the time of the qualifying answer (the price is always shown first); only **the first 50 non-void numbers** ("the 50") count. Voids only on pre-listed grounds. |
| Window | 4 weeks from the first outreach; one 2-week extension, logged before week 4 ends. |
| Tools | Static page on Cloudflare Pages (free) under a custom domain (about US$10–11/yr, **a cost**). Form: Tally (free, EU-hosted), linked rather than embedded. Both are tested from mainland China before launch. |
| Data | Minimal fields; no person's name asked except as part of an LOI. Held in the founder's Tally account, the founder's own WeChat/e-mail and files. Deleted within 30 days of G1 unless the seller opted in to launch news. The repo holds aggregate counts only. |
| Diagnostics | Contact left (run 1's 20% bar), channel, marketplace, category, product count, **current compliance provider and price paid**, price reaction, reasons for no. |

## 1. The offer

### 1.1 What the page promises

The page describes a product **in development**. It promises what the product is meant to
do, never that it exists. Content (FD.2 writes the copy; this fixes its substance):

- **For whom:** sellers who ship textiles and apparel, furniture, or jewellery to EU
  consumers through an EU marketplace or their own store.
- **What it is planned to produce**, from questions answered in Chinese:
  1. a GPSR product risk analysis;
  2. a GPSR technical documentation file;
  3. safety warnings and instructions in the languages of the EU countries where the seller
     sells;
  4. ready-to-paste product-safety blocks for marketplace listings (manufacturer, Responsible
     Person and safety-information fields).
- **What the seller does:** reviews the drafts, corrects them, and attests to them. The
  seller stays responsible for the product and its documents.
- **What it is not:** it does not certify products, give legal advice, test products, act
  as the EU Responsible Person, or sign Declarations of Conformity. A product may be placed on
  the EU market only if an economic operator established in the EU is responsible for it
  (GPSR Art. 16(1), which refers to Art. 4 of Regulation (EU) 2019/1020;
  [Regulation (EU) 2023/988, EUR-Lex](https://eur-lex.europa.eu/eli/reg/2023/988/oj);
  [plausible] until the text is opened: article numbers to confirm at FD.2). PassportPilot
  plans to introduce RP service providers, who set their own prices. The page must not name any provider: none has agreed (hard rule 3).
- **Why Chinese sellers** (R1 §3 positioning): input in Chinese and output in EU languages.
  The page promises a **Chinese-speaking contact** only if a channel partner has agreed in
  writing (CH.2) before FD.2's copy is approved; otherwise it does not mention one. The page does not claim to be the only such tool, and it
  does not lead with "AI".
- **No speed or cost comparison** on the page during the test. The spec's "≤20 minutes vs
  €400–500 and 3–5 days" rests on a vendor baseline (decision log #5), and the product does
  not exist to measure. Leaving it out removes a claim the test does not need.
- **No penalty figures and no DPP dates** on the page. If the page mentions GPSR at all, it
  says only that GPSR has applied since 13 December 2024 (Art. 52 of the regulation) and that
  marketplaces ask sellers for product-safety information (Amazon's Manage Your Compliance and
  Etsy's listing fields, R1 §1.2 and §1.4; [established], snippet-read 2026-10-05).

### 1.2 The price

One figure, stated as **€X per year for up to N products**, so that an LOI can be compared
with EUProof's and EAS's per-product pricing (R1 §3). Shown in euros only: a yuan figure
would need an exchange rate the page would have to keep current. The founder may add an
approximate yuan figure from the ECB reference rate on the publication date, labelled
"approx." and dated.

"Product" means one product model. Size and colour variants of one model count as one
product. This is an **unsourced assumption** that GPSR documentation is prepared per
product model; it is checked against the spec and the regulation at E0.1.

| Option | Price shown | Per product | Against the market (R1 §3, [vendor claim]) |
|---|---|---|---|
| **A (chosen, D-002)** | **€249/yr for up to 10 products** | €24.90 | Inside the band, away from both ends (66% of the way from €150 to €300). Below EUProof Pro (€390/yr, 10 products, €39 each), above EUProof Scale (€890/yr, 50 products, about €18 each). Above EAS's €199 RP bundle for 1 product type. |
| B | €199/yr for up to 5 products | €39.80 | Near the €190–199 competitor entry prices. A PASS would say less about the upper half of the band. |
| C | €290/yr for up to 25 products | €11.60 | Top of the band, generous scope. Tests willingness to pay the ceiling, but large-catalogue sellers may read it as cheap and small ones as dear. |

**Why A.** It sits inside the band, away from both ends, so a PASS cannot be explained by
testing the floor, and a FAIL cannot be blamed on testing the ceiling. Ten products is an **assumption**
about a small seller's catalogue in the launch categories. There is no source for typical
catalogue size, so the form asks it (§4) and the result reports it.

**Sellers with more than N products** see the same price and scope; the page says larger
catalogues are "priced at launch". Their LOI counts if it accepts the stated price for the
stated scope. Their product count is reported.

**No payment of any kind** is taken, requested or scheduled: no checkout, no deposit, no
"reserve your price" link (hard rule 3).

### 1.3 Early-access wording (substance; FD.2 writes the copy)

Every page, form and message says, in both languages:
- PassportPilot is **in development** and not yet available;
- signing up gives **early access** when it launches; the launch date is not fixed;
- **no payment is taken now**; an LOI is non-binding and creates no obligation to buy;
- the price shown is the **planned** launch price for the first year.

## 2. Who counts

### 2.1 Qualified seller

A seller business is **qualified** when the person answering declares all three:

1. **EU sales:** it sells on at least one EU marketplace (an Amazon EU store, eBay EU, Etsy,
   Temu, AliExpress, Kaufland, Cdiscount, Allegro, OTTO, bol, Zalando or another), or ships
   from its own online store to consumers in the EU. Sales that are only planned do not count.
2. **Category:** at least one product it sells there, or will list within 6 months, is in
   textiles and apparel, furniture, or jewellery.
3. **Role:** the person owns the business or decides, alone or jointly, on buying compliance
   services for it.

Self-declaration is accepted. The qualification step also asks for the **shop name** on
the main marketplace (required): it is the only way to count one business once across
channels (§3.4). It stays in the founder's Tally account and tracker and never enters the
repo. There are **no discretionary spot-checks**: a check applied only to doubtful-looking
answers could be aimed at the sellers who said no. Voids follow the fixed list in §2.3.

**Not qualified, whatever they answer:** compliance service providers, agents and labs
(they are channel, not demand); staff or relatives of the founder or of a channel partner;
anyone the founder knew before the test; a business already counted.

### 2.2 Reached

A seller is **reached** when they were shown the offer **with its price and scope** and
then answered the three qualification questions as qualified:

- **1:1:** a written direct message (WeChat or e-mail) with the founder; a call or meeting
  counts only through the founder's written recap sent right after it, which carries the
  price and the answers and is timestamped. The **first** 1:1 message
  carries the offer, the price and the three questions (FD.4's standard text), so the price
  is never held back for some prospects. A channel partner **introduces** sellers and shares
  the channel's form link; the seller then qualifies on the form or with the founder, so no
  seller data passes through the partner (§6.2); or
- **form:** a form submission whose answers make them qualified. The form shows the offer and
  the price before the questions.

A group post, newsletter, forum post or event talk does **not** reach anyone by itself.
Someone who saw it becomes reached only by one of the two routes above. This keeps the
denominator countable without tracking anyone.

**What this means for the bar (disclosed).** Qualification needs an answer from the seller,
so the 50 are sellers who **responded**; anyone who saw the price and went silent is not in
them. That is the only countable reading of "qualified sellers reached" in
`decisive-test.md`, and it makes the 10% bar conditional on a qualifying response. So the
funnel above the 50 is logged too (§4): 1:1 first messages sent, replies, unqualified
replies, and form submissions that did not qualify. D is also reported **by route** (1:1 vs
form).

### 2.3 The first 50

The founder numbers reached sellers **1, 2, 3 …** in the founder's own tracker (outside the
repo). The **one timestamp** is the moment of the qualifying answer: the form's submission
time, or the time of the 1:1 message (or recap) that completes the three answers. The price
has always been shown before it (§2.2). Test D is computed on **the first 50 non-void
numbers** only, called "the 50" below; voids are skipped as set out next. Sellers after the
50 are reported separately and never count toward the bar. Numbers are assigned
when the answer arrives and are never re-ordered.

**Voids: only these grounds, applied to everyone alike.**
1. The business was already numbered (same shop name): the later entry is void.
2. The seller is in an excluded group of §2.1 (provider, agent, lab, staff or relative of the
   founder or a partner, known to the founder before the test).
3. The seller corrects their own qualification answer (e.g. "we only sell in the UK").
4. The answer came before the first outreach (e.g. a test run).

Nothing else voids a number, and a void is decided **before** that seller's signal status is
known wherever possible. A void number is skipped: the 50 are the first 50 non-void numbers,
so number 51 and later move up. D is reported **both** ways: on the first 50 non-void
numbers (the result) and with voids left in place as non-signals (the sensitivity check).
Voids are reported by ground.

## 3. Signals

### 3.1 Left a contact (diagnostic; run 1's ≥20% bar)

The seller gave **one business contact channel** (WeChat ID, e-mail or phone) and ticked the
consent to be contacted about early access. In 1:1, it means they explicitly agreed to be
contacted at launch. Reported as "n of 50 left a contact", split by route (1:1 vs form):
form submitters are self-selected, so the 1:1 rate is the meaningful one.

### 3.2 Signed non-binding LOI — counts toward D

A **letter of intent** in the FD.2 template (zh-CN and EN) that names the offer, the price
and the scope exactly as on the page, states that it is **non-binding** and that no payment
is taken, and is **confirmed in writing in a 1:1 channel** by a qualified decision-maker
for the business, in either of these ways:

- a signed or company-chopped copy (scan or photo) sent to the founder;
- a written reply in WeChat or e-mail that quotes or attaches the LOI text and says they agree.

An e-signature on the form's LOI step is as cheap to give as a tick, so on its own it is
recorded as an **unconfirmed form LOI** (a diagnostic). The founder sends every form signer
who left a contact the same standard follow-up (FD.4), and the LOI counts once that seller
confirms in writing inside the window. A verbal "yes" does not count. An LOI that changes the price or the scope (e.g. "yes at
€99") does not count; it is recorded as a price objection.

### 3.3 Pre-pay intent — counts toward D

A written "yes", in a 1:1 exchange, from a qualified decision-maker, to this question as
asked (FD.4 fixes the zh-CN wording):

> "If PassportPilot launches as described, at €X a year for up to N products, would you pay
> the first year in advance at launch? No payment is taken now."

A "yes" ticked on the **form** alone is cheap to give, so it is recorded as **unconfirmed
pre-pay interest** (a diagnostic). The founder sends every form pre-pay ticker who left a
contact the same standard follow-up as form LOI signers (FD.4), and the intent counts toward
D only when the seller confirms it in writing in that 1:1 follow-up inside the window. "Maybe" never counts.

### 3.4 Counting rule

- **One count per seller business**, identified by shop name (§2.1). An LOI and a pre-pay
  intent from the same business count once.
- It counts only if the seller is **among the 50** and the signal is given **inside the
  window** (including a logged extension).
- **PASS** is fixed once at least 5 businesses among the 50 have a counting signal **and**
  the 50 are complete. **FAIL** is fixed when the window ends with fewer than 50 non-void
  sellers reached, or with fewer than 5 counting signals among the 50.
- The founder may stop outreach once PASS is fixed. Nothing else stops the test early.

## 4. Diagnostics (reported beside D, never used to decide it)

Collected on the form or in 1:1, reported only as aggregate counts:

| Diagnostic | Values |
|---|---|
| Funnel above the 50 | 1:1 first messages sent, replies, unqualified replies; form submissions that did not qualify; by channel (§2.2) |
| D by route | counting signals among the 50, split 1:1 vs form (§2.2) |
| Contact left | yes / no, by route (§3.1) |
| Channel | partner (coded P1, P2 …), founder 1:1, WeChat group, seller forum, event, other |
| Marketplaces | multi-select as in §2.1 |
| Launch category | textiles and apparel / furniture / jewellery (multi) |
| Products to cover | 1 / 2–10 / 11–50 / more than 50 |
| **Current GPSR or EU-rep provider** (R1 hand-off) | none / RP or EU-rep service only / one-stop agent bundle (VAT, EPR, rep) / the marketplace's own service / test lab / other / don't know |
| **Price paid for it per year** (R1 hand-off) | nothing / under ¥600 / ¥600 up to the band / inside the band / above the band / don't know. "The band" is €150–300 converted at the ECB reference rate on the day the form is published, rounded to ¥100; the founder records the rate and date. ¥600 sits just above R1's ¥268–568 EU-rep anchor. |
| Price reaction | too high / about right / low / no view |
| Unconfirmed form signals | form LOI signatures and pre-pay ticks without 1:1 confirmation (§3.2–§3.3) |
| Signal type | among counting signals: LOI vs pre-pay intent vs both |
| Partner concentration | counting signals per partner, and D recomputed without the partner with the most signals |
| Reason for no | founder's categories: price, already covered by provider, not needed, distrust, timing, other |
| Reached after the 50 | count and signals, separately |
| Voids | count by ground, and D with voids in place (§2.3) |

The price-paid buckets are in yuan because that is how sellers pay their providers. The
conversion is used only to set the bucket edges, never in public text.

## 5. Channels and tools

### 5.1 Channels

Outreach runs through the channels of `docs/outreach/channels.md` (CH.1) and the kit of
FD.4: a channel partner's 1:1 introductions, the founder's own 1:1 messages, WeChat group
posts, seller-forum posts, and events. Each channel gets its own form link carrying a
channel code in the URL (Tally hidden field, e.g. `?ch=P1`). That is a label on the link,
not a tracker: no cookie, no pixel. **No paid ads** in this test. If the founder wants ads
later, that is a card with the price, and the ad channel is counted separately.

**Partner incentive.** Pay that depends on the outcome would bias the count: per LOI, per
sign-up, or a revenue share that only exists after a GO. So the partner's arrangement for the
test **does not depend on its outcome**. If a partner asks for anything, it is a fixed fee
decided by the founder on a card (hard rule 6). A commercial deal for after the gate is
negotiated only after G1. Results report counting signals per partner, and D recomputed
without the partner that produced the most (§4).

### 5.2 Hosting the page

| Option | China reachability (2026-10-05) | Cost |
|---|---|---|
| Default subdomains: `*.github.io`, `*.pages.dev`, `*.vercel.app` | Reported blocked or DNS-polluted in mainland China: [Wikipedia: Censorship of GitHub](https://en.wikipedia.org/wiki/Censorship_of_GitHub) and [GitHub community #169871](https://github.com/orgs/community/discussions/169871) (github.io); [Cloudflare community](https://community.cloudflare.com/t/cloudflare-pages-is-inaccessible-in-china/777481) and [Cloudflare China Network FAQ](https://developers.cloudflare.com/china-network/faq/) (pages.dev); [Zhihu](https://zhuanlan.zhihu.com/p/646818470) and [CSDN](https://blog.csdn.net/qq_60011657/article/details/127032709) (vercel.app). [plausible]; user reports, mostly 2023–2025 | free |
| `*.netlify.app` | Not established either way; one Chinese blog recommends it over Vercel ([CSDN](https://blog.csdn.net/ShrCheng/article/details/138207592)) | free |
| **Cloudflare Pages + custom domain (recommended)** | A custom domain avoids the blocked shared subdomain. Cloudflare serves mainland visitors from outside China, so it can be slow ([Cloudflare China Network FAQ](https://developers.cloudflare.com/china-network/faq/); [plausible]). **Must be tested from mainland China at FD.3.** | Pages free; domain about US$10.44/yr at Cloudflare Registrar (.com, at cost), US$11.15 from 1 Nov 2026 ([startupowl](https://startupowl.com/reviews/cloudflare-registrar), [Mystrika](https://blog.mystrika.com/cloudflare-registrar-review/); [plausible]) |
| Hosting inside mainland China | Needs an ICP filing, which in practice needs a mainland entity. Not available to the founder; not proposed. [plausible] | — |

GitHub Pages on a free account also needs a **public** repository, which this repo is not.
That is one more reason for Cloudflare Pages. Netlify with a custom domain is the free-tier
fallback.

**WeChat.** Most links will be opened inside WeChat. WeChat's in-app browser can block a
domain or show "如需浏览，请长按网址复制后使用浏览器访问" (copy the link into a browser), for
example for domains it cannot verify or that are reported ([WeChat developer community](https://developers.weixin.qq.com/community/develop/doc/0004aa89520de0f8d0347a69466400);
[CSDN](https://blog.csdn.net/2503_92231666/article/details/148635667); [plausible]). FD.3
checks that the page and the form open from a WeChat chat on a mainland phone. If they do not,
messages carry the link as copyable text plus a QR code, and the page tells visitors to open
it in a browser.

### 5.3 The form

| Option | Fit | Cost |
|---|---|---|
| **Tally (recommended)** | Belgian company, data stored in the EU, no cookie tracking; free plan with unlimited forms and submissions (fair use), conditional logic, hidden fields and e-signatures ([Tally help](https://tally.so/help/tally-a-free-microsoft-forms-alternative); [Formbricks on Tally pricing](https://formbricks.com/blog/tally-pricing); [vendor claim]/[plausible]). Mainland reachability **not established**; test at FD.3. | free |
| Jinshuju (金数据) | Loads in China, but registration needs a mainland Chinese phone number ([Jinshuju help](https://help.jinshuju.net/articles/register-login); [vendor claim], the vendor's own help page). Data would sit in China with a Chinese processor, a GDPR transfer (§6.4). Only usable through a partner's account, which makes the partner a processor. | free tier |
| Microsoft Forms | Reported reachable in China but blocked inside WeChat's browser ([NCPA edtech, 2020](https://edtech.ncpachina.org/2020/01/17/wechat-blocking-ms-forms-and-sway/); [appinchina](https://appinchina.co/does-microsoft-forms-work-in-china/); [plausible], dated). | free with an account |
| Google Forms | Google services are blocked in mainland China ([plausible], widely reported, not re-checked this session). Not usable. | free |
| No form | Sign-ups only in 1:1 (WeChat or e-mail). Works everywhere, but every reached seller costs a conversation. | free |

**Recommended:** Tally, **linked from the page, not embedded**. A link adds no third-party
script to the page (CLAUDE.md style rule), and the form can open on its own in a browser.
**Fallback**, if Tally does not load from mainland China at FD.3: put the 1:1 route first
(WeChat or e-mail with the founder; partners only introduce), and decide on a mainland form tool on a
separate card, because it changes the data handling.

### 5.4 Cost items for the founder (hard rule 6)

| Item | Needed? | Price | Free alternative |
|---|---|---|---|
| Custom domain (.com) | Recommended: the free subdomains are blocked or unproven in China | about US$10.44 for the first year (US$11.15 from 1 Nov 2026), at-cost registrar ([plausible], secondary) | Try `*.netlify.app` from the mainland first; or put the offer text in the Tally form header and skip the separate page |
| Native-speaker review of zh-CN copy | Recommended before publishing (FD.3) | Quote needed; no price sourced | The channel partner reviews the copy |
| Legal review of the privacy notice (GDPR, and PIPL §6.4) | Optional | Quote needed | Minimal data (§6.1), templates from the founder's data-protection authority |
| Hosting (Cloudflare Pages or Netlify) | Yes | free tier | — |
| Form (Tally) | Yes | free plan | 1:1 sign-ups |
| Channel-partner fee | Only if a partner asks | a fixed fee, founder's decision; never tied to LOIs or the gate (§5.1) | none |
| Ads, seller lists | Not in this test | — | — |

## 6. Data handling

### 6.1 What is collected

**On the form:** the qualification answers (§2.1), the diagnostics (§4), the channel code,
and, only if the seller chooses, **one** business contact channel and the consent ticks.
The shop name is required (§2.1). On the optional LOI step: business name, the signer's
role, and an e-signature, which may show a person's name; that is the only place a name can
appear. **Not asked:** a person's name as a field, ID numbers, store credentials, addresses.

**In 1:1:** what the conversation contains, in the founder's own WeChat or e-mail, plus
any LOI copy.

### 6.2 Where it lives

- In the **founder's Tally account** and the **founder's own files** (tracker, LOI copies),
  outside the repo. `data/` is gitignored and unreadable to the loop (hard rule 2).
- **The repo gets aggregate counts only**: reached, qualified, contacts left, LOIs, pre-pay
  intents, by channel and by week, logged by the founder in `decision-log.md`.
- A **channel partner** never receives form data or LOIs. The partner introduces the seller
  and shares the link; the seller fills the form or sends the LOI **to the founder directly**.
  The partner's own conversations with its own clients are the partner's business, not part
  of this test's data. This is written into the partner agreement (CH.2).
- **WeChat history:** at deletion time (§6.3) the founder deletes the 1:1 chats with sellers
  and any LOI files from WeChat and from the phone.

### 6.3 Retention and deletion

- **No-Go or Hold at G1:** all submissions, the tracker's personal fields and LOI copies are
  deleted **within 30 days** of the G1 decision. The founder logs the deletion date (not the
  content) in the decision log.
- **GO:** contacts of sellers who ticked "keep me informed" are kept until launch, for at most
  12 months after G1, then deleted. Everything else is deleted within 30 days of G1.
- Anyone can ask for deletion at any time. The founder deletes within 30 days and confirms.

### 6.4 Legal basis and the privacy notice

The founder is the **controller**. GDPR applies because the controller is established in the
EU, whoever the data subjects are (GDPR Art. 3(1); [Regulation (EU) 2016/679, EUR-Lex](https://eur-lex.europa.eu/eli/reg/2016/679/oj);
[established], text not re-opened this session). Tally is a **processor**; its data-processing
terms must be accepted in the account.

- **Basis:** consent (Art. 6(1)(a)) for being contacted about early access and for launch news,
  as two separate ticks, both optional. For an LOI and the shop name: legitimate interest
  (Art. 6(1)(f)) in recording a non-binding expression of interest the seller chose to give,
  limited to the retention of §6.3. Legitimate interest also covers the qualification and
  diagnostic answers, which the shop name links to a business (for a sole trader, to a
  person), and the founder's 1:1 messages to sellers before any consent is given.
- **Privacy notice** (FD.2 drafts it in zh-CN and EN; Art. 13 contents): who the controller is
  and how to reach them (founder's role address, placeholder until FD.3); purposes; legal basis;
  recipients: Tally (EU), and **WeChat (Tencent)** or the e-mail provider for 1:1 exchanges,
  which may process data outside the EEA. Such **transfers** fall under GDPR Chapter V
  (Art. 44 ff.), and the notice must say which safeguard or derogation is relied on; for an
  exchange the seller starts, Art. 49(1)(b) is the candidate. That is a question for the
  optional legal review (§5.4), and it is risk-listed in §8. Retention as in §6.3; the rights of access, rectification,
  erasure, objection and withdrawal of consent; the right to complain to a supervisory
  authority. Linked from the page and from the form's first screen.
- **China's PIPL.** It also applies outside China to processing the personal information of
  people in China "for the purpose of providing products or services" to them (PIPL Art. 3),
  and such processors must set up an entity or designate a representative in China (Art. 53)
  ([NPC text](http://www.npc.gov.cn/npc/c2/c30834/202108/t20210820_313088.html); [established],
  snippet-read). Whether a pre-launch sign-up form is caught is a legal question this file does
  not answer. **Mitigation:** collect the minimum (§6.1), keep contacts optional, delete on
  schedule (§6.3). A legal opinion is the optional cost item in §5.4. **Risk:** recorded in §8.

### 6.5 Consent wording (draft; FD.2 finalises; every zh-CN line [zh-check])

1. EN: "Contact me about early access to PassportPilot. PassportPilot is in development; no
   payment is taken. I can withdraw this consent at any time. See the privacy notice."
   zh-CN: "我同意 PassportPilot 就抢先体验与我联系。PassportPilot 仍在开发中；现在无需付款，
   我们也不会收取任何款项。我可随时撤回同意。详见隐私说明。" [zh-check: must not read as
   "the product is free"]
2. EN (optional, separate): "Keep my contact after the test to tell me if PassportPilot
   launches (at most 12 months). I can withdraw this consent at any time."
   zh-CN: "测试结束后保留我的联系方式，仅用于告知 PassportPilot 是否上线（最长 12 个月）。
   我可随时撤回同意。" [zh-check]

## 7. Honesty rules for all copy (hard rules 3–5)

1. Says "in development", "early access" and "no payment now" on every page, form screen and
   message (§1.3).
2. Shows only the price of §1.2. No discounts, countdowns, "only N places left" or other
   pressure.
3. No testimonials, user or customer counts, logos, partner names, awards, certifications or
   "trusted by". No marketplace or authority named in a way that suggests endorsement. A
   marketplace may be named only as a place where the seller sells.
4. No penalty figures. No DPP date presented as a seller obligation. GPSR is described only as
   in force since 13 Dec 2024 (§1.1).
5. Never "certified", "guaranteed compliant", "legal advice", "we act as your Responsible
   Person", "we sign your DoC", or 认证 / 保证合规 / 法律意见 / 我们担任欧盟负责人 in a promising sense.
6. No speed or cost comparisons during the test (§1.1).
7. No trackers, analytics or third-party scripts on the page; the form is linked (§5.3).
8. The privacy notice is linked wherever data is collected.
9. Every zh-CN sentence is marked for native-speaker review, and the zh-CN version says the
   same as the English one.
10. `/claims-audit` passes on every public text before its card is approved.

## 8. Pre-mortem: why the result could mislead

| Risk | Effect | Mitigation or disclosure |
|---|---|---|
| **Chinese EU-rep anchor ¥268–568/yr** (R1 §4, [vendor claim]) | Sellers read €249 as several times what they pay for "GPSR", and say no. A FAIL may mean "documents are not seen as separate from the rep", not "no willingness to pay". | The page says what the documents do that a rep address does not. "Current provider and price paid" (§4) shows whether the no's cluster among cheap-rep users. |
| **EUProof: a comparable document set from €190/yr for 1 product** (English warnings only at that tier), €390 for 10 in every EU language (R1 §3, [vendor claim]) | A seller who compares may prefer it, or sign our LOI only as a free option. | Disclosed. Chinese input (and a Chinese-speaking contact, if CH.2 provides one) is the differentiator; the page never claims to be the only tool. |
| Non-binding LOIs are cheap | LOIs overstate demand. | Written 1:1 confirmation only (§3.2–3.3); a form signature or tick alone never counts. Reported beside D: LOIs vs confirmed pre-pay intents. |
| Partner's own clients | Signals come from goodwill, not the offer. | No outcome-dependent pay (§5.1); D recomputed without the top partner (§4). |
| Self-selected denominator | The 50 are responders, so 10% of them overstates demand among all sellers who saw the price. | Disclosed in §2.2; funnel above the 50 and D by route reported (§4). |
| Self-declared qualification | Non-sellers or non-deciders inflate the 50. | Shop name for de-duplication; fixed void grounds applied to everyone; D with voids in place (§2.3). |
| WeChat and e-mail transfers outside the EEA | Privacy notice incomplete; GDPR exposure. | Listed as recipients (§6.4); chats deleted on schedule (§6.2); optional legal review. |
| Page or form does not load in China or in WeChat | Fewer sellers reached; FAIL by reach, not by demand. | Tested at FD.3 before the window starts; 1:1 fallback (§5.3). |
| **Peak season** | Q4 (Black Friday to Christmas) is assumed to be the busiest period for marketplace sellers, so attention may be low. Unsourced assumption. | Disclosed. The founder may delay the window's start; the window cannot restart once outreach has begun. |
| Fewer than 50 reached | FAIL by the rule in `decisive-test.md`. | Accepted by design: reach is part of what D tests (a solo founder needs distribution). |
| PIPL or GDPR complaint | Legal exposure for the founder. | Minimal data, optional contact, deletion schedule (§6). Optional legal review (§5.4). |
| Exchange rate | € figures feel abstract. | Optional dated "approx. ¥" figure (§1.2). |

## 9. Running the test

- **Before the window:** FD.2 page, LOI and privacy notice approved; FD.3 published and tested from mainland
  China in a browser and inside WeChat; FD.4 kit approved; this file approved (card D-002).
- **Start:** the date the first outreach message goes out (FD.5). The founder logs it in the
  decision log.
- **Weekly:** the founder logs aggregate counts (funnel, reached, contacts left, LOIs,
  confirmed pre-pay intents, unconfirmed form signals, voids, by channel and route) in the
  decision log. Copy, price and
  definitions do not change in response.
- **Extension:** at most one, of 2 weeks, logged before week 4 ends (`decisive-test.md`).
- **Deviations:** anything that departs from this file is logged before it takes effect. A
  change to the price, the offer or a definition after the first outreach is a new test.
- **At G1:** the founder applies the `decisive-test.md` table and records the counts of §3–§4.

## 10. What the page says after the test

The form closes at the end of the window. The page is replaced by one of these notices (FD.2
drafts zh-CN and EN, [zh-check]):

- **During evaluation:** "Early-access sign-up is closed. PassportPilot is in development and
  not available, and no payment has been taken. The outcome will be posted on this page by
  [date]."
- **No-Go or Hold:** "PassportPilot will not be developed for now. Thank you for your interest.
  No payment was taken. All contact details and letters of intent are deleted by [date,
  ≤ 30 days after G1]."
- **GO:** "PassportPilot is still in development and not available. If you asked to be kept
  informed, we will tell you if and when it launches; otherwise your details are deleted by
  [date]. No payment has been taken, and none will be without your separate agreement."

LOI signers and sellers who left a contact are told the outcome individually by the founder,
in the channel they used, before their details are deleted.
