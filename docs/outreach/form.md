# form.md — Early-access form copy (Tally; zh-CN + EN), draft

Date: 2026-10-05. **Status: draft**, for the founder's review on the FD.2 comms card. Task
FD.2 (`docs/planning/validation-plan.md`). Serves test **D** (qualification, signals) and
test **C** (the channel code). The founder builds the form in their own Tally account at
FD.3; the loop never sees the form or its answers (hard rule 2).

**Rules this copy follows** (PREREG-F, approved): the offer and price are shown **before**
the questions (§2.2); qualification is the three self-declared answers of §2.1 plus the
required shop name; diagnostics are §4's; contact is optional and only **one** channel
(§3.1, §6.1); the two consent ticks are §6.5's, finalised here, plus a third tick (T3) for a WeChat contact (decision log #21); the LOI step is `loi.md`;
a form signature or pre-pay tick is recorded as **unconfirmed** until the seller confirms
in 1:1 (§3.2–§3.3). No person's name is asked as a field (§6.1).

**Build notes for Tally (FD.3).**
- One form, two languages: each screen shows the zh-CN text first and the English under it.
  This avoids two forms and keeps one submission list.
- **Hidden field `ch`** from the URL (`?ch=web`, `?ch=P1` …). It is a label on the link, not a
  tracker (PREREG-F §5.1). No Tally analytics or third-party integrations.
- Accept Tally's data-processing terms in the account (PREREG-F §6.4).
- **No branching on qualification.** Everyone can finish the form, so that the founder can
  count the non-qualified submissions too (§2.2 funnel). The founder classifies afterwards.
- Tick-box answers are never pre-ticked.
- **T3 is the only other condition on screen 4** besides C2: it is hidden and shown only when
  C1 is "微信 WeChat", and required when shown. A seller who will not tick it picks another
  contact type or "no contact" and can still submit everything else.
- **Status line on every screen** (PREREG-F §1.3, §7.1): put this fixed line at the top of
  screens 1–6, in both languages:
  zh-CN [zh-check]: "开发中 · 抢先体验登记 · 产品尚未上线，现在无法购买，也不收取任何款项"
  EN: "In development · early-access sign-up · not available to buy yet; no payment is taken now"
- **Pre-publish:** the page's button carries `{{FORM_URL}}?ch=web`; it is a broken relative
  link until the founder fills it. Search `site/` for `{{` before publishing.
- Every zh-CN line needs a native speaker's check; they are marked [zh-check].

---

## Screen 1 — The offer (before any question)

**zh-CN** [zh-check]

> **PassportPilot 抢先体验登记**
>
> **PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项。上线日期尚未确定，是否上线也尚未决定。登记后，产品上线时您将优先获得使用资格（抢先体验）。**
>
> PassportPilot 是一款计划中的工具：您用中文回答关于产品的问题，它为每款产品起草 GPSR 产品风险分析、GPSR 技术文件、用您所销售的欧盟国家的语言写成的安全警示和使用说明，以及可粘贴到平台商品页面的产品安全信息。每一份草稿都由您审核、修改，并声明其内容属实，产品及其文件的责任仍由您承担。它不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人，也不签署符合性声明。
>
> **计划价格：每年 €249，最多 10 款产品**（计划中的首年上线价格；一款产品指一个产品型号，同一型号的不同尺码、颜色算作一款；超过 10 款产品的价格在上线时公布；不含欧盟负责人服务）。
>
> 填写本表单约需几分钟。联系方式和意向书都是自愿的。请先阅读[隐私说明]({{PAGE_URL}}/privacy.html)。

**EN**

> **PassportPilot early-access sign-up**
>
> **PassportPilot is in development. It is not available yet, so it cannot be bought, and
> no payment is taken now. Its launch date is not fixed, and whether it launches has not
> been decided. Signing up gives you early access when it launches.**
>
> PassportPilot is a planned tool: you answer questions about your product in Chinese, and
> for each product it drafts a GPSR product risk analysis, a GPSR technical documentation
> file, safety warnings and instructions in the languages of the EU countries where you
> sell, and product-safety text to paste into your marketplace listings. You review, correct
> and attest to every draft, and you stay responsible for your product and its documents. It
> does not certify or test products, give legal advice, act as EU Responsible Person or sign
> Declarations of Conformity.
>
> **Planned price: €249 per year for up to 10 products** (the planned first-year launch
> price; one product means one product model, and size and colour variants of a model count
> as one; more than 10 products priced at launch; EU Responsible Person services not
> included).
>
> This form takes a few minutes. Leaving a contact and signing the letter of intent are both
> optional. Please read the [privacy notice]({{PAGE_URL}}/en/privacy.html) first.

---

## Screen 2 — About your business (qualification, PREREG-F §2.1)

| # | zh-CN [zh-check] | EN | Answer type | Qualifies when |
|---|---|---|---|---|
| Q1 | 您的企业目前在哪些渠道向欧盟消费者销售？（可多选） | Where does your business sell to consumers in the EU now? (choose all that apply) | Multi-select: 亚马逊欧洲站 Amazon EU store · eBay（欧盟站点 EU sites）· Etsy · Temu · 速卖通 AliExpress · Kaufland · Cdiscount · Allegro · OTTO · bol · Zalando · 其他欧盟电商平台 other EU marketplace (text) · 自有网店发货给欧盟消费者 own online store shipping to EU consumers · **目前还没有，只是计划中 none yet, only planned** | at least one option other than "none yet" |
| Q2 | 您在这些渠道销售、或计划在 6 个月内上架的产品中，有哪些属于以下类别？（可多选） | Which of these categories do the products you sell there, or will list within 6 months, belong to? (choose all that apply) | Multi-select: 纺织品与服装 textiles and apparel · 家具 furniture · 珠宝首饰 jewellery · **以上都不是 none of these** | at least one of the three categories |
| Q3 | 您在企业中的角色是？ | What is your role in the business? | Single choice: 企业所有者 owner · 我单独决定合规服务的采购 I decide alone on buying compliance services · 我与他人共同决定 I decide jointly with others · **以上都不是 none of these** | any option except "none of these" |
| Q4 | 您的企业属于以下哪一类？ | Which describes your business? | Single choice: 卖家（品牌方、工厂或贸易商）seller (brand, factory or trader) · **合规服务商、代理或检测机构 compliance service provider, agent or test lab** · 其他 other (text) | "seller" (a provider, agent or lab is excluded, PREREG-F §2.1) |
| Q5 | 您在主要销售平台上的店铺名称（必填） | Your shop name on your main marketplace (required) | Short text, required | — (used only to count each business once, §2.1) |
| Q6 | 主要销售平台（必填） | Main marketplace (required) | Single choice from Q1's list, required | — |

Help text under Q5 — zh-CN [zh-check]: "店铺名称只用于确保每家企业只计算一次，不会公开。"
EN: "Your shop name is used only to count each business once. It is never published."

---

## Screen 3 — About your compliance today (diagnostics, PREREG-F §4)

| # | zh-CN [zh-check] | EN | Answer type |
|---|---|---|---|
| D1 | 您希望覆盖多少款产品（产品型号）？ | How many products (product models) would you want covered? | 1 · 2–10 · 11–50 · 50 款以上 more than 50 |
| D2 | 您目前的 GPSR 或欧盟代表服务由谁提供？ | Who provides your GPSR or EU-representative service today? | 没有 none · 只有欧盟负责人/欧代服务 RP or EU-rep service only · 一站式代理套餐（VAT、EPR、欧代）one-stop agent bundle (VAT, EPR, rep) · 平台自己的服务 the marketplace's own service · 检测机构 test lab · 其他 other · 不清楚 don't know |
| D3 | 您每年为此支付多少费用？ | How much do you pay for it per year? | 不付费 nothing · 低于 ¥600 under ¥600 · ¥600 至不足 ¥[B1] from ¥600 to under ¥[B1] · ¥[B1] 至 ¥[B2] from ¥[B1] to ¥[B2] · 高于 ¥[B2] above ¥[B2] · 不清楚 don't know |
| D4 | 您觉得“每年 €249，最多 10 款产品”这个计划价格怎么样？ | What do you think of the planned price, €249 per year for up to 10 products? | 太高 too high · 差不多合适 about right · 偏低 low · 没有看法 no view |
| D5 | 有什么原因会让您不使用这样的工具？（选填） | Is there anything that would stop you from using a tool like this? (optional) | Long text |

**D3 bucket edges (founder, at FD.3).** ¥[B1] and ¥[B2] are €150 and €300 converted at the
ECB euro reference rate on the day the form is published, rounded to ¥100. Record the rate
and its date in the decision log (PREREG-F §4). The conversion sets the bucket edges only and
appears in no other public text.

---

## Screen 4 — Contact (optional, PREREG-F §3.1, §6.5)

zh-CN [zh-check]: "如果您希望收到抢先体验的消息，可以留下**一个**企业联系方式。这完全是自愿的。"
EN: "If you want to hear about early access, you can leave **one** business contact. This is
entirely optional."

| # | zh-CN [zh-check] | EN | Answer type |
|---|---|---|---|
| C1 | 联系方式类型 | Contact type | 微信 WeChat · 电子邮箱 e-mail · 电话 phone · 不留联系方式 no contact |
| C2 | 微信号 / 电子邮箱 / 电话 | WeChat ID / e-mail / phone | Short text, shown only if C1 is not "no contact" |
| T1 | 我同意 PassportPilot 就抢先体验与我联系，并请我确认我在本表单中签署的意向书或预付意向。PassportPilot 仍在开发中，尚未上线，现在不收取任何款项。我可随时撤回同意。详见隐私说明。 | Contact me about early access to PassportPilot, and ask me to confirm any letter of intent or pre-payment answer I give on this form. PassportPilot is in development and not available yet; no payment is taken now. I can withdraw this consent at any time. See the privacy notice. | Tick box, unticked; required only if C2 is filled |
| T2 | 测试结束后保留我的联系方式，仅用于告知 PassportPilot 是否上线（最长 12 个月）。我可随时撤回同意。 | Keep my contact after the test to tell me if PassportPilot launches (at most 12 months). I can withdraw this consent at any time. | Tick box, unticked, optional |
| T3 | 我同意 PassportPilot 通过微信与我沟通，并知悉我的信息因此会被传输到欧洲经济区以外：欧盟委员会未就这些国家或地区作出充分性决定，我们自己也没有与微信运营方订立保障措施，我的信息可能得不到与欧盟同等的保护（详见隐私说明第 5 节）。我可随时撤回同意。 | I agree that PassportPilot communicates with me on WeChat, and I understand that my information is then transferred outside the European Economic Area, where the European Commission has not found the protection adequate and we have no safeguard of our own with the WeChat operator, so my information may not be protected to the EU standard (privacy notice, section 5). I can withdraw this consent at any time. | Tick box, unticked; shown only when C1 is "微信 WeChat", and required then |

**T3 added (decision log #21).** Card M-006 chose option B of
`privacy-safeguard-options.md` for transfers through WeChat: the seller's explicit consent
under GDPR Art. 49(1)(a), given after being told the risks. T3 is that consent for a seller
who gives a WeChat ID on this form; the same consent is asked by a paragraph in the first WeChat
message to a seller who wrote first (`kit.md` §2a). The risk text is the text of privacy notice section
5, option B. A seller who gives e-mail or phone needs no T3. T3 is not part of PREREG-F §6.5's
two ticks, and no bar or number depends on it (§6.1: contact is optional and one channel).

**T1 finalised from the PREREG-F §6.5 draft** (§6.5 left the final wording to FD.2;
decision log #13). Two changes, in both languages:
- **Free-product reading.** The zh-CN draft said "现在无需付款，我们也不会收取任何款项", which a
  reader could take to mean "the product is free" (the risk §6.5 flagged). It now ties the
  no-payment statement to the product not being available yet ("尚未上线，现在不收取任何款项").
- **Added purpose.** The founder's standard follow-up asks form signers to confirm their
  LOI or pre-pay answer in writing (§3.2–§3.3). That purpose was missing from the consent,
  so it was added.

---

## Screen 5 — Letter of intent and pre-payment (optional, PREREG-F §3.2–§3.3)

zh-CN [zh-check]: "以下两项都是自愿的，都不产生任何付款义务。产品尚未上线，现在不收取任何款项。"
EN: "Both items below are optional, and neither creates any obligation to pay. PassportPilot
is not available yet; no payment is taken now."

**L — Letter of intent.** Show the full zh-CN and English text of `loi.md` (points 1–6),
with `[page address]` and `[page date]` filled. Then:

| # | zh-CN [zh-check] | EN | Answer type |
|---|---|---|---|
| L1 | 我希望签署这份不具约束力的意向书 | I want to sign this non-binding letter of intent | Tick box, unticked |
| L2 | 企业名称 | Business name | Short text, shown if L1 |
| L3 | 签署人职务 | Signer's role | Short text, shown if L1 |
| L4 | 签名 | Signature | Tally e-signature, shown if L1 |

**P — Pre-payment.** Same wording as the 1:1 question (PREREG-F §3.3); FD.4 uses this text.

| # | zh-CN [zh-check] | EN | Answer type |
|---|---|---|---|
| P1 | 如果 PassportPilot 按上述介绍上线，价格为每年 €249、最多 10 款产品，您会在上线时预付第一年的费用吗？现在不收取任何款项。 | If PassportPilot launches as described, at €249 a year for up to 10 products, would you pay the first year in advance at launch? No payment is taken now. | 会 yes · 也许 maybe · 不会 no |

Help text — zh-CN [zh-check]: "我们可能会通过您留下的联系方式，请您以书面形式确认。"
EN: "We may ask you to confirm this in writing, using the contact you left."

---

## Screen 6 — Thank you

zh-CN [zh-check]: "谢谢！PassportPilot 仍在开发中，尚未上线，现在不收取任何款项。如果您勾选了测试结束后保留联系方式，PassportPilot 上线时（如果上线）我们会告知您；在此之前，我们可能会请您确认您签署的意向书或预付意向。您可以随时要求删除您的信息：{{CONTACT}}。"

EN: "Thank you. PassportPilot is in development and not available yet. No payment is taken
now. If you asked to be kept informed after the test, we will tell you if and when it launches;
before that, we may ask you to confirm any letter of intent or pre-payment answer. You can ask us to delete
your information at any time: {{CONTACT}}."

---

## Placeholders (founder, FD.3)

| Placeholder | Filled with |
|---|---|
| `{{PAGE_URL}}` | the published page's address |
| `{{CONTACT}}` | the founder's role address (never a personal one in the repo) |
| `[page address]`, `[page date]` | in the LOI text, as in `loi.md` |
| `¥[B1]`, `¥[B2]` | D3's bucket edges |
