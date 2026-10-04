# decisive-test.md — PassportPilot validation gate

Date: 2026-10-05. Pre-registered before any page is published or any seller is contacted.
Protected: the loop cannot edit it, and a change after the first outreach goes out is a new
test, recorded by the founder in the decision log. Source: the three pre-code validation
tests of the feasibility runs of June 2026 and 15 July 2026 (chat "[FEASIBILITY] PassportPilot
feasibility analysis"; to be imported under `docs/background/`, task S0).

## The question

Can a solo EU founder with no China presence get Chinese sellers to commit to a GPSR
compliance tool at incumbent-level prices — and is the wedge still open on the platforms?

## Tests

| # | Test | PASS | FAIL | Owner |
|---|---|---|---|---|
| D (decisive) | Fake-door demand | Of the first **50 qualified sellers** reached (definition in PREREG-F), **≥5 (10%)** sign a non-binding LOI or state pre-pay intent at the page's stated price in the €150–300/yr band. Reported beside it: how many of the 50 left a contact (run 1's ≥20% bar, a diagnostic) | <5 of 50 sign → **No-Go** (distribution not solvable solo). Fewer than 50 qualified sellers reached inside the window also counts as FAIL | Founder + channel partner send; loop drafts |
| P | Platform risk | As of the gate date, no public announcement that Amazon (or Etsy) ships free native full-DPP automation or a free native GPSR technical-file generator for sellers | Such an announcement → drop the DPP expansion thesis; reassess GPSR-only before any build | Loop researches (R1, refreshed at G1); founder signs |
| C | Channel | At least one Chinese-speaking channel partner (sourcing agency, freight forwarder, association, BD freelancer) agrees in writing to co-run the outreach | No partner by the end of the window — recorded; run 2 says the GPSR-first case then trends to No-Go | Founder |

**Window.** 4 weeks from the day the first outreach goes out (task FD.5). The founder may
extend once by 2 weeks, only if the extension is logged before week 4 ends.

## Decision at the gate (task G1)

| D | P | C | Decision |
|---|---|---|---|
| PASS | PASS | PASS | GO: plan the GPSR-first PoC build from `docs/spec-pack.md` (task E0.1) |
| PASS | FAIL | any | GPSR-only GO with no DPP roadmap claims; re-scope before planning |
| PASS | any | FAIL | Hold: no build until a channel exists (the LOIs came from somewhere — record how) |
| FAIL | any | any | No-Go. Record what was learned; no build |

The founder records the decision, the aggregate counts (reached, qualified, contacts left,
LOIs, by channel) and the date in `docs/planning/decision-log.md`.
