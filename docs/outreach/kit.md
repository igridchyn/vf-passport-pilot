# kit.md — Outreach kit: WeChat group post, first 1:1 message, forum post, follow-ups (zh-CN + EN), draft

Date: 2026-10-06. **Status: draft**, for the founder's review on the FD.4 comms card. Task
FD.4 (`docs/planning/validation-plan.md`). Serves test **D** (the first 1:1 message is how a
seller is *reached*, PREREG-F §2.2; the follow-ups are how a form signal is *confirmed*,
§3.2–§3.3) and test **C** (channel codes, partner-introduction text). The partner pitch is in
`partner-pitch.md`; the tracker template is `tracker.md` and `tracker-template.csv`.

**The loop sends nothing.** Every text here is a draft for the founder, or for a partner the
founder recruits, to send by hand (hard rule 1). The founder adapts the voice; the price, the
scope and the in-development wording do not change (PREREG-F §9: copy does not change during
the window).

**Wording is reused, not re-derived.** The offer, the price and the early-access lines are
those of `site/index.html` and `site/en/index.html` (FD.2). The pre-payment question is
`form.md` P1, word for word. The letter of intent is `loi.md`. Every zh-CN line needs a native
speaker's check and is marked [zh-check]; the English is the reference for meaning.

---

## 0. Rules for every message

1. **Every message says:** in development · early access · no payment now (PREREG-F §1.3,
   §7.1). In zh-CN the no-payment line is tied to "尚未上线 / 无法购买", never to 现阶段不收取
   or 免费, which read as "free for now". Where the offer is described, it also says that the
   launch date is not fixed and **whether it launches has not been decided**. A short reply
   inside a thread (FU1b, FU5, FU6, the answers in §6) ends with the **short status line**
   (FU7, a deletion reply, uses a shorter one without the sign-up invitation):
   zh-CN [zh-check] "（PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。）"
   EN "(PassportPilot is in development and not available yet, so it cannot be bought, and no
   payment is taken now; signing up gives early access when it launches.)"
2. **Only the PREREG-F price**: €249 per year for up to 10 products, the planned first-year
   launch price. No discount, no "early-bird" price, no deadline, no "only N places" (§7.2).
   If a seller offers another price, record it as a price objection (FU6); do not negotiate.
3. **No penalty figures, no deadlines, no DPP dates.** If a seller asks about fines or
   deadlines, say it is not legal advice and that you cannot advise on it. Do not quote
   numbers (hard rule 4; PREREG-F §7.4).
4. **Tooling, not certification.** Never say or imply that PassportPilot certifies, makes a
   product compliant, gives legal advice, acts as EU Responsible Person or signs a
   Declaration of Conformity (hard rule 5).
5. **No names.** Never name a partner, a Responsible-Person provider, a customer or a
   marketplace as anything but a place where the seller sells. Never say or imply that
   Amazon, any marketplace or any authority endorses PassportPilot (hard rule 3). Do not
   promise a Chinese-speaking contact: the page does not, and PREREG-F §9 freezes the copy
   once the window starts. Adding one needs a partner's written agreement **before** this kit
   and the page are approved (CH.2, PREREG-F §1.1).
6. **Privacy link wherever data is asked**: the first 1:1 message and every message that asks
   for an answer carry `{{PAGE_URL}}/privacy.html` (zh-CN) or `{{PAGE_URL}}/en/privacy.html`.
7. **The form link carries the channel code** (§5 below). Link the **form**, not the page:
   the page's own button is coded `web`, so a seller who arrives through the page would be
   counted under the wrong channel. Send the page address only if a seller asks for it.
8. **WeChat links.** If the form does not open inside WeChat (checked at FD.3), send the link
   as plain text to copy into a browser, plus a QR code of the same coded link (PREREG-F §5.2).
   Make it a **static** QR code that encodes the coded form link directly: no short link, no
   redirect, no scan tracking (dynamic QR services count scans and may expire).
   Made at FD.3; free.
9. **Written, 1:1, by the founder.** A seller is *reached* only in a written 1:1 exchange with
   the founder or on the form (§2.2). After a call, send the recap (FU4) at once. A partner
   introduces; it never collects answers, contacts or letters of intent (§6.2).
10. **No pressure, one reminder.** At most one reminder (FU1) after no reply. Someone who says
    no or "maybe" gets no further chasing.
11. **Translation note.** If you write in Chinese with a translation tool, keep the bracketed
    line 〔…〕 that says so. If you write Chinese yourself, delete it. Either way the seller may
    answer in Chinese.
12. **Data stays in your own tools** (hard rule 2). Answers, shop names, contacts and LOI
    copies live in your WeChat, e-mail, Tally account and own tracker; the repo gets only the
    weekly aggregate counts (`tracker.md`).
13. **Stopping.** You may stop new outreach once PASS is fixed (PREREG-F §3.4). Until the
    window ends, keep sending FU2 and FU3 to sellers among the 50; sellers numbered after the
    50 get the same messages, and their signals are counted apart.
14. **Partner-adapted texts** get your approval only if they still meet rules 1–6.
15. **WeChat needs the seller's consent (decision log #21).** On WeChat the first 1:1 message
    is still the standard text of §2, with the offer, the price and the questions in it
    (PREREG-F §2.2), plus the consent paragraph of §2a placed before the questions. Take a
    seller's answers on WeChat only from a reply that says "同意". A seller who ticked T3 on the
    form has already consented; send §2 or FU3 to them without that paragraph. Keep the record
    of who consented in your own files, never in the repo. Whoever withdraws gets one WeChat
    reply confirming it (§2a) and no other WeChat message after that; reach them by e-mail or
    the form only if they have given that. (Option B of `privacy-safeguard-options.md`; not
    legal advice.)

**Placeholders** (founder, at FD.3 / FD.5): `{{FORM_URL}}`, `{{PAGE_URL}}`, `{{CONTACT}}`
(the role address, as in `form.md`), `{{FOUNDER_WECHAT}}` (only in a partner's introduction,
for a seller who wants to write to the founder), `[code]` (the channel code of §5), `[date]`.

---

## 1. WeChat group post (channel code `WG1`, `WG2` … one per group)

**When:** only in a group whose owner has agreed to the post. A group that charges for posting
is a cost card (hard rule 6), counted as its own channel. One post per group; answer
questions in the group or in 1:1 when someone writes to you. A group post does not *reach*
anyone by itself (PREREG-F §2.2): only a form submission or a 1:1 exchange does.

**zh-CN** [zh-check]

> 【开发中 · 抢先体验登记】PassportPilot：用中文回答问题，起草欧盟 GPSR 产品安全文件 [zh-check]
>
> 大家好，我是 PassportPilot 的创始人，在欧盟。感谢群主同意我发这条消息。〔这条消息借助翻译工具写成，欢迎用中文回复。〕 [zh-check]
>
> PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项。上线日期尚未确定，是否上线也尚未决定。登记后，产品上线时您将优先获得使用资格（抢先体验）。 [zh-check]
>
> 它是一款计划中的工具，面向向欧盟消费者销售纺织品与服装、家具或珠宝首饰的卖家：您用中文回答关于产品的问题，它为每款产品起草 GPSR 产品风险分析、GPSR 技术文件、用您所销售的欧盟国家的语言写成的安全警示和使用说明，以及可粘贴到平台商品页面的产品安全信息。草稿由您审核、修改，并声明其内容属实，产品及其文件的责任仍由您承担。它不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人，也不签署符合性声明。 [zh-check]
>
> 计划价格：每年 €249，最多 10 款产品（计划中的首年上线价格；同一型号的不同尺码、颜色算作一款；超过 10 款产品的价格在上线时公布；不含欧盟负责人服务）。 [zh-check]
>
> 如果您感兴趣，可以填写这份登记表（约需几分钟，联系方式自愿）：{{FORM_URL}}?ch=WG1 。如果在微信中打不开，请复制链接到浏览器打开。也欢迎私信我。 [zh-check]
>
> PassportPilot 与任何电商平台或政府机构均无关联，也未获得其认可。隐私说明：{{PAGE_URL}}/privacy.html [zh-check]

**EN**

> [In development · early-access sign-up] PassportPilot: answer questions in Chinese, get
> drafts of your EU GPSR product-safety documents
>
> Hello everyone. I am the founder of PassportPilot, based in the EU. Thank you to the group
> owner for allowing this post. 〔This message was written with a translation tool; replies in
> Chinese are welcome.〕
>
> PassportPilot is in development. It is not available yet, so it cannot be bought, and no
> payment is taken now. Its launch date is not fixed, and whether it launches has not been
> decided. Signing up gives you early access when it launches.
>
> It is a planned tool for sellers who sell textiles and apparel, furniture or jewellery to
> consumers in the EU: you answer questions about your product in Chinese, and for each
> product it drafts a GPSR product risk analysis, a GPSR technical documentation file, safety
> warnings and instructions in the languages of the EU countries where you sell, and
> product-safety text to paste into your marketplace listings. You review, correct and attest
> to the drafts, and you stay responsible for your product and its documents. It does not
> certify or test products, give legal advice, act as EU Responsible Person or sign
> Declarations of Conformity.
>
> Planned price: €249 per year for up to 10 products (the planned first-year launch price;
> size and colour variants of a model count as one product; more than 10 products priced at
> launch; EU Responsible Person services not included).
>
> If you are interested, the sign-up form takes a few minutes, and leaving a contact is
> optional: {{FORM_URL}}?ch=WG1 . If it does not open in WeChat, copy the link into a browser.
> You are also welcome to message me directly.
>
> PassportPilot is not affiliated with, or endorsed by, any marketplace or public authority.
> Privacy notice: {{PAGE_URL}}/en/privacy.html

---

## 2. First 1:1 message — the standard text (PREREG-F §2.2)

**This is the message that reaches a seller.** It carries the offer, the price and the
qualification questions, so the price is never held back from anyone (§2.2). Send it as it
stands to every seller who writes to you or asks to be contacted, after a group post, a
forum post, the page or an introduction. Questions 1–3 are PREREG-F §2.1's three
qualification questions; 4 is the form's business-type question (Q4, decision log #13); 5 is
the shop name, required to count each business once (§2.1). **Fill `[code]`** in the form
link: the partner's code (`P1` …) for a seller a partner introduced; the group's or forum's
code (`WG1` …, `BB1` …) for a seller who wrote after a post; `DM` for a seller who wrote to you
in any other way.

**On WeChat, add the consent paragraph of §2a** (rule 15) after the price paragraph, before the
questions. The message is otherwise unchanged, so the price and the questions reach every
seller in the same first message (PREREG-F §2.2). On e-mail, in a forum thread or by any other
route, send it as it stands.

**No cold messages in this test (hard rule 1, PREREG-F §6.2, §6.4).** Send the first
message only to a seller who wrote to you or added you themselves (after a post, the page or
a partner's introduction), or who asked in a group or forum thread to be contacted, and then
in that thread or by their own request. A partner never forwards a seller's contact card
(推名片) or contact details to you: the seller adds you. Never add or message people taken
from a group's member list, a forum's user list, a marketplace storefront or any other list,
and never scrape contacts. (Writing first to people whose data you did not get from them would
also need a GDPR Art. 14 source statement in the privacy notice, which it does not have;
decision log #14.) People you knew before the test, and staff or relatives of a partner or of you,
are not qualified (PREREG-F §2.1, void ground 2): decide that before you know their answer.

**The seller is reached** when they have seen this message and their answers make them
qualified. Their number in your tracker is set by the time of the message that completes the
answers (§2.3). If an answer is missing, ask only for that one (FU1b).

**zh-CN** [zh-check]

> 您好！我是 PassportPilot 的创始人，在欧盟。〔这条消息借助翻译工具写成，欢迎用中文回复。〕 [zh-check]
>
> PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项。上线日期尚未确定，是否上线也尚未决定。登记后，产品上线时您将优先获得使用资格（抢先体验）。 [zh-check]
>
> PassportPilot 是一款计划中的工具：您用中文回答关于产品的问题，它为每款产品起草 GPSR 产品风险分析、GPSR 技术文件、用您所销售的欧盟国家的语言写成的安全警示和使用说明，以及可粘贴到平台商品页面的产品安全信息。每一份草稿都由您审核、修改，并声明其内容属实，产品及其文件的责任仍由您承担。它不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人，也不签署符合性声明。 [zh-check]
>
> 计划价格：每年 €249，最多 10 款产品（计划中的首年上线价格；一款产品指一个产品型号，同一型号的不同尺码、颜色算作一款；超过 10 款产品的价格在上线时公布；不含欧盟负责人服务）。 [zh-check]
>
> 如果您愿意，请回复以下问题，帮我判断这个工具是否适合您： [zh-check]
> 1. 您的企业目前在哪些渠道向欧盟消费者销售？（例如亚马逊欧洲站、eBay 欧盟站点、Etsy、Temu、速卖通等平台，或通过自有网店发货给欧盟消费者。只是计划中的不算。） [zh-check]
> 2. 您在这些渠道销售、或计划在 6 个月内上架的产品中，有哪些属于纺织品与服装、家具或珠宝首饰？（可多选，或回答“都不是”。） [zh-check]
> 3. 您是企业所有者吗？或者，您是否单独或与他人共同决定合规服务的采购？ [zh-check]
> 4. 您的企业是卖家（品牌方、工厂或贸易商），还是合规服务商、代理或检测机构？ [zh-check]
> 5. 您在主要销售平台上的店铺名称，以及是哪个平台？（只用于确保每家企业只计算一次，不会公开。） [zh-check]
>
> 您也可以填写登记表代替回复（约需几分钟）：{{FORM_URL}}?ch=[code] 。您的回答按隐私说明处理：{{PAGE_URL}}/privacy.html 。如果不感兴趣，回复“不用了”即可，我不会再联系您。 [zh-check]

**EN**

> Hello! I am the founder of PassportPilot, based in the EU.
> 〔This message was written with a translation tool; replies in Chinese are welcome.〕
>
> PassportPilot is in development. It is not available yet, so it cannot be bought, and no
> payment is taken now. Its launch date is not fixed, and whether it launches has not been
> decided. Signing up gives you early access when it launches.
>
> PassportPilot is a planned tool: you answer questions about your product in Chinese, and
> for each product it drafts a GPSR product risk analysis, a GPSR technical documentation
> file, safety warnings and instructions in the languages of the EU countries where you sell,
> and product-safety text to paste into your marketplace listings. You review, correct and
> attest to every draft, and you stay responsible for your product and its documents. It does
> not certify or test products, give legal advice, act as EU Responsible Person or sign
> Declarations of Conformity.
>
> Planned price: €249 per year for up to 10 products (the planned first-year launch price;
> one product means one product model, and size and colour variants of a model count as one;
> more than 10 products priced at launch; EU Responsible Person services not included).
>
> If you are willing, please answer these questions, so I can tell whether the tool fits you:
> 1. Where does your business sell to consumers in the EU now? (For example an Amazon EU
>    store, eBay EU sites, Etsy, Temu, AliExpress or another marketplace, or your own online
>    store shipping to EU consumers. Sales that are only planned do not count.)
> 2. Which of these categories do the products you sell there, or will list within 6
>    months, belong to: textiles and apparel, furniture, jewellery? (Name all that apply, or
>    say "none".)
> 3. Do you own the business? Or do you decide, alone or with others, on buying compliance
>    services for it?
> 4. Is your business a seller (brand, factory or trader), or a compliance service provider,
>    agent or test lab?
> 5. What is your shop name on your main marketplace, and which marketplace is it? (Used only
>    to count each business once. It is never published.)
>
> You can also fill in the sign-up form instead of replying (a few minutes):
> {{FORM_URL}}?ch=[code] . Your answers are handled under the privacy notice:
> {{PAGE_URL}}/en/privacy.html . If you are not interested, just reply "no thanks" and I will
> not contact you again.

**Qualified when** (as on the form, `form.md` screen 2): 1 names at least one current EU
channel; 2 names at least one of the three categories; 3 is yes; 4 is "seller"; 5 is
answered. A provider, agent or lab is not qualified, whatever else they answer (PREREG-F §2.1).

### 2a. WeChat consent paragraph (inserted in §2 on WeChat; GDPR Art. 49(1)(a))

Privacy notice section 5 (option B, once the founder has filled it in) says WeChat is used with
a seller only if the seller explicitly agrees to the transfer outside the EEA, on the form (T3)
or by writing "同意" in a WeChat reply. This paragraph is that request. On WeChat, put it in the
standard first message (§2) after the price paragraph and before "If you are willing, please
answer these questions"; nothing else in §2 changes, so PREREG-F §2.2 is kept as approved. It
sits beside the in-development line and the privacy link that §2 already carries.
- **A reply with "同意":** note the consent in your own record; its answers count as in §2.
- **Answers without "同意":** take no answer from it and do not discuss the offer further on
  WeChat. Send the paragraph once more, alone with the status line (rule 1); if there is still
  no "同意", use the form or nothing. The tracker rules of §2 apply to what was already
  received only for the count; do not pass it on or reuse it.
- **No reply:** nothing more. FU1 (one reminder) is allowed as for any first message.
- **"不同意", or a withdrawal later:** reply once, in the thread, that you will not use WeChat
  with them further, ending with FU7's short status line; that is the last WeChat message.
- The form route needs none of this: a seller who ticked T3 has consented (`form.md`), and
  FU3 goes to them as it stands.

**zh-CN** [zh-check]

> 如您同意通过微信沟通（您的信息会因此传输到欧洲经济区以外：欧盟委员会未就这些国家或地区作出充分性决定，我们自己也没有与微信运营方订立保障措施，您的信息可能得不到与欧盟同等的保护，详见隐私说明第 5 节：{{PAGE_URL}}/privacy.html ），请在回复中写明“同意”，并可在同一条回复中回答下面的问题。您可以随时撤回同意；之后我只会回复一条确认消息，不再通过微信与您联系。您也可以不使用微信，改为填写登记表（见下）。 [zh-check]

**EN**

> If you agree to talk on WeChat (your information is then transferred outside the European
> Economic Area, where the European Commission has not found the protection adequate and we
> have no safeguard of our own with the WeChat operator, so your information may not be
> protected to the EU standard; see section 5 of the privacy notice:
> {{PAGE_URL}}/en/privacy.html ), please write "同意" (agree) in your reply, and you can answer
> the questions below in the same reply. You can withdraw your consent at any time; I will then
> stop using WeChat with you, apart from one reply to confirm. You can also skip WeChat and fill
> in the sign-up form instead (below).

### 2b. Partner's introduction (sent by the partner, in its own voice)

A partner adapts this to its voice and sends the adapted text to the founder for approval
before using it (`channels.md` §6). The price, the scope and the in-development lines stay
as they are. The partner shares only **its own coded link** and, if the seller wants it, the
founder's contact. It receives no answers. Replace `P1` with the partner's code.
- **No group-chat introductions** (拉群). A group with the partner, the seller and the founder
  would put the seller's answers, shop name or LOI in front of the partner (PREREG-F §6.2).
  The seller adds the founder 1:1 or uses the form.
- The partner answers sellers' questions **only with the short answers of §6**, and refers
  anything else (fines, deadlines, legal questions, Responsible Person, price questions beyond
  the two §6 answers) to the founder.
- The partner never forwards a seller's contact card (推名片) or contact details to the
  founder; the seller adds the founder or uses the form.
- The partner does not introduce its own staff or relatives (not qualified, PREREG-F §2.1).

**zh-CN** [zh-check]

> 您好，向您介绍一款开发中的工具 PassportPilot。它的创始人在欧盟，正在了解卖家是否需要它。 [zh-check]
>
> PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项。上线日期尚未确定，是否上线也尚未决定。登记后，产品上线时可优先获得使用资格（抢先体验）。 [zh-check]
>
> 它计划根据您用中文回答的问题，为每款产品起草 GPSR 产品风险分析、GPSR 技术文件、用您所销售的欧盟国家的语言写成的安全警示和使用说明，以及可粘贴到平台商品页面的产品安全信息；草稿由您审核并声明其内容属实。它不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人。计划价格：每年 €249，最多 10 款产品（计划中的首年上线价格，不含欧盟负责人服务）。 [zh-check]
>
> 如果您感兴趣，可以直接填写登记表（约需几分钟）：{{FORM_URL}}?ch=P1 。您的回答直接交给创始人，我们看不到。您也可以单独加创始人微信：{{FOUNDER_WECHAT}}〔创始人借助翻译工具沟通，欢迎用中文〕。隐私说明：{{PAGE_URL}}/privacy.html [zh-check]

**EN**

> Hello, I would like to introduce PassportPilot, a tool in development. Its founder, based
> in the EU, is finding out whether sellers want it.
>
> PassportPilot is in development. It is not available yet, so it cannot be bought, and no
> payment is taken now. Its launch date is not fixed, and whether it launches has not been
> decided. Signing up gives early access when it launches.
>
> It is planned to draft, for each product, from questions you answer in Chinese: a GPSR
> product risk analysis, a GPSR technical documentation file, safety warnings and
> instructions in the languages of the EU countries where you sell, and product-safety text
> to paste into your marketplace listings; you review and attest to the drafts. It does not
> certify or test products, give legal advice or act as EU Responsible Person. Planned price:
> €249 per year for up to 10 products (the planned first-year launch price; EU Responsible
> Person services not included).
>
> If you are interested, you can fill in the sign-up form directly (a few minutes):
> {{FORM_URL}}?ch=P1 . Your answers go straight to the founder; we do not see them. You can
> also add the founder on WeChat yourself: {{FOUNDER_WECHAT}} 〔the founder uses a translation
> tool; Chinese is welcome〕. Privacy notice: {{PAGE_URL}}/en/privacy.html

A seller who writes to the founder after this introduction gets the standard first message
(§2) with the partner's code, so the full offer and the questions reach them in the same
words as everyone else.
On WeChat, the founder's first reply to such a seller is the standard message of §2 with the
consent paragraph of §2a in it.

---

## 3. Seller-forum post (channel code `BB1`, `BB2` … one per forum)

**Where — and where not.**
- **Not on Amazon's own Seller Forums.** Their guidelines prohibit commercial content such as
  advertising, promotions or solicitations
  ([Seller Forums guidelines, EU](https://sellercentral-europe.amazon.com/seller-forums/guidelines);
  [established], snippet-read 2026-10-06). A post there would breach the rules of the platform
  test P is about, and could read as Amazon's endorsement. The same applies to any
  marketplace-run community whose rules forbid promotion.
- **Independent seller forums**, such as the boards listed in `channels.md` §3, and only in a
  section whose rules allow it. Read the forum's rules first. 知无不言's supply board is
  described as turning away pure software advertorials (`channels.md` §3, [vendor claim]), so
  the post below is written as a question to sellers with a plain disclosure, not as an
  advert. A paid placement or sponsored post is a cost card.
- The two GPSR sentences are the page's own (`site/en/index.html`, "Why these documents"),
  sourced in `docs/research/3_gpsr_copy_sources.md` (L1 and the marketplace statement). Do
  not add others.
- A forum post reaches no one by itself (§2.2). Answer in the thread. Write 1:1 only to
  someone who asks you to, with the standard first message (§2) and the forum's code.

**zh-CN** [zh-check]

> **标题：** 【开发中，征求卖家意见】大家现在怎么准备 GPSR 风险分析和技术文件？ [zh-check]
>
> 先说明：我是 PassportPilot 的创始人，在欧盟。PassportPilot 是一款开发中的工具，尚未上线，现在无法购买，也不收取任何款项；上线日期尚未确定，是否上线也尚未决定。〔这篇帖子借助翻译工具写成。〕 [zh-check]
>
> 欧盟《通用产品安全法规》（GPSR，法规 (EU) 2023/988）自 2024 年 12 月 13 日起适用（来源：[EUR-Lex 法规摘要](https://eur-lex.europa.eu/EN/legal-content/summary/general-product-safety-regulation-2023.html)）。主要欧盟电商平台会要求卖家在商品页面中填写产品安全信息，例如制造商、欧盟负责人和安全警示。想请教做纺织品与服装、家具或珠宝首饰的卖家： [zh-check]
> 1. 产品风险分析和技术文件，您现在是自己做、找服务商做，还是还没有准备？ [zh-check]
> 2. 多语种的安全警示和使用说明，您是怎么解决的？ [zh-check]
> 3. 如果有一款工具，用中文回答问题，为每款产品起草这些文件，由您审核并声明其内容属实，计划价格为每年 €249、最多 10 款产品（计划中的首年上线价格，不含欧盟负责人服务），您会考虑吗？为什么？ [zh-check]
>
> PassportPilot 不对产品进行认证或检测，不提供法律意见，不担任欧盟负责人，也不签署符合性声明。它与任何电商平台或政府机构均无关联，也未获得其认可。 [zh-check]
>
> 欢迎在帖子里回复。如果想登记抢先体验（产品上线时优先获得使用资格），可以填写这份登记表（约需几分钟，联系方式自愿）：{{FORM_URL}}?ch=BB1 。隐私说明：{{PAGE_URL}}/privacy.html [zh-check]

**EN**

> **Title:** [In development, asking sellers' views] How do you prepare GPSR risk analyses
> and technical files today?
>
> First, a disclosure: I am the founder of PassportPilot, based in the EU. PassportPilot is a
> tool in development. It is not available yet, so it cannot be bought, and no payment is
> taken now; its launch date is not fixed, and whether it launches has not been decided.
> 〔This post was written with a translation tool.〕
>
> The EU General Product Safety Regulation (GPSR, Regulation (EU) 2023/988) has applied since
> 13 December 2024 (source:
> [EUR-Lex summary of the regulation](https://eur-lex.europa.eu/EN/legal-content/summary/general-product-safety-regulation-2023.html)).
> Major EU marketplaces ask sellers for product-safety information in their listings, such as
> the manufacturer, the EU Responsible Person and safety warnings.
> A question for sellers of textiles and apparel, furniture or jewellery:
> 1. Do you prepare the product risk analysis and the technical file yourself, through a
>    service provider, or not yet?
> 2. How do you handle safety warnings and instructions in several languages?
> 3. Would you consider a tool where you answer questions in Chinese and it drafts these
>    documents for each product, which you review and attest to, at a planned price of €249
>    per year for up to 10 products (the planned first-year launch price; EU Responsible
>    Person services not included)? Why or why not?
>
> PassportPilot does not certify or test products, give legal advice, act as EU Responsible
> Person or sign Declarations of Conformity. It is not affiliated with, or endorsed by, any
> marketplace or public authority.
>
> Replies in the thread are welcome. To sign up for early access (access when it launches),
> the form takes a few minutes, and leaving a contact is optional: {{FORM_URL}}?ch=BB1 .
> Privacy notice: {{PAGE_URL}}/en/privacy.html

---

## 4. Follow-ups

### FU1 — One reminder, if the first message got no reply (after about 7 days; once only)

**zh-CN** [zh-check]

> 您好，最后打扰一次。上周我介绍了开发中的工具 PassportPilot（尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验；计划中的首年上线价格为每年 €249，最多 10 款产品）。如果您有兴趣，回复上条消息里的几个问题，或填写登记表即可：{{FORM_URL}}?ch=[code] 。隐私说明：{{PAGE_URL}}/privacy.html 。如果不感兴趣，不用回复，我不会再联系您。 [zh-check]

**EN**

> Hello, one last message from me. Last week I introduced PassportPilot, a tool in
> development (not available yet, so it cannot be bought, and no payment is taken now;
> signing up gives early access when it launches; planned first-year launch price €249 per
> year for up to 10 products). If you are interested, just answer the questions in my last
> message, or fill in the sign-up form: {{FORM_URL}}?ch=[code] . Privacy notice:
> {{PAGE_URL}}/en/privacy.html . If not, there is no need to reply, and I will not contact
> you again.

### FU1b — An answer is missing

**zh-CN** [zh-check]

> 谢谢您的回复！还想确认一个问题：[repeat the missing question from §2, word for word]。隐私说明：{{PAGE_URL}}/privacy.html （PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。） [zh-check]

**EN**

> Thank you for your reply! One more question: [repeat the missing question from §2, word
> for word]. Privacy notice: {{PAGE_URL}}/en/privacy.html
> (PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now; signing up gives early access when it launches.)

### FU2 — Qualified in 1:1: the letter of intent and the pre-payment question

Send once the answers make the seller qualified. **Paste the full `loi.md` text into the same
message**, below it (zh-CN, then the English), with `[page address]` and `[page date]` filled,
so that a quote-reply to this message quotes the letter (PREREG-F §3.2, decision log #14).
FU3 uses the same confirmation wording, so both routes meet one standard. The pre-payment
question is `form.md` P1 word for word (PREREG-F §3.3). The diagnostic questions are
optional, and the seller may skip them (§4).

**zh-CN** [zh-check]

> 谢谢！根据您的回答，PassportPilot 计划覆盖的正是您这类卖家。再说明一次：PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；是否上线也尚未决定；登记可在上线时获得抢先体验。 [zh-check]
>
> 如果您愿意，有两件事可以帮我判断是否值得把它做出来。两件都是自愿的，都不产生任何付款义务。 [zh-check]
>
> 一、意向书（不具约束力）。意向书全文附在本消息下方。如果您同意，可以签名或盖章后拍照发回，或者引用本消息回复“我们同意这份意向书”。它不是合同，可以随时撤回。 [zh-check]
>
> 二、一个问题：如果 PassportPilot 按上述介绍上线，价格为每年 €249、最多 10 款产品，您会在上线时预付第一年的费用吗？现在不收取任何款项。（会 / 也许 / 不会） [zh-check]
>
> 另外，如果方便，也想了解（都可以不答）： [zh-check]
> - 您希望覆盖多少款产品？（1 / 2–10 / 11–50 / 50 款以上） [zh-check]
> - 您目前的 GPSR 或欧盟代表服务由谁提供？（没有 / 只有欧盟负责人或欧代服务 / 一站式代理套餐 / 平台自己的服务 / 检测机构 / 其他 / 不清楚）不需要告诉我服务商的名称。 [zh-check]
> - 每年大约付多少钱？（不付费 / 低于 ¥600 / ¥600 至不足 ¥[B1] / ¥[B1] 至 ¥[B2] / 高于 ¥[B2] / 不清楚） [zh-check]
> - 您觉得这个计划价格：太高 / 差不多合适 / 偏低 / 没有看法？ [zh-check]
>
> 如果您希望产品上线时收到通知，请告诉我；我们只为此保留您的联系方式，最长 12 个月。隐私说明：{{PAGE_URL}}/privacy.html [zh-check]

**EN**

> Thank you! From your answers, PassportPilot is planned for sellers like you. To repeat:
> PassportPilot is in development. It is not available yet, so it cannot be bought, and no
> payment is taken now; whether it launches has not been decided. Signing up gives early
> access when it launches.
>
> If you are willing, two things would help me judge whether to build it. Both are optional,
> and neither creates any obligation to pay.
>
> 1. A letter of intent (non-binding). Its full text is below this message. If you agree,
>    sign it or stamp it with your company chop and send back a photo, or quote-reply to this
>    message with "we agree to this letter of intent". It is not a contract, and you can
>    withdraw it at any time.
> 2. One question: If PassportPilot launches as described, at €249 a year for up to 10
>    products, would you pay the first year in advance at launch? No payment is taken now.
>    (yes / maybe / no)
>
> And, if you do not mind (you can skip any of these):
> - How many products would you want covered? (1 / 2–10 / 11–50 / more than 50)
> - Who provides your GPSR or EU-representative service today? (none / RP or EU-rep service
>   only / one-stop agent bundle / the marketplace's own service / test lab / other / don't
>   know) There is no need to name the provider.
> - Roughly how much do you pay for it per year? (nothing / under ¥600 / ¥600 to under ¥[B1] /
>   ¥[B1] to ¥[B2] / above ¥[B2] / don't know)
> - Is the planned price too high, about right, low, or no view?
>
> If you want to be told when it launches, let me know; we keep your contact only for that,
> for at most 12 months. Privacy notice: {{PAGE_URL}}/en/privacy.html

`¥[B1]`, `¥[B2]` are the form's D3 edges (`form.md`), filled at FD.3.

**What counts** (PREREG-F §3.2–§3.4): the signed or chopped LOI, or a written reply that
quotes it (a quote-reply to this message) or attaches it and agrees; a written "yes" (会) to the pre-payment question. "Maybe"
never counts. Any change to the price or the scope does not count (FU6).

### FU3 — Confirming a form signal (to every form signer or pre-payment "yes" who left a contact)

Send within two working days to **every** form submitter who signed the LOI or answered "yes"
to P1, left a contact **and ticked T1**, whose purpose covers this message (`form.md` screen 4).
The same text for everyone (§3.2–§3.3). The signal counts only once the seller confirms in
writing inside the window. Do not send it to a submitter who did not tick T1.

**zh-CN** [zh-check]

> 您好！谢谢您填写 PassportPilot 的抢先体验登记表。您在表单中〔签署了意向书〕〔对预付问题回答了“会”〕。按照表单中的说明，想请您以书面形式确认一下。 [zh-check]
>
> 再说明一次：PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；是否上线也尚未决定；登记可在上线时获得抢先体验。 [zh-check]
>
> 〔意向书〕您签署的意向书全文附在本消息下方（不具约束力，不产生任何付款义务，可随时撤回）。如果您同意，请引用本消息回复“我们同意这份意向书”，或签名、盖章后拍照发回。 [zh-check]
>
> 〔预付〕您在登记表中回答的预付问题是：如果 PassportPilot 按上述介绍上线，价格为每年 €249、最多 10 款产品，您会在上线时预付第一年的费用吗？现在不收取任何款项。请回复“会”“也许”或“不会”。 [zh-check]
>
> 如果您改变了主意，或者希望删除您的信息，也请直接告诉我。隐私说明：{{PAGE_URL}}/privacy.html [zh-check]

**EN**

> Hello! Thank you for filling in the PassportPilot early-access form. On the form you
> 〔signed the letter of intent〕〔answered "yes" to the pre-payment question〕. As the form
> said, I would like to ask you to confirm this in writing.
>
> To repeat: PassportPilot is in development. It is not available yet, so it cannot be
> bought, and no payment is taken now; whether it launches has not been decided. Signing up
> gives early access when it launches.
>
> 〔LOI〕 The full text of the letter of intent you signed is below this message
> (non-binding, no obligation to pay, can be withdrawn at any time). If you agree, please
> quote-reply to this message with "we agree to this letter of intent", or sign or chop it and
> send back a photo.
>
> 〔Pre-payment〕 The pre-payment question you answered on the form is: If PassportPilot launches as described, at €249 a year for
> up to 10 products, would you pay the first year in advance at launch? No payment is taken
> now. Please reply "yes", "maybe" or "no".
>
> If you have changed your mind, or want your information deleted, just tell me. Privacy
> notice: {{PAGE_URL}}/en/privacy.html

Keep only the bracketed parts that apply; paste the full `loi.md` text below the message, as
in FU2. No second reminder if there is no reply: the
signal stays an **unconfirmed form signal** (§4).

### FU4 — Recap after a call or meeting (send at once; this is what counts, §2.2)

**zh-CN** [zh-check]

> 谢谢您今天抽时间沟通。我把我们谈到的内容写下来，请您核对： [zh-check]
> - PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；上线日期尚未确定，是否上线也尚未决定；登记可在上线时获得抢先体验。 [zh-check]
> - 计划价格：每年 €249，最多 10 款产品（计划中的首年上线价格，不含欧盟负责人服务）。 [zh-check]
> - 您的回答：1. 欧盟销售渠道：[…]；2. 产品类别：[…]；3. 您的角色：[…]；4. 企业类型：[…]；5. 店铺名称和平台：[…]。 [zh-check]
>
> 如有不准确的地方，请直接回复更正。隐私说明：{{PAGE_URL}}/privacy.html [zh-check]

**EN**

> Thank you for your time today. Here is what we discussed, in writing; please check it:
> - PassportPilot is in development. It is not available yet, so it cannot be bought, and no
>   payment is taken now; its launch date is not fixed, and whether it launches has not been
>   decided. Signing up gives early access when it launches.
> - Planned price: €249 per year for up to 10 products (the planned first-year launch price;
>   EU Responsible Person services not included).
> - Your answers: 1. EU sales channels: […]; 2. product categories: […]; 3. your role: […];
>   4. business type: […]; 5. shop name and marketplace: […].
>
> If anything is wrong, just reply with the correction. Privacy notice:
> {{PAGE_URL}}/en/privacy.html

The recap carries no LOI or pre-payment answer. A verbal "yes" to either is only noted: if the
seller qualifies, send FU2 (the full LOI text and P1 word for word), and count only a written
reply to FU2 (§3.2–§3.3). A reply "correct" to the recap confirms the answers, not a signal.

### FU5 — Not qualified

**zh-CN** [zh-check]

> 谢谢您的回复！PassportPilot 目前计划面向已经在向欧盟消费者销售纺织品与服装、家具或珠宝首饰的卖家，所以暂时可能不太适合您。如果您希望删除您的回答，请告诉我。（PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。） [zh-check]

**EN**

> Thank you for your reply! PassportPilot is currently planned for sellers who already sell
> textiles and apparel, furniture or jewellery to consumers in the EU, so it may not fit you
> for now. If you want your answers deleted, just tell me. (PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now; signing up gives early access when it launches.)

Do not argue with a self-declared answer and do not ask again (no spot-checks, §2.1). A
seller who corrects their own answer is void ground 3 (§2.3).

### FU6 — A different price or scope ("yes, but at €99", "yes, for 30 products")

**zh-CN** [zh-check]

> 谢谢您的坦率意见，这对我很有帮助。计划中的首年上线价格就是每年 €249、最多 10 款产品，我无法更改，也不提供折扣；超过 10 款产品的价格在上线时公布。我会把您的意见记录下来。（PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。） [zh-check]

**EN**

> Thank you for being frank; it helps. The planned first-year launch price is €249 per year
> for up to 10 products; I cannot change it and there are no discounts. Prices for more than
> 10 products are set at launch. I will note your view. (PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now; signing up gives early access when it launches.)

Record it as a price objection. It is not a counting signal (§3.2).

### FU7 — Deletion request

**zh-CN** [zh-check]

> 收到。我会在 30 天内删除您的全部信息（包括表单回答、联系方式和意向书），完成后告诉您。（PassportPilot 仍在开发中，尚未上线；我们没有收取任何款项。） [zh-check]

**EN**

> Understood. I will delete all your information (form answers, contact details and any
> letter of intent) within 30 days and tell you when it is done. (PassportPilot is in
> development and not available; no payment has been taken.)

If the seller is numbered, keep a **de-identified** row (number, route, channel, void ground,
signal flags) so the count does not change; delete the shop name and everything else. A later
duplicate of that business can then no longer be detected: note it as a deletion in the
weekly line (`tracker.md`).

### FU8 — The outcome (after G1, to every LOI signer and every seller who left a contact; PREREG-F §10)

Send in the channel the seller used, **before** their details are deleted. The page notices
are `after-test-notices.md`; keep these in line with them. Fill `[date]`.

**No-Go or Hold — zh-CN** [zh-check]

> 您好！感谢您之前对 PassportPilot 的关注。我们决定暂不开发 PassportPilot。我们没有收取任何款项。您的联系方式、回答和意向书将于 [date] 前删除。 [zh-check]

**No-Go or Hold — EN**

> Hello! Thank you for your interest in PassportPilot. We have decided not to develop
> PassportPilot for now. No payment was taken. Your contact details, answers and any letter
> of intent will be deleted by [date].

**GO — zh-CN** [zh-check]

> 您好！感谢您之前对 PassportPilot 的关注。PassportPilot 仍在开发中，尚未上线。〔您要求在上线时收到通知，我们会保留您的联系方式，最长 12 个月，产品上线时（如果上线）告诉您。〕〔您没有要求保留联系方式，您的信息将于 [date] 前删除。〕我们没有收取任何款项；未经您另行同意，也不会收取。 [zh-check]

**GO — EN**

> Hello! Thank you for your interest in PassportPilot. PassportPilot is still in development
> and not available. 〔You asked to be told when it launches, so we keep your contact for at
> most 12 months and will tell you if and when it launches.〕〔You did not ask us to keep your
> contact, so your information will be deleted by [date].〕 No payment has been taken, and
> none will be without your separate agreement.

---

## 5. Channel codes and links

Every channel gets its own coded form link (PREREG-F §5.1). The code is a label on the link,
not a tracker. Keep the list of which group, forum or partner each code stands for in your
own files, not in the repo.

| Code | Channel (PREREG-F §4) | Link | Route |
|---|---|---|---|
| `web` | the landing page's own button | already in `site/` | form |
| `DM` | the founder's own 1:1 messages | `{{FORM_URL}}?ch=DM` | 1:1 or form |
| `P1`, `P2` … | one per channel partner | `{{FORM_URL}}?ch=P1` | 1:1 or form |
| `WG1`, `WG2` … | one per WeChat group | `{{FORM_URL}}?ch=WG1` | form, or 1:1 if they write |
| `BB1`, `BB2` … | one per seller forum | `{{FORM_URL}}?ch=BB1` | form, or 1:1 if they write |
| `E1`, `E2` … | one per event | `{{FORM_URL}}?ch=E1` | form, or 1:1 |
| `X` | anything else | `{{FORM_URL}}?ch=X` | either |

A seller keeps the **first** channel they came through, even if they later reach you another
way. Route (1:1 or form) is recorded separately (`tracker.md`).

## 6. Short answers to common questions

Use these words, so that every seller hears the same thing. Each answer already carries the
status line (§0.1); send it whole. A partner uses only these answers and
refers any other question to the founder (§2b).

| Question | zh-CN [zh-check] | EN |
|---|---|---|
| Is it free? | 不是。PassportPilot 尚未上线，现在无法购买，所以现在不收取任何款项。计划中的首年上线价格是每年 €249，最多 10 款产品。PassportPilot 仍在开发中，登记可在上线时获得抢先体验。 [zh-check] | No. PassportPilot is not available yet, so it cannot be bought, and no payment is taken now. The planned first-year launch price is €249 per year for up to 10 products. PassportPilot is in development; signing up gives early access when it launches. |
| Is this from Amazon (or another marketplace)? | 不是。PassportPilot 与任何电商平台或政府机构均无关联，也未获得其认可。（PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。） [zh-check] | No. PassportPilot is not affiliated with, or endorsed by, any marketplace or public authority. (PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now; signing up gives early access when it launches.) |
| Can you be our EU Responsible Person? | 不能。PassportPilot 不担任欧盟负责人，也不签署符合性声明。欧盟负责人服务不包含在内，由服务机构另行定价。（PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。） [zh-check] | No. PassportPilot does not act as EU Responsible Person or sign Declarations of Conformity. EU Responsible Person services are not included and are priced by their providers. (PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now; signing up gives early access when it launches.) |
| Will my products be compliant / certified? | PassportPilot 不认证产品，也不保证合规。它只起草文件，由您审核并声明其内容属实；它不检测产品，也不提供法律意见。（PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。） [zh-check] | PassportPilot does not certify products or guarantee compliance. It only drafts documents, which you review and attest to; it does not test products or give legal advice. (PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now; signing up gives early access when it launches.) |
| When does it launch? | 上线日期尚未确定，是否上线也尚未决定。PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项。登记后，如果上线，您将优先获得使用资格（抢先体验）。 [zh-check] | The launch date is not fixed, and whether it launches has not been decided. PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now. If it launches, signing up gives you early access. |
| What are the fines / deadlines? | 这属于法律问题，我无法提供法律意见。（PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。） [zh-check] | That is a legal question, and I cannot give legal advice. (PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now; signing up gives early access when it launches.) |
| Can I get a discount? | 不提供折扣。计划中的首年上线价格就是每年 €249，最多 10 款产品。（PassportPilot 仍在开发中，尚未上线，现在无法购买，也不收取任何款项；登记可在上线时获得抢先体验。） [zh-check] | There are no discounts. The planned first-year launch price is €249 per year for up to 10 products. (PassportPilot is in development and not available yet, so it cannot be bought, and no payment is taken now; signing up gives early access when it launches.) |
