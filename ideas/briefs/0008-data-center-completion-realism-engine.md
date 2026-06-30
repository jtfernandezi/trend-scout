# Brief — ts-0069: The correlated "time-to-power" completion-realism engine for the data-center buildout

*Generated 2026-06-30. Composite 4.2. The "RMS / Verisk for whether — and when — AI's data centers actually get built."*

---

## One-liner

An independent risk-modeling company that maps the **shared electrical-equipment, EPC, labor and interconnection dependency graph** beneath thousands of AI data-center projects and simulates the **correlated construction-delay loss** accumulating across an insurer's or lender's whole book — so delay-in-start-up (DSU), builders-risk and parametric carriers, their reinsurers, and completion lenders can price the fastest-growing construction peril in the economy instead of writing it blind or leaving billions of dollars of risk uninsured.

## In plain English

Building a giant AI data center now hinges on one boring thing: getting the building-sized transformers and switchgear that connect it to the grid. Those parts are back-ordered **three to four years**, and nearly all of them come from the *same handful of factories*. Insurers have started selling "we'll pay you if your data center opens late" coverage, and banks lend billions against projects opening on time — but each one prices the delay as if it's that project's own private bad luck. It isn't. If one transformer factory has a fire, a strike, or a tariff shock, **hundreds of data centers slip at once**, and the insurer who sold that cover to all of them eats one giant simultaneous bill it never reserved for. This company builds the missing brain that traces which project depends on which factory, component, contractor and grid connection, then calculates the joint hit if those shared chokepoints break together — so insurers and lenders can finally *price* "will it open on time."

---

## The cross (why this needs both halves)

**Frontier AI half.** Frontier multimodal models can now fuse heterogeneous, messy, mostly-unstructured signals into a per-project **probability-of-on-time-energization** and — critically — simulate the **correlated** delay of thousands of projects whose completion dates are *linked*:
- per-project equipment purchase orders, nameplate specs and substitutability;
- transformer / switchgear / GIS **factory backlogs and lead times**, by manufacturer and plant;
- port, tariff and China-exposure shocks to specific component flows;
- EPC contractor loading and skilled-labor (electrician/commissioning) availability by region;
- interconnection-queue milestones and utility energization schedules;
- satellite / permit / construction-progress signals.

Classical actuarial and parametric pricing assumes **independent, stable per-project delay distributions**. It structurally cannot represent the dependency structure — the fact that 300 projects all draw from the same five transformer plants and the same EPC bench. That independent-rate blind spot is precisely the one that made ts-0048 (correlated redemption runs), ts-0054 (correlated AI-error claims) and ts-0064 (correlated demand materialization) AI-native. This is the **supply / completion** twin of ts-0064's demand twin.

**Structural half.** The electrical-equipment supply chain is the binding constraint on the **~$1.4T** AI data-center buildout, and the insurance/finance market is forming *right now*:
- HV transformer lead times stretched from 12-18 to **36-48 months** (avg ~128 weeks); switchgear ~44 weeks; prices up to **+95%**.
- Only **~5 of 12 GW** of 2026 US data-center capacity announced is under construction; **30-50%** of planned 2026 US data centers are at risk.
- Carriers are pouring in capacity they admit they can't price: **Aon expanded its Data Center Lifecycle Insurance Program to $3.5B** (Jan 2026); **Descartes** launched a data-center **parametric** suite; **Zurich** launched a first-of-its-kind data-center **Builders Risk** product; **delay-in-start-up (DSU)** cover adds **2-3x** the base rate (the single largest cost driver); **ENR** reports **"billions in data-center construction risk is uninsured."**

Neither half alone is a company. "AI construction-delay prediction" without the correlated-accumulation model is a per-project lender tool that already exists. The supply-chain crisis without frontier AI is a spreadsheet of lead times. The company is the **correlated-fates model over the equipment-dependency graph, sold to the people holding the accumulation risk.**

---

## Beachhead → $1B path

**Beachhead buyer.** The exposure-management / portfolio-accumulation / chief-underwriting lead at a **DSU / builders-risk / parametric carrier or specialty MGA** writing AI data-center construction — and the **reinsurers** behind them. Trigger moment: they're being asked to deploy capacity *now* (post-Aon/Descartes/Zurich), DSU is their largest-rated component, and they have no way to bound the correlated equipment-delay sitting across the book. This buyer (a) feels the pain acutely, (b) already pays six- and seven-figures for catastrophe models, and (c) structurally wants a model **not owned by their reinsurer** — the same independence demand that built the third-party CAT-modeling industry (RMS, Verisk).

**Why it's a wedge, not a niche:**
1. **Up the stack within data centers:** from DSU/builders-risk into operational property/BI and the full data-center lifecycle program (where Aon already sells $3.5B of capacity).
2. **Down the capital stack:** the *same* correlated-completion truth is what **project-finance lenders and data-center ABS/CMBS investors** need to underwrite on-time energization — a distinct, large buyer with the same model.
3. **Across project types:** every large capital project that shares the transformer/switchgear/EPC/turbine chokepoints — **renewables, LNG/gas, fabs, transmission, grid build** — has the same correlated-completion peril; DSU/builders-risk is a global multi-tens-of-billions premium line.
4. **The standard:** become the independent "**completion-realism / time-to-power**" model that carriers, reinsurers, ILS investors and lenders all price against — a compounding data + standard-setting moat.

**Path to $1B.** A third-party model that becomes table-stakes for pricing a peril attached to a **$1.4T buildout** (and then all large-project completion risk) is a Verisk/RMS-shaped outcome: recurring, high-margin, license + per-deal pricing, embedded in the underwriting and lending workflow.

## Why incumbents structurally can't / won't

- **Per-project AI delay tools** (private-lender due-diligence vendors, construction-finance monitors) score one project independently for go/no-go — wrong unit of analysis (no book-wide correlation) and wrong buyer (lenders' deal teams, not carriers' accumulation desks).
- **Nat-cat modelers** (Verisk, Moody's RMS) have decades of *geographic/peril* data and **no equipment-supply-chain dependency graph**; their DNA is hurricanes and earthquakes, not factory backlogs and EPC loading.
- **Parametric/DSU carriers** (Descartes, Aon, Zurich) are racing to deploy capacity but price each policy on **assumed-independent** delay distributions — they are the *customer* for the missing model, not the builder of it (and several would rather buy independence than grade their own book).
- **Supply-chain-risk mappers** (Everstream, Interos) map supplier tiers and disruption generally, but don't translate it into **insured delay-loss accumulation** for a specific book of construction policies.

## Scores (rubric)

| Dimension | Score | Notes |
|---|---|---|
| Novelty | 4 | Per-project delay prediction exists; the **correlated-accumulation model over an equipment-dependency graph for the insurance/lending book** is open (kill checks returned only academic cascading-failure work + per-project lender tools). |
| Why-now | 5 | Dated 2026 inflection: 36-48-mo transformer lead times, ENR "billions uninsured," Aon $3.5B (Jan 2026), Descartes + Zurich product launches, DSU at 2-3x — carriers deploying capacity into a correlated peril they price as independent. |
| Market / venture-scale | 4 | $1.4T buildout; DSU/builders-risk is the largest-rated component; expands to completion lenders + all large-project completion risk. Beachhead set is specialized (smaller than ts-0064's). |
| Defensibility | 4 | Proprietary cross-project equipment/EPC/queue dataset + correlated-loss model compounds; becomes the standard cedents and lenders price against; independence is structurally defensible vs reinsurer-owned models. |
| YC-fit | 4 | Fundable AI-native hard-tech-meets-fintech thesis, acute dated pain, clear "makes something people want." |
| Founder-fit | 4 | Deep data engineering (supply-chain graph construction from unstructured sources) + probabilistic correlated-loss modeling + insurance/credit GTM. Ambitious; built in SF with a technical cofounder. |
| **Composite** | **4.2** | |

## Biggest risks & open questions

1. **"This is just supply-chain delay prediction."** The strongest skeptic. Defense: the product is the **correlated-fates accumulation model**, which independent per-project tools and assumed-independent actuarial pricing structurally cannot produce — and the moat is a proprietary cross-project equipment-dependency dataset, not the forecast. Prove it by quantifying tail accumulation a carrier's current pricing misses.
2. **Narrower beachhead than ts-0064.** Data-center DSU/parametric carriers + reinsurers are a smaller first set than utilities/PUCs. The completion-lender and all-large-project expansion has to be executed, not assumed. Mitigant: pursue carriers and completion lenders in parallel from day one — same model, two buyers.
3. **Trigger durability.** If the transformer/switchgear crunch eases faster than expected, the *overbuild-delay* fear deflates. But completion lenders need the same correlated-completion truth whichever way delivery breaks (under-delivery is *worse* for them), so the demand is two-directional like ts-0064's.
4. **Data access.** Equipment POs, factory backlogs and EPC loading are commercially sensitive. Wedge in via the carriers/reinsurers themselves (who see submission data across many projects) and public/permit/satellite signals; the cross-submission view is itself a moat carriers can't replicate alone.
5. **Boundary with ts-0064.** Keep them distinct: **ts-0064 = demand realism** (is the load real; buyer utilities/PUCs/lenders); **ts-0069 = correlated completion/delay accumulation** (will it be built on time; buyer DSU/builders-risk carriers + reinsurers + completion lenders). Different peril, data and buyer — but a combined "buildout-realism" platform is a credible long-term roof.

## First 90 days (validation)

1. **Carrier discovery (12-15 calls):** DSU/builders-risk/parametric underwriters and reinsurers (and the Aon/Descartes/Zurich orbit) — confirm they price delay as independent, can't bound book-wide equipment-delay accumulation, and would license an independent model.
2. **Build a v0 equipment-dependency graph** for a tracked cohort (the ~140 announced 2026 US data-center projects): which projects map to which transformer/switchgear plants, EPCs and queues; ship a defensible **correlated-delay tail** estimate for a sample book.
3. **Parallel completion-lender interviews:** data-center project-finance and ABS desks — does an independent on-time-energization probability change underwriting/covenants?
4. **Novelty re-kill each run:** watch whether Descartes/Verisk/RMS ship an *equipment-correlated* delay-accumulation product — the single thing that would dent this.
</content>
