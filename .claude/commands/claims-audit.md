---
description: Read-only audit of public-facing text (landing page, outreach, LOI, privacy notice) for honesty, regulatory accuracy, tooling-not-certification and personal data; reports file:line findings with severity
argument-hint: "[path | git diff target — default: the branch diff against main]"
allowed-tools: Read, Grep, Glob, Bash(git diff:*), Bash(git log:*), Bash(git show:*)
---

Audit target: $ARGUMENTS (if empty: `git diff main...HEAD`, plus every file it touches in full,
with `site/**` and `docs/outreach/**` read in every language present).

**Make no edits.** This is a report. Rules: CLAUDE.md hard rules 1–6 and the approved
`docs/planning/PREREG-F-fake-door.md` (if still *proposed*, audit against its text and say so).
Check each language version separately; a claim softened in English but not in Chinese is a
finding.

1. **Honest fake door (HR3).** The page and every message say the product is in development /
   early access. No payment is taken or implied as taken. No invented testimonials, customer
   or user counts, logos, partner or marketplace names presented as partners, certifications,
   awards, "trusted by". Nothing implies Amazon, Etsy or any authority endorses PassportPilot.
   The price shown is the PREREG-F price.
2. **Regulatory accuracy (HR4).** No "€10M / 4% of turnover" (or equivalents such as 1000万欧元 /
   营业额4%) for GPSR; no DPP date presented as a present seller obligation; every deadline,
   fine or legal duty has a primary source in the repo (research docs) dated within the last
   6 months. Penalties, if mentioned, are national and named. GPSR applied since 13 Dec 2024.
3. **Tooling, not certification (HR5).** No "certified", "guaranteed compliant", "legal
   advice", "we act as your Responsible Person", "we sign your DoC" (or 认证 / 保证合规 /
   法律意见 / 我们担任欧盟负责人 in a promising sense). The seller attests; RP is via partners.
4. **Speed and price claims.** "≤20 minutes" or any time/cost comparison is labelled a target
   of the product in development, not a measured result, and the manual baseline names its
   (vendor) source.
5. **Personal data (HR1–2).** No person's name, email, phone, WeChat ID or profile link
   anywhere in the repo diff; trackers carry aggregate columns only; the form asks only for
   what PREREG-F lists; a privacy notice is linked wherever data is collected.
6. **No spend, no sending (HR1, HR6).** No paid script, tracker, ad pixel or analytics tag;
   no code or instruction that would send a message on its own.
7. **Machine translation risk.** Sentences whose meaning changes between zh-CN and EN, legal
   or regulatory terms rendered loosely (e.g. 负责人 vs 责任人 for "Responsible Person"):
   list them for the founder's native-speaker check.

Report: one line per finding — `file:line · BLOCKER|MAJOR|MINOR · HR# / PREREG-F §x · what is
wrong and how a reader would be misled`. BLOCKER only when the text, as published, would
mislead a seller or breach a hard rule. End with the files and languages checked clean.
