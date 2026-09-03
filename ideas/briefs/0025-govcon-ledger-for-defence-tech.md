# Brief 0025 — The government-contract ledger

**Ledger id:** ts-0308 · **Date:** 2026-09-03 · **Composite:** 4.3 · **Rubric:** v3

---

## 1. The one-line thesis

An AI-native accounting system of record that makes a twelve-person defence-tech company DCAA-adequate
from day one — judging every transaction against FAR Part 31 and the contract, maintaining segregated
direct and indirect cost pools and compliant timekeeping, producing provisional billing rates and the
incurred-cost submission, and standing behind the pre-award accounting system survey — instead of the
hourly govcon CPA firm or the six-figure Costpoint implementation that are today's only two answers.

## 2. The problem, stated exactly

A DoD SBIR **Phase II is typically $1.0-$1.5M** and is a **federal cost-type contract carrying the same
accounting standards as a $50M prime**. Before the award, DCAA runs a pre-award accounting system
survey (SF 1408) and asks whether the company can:

- allocate costs logically among contracts,
- exclude unallowable costs (FAR Part 31),
- record employee labour hours and dollars by contract under a compliant timekeeping regime,
- segregate direct from indirect costs into defensible pools,
- produce timely, accurate cost accounting data — and defend it years later.

A hardware startup of twelve people has none of this and no govcon controller. Today it either retains
a specialist accounting firm by the hour (Team 80, Jameson, Redstone GCI, Cherry Bekaert, Amerifusion)
or buys Deltek Costpoint, whose realistic entry cost is a six-figure implementation through a VAR
channel on a timeline the award will not wait for.

## 3. Why this is now a software problem

The 2026 AI-native ERP cluster proved that a general ledger can be *constructed* by agents rather than
maintained by bookkeepers. This is that mechanism pointed at a ledger whose posting rules are natural
language regulation rather than revenue recognition:

- **Allowability judgment per transaction.** FAR Part 31 plus the contract's own terms plus CAS where
  applicable plus the company's disclosed accounting practice — applied to every card swipe, invoice
  and payroll line, because the classification is what determines billable revenue.
- **Pool and base design.** Indirect rate structures (fringe, overhead, G&A, sometimes material
  handling) are a modelling decision with millions of dollars of recovery riding on it, currently made
  once by a consultant and then frozen.
- **The artifacts.** Provisional billing rate proposals; the incurred-cost submission (the ICE model)
  under FAR 52.216-7; contract briefs; closeouts.
- **Audit defence.** Answering a DCAA auditor's questions against the company's own five-year-old
  transaction record — long-context retrieval and argument over a corpus the system already holds.

None of this is a wrapper. The product *is* the judgment; without it the company is a chart of accounts.

## 4. Why now

- **Defence and dual-use venture investment exceeded $15B in 2025 and is pacing past $18B in 2026**;
  cumulative funding across the top 60+ defence startups is over **$33B**.
- **The YC Summer 2026 batch alone has eight defence companies**, and the batch's industrials share
  jumped from 12.8% to 23%. Hadrian's $1.37B Series D (2026-08-06) is the ceiling of this cohort; the
  floor is hundreds of companies about to hit their first cost-type award.
- Every one of them meets the pre-award accounting system survey at the same moment, with the same
  two bad options.
- And the enabling half is proven this month: **Rillet** ($100M Series C at $1B on 2026-08-19; 600+
  customers; ARR doubled in three months; Mercor running past $2B ARR with a finance team of three),
  **Campfire** ($100M+, Accel and YC), **DualEntry** ($90M Series A, Lightspeed and Khosla) — three
  funded companies at the identical job inside a field of 53 tracked AI-native finance companies.

## 5. Beachhead and trigger

**Buyer:** the founder or first finance hire at a twelve-to-eighty-person defence or dual-use hardware
startup, venture-backed, with no govcon controller.

**Trigger:** the pre-award accounting system survey — a DoD SBIR Phase II, an OTA converting to a
cost-type follow-on, or a first cost-reimbursable prime or subcontract.

**First ten:** they are all in the same three rooms. The defence-tech seed investors, AFWERX/DIU cohort
lists, the YC defence companies, and the primes' supplier onboarding. This is one of the most
concentrated, most reachable buyer sets in the economy right now.

## 6. Why the leaders structurally cannot follow

| Who | Why they can't |
|---|---|
| **Deltek (Costpoint)** | Revenue model is a six-figure implementation sold and delivered through implementation partners, with the complexity itself as the product. Automating compliance destroys both the partner channel and the seat count. Deltek is PE-owned and levered, which makes deliberate cannibalisation harder to authorise, not easier. Their economics simply cannot reach a twelve-person company. |
| **The govcon CPA firms** | Their revenue is billable partner and staff hours; their liability model is a partner signature on an engagement. Neither survives being productised into a system that takes *standing* responsibility for a client's accounting-system adequacy. This is the same block that makes them profitable today. |
| **Rillet / Campfire / DualEntry** | FAR allowability, indirect pools, incurred-cost submissions and a government audit posture are a second ledger and a second product, sold to a buyer their entire go-to-market points away from. Not a dimension, not a config option. |
| **Unanet, JAMIS, PROCAS, BigTime** | Mid-market incumbents built on the same seat-and-implementation logic, a generation behind on the reasoning layer and structurally unable to price at startup scale without cannibalising their own base. |

**Occupancy result.** Search surfaced only the legacy vendors and the CPA firms selling the work as
labour. No AI-native occupant found — see the risk section, because this is the idea's live danger.

## 7. Expansion path to $1B+

1. **Beachhead:** defence-tech startups at their first cost-type award. Small in dollars today; the
   fastest-growing cohort in the economy, and one that compounds — today's twelve-person company is
   tomorrow's Anduril, and the ledger goes up with it.
2. **The long tail:** the small and mid-sized businesses across the whole federal contracting economy
   who are priced out of Costpoint and are currently served by spreadsheets and fractional CPAs.
3. **Up-market displacement:** Costpoint and Unanet, in a category whose leader was taken out at
   **$2.8B** a decade ago and has not been meaningfully rebuilt since.
4. **The rest of the back office the ledger already holds the data for:** pricing and proposal cost
   volumes, subcontractor flow-downs, contract closeouts, rate negotiations and audit defence, across a
   federal contracting economy obligating well over **$700B a year**. The company that holds every
   contractor's real cost structure is the one that can price a bid correctly — which is a far larger
   business than accounting.

## 8. Scores (rubric v3)

| Dimension | Score | Reason |
|---|---|---|
| Wedge durability | 4 | Deltek's price floor and VAR channel, the CPA firms' hourly-billing and partner-liability model, and a second-product problem for the AI-native ERPs. Not 5: Deltek could acquire rather than build. |
| Pattern strength | 5 | Three funded companies at the identical job with disclosed traction (Rillet 600+ customers and ARR doubling in three months; Campfire; DualEntry) inside a 53-company field, plus a defence cohort growing at $18B/yr. |
| Market / venture scale | 4 | Large, expanding, with a clear path from a small beachhead through a $2.8B category into the federal contracting back office. |
| Defensibility | 4 | An accepted system-adequacy posture per customer, an accumulated DCAA question-and-response corpus, and cross-contractor rate-structure benchmarks nobody else can assemble. Switching cost once the books are inside is extreme. |
| YC-fit | 5 | Defence plus AI-native back office; squarely in current RFS thinking; an obvious fundable thesis with a crisp trigger. |
| Founder-fit | 4 | Deep regulatory-reasoning engineering and a real system to build, though less technically ambitious than a physical-world product. Operator's GTM edge fits a concentrated buyer set. |
| **Composite** | **4.3** | |

## 9. Kill checks survived

1. **Config change.** No. Deltek would have to break its channel and its price floor; the AI-native
   ERPs would have to build a second ledger and a defence go-to-market; the CPA firms would have to
   stop billing hours and start carrying standing liability.
2. **Occupancy.** No AI-native player found in the segment — only legacy vendors (Deltek, Unanet,
   JAMIS, PROCAS, BigTime, XTIVIA) and CPA firms doing it by hand.
3. **Segment viability.** The buyers are more concentrated and easier to reach than almost any other
   segment in the book, and the expansion path clears the $1B gate through the federal back office
   rather than through the beachhead alone.

## 10. Honest risks

- **Somebody is already building this in stealth.** This is the most obvious unclaimed idea in the
  hottest sector in venture. The occupancy search is clean, but announcements lag builds by six to
  twelve months. **Speed is the strategy**, and the first thing to do is not build — it is to call ten
  defence-tech CFOs and ask who has pitched them this quarter.
- **The exit may be an acquisition, not a category.** Deltek's cheapest answer is to buy. That caps the
  outcome unless the beachhead widens past defence before the offer arrives.
- **Taking responsibility for adequacy is a real liability.** "Standing behind the pre-award survey"
  needs a precise legal formulation — attestation, indemnity, or partnership with a licensed CPA firm.
  Get that structure right before it is marketed, not after.
- **Regulated-buyer patience.** Defence startups move fast, but a wrong classification surfaces as a
  disallowed cost years later. The product needs to be conservative where it is uncertain, and to show
  its reasoning, or the first audit finding kills the reference.

## 11. What to do in the first 30 days

1. Ten calls to defence-tech founders and fractional govcon CFOs: what did the pre-award survey cost
   them in dollars and weeks, and who has already pitched them.
2. Build the allowability engine against FAR Part 31 and one real chart of accounts, and score it
   against a CPA firm's actual classifications on a year of transactions. That accuracy number is the
   whole product.
3. Recruit or partner with one licensed govcon CPA who will sign, so that the liability structure and
   the first three customers arrive together.
