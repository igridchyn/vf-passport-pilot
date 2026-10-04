# validation-plan.md — PassportPilot validation track

Date: 2026-10-05. The tasks the loop drives (`.autorun/backlog.json` holds their lanes,
dependencies and the founder's part). It runs the tests of [`decisive-test.md`](decisive-test.md)
and stops at the gate (G1). It does not plan the product build: that is E0.1, after a GO.
Reads: [`decision-log`](decision-log.md); the feasibility runs and spec pack once S0 imports them.

Tracks: **S** setup · **R** research · **CH** channel (test C) · **FD** fake door (test D) ·
**G** gate · **E0** after the gate.

---

## Setup and research

### S0 — Import the source documents (founder)

Three claude.ai artifacts are not in the repo yet. Download each as Markdown and commit it:

| Artifact (chat) | Save as |
|---|---|
| "PassportPilot: GPSR-First Compliance SaaS Feasibility Assessment" (chat "[FEASIBILITY] PassportPilot feasibility analysis", run 1, June 2026) | `docs/background/feasibility-run1-2026-06.md` |
| "PassportPilot Feasibility Refresh: GPSR-First Pivot Over DPP Wedge (July 2026)" (same chat, run 2) | `docs/background/feasibility-run2-2026-07-15.md` |
| "PassportPilot: GPSR-First Compliance Copilot Build-Ready Specification" (chat "[FEAS+SPEC] PassportPilot build-ready specification", 18 July 2026) | `docs/spec-pack.md` |

Nothing in the validation track waits on this except E0.1; R1 and the outreach work from the
summary in the decision log (#5) until then.

### R1 — Feasibility refresh (run 3) as a dated delta, including test P

Run 2 was 15 July 2026. Write `docs/research/1_feasibility_refresh.md` as a **delta** since
then, every claim dated, sourced and tagged. Re-check at least the facts the gate and the
pitch depend on (decision log #5 lists run 2's):

- **Test P (platform risk):** what Amazon announced at Accelerate (22–24 Sep 2026) and since,
  Seller Central GPSR/compliance release notes, Amazon/AWS DPP activity after the May 2026
  Munich Safety Day; Etsy's native GPSR fields and RP partnerships; anything free and native
  that generates GPSR technical files. State PASS/FAIL against `decisive-test.md` test P.
- **Regulation:** DPP registry implementing act adopted? registry live? textiles delegated
  act status; battery passport (18 Feb 2027) preparation; new national GPSR penalty laws
  (AT in particular); GPSR enforcement news on marketplaces.
- **Competitors:** current prices and moves of Marqetir, Fluxy.One, eugpsr.eu, EaseCert,
  Euverify, Eldris, 24hour-AR, Webinterpret; new entrants, funding, Chinese-language offers.
- **Channel:** any new public evidence on how Chinese sellers buy compliance services
  (associations, service marketplaces, forwarders bundling GPSR).

End with: does the conditional GO (GPSR-first) still hold; does anything change the decisive
test? Open a **non-blocking decision card** "Refresh read: continue / adjust / stop" with a
recommendation, and test P's status. Never edit `decisive-test.md`; propose on the card.

### MV.1 — Desk-verify the build spec's open items (non-blocking)

The spec pack (18 July 2026) ends with an "unverified — must confirm before build" list.
Check the ones that are desk-checkable, with primary sources, in
`docs/research/2_spec_open_items.md`: Amazon's GPSR product-safety document limits (size,
type, title rule); whether the SP-API GPSR attributes (`gpsr_manufacturer_reference`,
`dsa_responsible_party_address`, `gpsr_safety_attestation`, `compliance_media`) are generally
available; WeChat Official Account / login eligibility for a foreign sole proprietor; an
independent (non-vendor) estimate of the manual cost and time of a GPSR technical file;
Supabase EU region and DPA terms. Each item: status, source, date. No card unless an item
changes the gate or the pitch (then a non-blocking decision card).

---

## Channel — test C

### CH.1 — Channel-partner map (organisations and roles only)

`docs/outreach/channels.md`: 20–30 organisations that already touch Chinese sellers shipping
to the EU — cross-border e-commerce associations (e.g. Shenzhen), sourcing agencies, freight
forwarders and 3PLs with EU lanes, marketplace service agencies, PingPong/WorldFirst/Payoneer
partner programmes, and existing EU Responsible-Person providers open to referral or
revenue-share (the RP-brokerage leg). Per row: organisation, type, why it fits (public
evidence, linked, dated), the role to approach, what they would gain. Plus a one-page profile
of a Chinese-speaking BD freelancer/partner (what they do, how to find one, typical
arrangements — revenue share vs fee; a fee is a cost card). **No person's name or contact**
(hard rules 1–2). Card: the founder picks whom to approach.

### CH.2 — Recruit a channel partner (founder)

Founder: approach the CH.1 picks with the CH.1/FD.4 partner pitch, agree a co-run of the
outreach in writing (email is enough). Any payment is a decision the founder takes outside
the loop. Record the outcome (aggregate) in the decision log.

---

## Fake door — test D

### FD.1 — PREREG-F: fake-door pre-registration (proposed)

Draft `docs/planning/PREREG-F-fake-door.md` (status **proposed**) and open a **blocking**
decision card. It fixes before anything goes out:

- **The offer:** what the page promises (a GPSR compliance pack — risk analysis and technical
  file, multilingual warning texts, marketplace listing safety blocks — for textiles,
  furniture and jewellery; seller attests; RP via partners), the price shown (one figure in
  the €150–300/yr band, or per product), and the early-access wording (hard rule 3).
- **Qualified seller:** sells on at least one EU marketplace (or ships to the EU) in a launch
  category, is the seller or decides for one; how it is established without collecting
  personal data into the repo (self-declared on the form, counted by the founder).
- **Signals:** what counts as "left a contact", as a "signed non-binding LOI", and as
  "pre-pay intent" (stated, no money taken); one LOI per seller business.
- **Denominator and window:** the first 50 qualified sellers reached; the 4-week window and
  its one optional extension (decisive-test.md); per-channel counting.
- **Channels and tools:** which free tools host the page and the form, and their China
  reachability (custom domain needed? which form tools load in mainland China?); every item
  that costs money listed for the founder with its price (hard rule 6).
- **Data handling:** privacy notice, where submissions live (founder's tool, never the repo),
  retention and deletion after the test (GDPR), consent wording.
- **Honesty rules** for copy, and what the page says once the test ends.

### FD.2 — Landing page and LOI (draft, zh-CN + EN)

Needs an approved PREREG-F. Build `site/` as plain static HTML/CSS (no build step, no
trackers, no third-party scripts): one page in simplified Chinese with an English version,
the PREREG-F offer and price, an early-access form placeholder (the founder wires the chosen
form tool), the privacy notice, an imprint placeholder. Draft the non-binding LOI in zh-CN and
EN (`docs/outreach/loi.md`). Flag every sentence a native speaker should check. Run
`/claims-audit`. Comms card: the founder reviews copy.

### FD.3 — Publish the page (founder)

Founder: decide on the PREREG-F cost items (domain, native-speaker review), get the zh-CN copy
checked, deploy the static page on the chosen free host, wire the form, confirm it loads from
mainland China (a partner can check), answer the card with the public URL.

### FD.4 — Outreach kit

`docs/outreach/`: a WeChat group post, a short direct message, an Amazon-seller-forum post,
a partner pitch (for CH.2), follow-up texts, all zh-CN + EN; a tracker template with
aggregate columns only (reached, qualified, contact left, LOI, pre-pay intent, by channel and
week). Run `/claims-audit`. Comms card: the founder adapts the voice and approves.

### FD.5 — Run the fake door (founder)

Founder (with the partner): start the outreach — this date starts the 4-week window — reach
50 qualified sellers, collect LOIs, log weekly aggregate counts in the decision log. The loop
does nothing here.

---

## Gate

### G1 — Gate evaluation (founder)

At the end of the window: apply the decision table in `decisive-test.md` with D (FD.5),
P (R1, re-checked on the gate date) and C (CH.2). Record the decision.

## After the gate

### E0.1 — Plan the PoC build from the spec pack (checkpoint)

Only after a GO at G1 and with `docs/spec-pack.md` imported: draft the design, the
impl-plan and the backlog extension for the GPSR-first PoC (textiles, furniture, jewellery;
manual export pack; deterministic citation validator), scoped to the gate's decision. The
founder reviews and signs before any product code.
