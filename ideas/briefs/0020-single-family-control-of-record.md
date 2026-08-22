# Brief 0020 — Control of Record

**Ledger id:** ts-0256 · **Date:** 2026-08-22 · **Composite:** 4.3
*(Novelty 5 · Why-now 5 · Market 4 · Defensibility 4 · YC-fit 4 · Founder-fit 4)*

## One line

An adjudicated, continuously maintained national map of *investment control* over US single-family homes, sold as a per-acquisition determination with an indemnity behind it — because from 2027-01-07 a purchase by an entity controlling 350 or more homes is a $1M-per-violation offence, and nobody can currently tell who is over the line.

## In plain English

From January 2027 it becomes illegal in the United States for a big landlord to buy another single-family house if it already controls 350 or more of them. The fine is up to a million dollars per house, or three times the purchase price, whichever is larger. The problem is that almost nobody can actually tell whether they are over the line: American rental houses are held through tangled chains of shell companies, funds and joint ventures recorded in more than three thousand separate county offices, and the law counts every one of those chains together — including houses owned by entities you merely manage, or in which you hold more than a quarter of the equity.

This is a company that reads all of those records, works out who really controls what, and gives a buyer a written determination before they sign — and then stands behind that determination with an insurance-style guarantee if it turns out to be wrong. Large landlords, their lenders, and the title companies who close the deals all pay for that certainty, because the alternative is betting a nine-figure penalty on a lawyer's best guess. Along the way the company builds the thing that has never existed: a real map of who owns and controls America's rental housing.

## The cross

**The AI half.** Two capabilities arrived in the same quarter. First, long-horizon agents that hold a whole corpus for a single decision — Grok 4.6 (2026-08-12) completing jobs across roughly 53 turns and ~0.5B input tokens, Claude Opus 5 leading the agentic index, Fable 5 shipping 1M-token context for Mythos-class work. Resolving one institution's full control graph is not a document task; it is a *corpus* task, and it is now economic to do end to end rather than in human-reviewed fragments. Second, frontier document reasoning is finally good enough to apply a statutory test with eleven carve-outs to genuinely heterogeneous source text: 3,100+ county deed and assessor records with no common grantee format, fifty state entity registries, operating agreements and limited partnership agreements, SEC and state fund filings, and the deed and governance language that distinguishes a passive limited partner from an entity with investment control.

Nobody built this map before because nobody had a reason to know how many homes an entity controls, and the cost of finding out by hand — call it $500 to $5,000 per entity chain — exceeded the value of the answer. **The statute created the reason and the models collapsed the cost in the same quarter.** That is the whole cross, and neither half works alone: without the law there is no buyer, and without the models there is no product, only a consulting engagement.

**The structural half.** The 21st Century ROAD to Housing Act (H.R.6644) became law on 2026-07-11 without signature, under the Constitution's ten-day presentment rule. Section 1001 bars any "large institutional investor" from purchasing or contracting to purchase single-family homes from **2027-01-07**, with civil penalties of up to $1M per violation or three times the purchase price, whichever is greater. The definitions are what make it hard:

- **"Large institutional investor"** — any for-profit entity engaged in investing in, owning, renting, managing or holding single-family homes that, *alone or together with affiliated entities*, has direct or indirect investment control over 350 or more single-family homes in the aggregate.
- **"Investment control"** — reaches beyond direct ownership to general partners, managing members, investment managers (entities that directly or indirectly control the owning entity), and any entity owning more than 25% of any class of equity in the owning entity, unless that entity is a genuine passive investor.
- **Aggregation** — you cannot split a 900-home portfolio across three LLCs. Beneficial ownership and control aggregate.
- **Grandfathering** — every home held on 2026-07-11 is grandfathered permanently, and there is no divestiture requirement. The entire compliance burden therefore falls on the *forward transaction*, which is exactly where a per-deal determination product belongs.
- **Exceptions** — roughly eleven excepted purchase categories, including build-to-rent (with a requirement that the home be sold to an individual homeowner after seven years), which do not count toward the threshold. Knowing which purchases are excepted is itself a determination.

And the timing detail that matters most: **Treasury must write implementing regulations in consultation with HUD, FHFA and the SEC, but the Act expressly forbids any regulation from altering the definitions, narrowing the exceptions, expanding the covered class, or moving the 350 threshold — and practitioners expect the prohibition to bite before the regulations are finalised.** So the industry faces a dated, penalised, unguided obligation on statutory text that cannot be softened. That is as clean a forcing function as this project has found.

Separately, California enacted its own institutional investor reporting law in early 2026, so the same underlying determination is being demanded by states as well as by Washington. This is not a single-statute bet.

## The beachhead

**Land here:** the general counsel or head of compliance at a single-family rental aggregator, build-to-rent sponsor, or real-estate credit fund, in the final quarter before 2027-01-07.

They have a concrete, dated problem: certify to an investment committee and to warehouse lenders that a pending acquisition does not cross the threshold. Most of them believe they are comfortably under it, and most of them are wrong about *why*, because the "more than 25% of any class of equity, unless passive" limb sweeps in fund stakes, joint-venture interests, and preferred positions that nobody ever counted as houses. A credit fund that took a 30% equity stake in an operator with 400 homes has just discovered it may be a large institutional investor. The first sale is therefore not "buy our software" — it is **"we will tell you your number, and we will be right."**

This is winnable now for three reasons: the deadline is fixed and close; there is no incumbent to displace, only law firms billing hours; and the customer has no way to build it themselves, because half the graph is outside their own records.

Pricing: a fixed fee per entity determination in the low thousands for the initial mapping, then a subscription for continuous monitoring (control graphs change every time a fund closes, a JV recapitalises, or an operator is acquired), then a per-transaction determination fee at closing.

## Path to $1B+

**Stage 1 — determination (2026-2028).** The direct buyer set: the large SFR REITs and funds (Invitation Homes, Progress Residential, AMH, Tricon, FirstKey, VineBrook and peers), several thousand mid-sized aggregators, and every private-equity and credit fund holding a non-passive stake above 25% in any of them. Plus their lenders and securitisation trustees, who will want a third-party determination behind every representation. Call this a few hundred million dollars a year of addressable spend — real, but not the company.

**Stage 2 — the transaction layer (2027-2030).** If a prohibited acquisition is voidable or clouds marketability, the determination migrates into the closing itself as a title endorsement, priced at a few hundred dollars and attached to every entity purchase of a single-family home. US investor purchases run to roughly a million transactions a year against a ~$20B title insurance industry. This is where the recurring volume lives, and it is why the title-counsel question in "what would kill it" is the single most valuable hour of work available.

**Stage 3 — the bureau (2029+).** The by-product of stages 1 and 2 is the asset: a resolved, continuously maintained, legally adjudicated map of who controls America's rental housing. Nothing like it exists. It underwrites investor mortgage lending (DSCR origination is a $100B+ annual market that today underwrites the *property* because it cannot see the *sponsor's* real footprint), SFR securitisation surveillance, insurance placement and accumulation control, acquisition sourcing, and government and state-AG enforcement. Bureaus of this shape — the credit bureaus, the title plants, D&B — are natural single references with pricing power and decades of durability.

**Geographic and statutory expansion.** State-level institutional-investor rules are proliferating (California's reporting law is live; several legislatures have bills). Each new rule is a new determination on the same graph, at near-zero marginal cost.

## Why incumbents structurally can't or won't build it

- **Property-data incumbents** (Cotality/CoreLogic, ATTOM, Regrid, Reonomy, PropertyRadar, Batch) sell licensed bulk files and skip-tracing contact resolution. Their product is a *file*, not an adjudicated legal conclusion, and their revenue model — annual data licences to thousands of customers — cannot carry per-determination indemnity. Attaching liability to an answer would invert their entire risk posture.
- **AI title-search vendors** (Pippin, TerraLedger and peers) work the chain of title on one parcel: liens, encumbrances, marketability. That is a different question from aggregate control across a national entity footprint, and their pipelines are built parcel-first.
- **Title underwriters** have the balance sheet to indemnify and the distribution to close, but no national entity-control graph and a century of underwriting practice organised parcel by parcel. They are the natural *channel* and eventually the natural acquirer — which is a feature, not a threat.
- **Law firms** are already producing excellent client alerts on Section 1001 and will happily bill hours per entity. That is precisely the cost structure that makes per-transaction determination impossible, and it is why the answer stays expensive and scarce without this company.
- **The institutions themselves** cannot self-certify credibly. The counterparty, the lender and the securitisation trustee all want the determination from someone other than the buyer. Independence is part of the product.

## What compounds

1. **The graph itself.** Every entity resolved makes the next one cheaper, because control chains overlap: the same funds, the same GPs, the same managers recur across portfolios. Coverage compounds superlinearly.
2. **Adjudication precedent.** Every determination issued — especially every one tested by Treasury guidance, an enforcement action or a closing dispute — becomes labelled training data for a legal test on which no case law yet exists. Nobody else accumulates it.
3. **Loss experience.** Once determinations carry indemnity, the loss history becomes proprietary underwriting data for pricing the next one. That is the title-insurance moat, and it is unavailable to anyone who sells data rather than answers.
4. **Channel lock-in.** A determination embedded in closing workflow and in lender reps becomes very hard to swap, because swapping means re-papering the representation.

## Biggest risk, honestly

**Market size is the weak link, not novelty.** The compliance layer alone is plausibly a few-hundred-million-dollar annual market — a good business, not a billion-dollar one. The $1B outcome depends entirely on stage 2 and stage 3: the determination migrating into the closing, and the graph becoming the reference bureau. Both are credible; neither is proven.

**The near-term kill risk is a safe harbour.** The Act forbids Treasury from narrowing definitions or moving the threshold, but nothing stops it from blessing a self-certification procedure or a good-faith-reliance defence. If a $200 attestation signed by the buyer's own counsel becomes legally sufficient, the price of the determination collapses before the graph is independently valuable. This is the single most important thing to watch, and it is watchable: the Bipartisan Policy Center maintains a public implementation tracker.

**Secondary risk:** if the penalty turns out to run only against the buyer, with no effect on title, then the customer is a compliance department rather than a closing table — which caps volume by an order of magnitude.

## What would kill it in three phone calls

1. **A title counsel at a national underwriter:** *does a purchase in violation of Section 1001 create a title defect, cloud marketability, or expose the underwriter?* If yes, this is an endorsement product on a million transactions a year and the market score is a 5. If the only consequence is a civil penalty against the buyer, it is a compliance product for a few thousand entities and the market score is a 3. **This one answer moves the entire valuation of the idea and takes an afternoon to get.**
2. **The general counsel of a mid-sized SFR aggregator or a real-estate credit fund:** *have you computed your number under the 25%-non-passive limb, and who computed it?* If they say "our outside counsel, over six weeks, for $200k," the wedge is confirmed and priced. If they say "we're obviously under 350 and we're not worried," find out whether they have counted their JV and fund positions — and if they have not, that is the demo.
3. **A warehouse or securitisation lender to the SFR sector:** *will you require a third-party determination as a condition of funding after January 2027?* Lenders imposing the requirement is what turns a nice-to-have into a mandatory line item at closing, and it is the fastest route to distribution. If they say they will accept borrower certification, stage 2 is much harder and the company is smaller.
