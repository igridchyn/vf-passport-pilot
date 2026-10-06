# tally-paste.md — Tally paste text: form screens 1–6 and the LOI (zh-CN + EN), draft

Date: 2026-10-06. **Status: draft**, for the founder's review on the FD.3b comms card. Task
FD.3b (`docs/planning/validation-plan.md`). Serves test **D**. Card A-002 step 4 uses it.

**What this is.** The text of `form.md` (screens 1 to 6) and `loi.md` (points 1 to 6), cut into
blocks you paste into Tally in order, zh-CN first, English under it. **It adds no new text:**
every sentence comes from those two files, as of commit `fabe1e0`. If `form.md` or `loi.md`
change (for example after M-002), this file is regenerated in the same change. If the two ever
differ, `form.md` and `loi.md` win. Every zh-CN line still needs the native-speaker check
(A-002 step 7); the reviewer extract is at the end.

**Fills.** Leave these markers in place until you have the values. Replace them in Tally
only, never in the repo.

| Marker | Fill with | Where |
|---|---|---|
| `{{PAGE_URL}}` | the page address, `https://<your domain>`, no trailing slash | screen 1 (two links) |
| `[page address]` | the same page address | screen 5, LOI points 1 and 6 and the "To:" line |
| `[page date]` | the publication date. The landing page carries no date of its own, so this is the date you put in the privacy notice; if you later change the notice alone, the LOI's reference changes with it | screen 5, LOI point 1 |
| `{{CONTACT}}` | your role address (not a personal one, if you can) | screen 6 |
| `¥[B1]`, `¥[B2]` | D3's bucket edges, section B below | screen 3, D3 |

---

## A. Tally setup checklist (do these once)

- [ ] Free Tally account. If any step below asks for a paid plan, do not pay: answer A-002
  `hold` with a note.
- [ ] Accept Tally's data-processing terms in the account settings (PREREG-F §6.4).
- [ ] One form, six pages: screens 1 to 5 as pages, screen 6 as the **Thank you page** (type
  `/thank` in the editor; Tally lists it as free, with a Tally badge on the free plan,
  [Tally help](https://tally.so/help/how-to-create-a-thank-you-page), [vendor claim],
  read 2026-10-06).
- [ ] The **status line** (block S below) at the top of every page and the thank-you page.
- [ ] **Hidden field `ch`**: type `/hidden`, name it exactly `ch`. Links then end in
  `?ch=web`, `?ch=P1`, `?ch=TEST` and so on ([Tally help](https://tally.so/help/hidden-fields),
  [vendor claim], read 2026-10-06).
- [ ] **Nothing pre-ticked**, no default answers.
- [ ] **No branching on qualification.** Everyone can finish the form. The only conditions:
  - L2, L3, L4 are hidden and shown only when L1 is ticked;
  - C2 is hidden and shown only when C1 is not "不留联系方式 no contact";
  - T1 is required only when C2 is filled (Tally's "make answers required" action).
  To show a block on a condition, hide it first in its block settings, then add conditional
  logic "show blocks" ([Tally help](https://tally.so/help/conditional-form-logic),
  [vendor claim], read 2026-10-06; Tally's help does not say whether a hidden required
  question still blocks submission, so test it in the preview).
- [ ] Required: Q5 and Q6 only, plus T1 under its condition. Everything else optional.
- [ ] **Integrations off:** no Google Sheets, Notion, Airtable, Zapier, Make, webhooks, no
  Google Analytics or Meta Pixel, no e-mail notifications to respondents.
- [ ] **No analytics** (`form.md`: "No Tally analytics or third-party integrations"): add no
  tracking code. Tally's dashboard shows its own view and completion counts; if a setting
  turns them off, turn it off (not checked), and never use them as the "reached" figure.
- [ ] **E-mail notifications to yourself off as well.** They would copy form answers into your
  mailbox, and the privacy notice names the e-mail provider only for direct conversations
  (sections 4 and 5), not for form answers. Read the answers in Tally instead.
- [ ] The form is linked from the page, never embedded.
- [ ] Preview both condition paths, then the test of A-002 step 4: open `<form link>?ch=TEST`,
  submit once, check the `ch` column says `TEST`, delete the test submission.

**Formatting.** The blocks below are plain text, so they paste cleanly. After pasting, make
bold what each block's note says (select, then Ctrl/Cmd+B), and add links by selecting the
link words and pasting the address.

---

## B. D3 yen edges: the calculation

PREREG-F §4 and `form.md` screen 3: ¥[B1] and ¥[B2] are **€150 and €300** converted at the
**ECB euro reference rate on the day the form is published**, rounded to ¥100.

1. Open the ECB's EUR/CNY page:
   https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/eurofxref-graph-cny.en.html
   The ECB updates the rates "at around 16:00 CET every working day, except on TARGET closing
   days" ([ECB reference rates](https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/index.en.html),
   [established], read 2026-10-06). Take the rate dated the publication day, so **publish on
   a working day, after that day's rate shows on the page** (late afternoon, Frankfurt time).
   If you cannot, use the latest rate shown and say so in your A-002 answer with its date: the
   loop logs it as a deviation from PREREG-F §4.
2. ¥[B1] = 150 × rate, ¥[B2] = 300 × rate.
3. Round each to the **nearest ¥100** (…50 and above rounds up).
4. Put both into D3's options, and the rate and its date into your A-002 answer (the loop logs
   them in the decision log). The numbers appear in D3 only, in no other public text.

**Worked example only — recalculate on publication day.** ECB rate of 5 October 2026: 1 EUR =
7.5118 CNY ([ECB daily rates XML](https://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml),
[established], read 2026-10-06). 150 × 7.5118 = 1,126.77 → **¥1,100**; 300 × 7.5118 =
2,253.54 → **¥2,300**. D3 would then read "¥600 至不足 ¥1100 from ¥600 to under ¥1100 · ¥1100
至 ¥2300 from ¥1100 to ¥2300 · 高于 ¥2300 above ¥2300".

---

## C. Paste blocks, in Tally's order

### S — Status line (top of every page, and of the thank-you page)

```
开发中 · 抢先体验登记 · 产品尚未上线，现在无法购买，也不收取任何款项
In development · early-access sign-up · not available to buy yet; no payment is taken now
```

### Hidden field

`ch` (one hidden-field block, anywhere on page 1).

### Page 1 — The offer (before any question)

Block 1.1, title (make it a heading):

```
PassportPilot 抢先体验登记
PassportPilot early-access sign-up
```

Block 1.2 (bold, all of it):

```
PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项。上线日期尚未确定，是否上线也尚未决定。登记后，产品上线时您将优先获得使用资格（抢先体验）。

PassportPilot is in development. It is not available yet, so it cannot be bought, and no payment is taken now. Its launch date is not fixed, and whether it launches has not been decided. Signing up gives you early access when it launches.
```

Block 1.3:

```
PassportPilot 是一款计划中的工具：您用中文回答关于产品的问题，它为每款产品起草 GPSR 产品风险分析、GPSR 技术文件、用您所销售的欧盟国家的语言写成的安全警示和使用说明，以及可粘贴到平台商品页面的产品安全信息。每一份草稿都由您审核、修改，并声明其内容属实，产品及其文件的责任仍由您承担。它不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人，也不签署符合性声明。

PassportPilot is a planned tool: you answer questions about your product in Chinese, and for each product it drafts a GPSR product risk analysis, a GPSR technical documentation file, safety warnings and instructions in the languages of the EU countries where you sell, and product-safety text to paste into your marketplace listings. You review, correct and attest to every draft, and you stay responsible for your product and its documents. It does not certify or test products, give legal advice, act as EU Responsible Person or sign Declarations of Conformity.
```

Block 1.4 (bold: "计划价格：每年 €249，最多 10 款产品" and "Planned price: €249 per year for up to 10 products"):

```
计划价格：每年 €249，最多 10 款产品（计划中的首年上线价格；一款产品指一个产品型号，同一型号的不同尺码、颜色算作一款；超过 10 款产品的价格在上线时公布；不含欧盟负责人服务）。

Planned price: €249 per year for up to 10 products (the planned first-year launch price; one product means one product model, and size and colour variants of a model count as one; more than 10 products priced at launch; EU Responsible Person services not included).
```

Block 1.5 (link "隐私说明" to `{{PAGE_URL}}/privacy.html`, and "privacy notice" to
`{{PAGE_URL}}/en/privacy.html`):

```
填写本表单约需几分钟。联系方式和意向书都是自愿的。请先阅读隐私说明。

This form takes a few minutes. Leaving a contact and signing the letter of intent are both optional. Please read the privacy notice first.
```

### Page 2 — About your business

**Q1** · Checkboxes (several answers) · optional. Title:

```
您的企业目前在哪些渠道向欧盟消费者销售？（可多选） / Where does your business sell to consumers in the EU now? (choose all that apply)
```

Options, one per line. The line "其他欧盟电商平台 other EU marketplace" takes text: instead of
pasting it, switch on Tally's "Other" option and rename it to that line (the same for Q4's
"其他 other" and Q6).

```
亚马逊欧洲站 Amazon EU store
eBay（欧盟站点 EU sites）
Etsy
Temu
速卖通 AliExpress
Kaufland
Cdiscount
Allegro
OTTO
bol
Zalando
其他欧盟电商平台 other EU marketplace
自有网店发货给欧盟消费者 own online store shipping to EU consumers
目前还没有，只是计划中 none yet, only planned
```

**Q2** · Checkboxes · optional. Title:

```
您在这些渠道销售、或计划在 6 个月内上架的产品中，有哪些属于以下类别？（可多选） / Which of these categories do the products you sell there, or will list within 6 months, belong to? (choose all that apply)
```

```
纺织品与服装 textiles and apparel
家具 furniture
珠宝首饰 jewellery
以上都不是 none of these
```

**Q3** · Multiple choice (one answer) · optional. Title:

```
您在企业中的角色是？ / What is your role in the business?
```

```
企业所有者 owner
我单独决定合规服务的采购 I decide alone on buying compliance services
我与他人共同决定 I decide jointly with others
以上都不是 none of these
```

**Q4** · Multiple choice · optional ("Other" option on, renamed "其他 other"). Title:

```
您的企业属于以下哪一类？ / Which describes your business?
```

```
卖家（品牌方、工厂或贸易商）seller (brand, factory or trader)
合规服务商、代理或检测机构 compliance service provider, agent or test lab
其他 other
```

**Q5** · Short answer · **required**. Title, then the help text under it:

```
您在主要销售平台上的店铺名称（必填） / Your shop name on your main marketplace (required)
```

```
店铺名称只用于确保每家企业只计算一次，不会公开。
Your shop name is used only to count each business once. It is never published.
```

**Q6** · Multiple choice · **required**. Title:

```
主要销售平台（必填） / Main marketplace (required)
```

Options: Q1's full list, including the last line "目前还没有，只是计划中 none yet, only
planned". Keep it: Q6 is required, and a seller who does not sell yet must still be able to
finish the form (no branching on qualification).

### Page 3 — About your compliance today

**D1** · Multiple choice · optional.

```
您希望覆盖多少款产品（产品型号）？ / How many products (product models) would you want covered?
```

```
1
2–10
11–50
50 款以上 more than 50
```

**D2** · Multiple choice · optional.

```
您目前的 GPSR 或欧盟代表服务由谁提供？ / Who provides your GPSR or EU-representative service today?
```

```
没有 none
只有欧盟负责人/欧代服务 RP or EU-rep service only
一站式代理套餐（VAT、EPR、欧代）one-stop agent bundle (VAT, EPR, rep)
平台自己的服务 the marketplace's own service
检测机构 test lab
其他 other
不清楚 don't know
```

**D3** · Multiple choice · optional. Fill ¥[B1] and ¥[B2] from section B first.

```
您每年为此支付多少费用？ / How much do you pay for it per year?
```

```
不付费 nothing
低于 ¥600 under ¥600
¥600 至不足 ¥[B1] from ¥600 to under ¥[B1]
¥[B1] 至 ¥[B2] from ¥[B1] to ¥[B2]
高于 ¥[B2] above ¥[B2]
不清楚 don't know
```

**D4** · Multiple choice · optional.

```
您觉得“每年 €249，最多 10 款产品”这个计划价格怎么样？ / What do you think of the planned price, €249 per year for up to 10 products?
```

```
太高 too high
差不多合适 about right
偏低 low
没有看法 no view
```

**D5** · Long answer · optional.

```
有什么原因会让您不使用这样的工具？（选填） / Is there anything that would stop you from using a tool like this? (optional)
```

### Page 4 — Contact (optional)

Block 4.1 (bold "一个" and "one"):

```
如果您希望收到抢先体验的消息，可以留下一个企业联系方式。这完全是自愿的。

If you want to hear about early access, you can leave one business contact. This is entirely optional.
```

**C1** · Multiple choice · optional.

```
联系方式类型 / Contact type
```

```
微信 WeChat
电子邮箱 e-mail
电话 phone
不留联系方式 no contact
```

**C2** · Short answer · hidden; shown when C1 is not "不留联系方式 no contact".

```
微信号 / 电子邮箱 / 电话 / WeChat ID / e-mail / phone
```

**T1** · Checkbox (one tick) · unticked · required only when C2 is filled.

```
我同意 PassportPilot 就抢先体验与我联系，并请我确认我在本表单中签署的意向书或预付意向。PassportPilot 仍在开发中，尚未上线，现在不收取任何款项。我可随时撤回同意。详见隐私说明。

Contact me about early access to PassportPilot, and ask me to confirm any letter of intent or pre-payment answer I give on this form. PassportPilot is in development and not available yet; no payment is taken now. I can withdraw this consent at any time. See the privacy notice.
```

**T2** · Checkbox · unticked · optional.

```
测试结束后保留我的联系方式，仅用于告知 PassportPilot 是否上线（最长 12 个月）。我可随时撤回同意。

Keep my contact after the test to tell me if PassportPilot launches (at most 12 months). I can withdraw this consent at any time.
```

### Page 5 — Letter of intent and pre-payment (optional)

Block 5.1:

```
以下两项都是自愿的，都不产生任何付款义务。产品尚未上线，现在不收取任何款项。

Both items below are optional, and neither creates any obligation to pay. PassportPilot is not available yet; no payment is taken now.
```

Block 5.2, the letter of intent, zh-CN (fill `[page address]` and `[page date]`; bold the
title, the words "开发中", point 4's first sentence and point 5's first sentence):

```
PassportPilot 意向书（不具约束力）

致：PassportPilot 运营者（见网站信息：[page address]/imprint.html）

1. 我们已阅读 [page address] 上（[page date] 版本）对 PassportPilot 的介绍。PassportPilot 是一款开发中的工具，尚未上线，上线日期尚未确定。
2. 根据该介绍，PassportPilot 计划根据我们用中文回答的问题，为每款产品起草：GPSR 产品风险分析；GPSR 技术文件；用我们所销售的欧盟国家的语言写成的安全警示和使用说明；以及可粘贴到平台商品页面的产品安全信息（制造商、欧盟负责人和安全信息栏目）。我们会审核、修改这些草稿，并声明其内容属实，产品及其文件的责任仍由我们承担。
3. 我们理解：PassportPilot 不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人，也不签署符合性声明。欧盟负责人服务不包含在内，由服务机构另行定价。
4. 如果 PassportPilot 按上述介绍上线，我们打算以计划的首年价格购买：每年 €249，最多 10 款产品（一款产品指一个产品型号，同一型号的不同尺码、颜色算作一款）。
5. 本意向书不具约束力。它不构成合同，不产生购买或付款义务，对 PassportPilot 也不产生任何义务。产品尚未上线，现在不收取任何款项。我们可以随时以书面形式撤回本意向书。
6. 本意向书及其中信息按 [page address]/privacy.html 的隐私说明处理，并在 PassportPilot 运营者就是否开发该产品作出决定后 30 天内删除。
```

Block 5.3, the letter of intent, English (same fills; bold the title, "in development",
point 4's sentence and "This letter is non-binding."):

```
PassportPilot — Letter of intent (non-binding)

To: the operator of PassportPilot (see the imprint: [page address]/imprint.html)

1. We have read the description of PassportPilot at [page address] (version of [page date]). PassportPilot is a tool in development. It is not available yet, and its launch date is not fixed.
2. As described there, PassportPilot is planned to draft, for each product, from questions we answer in Chinese: a GPSR product risk analysis; a GPSR technical documentation file; safety warnings and instructions in the languages of the EU countries where we sell; and product-safety text to paste into our marketplace listings (the manufacturer, Responsible Person and safety-information fields). We review, correct and attest to the drafts, and we stay responsible for our products and their documents.
3. We understand that PassportPilot does not certify or test products, does not give legal advice, does not act as EU Responsible Person and does not sign Declarations of Conformity. EU Responsible Person services are not included and are priced by their providers.
4. If PassportPilot launches as described, we intend to buy it at the planned first-year price of €249 per year for up to 10 products (one product means one product model; size and colour variants of a model count as one product).
5. This letter is non-binding. It is not a contract. It creates no obligation to buy or to pay, and no obligation for PassportPilot. PassportPilot is not available yet; no payment is taken now. We may withdraw this letter at any time in writing.
6. This letter and the information in it are handled under the privacy notice at [page address]/en/privacy.html, and deleted within 30 days of the operator's decision on whether to build PassportPilot.
```

(The letter's signature table is not pasted: the form asks for the shop name and marketplace in
Q5 and Q6, records the date itself, and takes the rest in L2 to L4.)

**L1** · Checkbox · unticked · optional.

```
我希望签署这份不具约束力的意向书 / I want to sign this non-binding letter of intent
```

**L2** · Short answer · hidden; shown when L1 is ticked.

```
企业名称 / Business name
```

**L3** · Short answer · hidden; shown when L1 is ticked.

```
签署人职务 / Signer's role
```

**L4** · Signature · hidden; shown when L1 is ticked.

```
签名 / Signature
```

**P1** · Multiple choice · optional. Title, then the help text under it:

```
如果 PassportPilot 按上述介绍上线，价格为每年 €249、最多 10 款产品，您会在上线时预付第一年的费用吗？现在不收取任何款项。 / If PassportPilot launches as described, at €249 a year for up to 10 products, would you pay the first year in advance at launch? No payment is taken now.
```

```
会 yes
也许 maybe
不会 no
```

```
我们可能会通过您留下的联系方式，请您以书面形式确认。
We may ask you to confirm this in writing, using the contact you left.
```

### Page 6 — Thank you page

Status line (block S) first, then (fill `{{CONTACT}}`):

```
谢谢！PassportPilot 仍在开发中，尚未上线，现在不收取任何款项。如果您勾选了测试结束后保留联系方式，PassportPilot 上线时（如果上线）我们会告知您；在此之前，我们可能会请您确认您签署的意向书或预付意向。您可以随时要求删除您的信息：{{CONTACT}}。

Thank you. PassportPilot is in development and not available yet. No payment is taken now. If you asked to be kept informed after the test, we will tell you if and when it launches; before that, we may ask you to confirm any letter of intent or pre-payment answer. You can ask us to delete your information at any time: {{CONTACT}}.
```

---

## D. Reviewer extract (A-002 step 7): zh-CN lines only

Copy everything in the block below into a plain document for the native-speaker reviewer,
**after** filling the markers, so the reviewer sees what will be published. Leave out the
English and the build notes. Give the reviewer the printed page PDFs separately (A-002 step 6).

```
【表单：每页顶部】
开发中 · 抢先体验登记 · 产品尚未上线，现在无法购买，也不收取任何款项

【第 1 页】
PassportPilot 抢先体验登记
PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项。上线日期尚未确定，是否上线也尚未决定。登记后，产品上线时您将优先获得使用资格（抢先体验）。
PassportPilot 是一款计划中的工具：您用中文回答关于产品的问题，它为每款产品起草 GPSR 产品风险分析、GPSR 技术文件、用您所销售的欧盟国家的语言写成的安全警示和使用说明，以及可粘贴到平台商品页面的产品安全信息。每一份草稿都由您审核、修改，并声明其内容属实，产品及其文件的责任仍由您承担。它不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人，也不签署符合性声明。
计划价格：每年 €249，最多 10 款产品（计划中的首年上线价格；一款产品指一个产品型号，同一型号的不同尺码、颜色算作一款；超过 10 款产品的价格在上线时公布；不含欧盟负责人服务）。
填写本表单约需几分钟。联系方式和意向书都是自愿的。请先阅读隐私说明。

【第 2 页】
您的企业目前在哪些渠道向欧盟消费者销售？（可多选）
  亚马逊欧洲站 / eBay（欧盟站点）/ Etsy / Temu / 速卖通 / Kaufland / Cdiscount / Allegro / OTTO / bol / Zalando / 其他欧盟电商平台 / 自有网店发货给欧盟消费者 / 目前还没有，只是计划中
您在这些渠道销售、或计划在 6 个月内上架的产品中，有哪些属于以下类别？（可多选）
  纺织品与服装 / 家具 / 珠宝首饰 / 以上都不是
您在企业中的角色是？
  企业所有者 / 我单独决定合规服务的采购 / 我与他人共同决定 / 以上都不是
您的企业属于以下哪一类？
  卖家（品牌方、工厂或贸易商）/ 合规服务商、代理或检测机构 / 其他
您在主要销售平台上的店铺名称（必填）
  店铺名称只用于确保每家企业只计算一次，不会公开。
主要销售平台（必填）

【第 3 页】
您希望覆盖多少款产品（产品型号）？
  1 / 2–10 / 11–50 / 50 款以上
您目前的 GPSR 或欧盟代表服务由谁提供？
  没有 / 只有欧盟负责人/欧代服务 / 一站式代理套餐（VAT、EPR、欧代）/ 平台自己的服务 / 检测机构 / 其他 / 不清楚
您每年为此支付多少费用？
  不付费 / 低于 ¥600 / ¥600 至不足 ¥[B1] / ¥[B1] 至 ¥[B2] / 高于 ¥[B2] / 不清楚
您觉得“每年 €249，最多 10 款产品”这个计划价格怎么样？
  太高 / 差不多合适 / 偏低 / 没有看法
有什么原因会让您不使用这样的工具？（选填）

【第 4 页】
如果您希望收到抢先体验的消息，可以留下一个企业联系方式。这完全是自愿的。
联系方式类型
  微信 / 电子邮箱 / 电话 / 不留联系方式
微信号 / 电子邮箱 / 电话
我同意 PassportPilot 就抢先体验与我联系，并请我确认我在本表单中签署的意向书或预付意向。PassportPilot 仍在开发中，尚未上线，现在不收取任何款项。我可随时撤回同意。详见隐私说明。
测试结束后保留我的联系方式，仅用于告知 PassportPilot 是否上线（最长 12 个月）。我可随时撤回同意。

【第 5 页】
以下两项都是自愿的，都不产生任何付款义务。产品尚未上线，现在不收取任何款项。
PassportPilot 意向书（不具约束力）
致：PassportPilot 运营者（见网站信息：[page address]/imprint.html）
1. 我们已阅读 [page address] 上（[page date] 版本）对 PassportPilot 的介绍。PassportPilot 是一款开发中的工具，尚未上线，上线日期尚未确定。
2. 根据该介绍，PassportPilot 计划根据我们用中文回答的问题，为每款产品起草：GPSR 产品风险分析；GPSR 技术文件；用我们所销售的欧盟国家的语言写成的安全警示和使用说明；以及可粘贴到平台商品页面的产品安全信息（制造商、欧盟负责人和安全信息栏目）。我们会审核、修改这些草稿，并声明其内容属实，产品及其文件的责任仍由我们承担。
3. 我们理解：PassportPilot 不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人，也不签署符合性声明。欧盟负责人服务不包含在内，由服务机构另行定价。
4. 如果 PassportPilot 按上述介绍上线，我们打算以计划的首年价格购买：每年 €249，最多 10 款产品（一款产品指一个产品型号，同一型号的不同尺码、颜色算作一款）。
5. 本意向书不具约束力。它不构成合同，不产生购买或付款义务，对 PassportPilot 也不产生任何义务。产品尚未上线，现在不收取任何款项。我们可以随时以书面形式撤回本意向书。
6. 本意向书及其中信息按 [page address]/privacy.html 的隐私说明处理，并在 PassportPilot 运营者就是否开发该产品作出决定后 30 天内删除。
我希望签署这份不具约束力的意向书
企业名称
签署人职务
签名
如果 PassportPilot 按上述介绍上线，价格为每年 €249、最多 10 款产品，您会在上线时预付第一年的费用吗？现在不收取任何款项。
  会 / 也许 / 不会
我们可能会通过您留下的联系方式，请您以书面形式确认。

【第 6 页：提交后】
谢谢！PassportPilot 仍在开发中，尚未上线，现在不收取任何款项。如果您勾选了测试结束后保留联系方式，PassportPilot 上线时（如果上线）我们会告知您；在此之前，我们可能会请您确认您签署的意向书或预付意向。您可以随时要求删除您的信息：{{CONTACT}}。

【意向书（一对一发送时的签署栏）】
企业名称
店铺名称及主要销售平台
签署人职务（例如：企业主、法定代表人、合伙人、合规采购决策人）
日期
签名或公司盖章
```
