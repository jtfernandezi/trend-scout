# Brief 0036 — AI-native subcontractor-default insurer: SDI for the mid-size general contractors that SubGuard won't write

**Ledger id:** ts-0594 · **Date:** 2026-11-07 · **Composite:** 3.8 (rubric v3)

---

## The one-line version

A managing general agent (MGA) that writes subcontractor default insurance (SDI) for general contractors (GCs) below
the incumbents' size floor. It machine-underwrites every enrolled subcontractor from their financials, work-in-progress
(WIP) schedules, backlog, bank data, licences and lien and litigation history. It then monitors each project's pay
applications, schedule updates, daily logs, RFIs and correspondence for early signs of distress. The GC can step in
before a sub fails, and gets reimbursed for completion costs when one does.

## The plain-English version

A building is put up by one main builder and dozens of specialist firms working under it. If one of those firms goes
out of business halfway through, the main builder has to pay, often a lot, to bring in someone else in a hurry and
fix what was left undone.

The biggest builders buy insurance against this. Insurers only sell it to builders handing out more than about 75-150
million dollars of work a year, and they expect the builder to cover the first 750,000 dollars of every loss itself.
Everyone smaller makes each specialist firm buy a bond. Bonds are expensive, they push small firms out of bidding, and
collecting on one after a failure can take months.

We would insure the mid-size builders. Our software does the vetting their big competitors pay whole departments
for: it reads every specialist firm's accounts and the paperwork of every job. It warns the builder early when a firm
is slipping (late invoices, a shrinking crew, unpaid suppliers), and pays when one actually fails.

## The proven pattern

- **AI-native risk-bearers pricing each unit on its own evidence are winning hard commercial lines.**
  - **Kalepa**: 75M dollar Series B at a 470M dollar valuation (2026-11-05). Revenue and customer count each tripled in
    a year, and it has been cash-flow positive for two years. Agentic underwriting works in specialty commercial lines.
  - **Indigo**: AI-native malpractice insurer. 50M dollar Series B (January 2026), then premium doubled to 20M dollars+
    by pricing each physician instead of each group. Unit-level pricing beats group proxies.
  - **Nirvana**: 1.5bn dollar valuation, pricing trucking liability on telematics.
- **Agents can now read construction project paper at scale.**
  - **Shackleton**: 5M dollar seed led by Battery (2026-11-04). Agents run project administration across 1bn dollars+
    of project value in 15+ states.
  - **Bedrock Robotics**: 600M dollars at 4.1bn dollars (2026-10-26). Construction is absorbing AI fast.
  - **Document Crunch**: AI that reads construction contracts and drawings.

**Mechanism:** continuous machine-read evidence of how each counterparty is actually performing replaces the annual
questionnaire as the basis for pricing default risk.

**Why now.** (1) Frontier models can read the heterogeneous paper of small subcontractors (compiled financials, WIP
schedules, bank statements, schedules of values, pay apps, lien waivers, daily logs, email threads). Underwriting a
2M dollar drywall sub no longer costs the same analyst hours as a 50M dollar one. (2) Subcontractor distress is rising
with high rates, material tariffs and labour shortages, while sub-bond claims response is a known sore point. 82% of
contractors who started SubGuard programmes cited dissatisfaction with surety claims response (Cavignac). (3) Project
data now sits in APIs (Procore, Autodesk Build) instead of filing cabinets, so continuous monitoring is possible.

## Why the leader structurally can't follow

- **SDI carriers (Zurich SubGuard, Arch, Berkley, Liberty).** The product is built to underwrite the GC's own
  prequalification department, with the GC retaining a 750K dollar+ deductible (Arch minimum). Commonly cited floors
  are 75M dollars+ subcontract volume (NASBP), 100M dollars+ (Levelset) or 150M dollars+ revenue (Arch). A 30-150M
  dollar GC has neither the prequal staff nor the balance sheet for that retention. Serving it means the insurer
  underwrites and monitors every subcontractor itself, at SDI prices. That is a different product and cost
  structure, not a lower threshold.
- **Channel conflict with surety.** The same carriers are the largest contract-surety writers, and surety producers
  (NASBP) are organised around subcontractor bonds and publish material on SDI's drawbacks. A cheap mid-market SDI
  product would cannibalise sub-bond premium and antagonise the agents who place it.
- **Construction software (Procore, Oracle TradeTapp prequalification, Shackleton, Document Crunch).** To follow they
  would have to become licensed, capitalised risk-bearers. Grading subcontractors' default risk for the GC would also
  conflict with the subcontractors who use their networks.
- **Honest limit:** a carrier could stand up a dedicated AI-native mid-market SDI unit, or partner with Procore on an
  embedded programme. That is about a year of work against its own surety book, so wedge durability is 3, not 4.

## Who buys first, and how to reach the first ten

- **Buyer:** the CFO or risk manager of a GC with 30-150M dollars of annual subcontract volume (commercial,
  multifamily, healthcare and education building) in Texas, Florida, Georgia, the Carolinas or Arizona.
- **Trigger:** a sub default that turned into a months-long bond-claim fight; an owner or lender demanding default
  protection; a bid that cannot carry 1-3% sub-bond cost; or growth past the point where bonding every sub is
  uncompetitive.
- **Channel:** construction practices at retail brokers (Alliant, IMA, Cavignac, Marsh McLennan Agency, Lockton), who
  today have nothing to offer these GCs on SDI. Target lists come from ENR regional Top Contractors and AGC chapter
  rosters. Construction lenders and owners who require default protection are a second channel.
- **Data:** Procore and Autodesk Build APIs for project documents, plus each sub's own financial submission at
  enrolment. That is the same packet they give a surety today, so asking for it is normal.

## Expansion path to 1bn dollars+

1. Mid-market GC SDI in the Sunbelt.
2. Nationwide SDI from 20M dollars of volume up to the incumbents' floor. Then, as loss data compounds, compete for
   large-GC programmes on price and claims speed.
3. **The subcontractor graph becomes the asset.** Every sub is observed across many GCs and projects. That supports
   sub-side products: contract surety at the bond-size floor, contractor GL, and early-pay and payment-assurance
   financing priced on live performance.
4. Project-level products: builders risk, owner-side contractor-default cover, wrap-ups (OCIP/CCIP).
5. End state: a construction-risk carrier. US construction spending is about 2 trillion dollars a year, mostly
   subcontracted. At roughly 0.5-1.5% of enrolled subcontract value, SDI alone implies a multi-billion-dollar premium
   pool before adjacent lines.

## Defensibility once in

- **Cross-GC subcontractor performance data:** who paid suppliers late, whose crews shrank and whose pay apps
  front-loaded before a default. No single GC, surety or software vendor sees it across counterparties with loss
  outcomes attached.
- **Loss-control lock-in:** the early-warning feed becomes the GC's sub-management workflow.
- **Regulatory and capacity standing:** state filings, fronting and reinsurance relationships, and a claims record in
  a line with few players.

## Scores (rubric v3)

Wedge 3 · Pattern 4 · Market 4 · Defensibility 4 · YC-fit 4 · Founder-fit 4 → **composite 3.8**.

## Biggest risks and the first things to verify

- **Correlated tail.** Sub default is cyclical, and a construction downturn hits the whole book at once. Fronting and
  reinsurance capacity is the gating item. Model the 2008-2011 loss experience before pitching capacity.
- **Adverse selection.** GCs will want to enrol their weakest subs. Enrolment must be all-or-nothing per project, or
  priced per sub.
- **Data access.** Procore could restrict API use for underwriting, or partner with a carrier itself. Check API terms
  and whether Procore has insurance ambitions.
- **Verify next:** (1) whether any carrier launched a lower-threshold SDI programme in 2025-26; (2) real SDI rates as
  a percentage of enrolled subcontract value, from a construction broker; (3) the frequency and severity of sub
  defaults for 30-150M dollar GCs.

## Sources

- [NASBP: Subcontractor Default Insurance](https://www.nasbp.org/wp-content/uploads/2024/11/Subcontractor_Default_Insurance.pdf)
- [Arch SDI offering](https://insurance.archgroup.com/offering/subcontractor-default-insurance)
- [Procore/Levelset SDI explainer](https://www.procore.com/library/subcontractor-default-insurance)
- [Cavignac SDI paper](https://www.cavignac.com/wp-content/uploads/SUBCONTRACTOR_DEFAULT_INSURANCE.pdf)
- [ALKEME SDI guide](https://construction.aca.alkemeins.com/construction/coverage/subcontractor-default/)
- [360iResearch SDI overview](https://www.360iresearch.com/library/intelligence/subcontractor-default-insurance)
- [Kalepa, FinTech Global](https://fintech.global/2026/11/06/kalepa-raises-75m-to-scale-ai-across-insurance/)
- [Indigo Series B, Business Wire](https://businesswire.com/news/home/20260129339020/en/Indigo-Raises-%2450-Million-to-Modernize-Medical-Malpractice-Insurance-Nationwide), [Indigo premium doubling, Dealroom](https://dealroom.co/news/158466-indigo-doubles-malpractice-premiums-to-20m-on-automated-underwriting/)
- [Shackleton, Tech Startups](https://techstartups.com/2026/11/04/shackleton-ai-raises-5m-led-by-battery-ventures-to-automate-construction-projects-with-ai-agents/)
- [Deadfront November construction roundup (Bedrock)](https://www.deadfront.ai/blog/november-2026-ai-construction-roundup)
