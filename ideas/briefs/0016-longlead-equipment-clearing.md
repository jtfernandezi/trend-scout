# Brief 0016 — Slot Exchange: a clearing market for long-lead electrical equipment positions

**Ledger id:** ts-0202 (fork: ts-0203) · **Date:** 2026-08-15 · **Composite:** 4.6

---

## The one-line version

The scarcest asset in the American build-out is a paid-for place in an electrical-equipment
factory queue, and right now a large number of those places are stranded in the hands of
projects that no longer exist while other projects are having their energization dates set by
the same equipment. They cannot trade, because every unit is engineered-to-order and nobody
can answer quickly whether one buyer's half-built transformer can be made to satisfy another
buyer's site. Build the venue that answers that question in minutes and takes a cut of the trade.

## In plain English

Connecting a factory or a data centre to the electricity grid needs a transformer — a piece of
equipment that can be the size of a small house and costs millions. Today the wait for one is
two to three years, and the only way to get in line is to put money down years in advance to
reserve a slot in a manufacturer's production schedule. Meanwhile, somewhere between a third
and a half of the data centres planned for this year are being delayed or cancelled outright.
So there are now two groups of companies: one holding expensive places in line they no longer
need, and one desperate for exactly that. They can't simply swap, because each machine is built
to the buyer's own hundred-page list of requirements, and working out whether one company's
part-built unit could be adapted for another company's site is a job that takes a specialist
engineer weeks — so it never happens, and the slot is written off. This company is a
marketplace where that question gets answered in minutes by a machine, so the trade can happen,
and it earns a fee on every one.

---

## The cross

**AI half — machine-computed specification equivalence, at deal speed.**
A power transformer is defined by a 100–300 page bespoke buyer specification plus drawings, test
requirements and site constraints: MVA rating and impedance, BIL, winding and vector
configuration, tap changer type and range, bushing arrangement, cooling class, seismic
qualification, sound level, footprint and clearances, protection and monitoring, and the buyer's
own accumulated standards clauses. Deciding whether an in-flight unit can be made to satisfy a
different project — and what engineering change that would take — is exactly the judgement an OEM
application engineer makes over weeks, across dense, heterogeneous, partly-scanned, sometimes
self-contradictory documents.

Two things in the last fortnight changed the economics of doing that by machine. **DeepSeek
V4-Pro went GA on 2026-08-12** with a 1M-token context, 384k-token output and explicit
low/high/max reasoning-effort tiers, so a max-effort pass over an entire specification *pair* is
now a routine, cheap operation rather than a research project. And **OpenAI and Cerebras
previewed GPT-5.6 Sol Ultrafast on 2026-08-13** at a vendor-claimed 750 output tokens per second
against ~53 standard — up to 14× — which collapses a long reasoning trace from roughly six
minutes to under thirty seconds. The product is not "we can assess interchangeability"; it is
"we can assess it inside a phone call while both counterparties are still on it."

**Structural half — the equipment position became the scarce asset, and it is stranded.**

- Switchgear lead times moved **beyond 60 weeks**, from an average of 44 in late 2025.
- Standard power transformers average **128 weeks**; generator step-up transformers **144 weeks**;
  high-capacity units reach **four years**.
- GSU demand rose **274%** and substation transformer demand **116%** between 2019 and 2025.
- Data centres alone need roughly **74 GW of three-phase transformer capacity in 2026 — about the
  same as everything replaced annually across the entire US grid.**
- Manufacturers **hold a production slot for 10–30% of equipment cost**, and without a reservation
  the nominal lead time extends a further 8–16 weeks. *The slot is already a paid-for, priced,
  financially distinct instrument. Somebody has already written the cheque.*
- The float exists **now**: data-centre project cancellations **more than quadrupled to 25 in 2025**
  from six in 2024; **30–50% of the 2026 US pipeline** is expected to be delayed or cancelled; only
  about **a third** of announced capacity is actually under construction.
- Roughly **$2B** of North American manufacturing expansion (Hitachi Energy, Siemens Energy,
  Prolec GE, Virginia Transformer) **does not arrive until 2028**, so no new supply relieves this
  before then.

**Neither half works alone.** Without frontier specification reasoning, the market cannot clear at
any price — this is the reason the used-equipment brokers only trade what they physically hold and
inspect. Without the 2026 collision of record lead times and a collapsing project pipeline, there
is no simultaneous population of stranded sellers and desperate buyers to clear.

---

## The insight the run actually turned on

The industry is having a live argument about the root cause, and the dissenting side is right in a
way that names the company. Several market participants argue in print that **there is no true
transformer manufacturing shortage — that procurement practice is the bottleneck.** Read that
mechanically: buyers place duplicate speculative reservations across multiple OEMs to hedge; OEMs
cannot distinguish a hedge from a real order; so they quote scarcity lead times and price
accordingly; which makes buyers hedge harder. That is a textbook bullwhip driven by information
asymmetry, and it is the same phantom-demand pathology this ledger already identified one layer up
in the interconnection queue (ts-0064) — but here the asset is an ordinary private commercial
contract rather than a regulator-issued privilege.

**A neutral clearing party with credible specification reasoning fixes an information failure, not
a manufacturing one.** That is why this is a startup and not a capex programme.

This idea also came directly out of a kill. **ts-0218** — market maker in interconnection queue
position — died because ISOs added site-control, deposit, withdrawal-penalty and
non-transferability rules *specifically* to kill queue speculation: the venue that issues the asset
deliberately made it untradeable. The equipment position is the same kind of scarce right, one link
downstream, and nobody has made it untradeable on purpose.

---

## Beachhead → $1B+

**Beachhead.** The development or procurement lead at a data-centre or industrial developer, in the
week their project goes on hold or their lease commencement date moves. They are holding a slot
reservation worth 10–30% of equipment cost plus a delivery position, and today their only options
are to eat it, to carry it against a future project, or to call a used-gear broker who will not
touch an undelivered order. On the other side: any developer, colo operator or utility whose
energization date is currently set by a 128–144 week transformer, for whom weeks of schedule are
worth millions.

Land it with a *service* before a venue: run the first matches by hand, with the model doing the
specification comparison and a human signing the recommendation. That is how you build the corpus.

**Expansion path.**

1. **Adjacent long-lead items.** Switchgear, gensets, HV breakers, turbines — same buyers, same
   dynamic, wider inventory, more matches per buyer.
2. **Financing the positions.** A slot reservation in a 128-week market is a deep in-the-money
   option that nobody has underwritten. Once you can value a position, you can buy it — take the
   stranded position onto your own balance sheet at a discount and sell it into the shortage.
   This is where the take-rate business becomes a capital business, and where the margin is.
3. **Supply-side discovery.** The accumulated specification corpus lets you identify manufacturers
   whose real process capability could serve a spec nobody currently asks them about — creating
   effective new supply from latent capacity. (This absorbs ts-0217, killed as a standalone.)
4. **The manufacturing fork.** With enough of the corpus, you know which requirements across
   American buyers are load-bearing engineering and which are inherited ritual — which is exactly
   what you need to build to stock. That is ts-0203.

**Why the market is big enough.** Global grid equipment runs well above $50B and is compounding at
double digits; hyperscaler capex alone is ~$785B in 2026 heading toward ~$1T in 2027; data-centre
site value in the AI build-out is quoted above $10M per MW of energized capacity, and the transformer
is the thing that sets the energization date. A venue that clears even a modest share of equipment
positions, and then finances them, is a multi-billion-dollar company. The politically protected
second market is larger still: data-centre orders are crowding ordinary utility storm-replacement
and new-housing connections out of the same factory queue, and that becomes a public fight in 2027.

---

## Why incumbents structurally can't or won't build it

- **The used-equipment brokers (Sunbelt Solomon, Transformer Exchange, Machinio, Demo Dynasty,
  PowerGen Enterprises)** are physical-inventory businesses. They buy plant-closure lots,
  reconditioned units and surplus-in-crate gear, and they trade what they have inspected. They have
  no relationship with factory production queues, no ability to reason about a specification they
  have not seen, and no reason to acquire one.
- **The software layer says in print that it is not this.** Build.inc's own published position is
  that it turns equipment procurement into "a tracked development workflow," that "AI cannot
  manufacture transformers," and that human judgement remains central to negotiations, approvals and
  capital decisions. It ingests utility correspondence and vendor quotes and flags conflicts — it
  explicitly does not broker, match or transact. Field Materials serves contractor materials buying.
  Korean Transformer is a single-country sourcing agency, not a clearing venue.
- **The OEMs (Hitachi Energy, Siemens Energy, Prolec GE, Virginia Transformer) are structurally
  hostile.** A transparent secondary market reveals their pricing, prices their backlog against them,
  and cannibalises new orders; their rep and distributor networks are compensated on new sales. They
  will tolerate it as a consent-granting counterparty long before they will build it.
- **The buyers cannot build it.** The asset only exists in a pool. Each developer holds one book,
  they are direct competitors for the same slots, and they will not show each other order positions —
  but they will show a neutral counterparty under NDA. That asymmetry is the whole business.

---

## Kill attempts survived (3)

1. **"The secondary market already exists."** It exists for *used and surplus physical equipment*,
   not for undelivered orders and reserved production slots. Every player found buys and resells
   inventory it holds. Nothing found trades a position in a factory queue.
2. **"Build.inc or a procurement SaaS will just add it."** Build.inc's published scope is visibility
   and decision support, and it explicitly disclaims the transaction and the judgement. Adding a
   clearing venue is a different business (custody, escrow, counterparty risk, contract assignment,
   two-sided liquidity), not a feature.
3. **"Isn't this ts-0064 / ts-0069 again?"** No. Those are risk models sold to observers — a
   probability of energization for utilities, PUCs and lenders; a correlated delay distribution for
   insurers. This is a transactional venue that moves physical positions between principals and
   earns on the move. Different object, different buyer, different revenue mechanism. The adjacency
   is real and should be named honestly: a founder could do ts-0069 or this, not both.

---

## Scores

| Dimension | Score | Reasoning |
|---|---|---|
| Novelty | 4.5 | Three honest kill attempts found only used-gear brokers and a visibility SaaS that disclaims the transaction in writing |
| Why-now | 5 | Lead times re-based inside 2026 (switchgear 44→60+ weeks) at the exact moment 30–50% of the pipeline began stranding positions; the reasoning capability priced in the last fortnight |
| Market / venture-scale | 5 | $50B+ equipment market compounding at double digits, sitting on the critical path of ~$785B of 2026 capex |
| Defensibility | 4 | The specification corpus plus the record of which substitutions were actually accepted by which buyer and AHJ is not otherwise obtainable, and two-sided liquidity compounds |
| YC-fit | 4.5 | AI-native, physical-world infrastructure, adjacent to the Fall 2026 "New Operating Systems for the Physical World" request, obviously fundable |
| Founder-fit | 4.5 | Genuinely hard multimodal engineering-reasoning work plus a relationship-heavy GTM into a closed industry — the operator's strategy and GTM edge is load-bearing here, not incidental |
| **Composite** | **4.6** | |

---

## Biggest risks, honestly

1. **Assignability — this is the whole thing.** OEM consent, buyer standards approval and site
   re-permitting can each block a transfer. If purchase orders and slot reservations require OEM
   consent that is routinely withheld, the venue is dead regardless of how good the matching is, and
   the company becomes ts-0203 instead.
2. **Physical non-fungibility.** A unit positioned at site A cannot always redeploy to site B without
   re-permitting and reshipping — one of the sources that makes slots valuable to trade also notes this
   friction. Trading the *undelivered* position is cleaner than trading delivered iron, and the model
   should be pointed there first.
3. **Liquidity cold start.** Two-sided markets in high-ticket, low-frequency, relationship-driven
   goods are hard to start. Mitigation: begin as a brokered service with the model in the loop, and
   be willing to take positions onto your own book to make the first markets.
4. **Verification liability.** If you say a unit fits and it does not, someone loses a substation.
   Expect to carry professional liability from day one, and to structure the first deals so an OEM or
   an independent engineer countersigns the equivalence finding.

---

## The one thing to do next

**Read six contracts, not six more articles.** Pull three transformer purchase agreements and three
slot reservation agreements and find the assignment, novation and OEM-consent clauses. If assignment
requires consent that is routinely withheld, this idea is dead and the operator should look at
ts-0203. If it is consent-not-unreasonably-withheld, or reservations are freely transferable, the
venue is live and the next call is to a data-centre development lead holding a stranded position.

That is a week of legal review and one phone call, and it decides the company.
