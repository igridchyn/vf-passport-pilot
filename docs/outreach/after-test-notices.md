# after-test-notices.md — Page notices after the test window (zh-CN + EN), draft

Date: 2026-10-05. **Status: draft**, for the founder's review on the FD.2 comms card. Task
FD.2 (`docs/planning/validation-plan.md`); the substance is fixed by PREREG-F §10. Serves
test **D** (an honest close to the fake door).

**How they are used.** When the window ends, the founder closes the Tally form and replaces
the body of `site/index.html` and `site/en/index.html` with notice A. After G1, notice A is
replaced by B or C. **At each switch, also replace the status strip and the footer line on
every page** (index, privacy, imprint, both languages) with the lines given under that
notice, and remove the sign-up links from the strips: the old strip says "sign up" and "in
development", which would contradict A ("sign-up is closed") and B ("will not be
developed"). Under **B**, also replace two body sentences that say "in development": the
imprint's note (`site/imprint.html`, both languages) and the privacy notice's lead
(`site/privacy.html`, `site/en/privacy.html`). Use "PassportPilot 暂不开发。" / "PassportPilot
will not be developed for now." [zh-check] The privacy notice stays online until every deletion date has passed. Separately, the founder tells LOI
signers and sellers who left a contact the outcome in the channel they used, before their
details are deleted (PREREG-F §10).

The founder fills the `[date]` fields. Every zh-CN line needs a native speaker's check.

---

## A. During evaluation (from the end of the window until G1)

**zh-CN** [zh-check]
> 抢先体验登记已结束。PassportPilot 仍在开发中，尚未上线，我们没有收取任何款项。评估结果将于 [date] 前在本页公布。

**EN**
> Early-access sign-up is closed. PassportPilot is in development and not available, and no
> payment has been taken. The outcome will be posted on this page by [date].

Strip: zh-CN [zh-check] "抢先体验登记已结束。PassportPilot 尚未上线，我们没有收取任何款项。" ·
EN "Early-access sign-up is closed. PassportPilot is not available, and no payment has been taken."
Footer: unchanged.

## B. No-Go or Hold (after G1)

**zh-CN** [zh-check]
> PassportPilot 暂不开发。感谢您的关注。我们没有收取任何款项。所有联系方式和意向书将于 [date] 前删除。

**EN**
> PassportPilot will not be developed for now. Thank you for your interest. No payment was
> taken. All contact details and letters of intent are deleted by [date].

`[date]` ≤ 30 days after the G1 decision (PREREG-F §6.3).

Strip: zh-CN [zh-check] "PassportPilot 暂不开发。我们没有收取任何款项。" · EN "PassportPilot will
not be developed for now. No payment was taken."
Footer: zh-CN [zh-check] "PassportPilot 暂不开发，与任何电商平台或政府机构均无关联，也未获得其认可。" ·
EN "PassportPilot will not be developed for now. It is not affiliated with, or endorsed by,
any marketplace or public authority."

## C. GO (after G1)

**zh-CN** [zh-check]
> PassportPilot 仍在开发中，尚未上线。如果您曾要求在上线时收到通知，我们会在上线时（如果上线）告知您；否则，您的信息将于 [date] 前删除。我们没有收取任何款项，未经您另行同意，今后也不会收取。

**EN**
> PassportPilot is still in development and not available. If you asked to be kept informed,
> we will tell you if and when it launches; otherwise your details are deleted by [date]. No
> payment has been taken, and none will be without your separate agreement.

Strip: zh-CN [zh-check] "抢先体验登记已结束。PassportPilot 仍在开发中，尚未上线，我们没有收取任何款项。" ·
EN "Early-access sign-up is closed. PassportPilot is still in development and not available. No
payment has been taken."
Footer: unchanged.

`[date]` ≤ 30 days after the G1 decision. "Kept informed" contacts are kept at most 12 months
after G1 (PREREG-F §6.3).

---

**Note on C's zh-CN.** "我们会在上线时（如果上线）告知您" keeps the English "if and when": a
GO decides to build a proof of concept, not to launch, so the notice must not promise a
launch. [zh-check: the parenthesis may read awkwardly; any rewording must keep "if".]
