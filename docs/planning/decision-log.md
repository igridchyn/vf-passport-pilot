# decision-log.md — PassportPilot decisions

Date: 2026-10-05. Append-only, dated, numbered. A decision that changes the decisive test is
the founder's alone. Entries marked *(delegated)* were taken by Claude under the founder's
standing delegation of 2026-10-02 ("make any decisions yourself unless they involve costs")
and stand unless the founder overrides them on a card.

## 2026-10-05

**#1 — First phase: validation only** *(delegated)*. Both feasibility runs (June 2026 and
15 July 2026) gate any code on pre-code tests. The loop runs them and stops at G1; the
landing page is built because it is the test. The product build is planned after a GO (E0.1).

**#2 — Decisive test pre-registered** *(delegated; the founder may revise before the first
outreach)*. `decisive-test.md`: D (≥5 of the first 50 qualified sellers sign a non-binding
LOI or state pre-pay intent at €150–300/yr; contact rate reported as a diagnostic) is
decisive; P (platform risk) and C (a channel partner) feed the gate. Thresholds are the
runs' own; the 4-week window (+ one logged 2-week extension) is set here because the runs
give only "Stage 0, weeks 1–3" for the tests.

**#3 — Process** *(delegated)*. claude-autorun v0.3, permission mode `auto` with the Bash
sandbox; the supervisor pushes each accepted item to `autorun/loop`; `main` is the
founder's. No GitHub paid plan, no branch protection. CI runs `scripts/check.sh` on push.

**#4 — Source documents not yet in the repo.** The two feasibility runs and the build spec
are claude.ai artifacts; S0 (founder, ~15 min) imports them. Until then this log's #5 is the
working summary.

**#5 — Working summary of the feasibility runs (to re-check in R1; not a source).**
Verdict: conditional GO on a GPSR-first pivot; DPP is the later expansion story, never the
urgency hook. The 19 July 2026 date is the Commission's registry obligation (ESPR Art. 13),
not a seller duty; battery passport from 18 Feb 2027; textiles realistically 2028+. GPSR
(Reg. 2023/988) has applied since 13 Dec 2024; penalties are national (run 2 cites DE ProdSG
up to €100k and IT D.Lgs 78/2026 €10k–150k). Amazon enforces through Manage Your Compliance
and has free native GPSR fields; Etsy too. Run 2's platform signals: Amazon's Munich Safety
Day (May 2026) discussed DPPs; AWS published an agentic-DPP reference architecture; no native
full-DPP seller product yet. Competitors (vendor-reported): RP services ~€195–549/yr,
Fluxy.One from €249/yr and ~€1 per DPP, Marqetir repriced (run 2: €99–249/mo, managed tier
from €3k/mo), EaseCert €400–500 one-time. Not EU-AI-Act high-risk; B2B SaaS to Chinese
businesses outside EU VAT scope. A China channel partner is effectively mandatory; broker
RP services, never provide them; tooling, not certification. Spec (18 July 2026): launch
categories textiles, furniture, jewellery; manual export pack instead of marketplace APIs;
headline metric "attestable GPSR pack in ≤20 min vs €400–500 and 3–5 days manual"
(vendor-sourced baseline, flagged unverified).

**#6 — Rules** *(delegated)*. CLAUDE.md hard rules: never contact anyone; no personal data in
the repo; an honest fake door (in development, early access, no payment, no invented proof);
regulatory accuracy (no "€10M / 4%", no DPP-date urgency); tooling, not certification; no
spend without a founder card; no secrets.
