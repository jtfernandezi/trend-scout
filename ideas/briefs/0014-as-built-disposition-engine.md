# Brief — ts-0192: The as-built disposition engine

*Idea generated 2026-08-11. Composite 4.1 — third-highest of 192 ledger entries, and the first survivor in four runs. The "machine that decides whether the part you actually built is still airworthy, and writes the proof."*

---

## One-liner

An **as-built disposition engine** for regulated manufacturing: when a nonconformance is raised on the line, it reads the deviation, retrieves the certification basis for that feature, **recomputes the structural and functional margin against the geometry that actually exists rather than the geometry that was designed**, returns a disposition — use-as-is, rework, repair, scrap — and emits the substantiating analysis of record that an authorised engineer signs. It converts the slowest, most senior, most retirement-exposed decision in the factory from a multi-day queue into minutes, at the exact moment a regulator has made permitted production rate a function of how well that queue is cleared.

## In plain English

Aeroplane factories find small problems constantly. A hole is drilled a fraction of a millimetre off. A panel gets a scratch that is slightly too deep. A bracket ends up a hair out of position. None of these is obviously fine and none is obviously fatal, so somebody senior has to work out whether the part is still safe to fly — and if not, whether to fix it, repair it or throw it away.

That calculation is real engineering. It takes days, it is done by a shrinking number of experienced engineers who are retiring faster than they can be replaced, and while it waits, the unfinished job travels down the line with the half-built aeroplane. The aviation regulator now watches exactly that — how much unfinished work is travelling, and how many defects escape — and uses it to decide whether Boeing is allowed to build planes faster. Boeing has more than seventeen thousand aeroplanes on order that it cannot deliver for over a decade, so permission to go faster is worth billions.

This is software that makes that decision in minutes and shows its working. It looks at the defect, pulls up the original engineering that certified the design, recalculates whether the real part as built is still strong enough, and writes out the justification for an authorised engineer to sign. Manufacturers pay for it because every day in that queue costs money, and because clearing it is what unlocks the rate increase. Everyone who builds anything under a safety regulator — aircraft, medical devices, chips, cars, power equipment — has exactly the same decision to make, dozens of times a day.

---

## The cross (why this needs both halves)

**Frontier AI half — the judgement became computable in the last year, not the paperwork.**

- The task is irreducibly **multimodal and retrieval-bound**: it needs the photograph or scan of the actual deviation, the drawing with its geometric-dimensioning-and-tolerancing callouts, the material and process specifications, the applicable repair manual, and the analysis in the certification data package that established the margin for that feature in the first place. Reading all of those together the way an engineer does is a 2025-2026 capability, not a 2023 one.
- The second half is **physics**. A disposition is not a document-classification problem; it is a recomputation. What made this tractable is that certification-grade structural analysis stopped being a days-long finite-element job: PhysicsX, Neural Concept, Luminary Cloud and Ansys SimAI turned surrogate models over a company's own analysis history into an interactive operation. That commoditised the *component* this product needs and did not produce the product itself, which is the usual signature of an open square.
- The third half is **long-horizon agency**. A real disposition chases dependencies — is this feature fatigue-critical, does the deviation stack with an adjacent one, was a concession already granted on the mating part, does the repair invalidate the damage-tolerance inspection interval. Multi-day autonomous agents (Qwen3.8-Max's ten-day autonomous projects, the GPT-5.6 family, Muse Spark) are what make that chain runnable without a human holding the thread.
- **Open weights matter here for a specific, unglamorous reason.** This work is ITAR- and CUI-bearing and, at a prime, frequently classified-adjacent; it cannot go to a public API. Meta's Muse Glimmer (2026-08-10, 30B, Apache 2.0, single consumer GPU) and Kimi K3's 2.8T open weights are what make an in-plant deployment credible without a FedRAMP/IL5 dependency. A year ago the honest answer to "where does the data go" killed this deal.

**Structural half — a regulator turned a quality statistic into the production ceiling of a trillion-dollar backlog.**

- Airbus and Boeing entered 2026 with **~17,000 unfilled aircraft orders — more than eleven years at current build rates**, normalising no earlier than 2030.
- At the Bank of America Global Industrials Conference in **March 2026, Boeing leadership stated that numerical production constraints have been replaced by Safety Management System requirements: as long as quality data — specifically "traveled work" and "quality escapes" — stays stable, the path to rate increases is clear.** Boeing was at 42 737 MAX a month by mid-2026, told the FAA it had met the requirements for 47, and targets 63, with the CEO on record that the previous 57 pace is not sustainable under current constraints.
- Underneath the airframer, the named root causes are Tier-1 and Tier-2 capacity cut in 2020-21 and never restored; skilled labour lost across manufacturing, assembly **and quality assurance**; stretched material certification timelines for aerospace-grade fasteners, castings and forgings; and engine programme delays.
- And the people who make these calls are leaving. **More than a quarter of aviation mechanics are already over 64 and roughly 80% of today's technicians retire within five to six years**; ~11,000 Americans a day reach retirement age through 2027; US manufacturing faces a net need of up to 3.8M jobs to 2033 with about half of skilled openings at risk of going unfilled. The industry describes what it is losing as *judgement* — which tolerances were loosened and why — not headcount.

**Neither half is a company.** Nonconformance disposition has existed since AS9100 existed and was, until the rate ceiling was re-based on quality evidence, an annoying cost centre nobody would buy software for. AI that recomputes structural margins without this forcing function is a design-stage feature Ansys already ships. The cross works because the arrival rate of dispositions is rising with rate, the people who clear them are leaving, and the metric they feed is now the thing standing between an airframer and eleven years of backlog.

---

## The product, concretely

Three layers. As with ts-0133 and ts-0141, the moat is in layers 2 and 3, and a founder who leads with layer 1 builds a commodity.

1. **Intake and framing.** Ingest the nonconformance report, the photograph or structured-light scan of the as-built condition, the drawing and its GD&T, the material and process specs, and the applicable repair manual. Produce a precise statement of what deviates, by how much, from what nominal, on which feature — the step that today consumes a senior engineer's first afternoon and is pure retrieval.
2. **The margin recomputation — the actual product.** Link the deviating feature to the analysis in the certification basis that established its margin, and recompute that margin against the as-built geometry: static strength, fatigue, damage tolerance, and the interaction with any adjacent or previously granted concession on the same assembly. Report the residual margin with an explicit uncertainty statement and an explicit list of what the model did *not* consider. This is the hard engineering, it is where the document-automation competitors stop, and it is what the customer is actually buying.
3. **The disposition of record.** Emit what the authorised engineer signs and the auditor reads: the recommended disposition, the substantiating analysis, the traceability from the certification basis through the recomputation to the conclusion, the residual-risk statement, and — where the disposition is repair — the inspection interval consequence. In aerospace this maps to AS9100 clause 8.7 and the customer/government source-inspection path; in medical devices to ISO 13485 nonconforming product control; in automotive to IATF 16949.

**The counterintuitive design consequence:** do not sell "AI dispositions your nonconformances." Sell **"your traveled-work number, down and stable."** The buyer's risk is not that the analysis is wrong — they have a signer for that — it is that the queue is what the regulator is reading. Positioning on autonomy loses deals that positioning on the rate-gating metric wins. Price on throughput cleared, not per seat.

---

## Beachhead → $1B path

**Beachhead buyer.** The **head of quality or chief engineer at an aerostructures Tier-1** — a fuselage-section, wing-component or nacelle supplier feeding an airframer's final assembly line — at the moment a nonconformance is raised on a part that is already installed or already late. Chosen because:

- The budget **already exists** as engineering headcount and outsourced engineering services, so there is no new line item to create.
- The trigger is involuntary and continuous: nonconformances arrive at a rate proportional to production rate, and production rate is going up.
- The buyer is an engineering leader with a metric on their own scorecard, not a CIO in an annual software cycle.
- Tier-1s are far easier to land than an airframer, and they are the *source* of the airframer's traveled work — so success at the Tier-1 is visible to the customer above them. That is the wedge into the airframer, which is where the strategic value sits.

**Expansion, in order.**

1. **Up-market to the airframer's own final assembly**, where a single day of rate is worth more than the entire Tier-1 contract, and where the disposition corpus from the supply base is already in hand.
2. **Across to defence production**, where the identical decision governs the munitions and shipbuilding surge — backlogs growing four times faster than output, with rate as the explicit national priority. Same standard (AS9100), same decision, different urgency.
3. **Out to the other regulated manufacturing regimes** where nonconformance disposition is mandated and engineering-judgement-bound: medical devices under ISO 13485, semiconductors, energy equipment, rail, automotive under IATF 16949. This is where the venture-scale story lives — the decision is universal, the certification basis differs, and the recomputation engine generalises where the document templates do not.
4. **Upstream into prevention.** Once the corpus links defect → disposition → in-service outcome across many plants, the product can predict which process steps generate dispositionable defects and at what cost — which is the quality-escape half of the same regulator-facing metric, and a second, larger sale.

**Size check.** Cost of poor quality runs 3-6% of revenue in complex assembly. Commercial aerospace airframers plus aerostructures Tier-1s are roughly $240B of revenue, so on the order of $10B a year of scrap, rework and traveled work in commercial aviation alone — before counting the option value of rate, where a single month of held rate at Boeing is measured in billions of deliveries. Capturing a few percent of the aero slice is a few hundred million of ARR; the regulated-manufacturing generalisation is where the rest is. This clears the gate at 4.5, not by market-report arithmetic but because the buyer can point at the number the product moves.

---

## Why incumbents structurally can't or won't build it

- **The quality-management vendors own the record, not the judgement.** ETQ, Sparta, Siemens Opcenter, QT9, SG Systems and iFactory route the nonconformance, place the lot on hold, block movement and generate the paperwork. There is no structural-analysis competence anywhere in their architecture and no path to acquiring one that does not break their horizontal positioning — the analysis is different for every certification basis, which is precisely what a horizontal QMS refuses to model.
- **The simulation vendors have no factory presence.** Ansys, PhysicsX, Neural Concept and Luminary Cloud sell to design engineering, on a design-stage cadence, against a design-stage buyer. Nothing about their motion reaches the quality organisation, the shop floor, or the record of airworthiness — and the disposition is worthless unless it lands in that record.
- **GroundControl is the nearest neighbour and has publicly drawn the line.** The YC S25 company automates AS9102 first-article inspection documentation across 70+ facilities, and its own stated finding is that most rejections come from **documentation errors, not part nonconformance**. That is an accurate description of the market they are in and a precise description of the one they are not. It is also the sharpest risk in this brief — see below.
- **The party doing the work today bills for it.** Quest Global publishes its own thought leadership on resolving nonconformances in aerospace and defence, and its revenue is the engineering hours the engine deletes. That is the corrected 2026-08-04 heuristic satisfied in full — a billable-hour market **plus** a technical barrier (certification-grade margin recomputation against as-built geometry, linked to the certification basis) that a services-replacement seed company cannot clear.
- **The airframer will not build it.** It would have to be built once per certification basis across a supply base the airframer does not control, and airframers have spent a decade divesting exactly this kind of engineering rather than acquiring it.

---

## Scoring

| Dimension | Score | Note |
|---|---|---|
| Novelty | 3.5 | The workflow and documentation layers are genuinely occupied — GroundControl, ETQ, Sparta, iFactory, SG Systems. The judgement layer is not, and the services firms selling it today sell hours. Honest 3.5, not a 4. |
| Why-now | 4.5 | Boeing's March 2026 restatement of its rate ceiling as a function of traveled work and quality escapes; an 11-12 year backlog; ~80% of technicians retiring within six years; certification-grade surrogate analysis becoming interactive; open weights making an in-plant, CUI-safe deployment possible. |
| Market / venture-scale | 4.5 | ~$10B/yr of cost of poor quality in commercial aero alone, rate worth billions per month, and a decision that is mandated identically across every regulated manufacturing regime. |
| Defensibility | 4 | The compounding asset is the disposition corpus — deviation → certification basis → recomputation → disposition → in-service outcome — which no QMS or simulation vendor holds and which cannot be scraped. Plus lock-in: once the engine writes into the record of airworthiness, replacing it is a regulatory event. |
| YC-fit | 4 | Hard technical product, regulated physical industry, "AI eats the back office of atoms," and directly aligned with the 2026 capital thesis that AI has to reach factories to matter. |
| Founder-fit | 4 | Deep and ambitious — multimodal retrieval, surrogate structural analysis, evidence generation, all under audit. Requires a structures-and-certification hire alongside the technical cofounder, which is the real constraint and is a hiring problem, not a capability ceiling. |
| **Composite** | **4.1** | |

---

## Biggest risks, honestly

1. **The signer problem.** The disposition is a signed act by an individual with delegated authority under AS9100, and for some dispositions it needs customer or government source-inspection approval. The failure mode is not rejection — it is acceptance as a *decision-support tool* that the engineer then redoes by hand, which halves the value and destroys the pricing. The mitigation is to instrument the signer's edit: if the engine's recommendation is accepted unchanged 90%+ of the time within six months, the value is real; if it is not, the product is a report generator and should be abandoned rather than iterated.
2. **GroundControl walks across.** They are YC-backed, already inside 70+ facilities, already parsing drawings and extracting tolerances, and already trusted with the quality record. The distance from FAI documentation to NCR documentation to disposition recommendation is three steps, and they have the distribution. The defence is that the third step requires linking to the certification basis and recomputing margin, which is a different company — but that defence has to be built fast, not asserted.
3. **The buyer set is conservative and the sales cycle is long.** Aerospace quality organisations are the most risk-averse buyers in this ledger, and the ledger has watched standards-bound ideas die (ts-0122, ts-0134). The counter is that this one is not gated by a legal ratio or a licence quota — the constraint is engineering hours, and a signer can sign as many dispositions as they can review. That distinction is the whole thesis and it is the first thing to verify with a real buyer.
4. **Liability.** Being materially in the chain of an airworthiness decision is a real exposure, and the answer cannot be "the engineer signed it." Expect the first serious customer's legal team to ask, and have an answer about scope, uncertainty disclosure and what the engine explicitly refuses to opine on.

---

## What the operator should do next

**Do not run another scan on this.** The market map is in the report. The two things that decide whether this is a company are both answerable without one:

1. **Find one real nonconformance report and one real disposition, and construct the technical claim.** The question a buyer will argue is: *what must this engine prove that a stress engineer with Ansys and the certification data package cannot?* The candidate answer — that the engineer computes one margin against one idealised geometry while the engine computes the joint effect of the whole as-built deviation stack against the certified basis, and carries the evidence — is a claim, not a fact. Test it against a single real case.
2. **Make the call.** A head of quality at an aerostructures Tier-1, asked two questions: how long does a disposition sit in your queue, and what would you pay to halve your traveled-work number. Five candidates across twenty-six runs are now waiting on conversations of exactly this shape. This one is the easiest to get, because the buyer's pain has a public number attached to it.
