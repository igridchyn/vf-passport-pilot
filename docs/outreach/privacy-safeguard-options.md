# privacy-safeguard-options.md — Privacy notice §5 (transfers outside the EEA): draft options (zh-CN + EN)

Date: 2026-10-06. **Status: drafts for the founder's choice. Not legal advice.** Task FD.3b
(`docs/planning/validation-plan.md`), for card A-002 step 3. Serves test **D**. The loop does
not choose: the safeguard is a legal judgement, and the founder is the controller who answers
for it. A paid legal review is a cost item (hard rule 6): answer A-002 `hold` with the note
"legal review: quote asked" and the loop opens a cost card.

**Choice made (decision log #21, card M-006):** paragraph H, option D and option B (D
first, as the description of WeChat's own safeguards; B as our own basis). It was chosen by
Claude on the founder's delegation and is for the founder to confirm on A-002. Not legal
advice. The follow-on changes (T3, the consent message) are on card M-007.

**Where the text goes.** In the deploy copy only (A-002 step 1, `scripts/make-deploy-copy.sh`),
in section 5 of `privacy.html` (zh-CN) and `en/privacy.html`. Each option below replaces the
`<span class="placeholder">[…]</span>` in that section. The sentence after it ("If you prefer,
you can use the form only." / "如您愿意，也可以只使用表单。") stays, except under option C.
Every zh-CN paragraph needs the native-speaker check (A-002 step 7). The English is the
reference for meaning.

**Source.** Regulation (EU) 2016/679 (GDPR), Official Journal L 119, 4.5.2016, pp. 1–88: the
OJ PDF from the EU Publications Office (the publisher of EUR-Lex), read in full for Arts 13,
44–46 and 49 and Recital 111 on 2026-10-06 ([EUR-Lex](https://eur-lex.europa.eu/eli/reg/2016/679/oj)). The
original act; no consolidated version was read [established].

---

## 1. What section 5 must say

GDPR Art. 13(1)(f) (OJ L 119/41) requires, at the time data is collected: "where applicable,
the fact that the controller intends to transfer personal data to a third country or
international organisation and the existence or absence of an adequacy decision by the
Commission, or in the case of transfers referred to in Article 46 or 47, or the second
subparagraph of Article 49(1), reference to the appropriate or suitable safeguards and the means
by which to obtain a copy of them or where they have been made available." [established]

Art. 44 (OJ L 119/60): a transfer "shall take place only if … the conditions laid down in
this Chapter are complied with". The conditions, in order: an adequacy decision (Art. 45),
appropriate safeguards (Art. 46), or, failing both, a derogation (Art. 49). [established]

**The three routes in the current notice** (section 4 lists them as recipients):

| Route | Who | Basis available |
|---|---|---|
| Hosting (connection data, e.g. IP address) | the host, a processor | the provider's data-processing terms: standard contractual clauses (Art. 46(2)(c)) or the EU-U.S. Data Privacy Framework (Art. 45) |
| E-mail | the founder's e-mail provider | the same, if the provider transfers at all; none needed if it keeps mail in the EEA |
| WeChat | for a user in the EEA, Tencent International Service Europe B.V. (Netherlands), the controller of its own service (see W); messages with Weixin users go to Weixin in mainland China. Sellers in mainland China normally use Weixin [plausible] | **no adequacy decision** for mainland China, Singapore or Malaysia; WeChat says it uses the Commission's SCCs for its own transfers there (see W below) [vendor claim]; the founder has no Art. 46 safeguard of their own with Tencent. Options: rely on WeChat's statement (D), an Art. 49 derogation (A, B), or no WeChat (C) |

The Commission's adequacy list (read 2026-10-06): Andorra, Argentina, Brazil, Canada
(commercial organisations), Faroe Islands, Guernsey, Israel, Isle of Man, Japan, Jersey,
New Zealand, Republic of Korea, Switzerland, United Kingdom, United States (commercial
organisations in the EU-U.S. Data Privacy Framework), Uruguay, European Patent Organisation
([European Commission, adequacy decisions](https://commission.europa.eu/law/law-topic/data-protection/international-dimension-data-protection/adequacy-decisions_en),
[established]). China, Singapore and Malaysia are not on it.

**W — what WeChat's own privacy policy says** ([WeChat Privacy Policy](https://www.wechat.com/en/privacy_policy.html),
last updated 2026-08-06, read 2026-10-06, [vendor claim]):
- Controller: "If you are a WeChat user located in the European Economic Area … Tencent
  International Service Europe B.V., a Dutch company, … will be your data controller."
- Servers: "Our servers are located in Singapore and Malaysia, or, for users located in Hong
  Kong SAR and Macao SAR, in Hong Kong SAR."
- Weixin: "When you interact with a Weixin user (or vice versa) … we will share your information
  with Weixin, which processes it in the Chinese Mainland to the extent necessary to facilitate
  such Interoperable Interaction."
- Transfers: "For transfers to the Chinese Mainland (limited to remote technical support
  purposes and the purposes set out under "Interoperability with Weixin" …), Hong Kong SAR,
  Malaysia and Singapore, we do not rely on an adequacy decision from the EU or UK. Instead, we
  rely … on Art. 46 GDPR and UK GDPR (transfers subject to appropriate safeguards); specifically,
  the European Commission's standard contractual clauses …" (cuts marked "…").
- Copies: "You may also contact us via our form here to request copies of the applicable
  transfer clauses and addendum." The form: https://support.wechat.com/cgi-bin/mmsupportacctnodeweb-bin/t/dsr/index?lang=en

Read with the GDPR, this means WeChat's safeguards cover **WeChat's** transfers. Whether they
also cover **your** use of WeChat as a controller, or whether your use is a transfer by you at
all, is the open legal question every option below lives with [plausible]. The policy text
was read through the fetch tool's extract; check the page yourself before relying on it.

---

## 2. Paragraph H — hosting and e-mail (goes in with every option)

**EN**

> Our hosting provider, [hosting provider], and our e-mail provider, [e-mail provider],
> process data on our behalf under their data-processing terms. Where they transfer data
> outside the EEA, they rely on the European Commission's standard contractual clauses (GDPR
> Art. 46(2)(c)) or, for the United States, on the Commission's adequacy decision for the
> EU-U.S. Data Privacy Framework (GDPR Art. 45). You can ask us for a copy of these safeguards
> at [contact].

**zh-CN** [zh-check]

> 我们的网站托管服务商 [托管服务商] 和邮件服务商 [邮件服务商] 依据其数据处理条款代表我们处理数据。如果它们将数据传输到欧洲经济区以外，则依据欧盟委员会的标准合同条款（GDPR 第 46(2)(c) 条），或者对于美国，依据欧盟委员会就欧美数据隐私框架作出的充分性决定（GDPR 第 45 条）。您可以通过 [联系方式] 向我们索取这些保障措施的副本。

**GDPR basis.** Art. 46(2)(c) (OJ L 119/62): safeguards may be provided "without requiring any
specific authorisation from a supervisory authority, by … standard data protection clauses
adopted by the Commission". Art. 45(1) (OJ L 119/61): a transfer to a country the Commission
has found adequate "shall not require any specific authorisation". [established]

**What it commits you to.**
- Check each provider's data-processing terms say this, keep a copy, and send it on request.
  For **Cloudflare**, its GDPR page says the DPA is part of the self-serve subscription
  agreement, relies on the SCCs and that Cloudflare is certified under the EU-U.S. DPF
  ([Cloudflare Trust Hub, GDPR](https://www.cloudflare.com/trust-hub/gdpr/), [vendor claim],
  read 2026-10-06).
- For e-mail, use a service that gives you data-processing terms as a business; a free
  consumer mailbox may not [plausible]. If your provider keeps mail in the EEA and says it does
  not transfer it, drop the e-mail part of the paragraph rather than claim a safeguard.
- If a provider is not DPF-certified, drop the DPF clause. The DPF decision (Commission
  Implementing Decision (EU) 2023/1795) was upheld by the General Court on 3 September 2025
  (T-553/23) and is under appeal (C-703/25 P) ([Digital Policy Alert](https://digitalpolicyalert.org/event/33206-general-court-of-european-union-dismissed-challenge-to-european-union-united-states-data-protection-framework-adequacy-decision-philippe-latombe-v-european-commission-case-no-t55323),
  [plausible], secondary source, background only: not checked on curia.europa.eu); the SCCs are
  the fallback Cloudflare names.
- Fill [contact] with the same role address as the rest of the notice.

---

## 3. WeChat — choose one of A, B, C, D

### Option A — Only exchanges you ask for (Art. 49(1)(b))

**EN**

> WeChat (Tencent) processes messages outside the EEA: in Singapore and Malaysia and, for
> messages with Weixin users in mainland China, in mainland China (WeChat privacy policy). The European
> Commission has not adopted an adequacy decision for these countries, and we have no safeguard
> of our own with Tencent under GDPR Art. 46. We therefore use WeChat only for exchanges you ask for: when you write to us
> there, add us as a contact, ask us to contact you (for example in a group), or choose WeChat
> as your contact on the form and tick the contact box. These transfers rely on GDPR
> Art. 49(1)(b) (steps taken at your request before any agreement).

**zh-CN** [zh-check]

> 微信（腾讯）在欧洲经济区以外处理消息：在新加坡和马来西亚处理，与微信（Weixin）中国大陆用户之间的消息则在中国大陆处理（见微信隐私政策）。欧盟委员会未就这些国家或地区作出充分性决定，我们自己也没有与腾讯订立 GDPR 第 46 条规定的保障措施。因此，我们只在您要求时使用微信沟通：即您在微信上联系我们、添加我们为联系人、请我们与您联系（例如在群里），或您在表单中选择微信作为联系方式并勾选同意联系。这类传输依据 GDPR 第 49(1)(b) 条（在达成任何协议之前，应您的要求采取的步骤）。

**GDPR basis.** Art. 49(1)(b) (OJ L 119/64): "the transfer is necessary for the performance of
a contract between the data subject and the controller or the implementation of pre-contractual
measures taken at the data subject's request". [established]

**What it commits you to.** Never write first on WeChat to anyone who did not do one of those
four things. That is the kit's rule already (decision log #14, point 3: a seller who wrote to
you, added you, or asked in a thread to be contacted), plus the form's contact tick T1. No other
change: the form, the kit, the rest of the notice and PREREG-F stay as they are.

**Weak points.** Recital 111 (OJ L 119/21) ties this derogation to transfers that are
"occasional and necessary in relation to a contract"; a 4-week campaign of 1:1 chats with 50 or
more sellers is hard to call occasional [established, recital text; how far it binds is a legal
question]. Whether signing up for a product that does not exist yet, or a non-binding letter of
intent, is a "pre-contractual measure" is also open to doubt. The EDPB's guidelines on Art. 49
(2/2018) read the derogations narrowly; they were not read for this draft [plausible].

### Option B — Your explicit consent (Art. 49(1)(a))

**EN**

> WeChat (Tencent) processes messages outside the EEA: in Singapore and Malaysia and, for
> messages with Weixin users in mainland China, in mainland China (WeChat privacy policy). The European
> Commission has not adopted an adequacy decision for these countries, and we have no safeguard
> of our own with Tencent under GDPR Art. 46. Your data there may not be protected to the EU standard, and you may find it
> harder to exercise your rights. We use WeChat with you only if you explicitly agree to this
> transfer (GDPR Art. 49(1)(a)): by ticking the WeChat box on the form, or by replying "同意" to
> our first message on WeChat. You can withdraw your consent at any time; we then stop using
> WeChat with you, and you can still write to us by e-mail or use the form.

**zh-CN** [zh-check]

> 微信（腾讯）在欧洲经济区以外处理消息：在新加坡和马来西亚处理，与微信（Weixin）中国大陆用户之间的消息则在中国大陆处理（见微信隐私政策）。欧盟委员会未就这些国家或地区作出充分性决定，我们自己也没有与腾讯订立 GDPR 第 46 条规定的保障措施。您在那里的数据可能得不到与欧盟同等的保护，您也可能更难行使您的权利。只有在您明确同意这一传输时，我们才会通过微信与您沟通（GDPR 第 49(1)(a) 条）：在表单中勾选微信同意项，或在微信上对我们的第一条消息回复“同意”。您可以随时撤回同意；之后我们将不再通过微信与您联系，您仍可通过电子邮件联系我们或使用表单。

**GDPR basis.** Art. 49(1)(a) (OJ L 119/64): "the data subject has explicitly consented to the
proposed transfer, after having been informed of the possible risks of such transfers for the
data subject due to the absence of an adequacy decision and appropriate safeguards". Recital 111
lists explicit consent separately from the "occasional" contract case. [established]

**What it commits you to.**
- **A new form tick (T3)**, unticked, shown only when C1 is "微信 WeChat", and required for
  a WeChat contact. The final wording is in `form.md` (screen 4), as drafted from this option
  and then extended with the absence of an adequacy decision and of a safeguard of our own,
  which Art. 49(1)(a) asks the seller to be told [zh-check].
- **A consent message as the first reply on WeChat** to a seller who wrote first, before
  anything else is discussed: `kit.md` §2a, with the same risk text [zh-check].
- Keep a record of who consented, in your own files (never the repo), and stop using WeChat
  with anyone who withdraws.
- The tick and the message line change `form.md`, `tally-paste.md` and the FD.4 kit, which are
  under cards M-002 and M-003. Say "B" in your note and the loop drafts the changes on a card.

**Weak points.** The seller's first WeChat message reaches you before any consent; under EDPB
Guidelines 05/2021, data a person sends you directly may not be a transfer by you at all, but
those guidelines were not read for this draft [plausible]. More text for the seller to read.

### Option C — No WeChat for this test

**EN** (replaces the whole of section 5)

> We do not use WeChat for this test. E-mail goes through [e-mail provider], which stores
> messages in the EEA. [Paragraph H, hosting part only, if the host transfers data.]

**zh-CN** [zh-check]

> 本次测试中我们不使用微信。电子邮件通过 [邮件服务商] 处理，邮件存放在欧洲经济区内。[如托管服务商会传输数据，加上第 H 段中关于托管服务商的部分。]

**GDPR basis.** None needed for WeChat (no transfer); Art. 45 or 46(2)(c) for the host, as in
paragraph H.

**What it commits you to.** No WeChat at all, including replies and partner introductions; an
e-mail provider that keeps mail in the EEA. Edits: the landing page's contact options in both
languages ("微信、电子邮箱或电话" / "WeChat, e-mail or phone", early-access section); privacy notice
§2 (the "WeChat ID" contact item and "In direct conversations"), §4 (the WeChat item) and §5;
the form's C1/C2 WeChat option (`form.md`, `tally-paste.md`); the FD.4 kit; and the channel plan (PREREG-F §5.1, approved), which needs a
PREREG-F change card. It would likely cut the reply rate among Chinese sellers [plausible].

### Option D — Rely on WeChat's own safeguards (Art. 46(2)(c), as stated by WeChat)

**EN**

> We use WeChat while located in the EEA, where it is provided by Tencent International Service
> Europe B.V. (the Netherlands). WeChat processes messages in Singapore and Malaysia and shares
> messages with Weixin users in mainland China with Weixin there. The European Commission has not
> adopted an adequacy decision for these countries. WeChat states that for these transfers it
> relies on the European Commission's standard contractual clauses (GDPR Art. 46(2)(c)); see
> the WeChat privacy policy at https://www.wechat.com/en/privacy_policy.html. WeChat offers
> copies of these clauses on request through the form linked in that policy.

**zh-CN** [zh-check]

> 我们在欧洲经济区内使用微信，在欧洲经济区由 Tencent International Service Europe B.V.（荷兰）提供该服务。微信在新加坡和马来西亚处理消息，并将与微信（Weixin）中国大陆用户之间的消息提供给在中国大陆处理消息的 Weixin。欧盟委员会未就这些国家或地区作出充分性决定。微信表示，这些传输依据欧盟委员会的标准合同条款（GDPR 第 46(2)(c) 条）；详见微信隐私政策：https://www.wechat.com/en/privacy_policy.html。微信表示，可通过该政策中链接的表单索取这些条款的副本。

**GDPR basis.** Art. 46(2)(c) (OJ L 119/62), but in WeChat's contracts, not yours; quoted in W
above [vendor claim].

**What it commits you to.** You use WeChat while located in the EEA (the policy's test,
"located in the European Economic Area"; otherwise the controller named above is not yours). Re-read WeChat's policy on publication day. No form,
kit or plan change.

**Weak points.** It describes WeChat's safeguards, not one you provide. Art. 13(1)(f) asks for
"the means by which to obtain a copy" of the safeguard; the paragraph points to WeChat's own
copy-request form (W), which is WeChat's offer to its users, not a copy you hold. Whether your own use is a transfer that WeChat's SCCs cover is the open question in W
[plausible]. It rests on a vendor's statement that can change.

### Not offered

- **Art. 49(1) second subparagraph** (compelling legitimate interests): only for transfers that
  are "not repetitive" and concern "a limited number of data subjects", and "The controller
  shall inform the supervisory authority of the transfer" (OJ L 119/64). A 4-week test reaching
  50 or more sellers does not fit it.

---

## 4. How to choose

The choice is yours, or a lawyer's; the loop makes no legal ranking. What each costs in
practice:
- **A**: no other change; covers WeChat as the kit already uses it. Exposed to Recital 111's
  "occasional".
- **B**: one more form tick and a consent line in the first message, both on a card. Rests on
  the wording of Art. 49(1)(a), which Recital 111 does not limit to occasional transfers.
- **C**: no WeChat transfer at all; changes the approved plan and likely costs replies.
- **D**: no other change; describes WeChat's safeguards rather than yours.
- D can sit alongside A or B (D as the description, A or B as your own basis). Longer text,
  but it says more of what is known.

**Not answered here:** whether your use of WeChat, or a seller's own message to you, is a
transfer by you at all (EDPB Guidelines 05/2021, not read); China's PIPL (PREREG-F §6.4);
Tally's own sub-processors (check its data-processing terms when you accept them).

**After you choose:** put "A", "B", "C", "D" (or "D+A", "D+B") in your note on the FD.3b review
card. The loop records the choice in the decision log and, for B or C, drafts the follow-on
changes on a card. You paste the chosen paragraph(s) and paragraph H into the deploy copy
yourself, with your providers and contact address filled in.
