# Brief 0018 — Firm Water Underwriting

**Ledger id:** ts-0239 · **Date:** 2026-08-20 · **Composite:** 4.7
*(Novelty 5 · Why-now 5 · Market 5 · Defensibility 4 · YC-fit 4 · Founder-fit 5)*

---

## One line

An underwriter that sells a Western city, factory or data centre a **guaranteed volume of wet water at a fixed price for a term**, and sources it from a large pool of small agricultural rights via fallowing, forbearance and purchase — taking the consumptive-use, transferability and approval risk onto its own balance sheet, because satellite evapotranspiration and full-corpus reading of state water law finally make a thousand small rights individually priceable.

## In plain English

In the American West the right to use water is owned and sold separately from the land it sits on. Moving it is the problem. Before a farmer can sell or lease water to a city, somebody has to prove to a state official that the farm genuinely consumed that much water and that no neighbour downstream will be shortchanged — a proof that takes one to four years and costs between fifty thousand and half a million dollars in hydrologists and lawyers. That cost is fixed regardless of deal size, so only enormous transactions ever happen and almost all the water in the West sits frozen with whoever happened to claim it a century ago.

Two things just changed. Satellites can now measure how much water each individual field actually consumed, and — critically — the federal government has adopted that satellite measurement as its official accounting method. And frontier AI can read the entire body of a state's water law, every past transfer application and every ruling on every objection, and tell you what will and won't get approved.

So this company buys or rents water from thousands of small farmers at once, and sells a buyer a promise: this many gallons, this price, guaranteed for ten years, and we carry the risk that the paperwork falls through. Buyers pay gladly, because in Arizona today you cannot get permission to build anything at all without proving you have a hundred-year water supply — and the water is being taken away from farmers in the same valley at exactly the same moment.

---

## The cross

**AI half — two capabilities that arrived together.**

*Measurement.* In September 2022 Reclamation and the Upper Colorado River Commission adopted **eeMETRIC** as the standard method for measuring agricultural evapotranspiration and consumptive use, chosen on accuracy, scientific consistency, cost and timeliness. OpenET — a NASA / Desert Research Institute / Environmental Defense Fund / Google collaboration — publishes field-scale ET for the entire Western US as a public good. The single most contested and expensive element of any transfer proof, *how much water did this field actually consume*, is now computable per field, per year, per crop, and computed by the method the referee already accepts.

*Adjudication.* The other half of a transfer proof is legal: does this right have a priority date and a place of use that permit the move, what did the state engineer do the last hundred times someone tried something similar, which downstream users will protest and on what grounds, what does the irrigation district's own rule set allow. That is an enormous unstructured corpus — decrees, applications, engineer's analyses, protest rulings, district bylaws — and until frontier long-context reasoning got cheap in 2026 the only way to read it was to hire someone who had spent thirty years in one state. This is the piece that turns measurement into a *price*.

**Structural half — the largest involuntary water reallocation in modern US history, dated.**

Every rule governing the Colorado River expires **2026-12-31**: the 2007 Interim Guidelines, the 2019 Drought Contingency Plans, the 2023 near-term conservation measures. The seven basin states missed their **2026-02-14** deadline to agree replacement rules. Reclamation published the **Final Environmental Impact Statement on 2026-07-31** and will impose an alternative for the 2027 operating year. The alternatives range roughly **15–35% cuts to Central Arizona Project allocations** depending on Lake Mead levels; the states' own offers were Arizona 27%, Nevada 17%, California 10%.

Meanwhile the demand side of the same basin is paying whatever it takes. Google is guaranteed 1M gallons/day at its Mesa data centre, rising to 4M on milestones. Mesa passed a Large Customer Sustainable Water Allowance ordinance putting mega-users on a budget. Arizona created the **ADAWS** designation specifically so large users can assemble a supply from limited groundwater plus alternative sources — CAP water, effluent, transported groundwater, surface water. And California's SGMA is doing the same thing more slowly to every groundwater basin in the state, with allocations forming now and an estimated 500k–1M acres of San Joaquin Valley ground that must come out of production.

**Why it needs both halves.** Without the January 2027 cut there is no forced seller and no urgent buyer — the market has been technically possible and commercially inert for decades. Without the AI you can only do what WestWater does: a handful of large deals, priced by hand, at $800M of cumulative volume across twenty-five years.

---

## The beachhead

**Buyer.** The developer or utility that cannot break ground without an Assured Water Supply or ADAWS designation — a data centre, semiconductor fab or municipal provider in the Phoenix Active Management Area or Pinal County — at the moment its CAP allocation is cut for the 2027 operating year. This buyer has a construction schedule, a financing milestone and a permit they cannot obtain, which is the correct shape of urgency.

**Supplier.** The Pinal County or Central Arizona Irrigation District grower taking the first federal cut, who has an allocation being reduced and no mechanism to monetise what remains. Their alternative today is to fallow for nothing.

**First product — deliberately narrow.** A **single-buyer, single-district forbearance package**: option the fallowing of a defined block of acres for a defined term, prove the consumptive use per field from eeMETRIC-class ET, carry the district and ADWR approval risk, and deliver a fixed volume at a fixed price against a contract the buyer's lender will accept. Not a marketplace, not a data product. One deal, on the balance sheet, in one district — because the only thing that compounds here is a record of what actually got approved and why, and you only get that by taking positions.

---

## Path to $1B+

1. **Arizona firm supply.** The CAP cut alone frees agricultural water in a market where industrial buyers face a hard permitting gate. Spread on intermediated acre-feet plus option premia on forbearance.
2. **The rest of the Lower Basin, then the Upper.** Nevada and California under the same imposed rules; Upper Basin states have been investigating a conservation market that pays for reduced consumptive use while keeping rights with the land — which is precisely a forbearance product needing exactly this measurement.
3. **California SGMA.** Every basin must reach sustainability, allocations and pumping-credit markets are forming now, and the same ET measurement and the same approval-corpus reasoning transfer directly. This is the largest single expansion and it is on a 2040 clock, so it runs for the life of the company.
4. **The asset class.** Western water rights are a >$1T asset base whose annual transaction volume is only a few billion *because* transaction cost suppresses it. An intermediary that collapses that cost does not take share of a market — it creates most of the market it then takes share of. The Nasdaq water pricing index existing at all shows the financialisation demand is there and starved of underwritable supply.
5. **Adjacent supply.** Treated produced water (22M bbl/day in the Permian, TCEQ opening land application), municipal effluent and reuse become sourceable inventory once you are the entity that can prove and permit a volume.

---

## Why incumbents structurally can't or won't build it

- **WestWater Research** is the market leader and it is an *advisory firm*. Acquired by Aetos Capital in March 2023, exclusive data provider for the Nasdaq water pricing index, selling valuations, appraisals, marketing and transaction advisory off the Waterlitix comps database. It has advised on roughly **$800M of transactions in twenty-five years** — a number that tells you exactly what a billable-hour model does to deal count. It sells an opinion. It never holds the position, so it never accumulates a loss record, and its economics forbid the small deal.
- **Water funds** (Water Asset Management, Greenstone, the former Vidler Water now inside D.R. Horton) *do* take positions, and they are the real competitor. But they are human deal teams doing a handful of large trades with long horizons. A fund that does five deals a year cannot underwrite four thousand forty-acre rights, and its cost structure gives it no reason to try.
- **State engineers, ADWR and Reclamation** are referees. They can approve a transfer; they cannot originate one, take a spread, or warrant delivery.
- **Utilities and irrigation districts** buy and hold water for their own service areas. Making a market in it is outside both their mandate and their balance sheet, and politically radioactive for an elected board.
- **The agtech and remote-sensing companies** that hold the ET data (and OpenET, which gives it away) sell measurement. Measurement is an input to this business, not the business — the value is in carrying the risk that the measurement supports a permit.

---

## What compounds

Three things, in increasing order of durability:

1. **A proprietary approval record.** Every application filed, every protest resolved, every district negotiation — outcomes with reasons, at a volume no advisory firm will ever match, feeding directly back into pricing.
2. **A book of options on rights.** Once you hold forbearance options across a district, you are the only party who can assemble a large firm volume quickly, and the marginal deal gets cheaper for you and no cheaper for anyone else.
3. **Being the counterparty of record.** A lender financing a data centre needs a water contract it can underwrite. Once one lender has accepted your form, the next deal is a document, not a negotiation.

---

## Biggest risk, honestly

**Politics, not hydrology.** A state engineer or an irrigation district board can simply refuse to move water, and they answer to farming communities for whom selling water to Phoenix is a betrayal. Arizona's history of ag-to-urban transfers includes real, remembered damage to rural counties, and "buy and dry" is a phrase that ends meetings. The model can be exactly right about consumptive use and still lose, one county at a time, on a vote.

Two things partially mitigate it and both should be designed in from day one. First, **forbearance and fallowing rather than permanent severance** — the right stays with the land, the farmer keeps the asset, and the political objection weakens dramatically. Second, **pay the district, not just the farmer**; the entities that can block you are the ones whose revenue base you are shrinking.

Secondary risks, in order: the Record of Decision could be litigated by a basin state and stayed, delaying the forcing event by a year or more; the capital requirement is real and equity-inefficient early, so the first fund structure matters as much as the first product; and a large fund with a strategic partner could copy the measurement approach — though not the approval record, which is why the first hundred filings matter more than the first ten deals.

---

## What would kill it in one afternoon

Reclamation's Final EIS of 2026-07-31 contains modelled shortage volumes by alternative. Take the CAP agricultural pool, take the cuts under the two most likely alternatives, and compute the acre-feet actually freed in Pinal and Central Arizona for 2027. Then pull the last three years of Phoenix-area municipal and industrial water purchase prices from public records and district filings.

**Freed volume × spread. Under roughly $50M/yr in Arizona alone, this is a fund, not a company. Over $200M/yr, it is a company.** Two days of reading decides the shape of the business, and it should be done before anything else.
