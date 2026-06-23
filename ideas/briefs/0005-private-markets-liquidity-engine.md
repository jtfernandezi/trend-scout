# Brief 0005 — Redemption-run prediction & liquidity-orchestration engine for semi-liquid private funds

**Ledger id:** ts-0048 · **Date:** 2026-06-23 · **Status:** new · **Composite:** 4.3

> *"The crash-test brain that keeps a private fund from gating."* Predict the reflexive
> redemption *runs* that broke Apollo's and Blackstone's own models — and orchestrate the
> fund's liquidity so it never has to slam the window shut.

---

## 1. The one-liner

A behavioral-AI engine that **predicts correlated, panic-driven redemption runs** in
semi-liquid private-asset funds (non-traded BDCs, interval funds, evergreen/tender-offer
funds, and the new private-asset 401(k) sleeves) and **orchestrates the fund's liquid
sleeve and gate decisions** so it can honor withdrawals without gating investors or
diluting returns with idle cash.

## 2. The cross (why this needs *both* halves)

- **Frontier AI half.** Modeling redemptions has always assumed investors behave
  *independently* at a stable rate — so funds size a fixed liquidity buffer (e.g., interval
  funds redeem ~5%/quarter) and assume it holds. It doesn't. Redemptions are **correlated,
  reflexive, regime-dependent, and news-reactive**: a high-profile gate, a bad mark, or a
  category-contagion headline triggers a herd, and "redemption activity itself contributes
  to further redemption requests." Capturing that requires a deep sequence/behavioral model
  over investor-and-participant flow histories *fused with* exogenous signals (sentiment,
  contagion, mark deterioration) — and a simulator that draws the **joint** redemption
  demand curve under stress. That is a frontier-model problem, not a spreadsheet.
- **Structural half (big, and rebuilding live).** Two compounding forces:
  1. **The $12T door is opening.** EO 14330 (Aug 2025) + the **DOL ERISA safe harbor**
     (proposed 2026-03-30, final expected late 2026) let defined-contribution / 401(k)
     plans hold private equity, private credit, real estate and infra. PwC: "the $1T
     opportunity." The rule's binding constraint is **liquidity in daily-traded retail
     vehicles**, and it explicitly requires fiduciaries to *model participant-level
     liquidity events* (retirements, hardship withdrawals, loans, reallocations).
  2. **The mismatch is detonating now.** **Apollo capped withdrawals at 5% on its retail
     private-credit fund on 2026-06-23 after a ~17% redemption spike**; Blackstone
     restricted withdrawals this month; **Blue Owl liquidated OBDC II after a 200%
     redemption surge.** The structure designed for "predictable, limited redemptions" is
     failing exactly as trillions of retirement dollars prepare to enter it.

Neither half alone is a company. AI-redemption-modeling without this shift is a niche risk
feature; the shift without the model is a regulatory problem nobody can operationalize. The
cross is the company.

## 3. Beachhead → expansion to $1B+

- **Beachhead (winnable *this quarter*).** The liquidity / portfolio-risk lead at an asset
  manager running a **retail-distributed semi-liquid fund** (non-traded BDC, interval fund,
  evergreen) sold through the wealth channel (iCapital/CAIS/RIAs). Trigger: they just
  watched Apollo gate, their board is asking "could that be us," and they now know their
  redemption model assumed independence and was wrong. First product: a **run-risk early-
  warning + liquidity-buffer optimizer** that ingests their transfer-agent flow data, prices
  the probability and size of a correlated run over the next N windows, and recommends the
  minimum liquid sleeve + optimal gate policy. Sells as risk-management + board/regulator
  defensibility. ~$50-500B of retail semi-liquid AUM is acutely in-market right now.
- **Expansion path.**
  1. *Across the wealth channel:* become the standard run-risk layer for every BDC /
     interval / evergreen fund — and the diligence stamp iCapital/CAIS/advisors look for.
  2. *Into the $12T DC channel:* as the DOL rule finalizes, asset managers, recordkeepers
     and target-date/CIT providers building private-asset 401(k) sleeves **cannot launch**
     until they can demonstrate participant-level redemptions are honorable. Become the
     liquidity-modeling engine embedded in those products and named in the fiduciary's
     prudent-process file.
  3. *Platform:* liquidity-orchestration as a live control plane (dynamic sleeve sizing,
     pre-positioned secondary/credit lines, gate-timing) + the cross-fund flow dataset as a
     systemic-risk data product regulators and allocators pay for.
  The reachable market is the entire retail-and-DC semi-liquid private universe
  (private credit alone is $1.3T and growing) — clearly a $1B+ outcome.

## 4. Why incumbents structurally can't / won't build it

- **Institutional risk platforms (BlackRock Aladdin, MSCI LiquidityMetrics)** model the
  **market-liquidity of the holdings** (how fast can you sell the assets) under *assumed /
  historical* redemption rates. They do not model the **liability side** — correlated,
  reflexive, participant-level run behavior — and are built for institutional portfolios,
  not the retail/DC semi-liquid structure. Wrong half of the balance sheet.
- **Valuation / monitoring players (73 Strings, Canoe)** mark the assets and digest fund
  documents — flows are out of scope (this is exactly why the daily-NAV cross, ts-0052, was
  killed as 73 Strings adjacency).
- **Corporate-treasury AI cash-forecasting (TheNoah, AutomationEdge)** — wrong buyer (CFOs),
  wrong behavior (vendor/billing cycles, not investor panic).
- **The asset managers themselves** were caught flat-footed — their in-house models assumed
  redemptions stay "limited and predictable," which is the entire failure. They have flow
  data but not the model or the cross-fund view; building it well is off-mission and they'd
  rather buy an independent, defensible answer the board and DOL accept.
- **Recordkeepers (Fidelity, Empower)** have participant data but no model, no risk motion,
  and no incentive to surface run risk in their own menus.

The behavioral **run-prediction + liquidity-orchestration** layer is unowned.

## 5. Scoring (rubric)

| Dimension | Score | Rationale |
|---|---|---|
| Novelty | 4 | Survived 3 honest kill attempts; no named occupant. The framing (flows/behavioral runs, not marks) is the non-obvious half-step the funded crowd skipped. |
| Why-now | 5 | Apollo gated **today** (2026-06-23); Blackstone this month; Blue Owl liquidation; DOL safe harbor finalizing late 2026 into a $12T market. A dated, live trigger. |
| Market / venture-scale | 5 | $12T DC market opening + the full $1.3T+ retail semi-liquid universe. Becoming the liquidity-risk operating layer for retail private markets is unambiguously $1B+. |
| Defensibility | 4 | Compounding **cross-fund flow dataset** + behavioral foundation model + becoming the standard fiduciaries/regulators name = data moat the prior runs explicitly hunted for, plus workflow lock-in. |
| YC-fit | 4 | AI-native, technically ambitious, huge regulated market being rebuilt, sharp "makes something people desperately want" story; fits the "AI rebuilding large industries" tilt. |
| Founder-fit | 4 | Hard build (behavioral model + liquidity simulation + transfer-agent/fund-ops integration + regulatory GTM). Rewards a strong technical cofounder; the operator's strategy/GTM edge is additive. |
| **Composite** | **4.3** | |

## 6. Biggest risks & how to disarm them

1. **AI-native gate ("this is quant/ML, not frontier AI").** The honest rebuttal: classical
   independent-rate actuarial models are *precisely what failed* at Apollo/Blue Owl;
   correlated, news-reactive, cross-investor herding prediction is a deep-sequence-model
   problem with no good non-AI solution. Disarm by leading with the behavioral foundation
   model + scenario simulator, not a dashboard.
2. **Data access / cold start.** The moat needs investor & participant flow data the
   managers/recordkeepers control. Disarm by landing a marquee design-partner manager *in
   the current panic* (when they'll share data to get an answer), then compounding a
   cross-fund dataset no single manager can replicate.
3. **Incumbent extension (Aladdin/MSCI/SS&C).** They own institutional risk and fund-ops but
   not the liability-side behavioral model or the retail/DC structure. Disarm by owning the
   beachhead fast and becoming the named standard before they notice run-prediction is a
   product, not a feature.
4. **Regulatory timing.** If the DOL rule slips, the wealth-channel crisis still funds the
   beachhead today — the company is not gated on the 401(k) timeline.

## 7. First 90 days (validation)

- Land **1-2 design-partner managers** running a gated-or-nervous semi-liquid fund; get
  transfer-agent flow history under NDA.
- Backtest: would the model have flagged the Apollo / Blue Owl / Blackstone runs *before*
  the gate? A clean "yes" is the wedge demo.
- Ship the **run-risk early-warning + sleeve optimizer** as the first product; get one CRO/
  board to adopt it as their stated liquidity-risk process.
- Map the DOL-final-rule on-ramp with one recordkeeper / target-date provider building a
  private-asset 401(k) sleeve.

## 8. Open questions

- Best initial fund structure to target (interval vs. non-traded BDC vs. evergreen) by data
  availability and pain.
- Build-vs-partner on the transfer-agent data pipe (direct integrations vs. via iCapital/
  SS&C).
- Whether to sell run-prediction as **risk software** (faster) or position from day one as
  an **independent liquidity-assurance** stamp (more defensible, slower) — likely software
  first, standard later.
- Systemic-risk data-product angle: do regulators (SEC/DOL/FSOC) eventually want the
  cross-fund run-risk view — and does that help or invite scrutiny?
