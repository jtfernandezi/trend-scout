# Brief 0028 — Coverage archaeology as a machine

**Ledger id:** ts-0366 · **Date:** 2026-09-12 · **Composite:** 4.3 · **Rubric:** v3

---

## 1. The one-line thesis

There is somewhere between one and two hundred billion dollars of insurance coverage sitting in
policies written before 1986 that will pay for today's PFAS, environmental and abuse settlements — and
the only reason it does not get claimed is that the paper proving the policies existed is lost in
boxes, microfilm and ledgers that nobody has read. A dozen boutiques find it by paying humans to read
at hundreds of dollars an hour. **Build the machine that reads all of it, resolves sixty years of
corporate and carrier identity, reconstructs the missing terms from the standardised forms of each
year, and delivers a court-ready coverage chart — paid out of the recovery, not by the hour.**

## 2. The problem, stated exactly

Three facts create the whole opportunity.

**Fact one: the coverage that responds is old, and only old coverage responds.** Around 1986 the
insurance industry added the absolute pollution exclusion to general liability policies. That
forecloses coverage for contamination under every post-1986 policy. Pre-1986 comprehensive general
liability policies were written on an *occurrence* basis, meaning they respond to property damage that
took place during the policy period even if the claim arrives forty years later. So for PFAS releases
that began in the 1950s, 60s, 70s or early 80s, the pre-1986 tower is not the best source of recovery
— it is very often the only one.

**Fact two: the paper is gone, and being gone is not the same as not existing.** Companies were
acquired, spun, merged and reorganised; brokers changed hands; carriers changed names, redomesticated,
pooled and were absorbed; records went to warehouses, then to microfilm, then to nobody. The standard
sources a coverage lawyer is told to check are exactly the sources that make this an inference problem
rather than a retrieval problem: the issuing carrier's own archives, broker files, insurance
archivists, law firms involved in historic claims, vendors and government entities, and schedules of
insurance buried inside decades-old purchase agreements. The industry's own term of art for
reconstructing a policy you cannot find is *secondary evidence of coverage*, and it is admissible:
experts routinely reconstruct terms and conditions from the fact that insurers used standardised
bureau forms and language.

**Fact three: the demand arrived all at once, and it has dates on it.**

- Total PFAS liability is estimated at **$120–165bn**. About **$18–20bn** has settled with water
  systems, leaving **$100bn+** of personal-injury exposure unresolved. The aqueous film-forming foam
  multidistrict litigation held **15,246 filed cases as of August 2026**. Modelled US PFAS bodily-injury
  exposure for major companies runs from ~$10bn on an expected-loss basis to **$41bn at 5% probability**
  and **$66bn** in the sub-1% tail.
- Three childhood sexual abuse lookback windows are open simultaneously: **New York City to 29 July
  2027**, **California to 31 December 2027** (a two-year window opened January 2026), and **Rhode
  Island to 30 June 2028** (opened 1 July 2026). The defendants — dioceses, school systems, youth
  organisations, municipalities — have one asset, and it is insurance written between 1950 and 1985.
  The **Archdiocese of San Francisco's $395M settlement of 530 claims in June 2026**, the largest ever
  in a Catholic diocese bankruptcy, is what it looks like when the policies get found.

The trade press has moved the field from "niche" to "necessity" in its own words. What has not moved
is the method.

## 3. Why this is now a machine problem

Four things have to happen, and each one is a frontier-model capability that did not exist at usable
cost two years ago. None of them is document search.

1. **Multimodal reading of hostile media.** Degraded scans, microfilm, carbon copies, thermal fax
   paper, handwritten purchase ledgers and cash-disbursement journals, board and finance-committee
   minutes, and the marginalia in them. The signal is often not a policy at all — it is a premium
   payment line item to a carrier name in a 1968 ledger.
2. **Entity resolution across sixty years.** A 1968 premium paid to a carrier that merged twice,
   redomesticated once and now sits inside a run-off group must be tied to the balance sheet that
   answers for it today; and the *insured* side needs the same treatment, because successor liability
   follows a chain of acquisitions and name changes the claimant's own GC usually cannot recite.
3. **Reconstruction of terms from form provenance.** Given a form number, an issuing carrier and a
   year, infer the actual policy language — occurrence trigger, per-occurrence and aggregate limits,
   attachment point, pollution wording, defence-inside-or-outside-limits. This is only tractable
   *because* the pre-1986 market ran on standardised bureau forms, which turns a lost document into a
   classification problem with a knowable answer.
4. **Assembly into an evidentiary chart.** A chronological grid — years down, layers across — with a
   named carrier, limits and terms per cell and a citation chain per assertion, built to survive a
   carrier's challenge to secondary evidence.

The economic asymmetry is what makes this a company rather than a feature: a single reconstruction can
unlock nine figures of occurrence-based limits, so the work is worth doing at a low hit rate, which is
exactly the regime where a machine that can afford to read everything beats a human who must choose
what to read.

## 4. The wedge — four parties, four different blocks

This is the strongest wedge found in thirty-nine runs, because four separate candidate followers are
each blocked for a *different* structural reason.

**The occupants are not technology companies and cannot become them.** PolicyFind, Restorical
Research, Arcina Risk Group and the Insurance Archaeology Group are the field. They are hourly research
boutiques; their published technology stacks are WordPress, PHP, Cloudflare and Google Fonts. No
venture funding, no engineering organisation — and, billing by the hour on a task whose value is the
recovery, no reason to build the thing that deletes the hour. This is the same setup as ts-0307's land
survey firms and it has the same answer: the AI-native firm does not compete with them on price, it
competes on hit rate and turnaround, and it takes a different form of payment.

**The brokers are conflicted against themselves.** Marsh, Aon and Gallagher hold the historical
placement records and are the natural owners of this data. They are also the parties whose
record-keeping failure created the gap. Systematically machine-reading their own archives manufactures
discoverable evidence of what they lost and when — a board-level veto, not a roadmap decision.

**The carriers are the adverse party by construction.** The chart exists to be used against them. No
carrier-side vendor, and none of the 95.2% of Q1 2026 insurtech AI funding that went to claims and
underwriting tooling, can be pointed at this.

**Harvey and the legal-AI category cannot take the position.** They sell per-seat software to firms
that bill hourly. Taking a contingent interest in someone else's insurance asset is a different balance
sheet, a different risk appetite and, in some states, a different regulatory conversation. It is not a
pricing tier.

**Config-change test.** Could Harvey serve this next quarter by changing pricing or adding a setting?
No — the deliverable is not a document, it is a determination sold on contingency against a recovery.
**Platform-owner test.** Who owns the record this reads? *Nobody does.* That is the entire reason the
market exists, and it is the cleanest possible answer to the question that killed four other candidates
this run. **Occupancy test.** Run twice, on the segment and on the category plus AI: four named human
boutiques, zero funded startups, zero AI-native entrants.

## 5. Beachhead, trigger, and the first ten customers

**Beachhead A — PFAS and legacy environmental defendants.** The GC or risk officer at a manufacturer,
metal finisher, textile or paper mill, airport, or military-adjacent fire-training site that has just
been tendered a claim: a CERCLA potentially-responsible-party letter, or an AFFF complaint served.

**Beachhead B — abuse lookback defendants in reorganisation.** The restructuring officer or plan
trustee of a diocese, school system, youth organisation or municipality, where the plan of
reorganisation is funded by historical insurance and nothing else, and there is a claims bar date on
the calendar.

**How you reach the first ten.** Both beachheads are intermediated by the same small set of
policyholder-side coverage law firms — Anderson Kill, Reed Smith, Covington, Blank Rome, Pillsbury and
perhaps fifteen others — who currently retain the boutiques on their clients' behalf and who publish
constantly about PFAS coverage precisely because it is their business development engine. You do not
sell to ten thousand companies; you sell to twenty coverage practices, and the referral is free to
them because you are paid from the recovery. That is the same distribution logic that makes Forus work.

## 6. Business model

Charge nothing up front. Take a percentage of coverage limits identified and accepted, with a
lower rate on limits merely identified and a higher one on limits actually recovered, and a
conventional hourly or fixed-fee option for clients whose counsel insists on it (bankruptcy estates
often will, since court approval of contingency arrangements adds friction). The contingency is not a
gimmick — it is what makes the offer costless to a GC who does not yet believe the policies exist, and
it is what a boutique billing by the hour cannot match without destroying its own P&L.

## 7. Expansion path to $1B+

1. **Contingency reconstruction** for PFAS and abuse defendants. Deliberately small as a services
   market — a few hundred million dollars of fees across a dozen boutiques — and chosen because the
   payoff per engagement funds the corpus.
2. **The standing coverage-asset register.** Once reconstructed, a company's historical coverage is a
   permanent asset that gets re-consulted at every M&A diligence, every successor-liability dispute,
   every environmental reserve setting and every new mass tort. Project business becomes subscription
   over the same data.
3. **Financing the recovery.** Advance cash against an identified coverage position, the way
   litigation finance does against a claim. Now you are underwriting rather than researching, and the
   thing you underwrite is something only you can see.
4. **Buying the coverage claim outright.** This is the version that clears the venture-scale gate
   without argument. On the carrier side of exactly this asset class, Enstar, RiverStone and Marco
   have built multi-billion-dollar businesses acquiring legacy liabilities. Nobody has built the
   mirror image on the policyholder side, because nobody could value the asset. A machine that can
   value dormant pre-1986 coverage faster and better than the carrier holding it is, in the end, a
   trading business against a pool estimated at **$120–165bn for PFAS alone**, before talc, opioids,
   asbestos tail, and the abuse windows.

## 8. What compounds

The corpus, and it is not buyable. Every engagement adds: carrier form libraries indexed by year and
bureau form number; historical policy-number schemas that let you recognise a fragment; broker and
agency record layouts; a corporate-successor graph linking dead entities to live balance sheets; and a
growing library of which secondary-evidence arguments carriers conceded and which they litigated. Each
of those makes the next engagement cheaper and the next hit rate higher. It is the same compounding
shape as ts-0307's retracement corpus and ts-0281's origin graph, and it is the reason defensibility
scores 5 here.

## 9. Scores

| Dimension | Score | Reasoning |
|---|---|---|
| Wedge durability | 5 | Four candidate followers, four different structural blocks: unfunded hourly occupants, self-incriminating brokers, adverse carriers, and a legal-AI leader that cannot take contingency risk. Nobody owns the record. |
| Pattern strength | 4 | One clear breakout with hard numbers (Harvey: $400M+ revenue, 80% of AmLaw 100) plus a second proving the payment model (Forus). Why-now is unambiguous: the reading capability arrived this cycle, the liabilities arrived on a court calendar. |
| Market / venture scale | 4 | Beachhead services market is small; the asset pool behind it is $120–165bn for PFAS alone plus three open abuse windows. The $1B case requires moving to financing and purchase, which is credible but not automatic. |
| Defensibility | 5 | A proprietary corpus of carrier forms, policy-number schemas, broker layouts and a corporate-successor graph, compounding per engagement, unavailable for purchase. |
| YC fit | 4 | AI-native, contrarian, unglamorous, enormous latent market, and a "makes something people want" demo that is a recovered nine-figure limit. |
| Founder fit | 4 | Genuinely hard: multimodal reading of degraded media, entity resolution across six decades, form-provenance inference, and an evidentiary output. Wants a technical cofounder and a coverage lawyer, built in SF. |
| **Composite** | **4.3** | |

## 10. The honest risks

**The venture-scale gate is the real one.** As a fee-for-service business this is a good $50–100M
company and not a $1B one. Everything above $100M depends on the step from *finding* the asset to
*owning or financing* it, which is a capital business with a slow cash cycle, and a founder who is not
comfortable underwriting outcomes should not start this.

**Recovery timelines are long and adversarial.** Carriers litigate secondary-evidence coverage charts.
Cash from a contingency is measured in quarters to years, which makes early working capital the
binding constraint and makes the fixed-fee option more important than it looks.

**The corpus has a cold-start problem.** The first ten engagements are the expensive ones, before the
carrier-form and successor graphs exist. Sequence matters: take clients whose archives are large and
intact first, even at worse economics, to build the asset.

**Regulatory texture per state.** Contingency arrangements around insurance recovery, and anything
resembling public adjusting or the unauthorised practice of law, vary by state. The clean structure is
almost certainly to sit *under* policyholder coverage counsel as their retained expert rather than to
front the client relationship — which is also, conveniently, the distribution channel.

## 11. First ninety days

1. Pick one vertical inside beachhead A — metal finishers or airports are good, because the
   contamination history is documented and the corporate structures are simple — and one diocese or
   school system in an open lookback window.
2. Get one real archive. Free of charge, under NDA, in exchange for the right to keep the derived
   form and carrier libraries. The pitch to the GC is that it costs nothing to find out.
3. Build the three hard pieces in order: media reading, carrier/insured entity resolution, form-number
   → terms inference. Do *not* build a document management product; the boutiques already sell that
   badly and it is not the value.
4. Produce one coverage chart good enough that a coverage partner at Anderson Kill or Reed Smith will
   put their name behind it in a demand letter. That single artefact is the whole seed round.
