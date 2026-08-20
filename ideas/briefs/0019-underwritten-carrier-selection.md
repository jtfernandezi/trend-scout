# Brief 0019 — Underwritten Carrier Selection

**Ledger id:** ts-0240 · **Date:** 2026-08-20 · **Composite:** 4.3
*(Novelty 5 · Why-now 5 · Market 4 · Defensibility 4 · YC-fit 4 · Founder-fit 4)*

---

## One line

Adjudicate, at tender time, whether a specific motor carrier on a specific lane is a defensible choice — and then **indemnify the freight broker** for the negligent-selection liability the Supreme Court handed the entire industry on 2026-05-14. Sell the decision with the risk attached, not a score with a disclaimer.

## In plain English

When a company needs a truckload of goods moved, a middleman called a freight broker decides which trucking firm actually hauls it. In May the Supreme Court ruled — unanimously — that if that truck kills someone, the broker can be sued for having picked a bad trucker. A legal shield the whole industry had leaned on for thirty years disappeared in a single day, and juries in truck crash cases now routinely award tens of millions of dollars.

Brokers make thousands of these picks a week, in seconds, over the phone and in chat messages. Most of their insurance policies specifically refuse to cover this exact kind of claim. There are companies that sell them safety scores for truckers, but every one of those companies puts a disclaimer on it: here is our number, the decision and the consequences are yours.

This company reads the complete safety record of every trucking firm in America — every roadside inspection write-up, every crash report, every lapsed insurance filing, every time a dangerous operator quietly shut down and reopened next week under a new name — decides in real time whether a given trucker is a defensible choice for a given load, and then signs its name to that decision and pays the claim if it turns out to be wrong. The broker is buying something nobody currently sells: the ability to stop worrying about it.

---

## The cross

**AI half — the predictive signal lives in text nobody could read.**

There are roughly 600,000 active US motor carriers. Everything that has been machine-readable about their safety — FMCSA's SMS / BASIC percentile scores — is already resold by half a dozen vendors, which is exactly why every existing product converges on the same number. The signal that actually distinguishes a dangerous small carrier lives in the parts that were never structured:

- **Roadside inspection narratives** — the free-text violation descriptions, which say something very different about a carrier than a percentile does
- **Crash reports and their preventability determinations**
- **Authority and insurance filing history** — cancellations, lapses, reinstatements, the rhythm of a carrier in trouble
- **Chameleon-carrier reincarnation** — the entity-resolution problem of recognising that a new DOT number, new name and new address is the same operation as the one that was shut down, which requires reasoning across officer names, addresses, phone numbers, equipment VINs and filing patterns. This is *the* named problem in truck crash litigation and it is fundamentally an entity-resolution task, not a lookup.
- **Civil dockets** — what has actually been alleged against this carrier and how it resolved

Frontier long-context reasoning at 2026 prices makes reading all of that per carrier, and re-reading it per tender, an operating expense. And the adjudication has to land inside the seconds a spot tender allows, which is a real engineering constraint, not a wrapper.

**Structural half — a dated, unanimous legal shock into an already-broken insurance line.**

**Montgomery v. Caribe Transport II, LLC**, decided **2026-05-14**, unanimous, with a Kavanaugh/Alito concurrence. Held: state-law negligent-hiring claims against freight brokers are **not preempted** by the FAAAA, because requiring a broker to use ordinary care in choosing which trucking company hauls a load "concerns" motor vehicle safety and therefore falls inside the safety savings clause. Brokers can no longer defeat these claims at the pleading stage in most jurisdictions.

It lands on a line that was already the worst in US commercial insurance:

- Commercial auto liability has been **unprofitable fourteen years running**, across **fifty-six consecutive quarters** of rate increases
- Nuclear verdicts (>$10M) up **52% year over year**; median nuclear verdict **$51M**, up from $21M in 2020; thermonuclear verdicts (>$100M) up 81%
- Average trucking verdict now **over $22M**; roughly one in four $10M+ auto verdicts involves a commercial carrier
- **Many broker policies exclude negligent-selection claims outright**

And Justice Kavanaugh, concurring, wrote the market gap into the opinion itself: *"state tort law can be unpredictable, and the costs to brokers of litigation and insurance may be significant even when brokers prevail in lawsuits."*

**Why it needs both halves.** Before May 2026 brokers had a preemption defence and no reason to buy risk transfer on this peril. Without frontier reasoning over unstructured records you can only resell FMCSA percentiles, which is what every vetting vendor already does and which is not a basis on which anyone should write a policy.

---

## The beachhead

**Buyer.** The risk or compliance owner at a **mid-market freight broker, $50M–$1B of gross revenue**, at their contingent-auto and E&O renewal following the ruling — the moment the carrier adds or reprices a negligent-selection exclusion and the number lands on their desk.

Why this segment and not the ends of the distribution: the giants (C.H. Robinson, TQL) have mature compliance systems, captive insurance and in-house counsel, and will absorb it. The one-to-fifty-person brokerages make carrier decisions across spot freight in informal Slack messages and spreadsheet notes — genuinely the most exposed, but they cannot pay. The mid-market has real premium, real volume, no in-house actuarial capability, and a board that has just been told the exposure is now unbounded.

**Trigger.** A single date. The defence vanished on 2026-05-14; the cost shows up in the 2026–2027 renewal cycle. Nothing about this requires the buyer to be educated.

**First product.** Per-load selection indemnity with a defined limit, sold as a rider priced per tender, on loads the engine clears. Deliberately: (a) you only take risk on decisions you made, (b) the price is a number the broker can pass into their rate, (c) every cleared load is a data point in a loss record nobody else is building, and (d) you can start on a fronted paper / MGA basis without a carrier balance sheet.

---

## Path to $1B+

1. **Selection indemnity per load.** Premium per tender, on a base of >$100B of gross brokered freight revenue annually.
2. **The whole contingent-auto tower.** Once you own the selection decision you are the natural writer of the broker's contingent auto and E&O — you have better information about their book than their incumbent carrier does, load by load. US commercial auto liability is a ~$60B/yr premium line.
3. **The shipper side.** Shippers face vicarious and direct negligent-selection theories too, and they select brokers the same way brokers select carriers. Same product, larger and better-capitalised buyer.
4. **The general form of the product.** "We made the selection decision and we carry it" generalises to every high-severity third-party selection: staffing agencies placing workers, general contractors selecting subs, home-services marketplaces dispatching tradespeople, healthcare staffing. Each has the same structure — a platform that picks, a catastrophic tail, and an incumbent that sells a score with a disclaimer.

---

## Why incumbents structurally can't or won't build it

- **The vetting vendors** — Highway, Carrier Assure, Truckstop/SaferWatch/RMIS, Assure Assist's MyCarrierPackets, DAT CarrierWatch — sell scores and monitoring on a SaaS seat and **expressly disclaim liability for the selection**. This is not an oversight; taking the tail would destroy both their gross margin and their balance sheet, and their pricing has no relationship to expected loss. A SaaS company cannot become an insurer without becoming a different company. Their own market positioning after Montgomery is "use us as part of a documented reasonable-care approach" — which is precisely an admission that the risk stays with the broker.
- **The AI-native trucking insurers** — Nirvana, HDVI, Koffie — raised real money and built real models, but they underwrite **the fleet's own driving behaviour** off telematics. That is the carrier's risk, not the broker's choice of carrier. They price a book annually; this prices a decision per load. Logged as ts-0255: all the trucking insurtech capital went to the fleet, which is exactly why the selection decision is still uninsured.
- **Legacy broker E&O and contingent-auto carriers** have no per-load data ingestion, no way to price a decision they never saw, and are responding to the ruling by **excluding the peril rather than pricing it**. That response is the opening.
- **The large brokers** could self-insure this for themselves and some will. None of them will sell it to competitors.

---

## What compounds

**A loss record indexed to decisions.** Every existing player knows which carriers had crashes. Only this company will know *which carriers it cleared, on which lanes, at which prices, and what happened.* That is a conditional loss distribution — P(severe claim | this carrier, this lane, this commodity, this cleared decision) — and it cannot be reconstructed from public data, purchased, or inferred by a vendor that never took the risk. Three years of it is a pricing moat that a score vendor cannot cross without first losing a lot of money.

Secondary: contractual position. Once the indemnity is written into the shipper-broker agreement, removing it is a legal project rather than a churn decision.

---

## Biggest risk, honestly

**You are selling a promise to pay on a tail that develops over three to five years, into a severity distribution that is still getting worse.** Frequency is the easy half and it is the half the model is good at. Severity is set by juries, plaintiff-bar investment and venue, and it has compounded relentlessly — median nuclear verdict from $21M to $51M in five years. Get frequency right and severity wrong and the first thermonuclear verdict on a load you cleared takes the company with it. The mitigations are structural rather than clever: hard per-load limits from day one, aggressive reinsurance from the first policy, venue-aware pricing, and resisting the temptation to grow into states where the severity distribution is unmodellable.

Secondary risks: **the exclusion may not spread** — if carriers surcharge negligent selection rather than exclude it, the incumbents price through and this becomes a feature of a broker E&O program rather than a company. **Regulatory reversal** — Congress has been lobbied on FAAAA preemption before and the trucking and brokerage lobbies are now unified and motivated; a statutory fix would remove the peril entirely, though realistically not before 2028. And **adverse selection** — the brokers most eager to buy indemnity are the ones who know their vetting is worst, which has to be priced at the account level, not just the load level.

---

## What would kill it in three phone calls

Pull five broker contingent-auto or E&O policy forms written after 2026-05-14 and read the exclusions. Then call three transportation insurance brokers and ask one question: **are carriers excluding negligent selection, or surcharging it?**

If they are excluding it, there is an uninsured peril with a Supreme Court-dated trigger and a real company here. If they are surcharging it, the incumbents intend to price their way through and this is a feature, not a business. That answer is available this week and it is worth more than any further desk research.
