# Brief 0029 — The AI-native correctional health provider

**Ledger id:** ts-0381 · **Date:** 2026-09-15 · **Composite:** 4.2

---

## The one-line version

Become the company a county hires to run its jail's medical and mental-health care, built AI-native
from the record up — reconstructing who a person is and what will kill them from fragments at 3am
booking, capturing care where nobody types, and converting custodial care into the Medicaid claims
that section 1115 reentry waivers made billable for the first time in the programme's history —
entering a market where the three largest incumbents went bankrupt in two years and counties are
actively re-tendering.

## The plain-English version

Every county jail has a legal duty to provide healthcare to the people it holds, and almost all of
them contract that out. The contractors are in deep trouble: Corizon went bankrupt with more than a
billion dollars of settlements on its balance sheet, Armor Health liquidated, and Wellpath — the
largest, over 2bn dollars of revenue in 2023 — filed in November 2024 with 644M dollars of debt
against roughly 1,500 lawsuits, most of them about people who died from neglected medical care.
Counties are firing them: Shasta County, California signed a three-year, 25M dollar contract with a
replacement after deaths under Wellpath, and Lackawanna County declined to renew.

Separately, something changed that nobody in the industry is built to exploit. CMS has now approved
**19 section 1115 reentry demonstrations, with nine more pending**, which for the first time let
jails and prisons bill Medicaid for services delivered in the ninety days before release — and CMS is
offering enhanced federal match for the IT systems needed to do it. The catch, stated plainly in the
public record, is that the electronic health records built for correctional settings *were never
designed to generate a bill*: many do not track procedures, services, devices or drugs by CPT code at
all. There is new money on the table and the incumbents cannot pick it up.

So: be the contractor. Win county jail medical contracts and run them with an AI-native clinical and
billing system that no incumbent can build and no mainstream vendor will build.

## Why this is a frontier-model company and not a services roll-up

Three jobs here are genuinely impossible without frontier models, and all three are load-bearing.

**1. Intake reconstruction.** Someone arrives at booking at 3am — intoxicated, withdrawing, psychotic,
or simply unwilling to talk — and cannot give a reliable history. The evidence of what they take and
what will kill them in the next 72 hours (opioid or alcohol withdrawal, insulin, antipsychotics,
anticoagulants, seizure medication) is scattered across the county EHR, the state prescription drug
monitoring programme, homeless and behavioural health services records, prior bookings at the same
jail, and a hospital discharge summary from another county. Assembling a defensible medication and
acute-risk list out of those fragments is entity resolution plus clinical judgement over contradictory
partial evidence. It is the single highest-stakes document-reconstruction task in American healthcare,
and the first 72 hours in custody is when most in-custody deaths happen.

**2. Documentation where there is no workstation.** Care happens at a cell door, in a transport van,
in a segregation unit, on a med pass. There is no desk and no time. The record has to be captured
ambiently — voice, and increasingly camera — and turned simultaneously into a clinical note, a
sick-call disposition, a custody-safe communication, and a billable encounter. The scribe leaders have
proven the capability exists; none of them has any reason to point it here.

**3. Release-timing prediction, which is what makes the billing possible at all.** CMS's own guidance
says county jails are the hard case for the pre-release benefit, because the average length of stay is
under thirty days and there is no predetermined release date — you cannot start a ninety-day
pre-release service for someone whose release date does not exist. Deciding *today* who will leave
inside the window, from charge, bail status, court calendar, plea posture and history, is a prediction
problem, and it is the difference between a reentry benefit that is theoretically available and one
that is actually collectable. This is the piece nobody has, and it is why "just add a billing module"
does not work.

## The wedge — four blocks, all structural

**The big EHRs cannot follow.** Epic and Oracle Health model a patient and an encounter. A jail is
modelled on *custody*: housing location, cell moves, segregation status, transport, court dates,
sick-call kites, use-of-force events, keep-separate orders. Serving it means a second data model, a
second compliance posture, and a sales motion through sheriffs and county boards of supervisors that
neither company runs. It is a second company, not a configuration.

**The incumbent contractors are conflicted against their own product.** Their margin comes from a
fixed per-inmate-per-month capitation, so every dollar of care delivered is a dollar of margin lost,
and a system that honestly documents every unmet clinical need manufactures the discovery record for
the deliberate-indifference litigation that has already destroyed three of them. They cannot buy an
honest record; they can only buy a defensible one, which is a different product.

**The incumbent correctional EHR vendors cannot fund the work.** CorrecTek, CorEMR, NextGen's
corrections line and their peers are small, unfunded businesses. The public record already says many
cannot produce a superbill. Building intake reconstruction, ambient capture and release prediction is
outside both their capital and their engineering.

**The ambient-scribe leaders have no path in.** They sell seats into health systems running Epic. They
have no custody data model, no Medicaid reentry claim path, no CJIS-adjacent security posture for
custody data, and no clinician workstation to sit on.

## Occupancy — searched first, and empty

The occupancy test was run three ways before any of this was written: correctional or jail health plus
AI startup plus 2026 funding; jail Medicaid billing and pre-release services software vendors; and the
Y Combinator directory for corrections and justice-involved healthcare. What came back: incumbent
contractors (NaphCare, Advanced Correctional Healthcare, Mediko, YesCare), legacy correctional EHRs,
policy and advocacy organisations (NCCHC, COCHS, the Health and Reentry Project), and one nonprofit YC
company in supervision analytics, **Recidiviz**, which does data-driven decision support to reduce
incarceration — adjacent, and not this. **No venture-backed AI-native entrant of any kind.** The only
AI story in corrections in the mainstream press is agencies using models to surveil inmate phone
calls, which is the other side of the building and, if anything, makes an explicitly patient-side
company more differentiated.

## The buyer, and how you reach the first ten

**Buyer.** The county sheriff or jail administrator plus the board of supervisors who hold and vote the
jail medical contract; the county health director where the jail sits under health-department control;
and, one layer up, the state Medicaid agency standing up the reentry benefit and hunting for
facilities that can actually bill.

**Trigger.** A jail medical contract at re-tender or non-renewal — which in this market almost always
follows an in-custody death, a settlement, a DOJ or state inspection finding, or a consent decree —
arriving in the same window as the state's 1115 reentry benefit going live for that facility.

**Where they congregate, concretely.** The National Commission on Correctional Health Care and the
American Correctional Association run the accreditation regime and the conferences; the National
Sheriffs' Association and the state sheriffs' associations are where the buyers are; the CSG Justice
Center, COCHS and the Health and Reentry Project run the reentry implementation convenings where state
Medicaid staff and correctional agencies meet. County RFPs are public and calendared, which makes the
pipeline literally enumerable — you can build a list of every jail medical contract in the country and
its expiry date. The first ten come from mid-sized counties (300 to 1,500 beds) in the 19 waiver
states, targeted off contract expiry plus a recent adverse event, with a bid that quantifies the
Medicaid reentry revenue the county is currently not collecting.

## The money

- US correctional healthcare spend was roughly **9bn dollars** in 2022 and has grown since; the US
  correctional facilities industry overall is about **5.9bn dollars** in 2026 by IBISWorld's narrower
  definition. Wellpath alone did over **2bn dollars** of revenue in 2023.
- Contract sizes are legible: Shasta County, a mid-sized California jail, is **25M dollars over three
  years**. There are roughly **3,000 county jails** in the United States.
- The reentry benefit is new revenue rather than displaced revenue, which is the crucial commercial
  point: it lets you bid *at or below* the incumbent's capitation and still run a better-staffed
  operation, because you collect a revenue line the incumbent structurally cannot.

**Expansion path.**
1. **County jails in waiver states** — small enough contracts to win, distressed incumbent, new money.
2. **State prison systems and regional jail authorities** — eight and nine figure contracts, same
   clinical record and same billing engine.
3. **The reentry care-coordination layer** — sold to Medicaid managed-care plans, who inherit a very
   high-cost member at the gate and will pay for a warm handoff. This is the move that converts a
   government-procurement business into a payer-funded one with software margins.
4. **The general case: care for people the state is responsible for** — juvenile facilities, state
   psychiatric hospitals, civil commitment, and the health-related social needs population under the
   same 1115 authority.
5. **The compounding asset** is longitudinal clinical and outcome data on the least-documented
   population in American healthcare. Nobody is assembling it. It is exactly what prices the risk when
   this business goes capitated, and it is not purchasable.

## What has to be true

- That a county will award a jail medical contract to a new entrant. Evidence says yes — Shasta went
  to Mediko, a smaller player, on the strength of not being Wellpath — but the first award will
  probably need a clinical partner with correctional credentials on the bid.
- That the reentry benefit is collectable in practice, not just in the waiver document. This is the
  central diligence item: pick two waiver states, read their pre-release service definitions and
  billing guidance, and confirm the claim path end to end before writing code.
- That you can staff it. Correctional nursing and psychiatry are chronically short-staffed; the AI
  case is partly a recruiting case (you take the documentation and the paperwork off people who
  entered the field to do clinical work), and that argument has to land with actual nurses.

## The honest risks

1. **Liability.** This is the most litigated setting in American healthcare, and the honest record that
   is your wedge is discoverable against you too. Three predecessors were destroyed by it. Your
   answer has to be that the record is honest *and* the care is actually delivered — which means this
   cannot be a margin-extraction business, and the model has to be built around delivering care rather
   than documenting its absence.
2. **Procurement speed.** County boards move in quarters and re-tenders are calendared years apart.
   The pipeline is enumerable but it is slow, and the company needs enough capital to survive the
   first two award cycles.
3. **Geography of the revenue leg.** 19 approved waivers means 31 states where the new money does not
   exist yet, and state implementation timelines slip.
4. **Reputation.** Some investors and some engineers will not work on anything involving jails. That
   is a real recruiting and fundraising constraint, and the counter-argument — that this is the
   population with the worst healthcare in the country and that fixing it is the point — has to be
   made honestly and repeatedly, not finessed.
5. **Political risk.** Medicaid policy is contested, and a section 1115 authority is an
   administration's discretion. The company should be viable on the capitation alone, with reentry
   revenue as the accelerant rather than the foundation.

## Scores

Wedge 5 · Pattern 4 · Market 4 · Defensibility 4 · YC-fit 4 · Founder-fit 4 → **composite 4.2**

YC's Summer 2026 request for startups says it directly — *sell the service, not the software* — and
this is the sharpest available instance of that: a licensed service, an insolvent incumbent, a buyer
actively switching, a new revenue line the incumbent cannot collect, and three load-bearing tasks that
are impossible without frontier models.
