# Brief — ts-0064: The independent demand-realism engine for the AI grid buildout

*"The RMS / Verisk for whether AI's electricity demand is real."*

**Date:** 2026-06-27 · **Status:** new · **Composite:** 4.3
(Novelty 4 · Why-now 5 · Market 5 · Defensibility 4 · YC-fit 4 · Founder-fit 4)

---

## One-liner

An independent, AI-native **demand-realism / probability-of-energization** platform for the
~$1.4T AI grid buildout: a frontier model that fuses cross-utility interconnection
filings, permits, equipment/transformer lead-times, construction and satellite signals,
chip-allocation and project-finance data, and developer filing behavior to score **which
announced data-center loads (and the power/grid projects meant to serve them) will
actually materialize, and how correlated their fates are** — the source of truth utilities
and regulators use to avoid stranded *overbuild* and lenders, bond investors and
hyperscalers use to avoid stranded *capital*.

## The cross (why this needs both halves)

- **Frontier capability:** Multimodal frontier models can now fuse large volumes of messy,
  heterogeneous, unstructured signals into a per-project probability of energization, and —
  critically — **simulate the correlated materialization of thousands of projects** whose
  fates are linked through shared hyperscaler demand, shared transformer/equipment supply
  chains and shared power constraints. Classical integrated-resource-planning (IRP) load
  forecasting is single-point, historically grounded, and assumes **independent, stable**
  demand. It structurally cannot model (a) strategic "phantom" duplicate requests, or
  (b) correlated fall-through — the same independence blind spot that made ts-0048
  (redemption runs) and ts-0054 (correlated AI failure) AI-native.
- **Structural shift:** A ~$1.4T US utility grid buildout (top-5 hyperscaler capex ~$602B in
  2026; >$9B data-center securitization) colliding with a demand-truth crisis — duplicate
  interconnection filings double-count load, NERC's 10-yr peak forecast jumped 24%
  (+224 GW) almost entirely on speculative data-center demand, ~$700B is projected to land
  on residential ratepayers, and **23 states approved large-load tariffs (300+ bills in 6
  weeks)** explicitly to weed out speculative requests.

Neither half alone is the idea. Without frontier AI it's classical forecasting (which is
exactly what's failing). Without the buildout/phantom-load crisis there's no urgent,
multi-constituency buyer. The idea exists only where both are present *now*.

## Why now (dated triggers)

- **23 states** have approved large-load tariffs (51 tariffs; **300+ bills filed in 6
  weeks**) specifically to filter speculative requests — PUCs are formally institutionalizing
  the demand-realism question.
- **NERC** (Dec 2025 / 2026): 10-yr peak demand +24% (+224 GW), "most of the increase" from
  data centers; explicitly an "early warning on the trajectory of risk."
- **Moody's, S&P and Bond Buyer (2026):** data-center financing assumptions "under scrutiny";
  financing "treats contracted demand as actual demand."
- **The overbuild-vs-under-delivery debate is live** (PowerLines/SELC vs Janus Henderson's
  "probability-of-energization-weighted capacity") — both camps need the same demand-realism
  truth, which makes the why-now durable regardless of which way demand breaks.
- Frontier multimodal models that can do cross-source fusion + correlated-materialization
  simulation are a 2025-26 capability, not available when the queues first filled.

## Beachhead → expansion path to $1B+

- **Beachhead:** the resource-planning / load-forecasting lead at a large investor-owned
  utility (or the staff / consumer-advocate side of a state PUC) facing a flood of
  speculative large-load interconnection requests *today*, who must decide how much
  transmission/generation to build and how to design cost-causative ("you-caused-it,
  you-pay") tariffs without stranding ratepayers. Winnable now because the tariff dockets
  and IRP cycles are happening this year and the existing tools are classical and advisory.
- **Expansion:**
  1. **Project-finance lenders, data-center ABS/CMBS investors, ratings agencies** — they
     need independent demand-truth to underwrite the $1.4T buildout (their assumptions are
     explicitly "under scrutiny"). Same model, recurring high-value seats.
  2. **Hyperscalers and developers** themselves — to vet their own pipeline, site
     selection, and counterparties, and to credibly signal *real* demand to utilities.
  3. **The industry-standard demand-realism layer** all sides price against — the
     Verisk/RMS analog for AI-era infrastructure demand risk: a data + model franchise with
     a regulatory-citation moat.
- **Why it's $1B+:** $1.4T grid capex, ~$700B ratepayer exposure, >$9B (and rising)
  securitization, ~200 large utilities + ~50 PUCs + the entire infrastructure-credit
  complex + hyperscalers — all needing the same truth. A standard-setting demand-truth data
  layer in a market this size is a clear venture-scale outcome.

## Why incumbents structurally can't / won't build it

- **Supply-side capacity finders (GridCARE, Pearl Street — ts-0014):** answer "where can I
  *get* power" and sell to *developers*; wrong question (capacity, not demand-truth) and
  conflicted constituency.
- **Utility load-forecasting tools + consultancies (Itron, E3, Brattle, ICF):** classical
  single-point historical methods that the phantom-load problem breaks; advisory engagements,
  not an independent productized model; relationship-conflicted (paid by the utility whose
  build case they support).
- **Ratings agencies / investors (Moody's, S&P, Janus Henderson):** write commentary and
  coin the concept (PoE-weighting) but ship no platform.
- **Flexibility players (Emerald AI ts-0056, Verrus):** make load *curtailable* — a
  different problem.
- **The independence demand:** utilities, PUCs, ratepayer advocates and lenders all
  structurally want a source of truth *not* owned by the developers or by their own
  conflicted advisors — the same dynamic that sustains third-party catastrophe modelers
  against carriers' and reinsurers' captive models.

## Scoring rationale

- **Novelty 4** — the concept is acknowledged (phantom load, PoE-weighting) and needed, but
  no named startup productizes an independent cross-utility demand-realism +
  correlated-materialization model. GridCARE is supply-side; E3/Janus are analysts.
- **Why-now 5** — multiple live, dated triggers (23-state tariff wave, NERC +24%, ratings
  scrutiny) plus a genuine capability unlock; robust to which way demand breaks.
- **Market 5** — $1.4T buildout, multi-constituency buyer, standard-setting potential.
- **Defensibility 4** — compounding cross-utility / cross-source proprietary dataset, the
  correlated-materialization model, and (eventually) regulatory citation / standard status.
  Network effect: more utilities → better phantom-load dedup.
- **YC-fit 4** — picks-and-shovels for the defining capex cycle of the decade; fundable
  "make the truth source for $1.4T" thesis; aligns with AI-native, ambitious tilt.
- **Founder-fit 4** — deep data engineering + frontier modeling + energy/regulatory domain;
  serious build, which is a feature under the revised thesis.

## Biggest risks & how to test them

1. **AI-native gate (skeptic: "this is just ML forecasting + data aggregation").** Test:
   build the correlated-materialization model and show it beats classical single-point IRP
   forecasts on out-of-sample phantom-load fall-through and on joint (not marginal)
   materialization. The defensible core is the *correlated-fates* simulation + the
   cross-utility dataset, mirroring why ts-0048/ts-0054 cleared the gate; if the product
   collapses to a single-project score, it risks the ts-0041/ts-0059 not-AI-native fate.
2. **The demand actually materializes → "stranded-asset" fear deflates.** Mitigant: sell the
   *demand-realism truth*, which the under-delivery camp needs just as much (don't strand
   capital on capacity that won't energize). Position directionally-agnostic from day one.
3. **Data access.** The moat needs cross-utility/cross-source data. Wedge: win a design-partner
   utility + a PUC staff engagement now (regulatory data is largely public), then compound a
   cross-utility view before Itron/E3 or a ratings agency productizes one.
4. **A capacity-finder or ratings agency extends in.** GridCARE could pivot demand-side;
   Moody's/S&P could ship a PoE product. Mitigant: win the independent-of-developers,
   regulator-trusted position fast and make the dataset/standard the moat.

## First proof points (next 90 days, conceptual)

- A retrospective demand-realism backtest on a public interconnection queue: how much of the
  announced GW historically energized, and could the model have called the phantom share and
  the *correlated* fall-through ahead of classical forecasts?
- One design-partner utility (IRP / large-load desk) or one PUC staff / consumer-advocate
  engagement using the score in a live large-load tariff or IRP docket.
- One infrastructure-credit conversation (ABS investor / ratings analyst) validating demand
  for an independent demand-truth feed.
</content>
