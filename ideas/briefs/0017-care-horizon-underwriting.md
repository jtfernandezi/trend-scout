# Brief 0017 — Care-Horizon Underwriting

**Ledger id:** ts-0220 · **Date:** 2026-08-18 · **Composite:** 4.2
*(Novelty 4 · Why-now 4 · Market 5 · Defensibility 4 · YC-fit 4 · Founder-fit 4)*

---

## One line

An AI-native financier that underwrites an individual older person's **care horizon** — when they begin needing help, how many hours, for how long, and how long they stay in the house — and advances the family cash against home equity on that basis, so care gets bought now at private-pay rates instead of waiting.

## In plain English

Almost everyone wants to grow old in their own house, and for most American families the house *is* the money. The insurance that used to pay for help at home has effectively disappeared. The one government-backed way to get cash out of the house — the reverse mortgage — is not permitted to look at your health at all, so a 72-year-old with three years left before a nursing home gets exactly the same offer as a 72-year-old with twenty. This company reads a person's actual medical and functional record to work out how long they will realistically stay at home and how much help they will need, and on that basis hands the family money now, repaid when the house is eventually sold. They use it to hire a carer this month, at wages that actually attract one, instead of a daughter quitting her job.

---

## The cross

**AI half.** Frontier long-context multimodal reasoning over a single person's entire longitudinal record — claims, labs, medication history, functional status, falls, cognitive testing, imaging reports, discharge summaries, home layout, caregiver availability — makes *individual* care-trajectory and time-at-home underwriting possible at consumer cost. That is the exact capability the long-term care insurance industry lacked when it priced with population tables in the 1990s and lost billions. Waterlily has already demonstrated the prediction half is tractable, working against 500M data points and 50,000 families. Frontier token prices falling to $0.20 / $1.20 per million in July 2026 is what makes it economic to run per applicant rather than per actuarial study.

**Structural half.** The private LTC insurance market has collapsed from 100+ writers at peak to roughly **fifteen** in 2026. Demand went the other way: **95%** of home and community-based providers report staffing shortages, **77%** turn away referrals, the home care workforce is projected to generate **6.1M job openings 2024–2034** (second among all US occupations), and **~75%** of older adults with care needs at home rely on unpaid family. US long-term services and supports spend runs ~**$475B/yr** with no Medicare coverage, against roughly **$14T** of home equity held by people over 65.

**Why it needs both halves.** Without the underwriting, the money cannot be released safely — that is the whole reason HECM is age-only and the reason private capital has stayed out. Without the collapse of the insurance market and the care-supply crisis, families would still have a normal product to buy.

---

## The beachhead

**Buyer.** The adult child, most often a daughter in her fifties, at one of three trigger moments: a parent's fall, a dementia diagnosis, or a hospital discharge carrying a new care requirement. Within days the family learns that in-home care costs $6,000–10,000/month, Medicare pays none of it, Medicaid means spending down and often means a facility, and the only asset is the house.

**Distribution.** Hospital and skilled-nursing discharge planners, elder-law attorneys (who see the same moment and are already structuring around it), geriatric care managers, and private-pay home care agencies — the last of which have a direct commercial interest, because their constraint is caregivers and caregivers follow private-pay wages.

**First product.** A single, boring, legible instrument: a fixed advance against the home, no monthly payment, repaid on sale or estate settlement, sized by a health-informed advance rate rather than an age-only one, with proceeds released against care invoices rather than as a lump sum. Restrictive on purpose — it constrains adverse use, generates the outcome data, and makes the underwriting the product.

---

## Path to $1B+

1. **Care-linked home equity.** ~$14T of senior home equity, ~$475B/yr of LTSS spend, and no functioning private product. Even a small share of the annual care-financing need is a multi-billion-dollar origination business.
2. **Impaired-life income.** The same underwriting prices medically underwritten annuities, which are standard in the UK and rare in the US — Genworth relaunched one in early 2026. That points at the retirement decumulation market (~$40T of US retirement assets, ~$400B/yr of annuity sales) where population tables systematically overcharge the sick.
3. **Become the pricing layer for the risk the insurers abandoned.** Every carrier managing an in-force LTC block, every Medicare Advantage plan, and every reinsurer needs individual care-trajectory pricing and cannot build the loss history alone. The origination business generates that history as a by-product.
4. **Own the care spend.** Once you are the payer, you are the buyer of hours in a market with 6.1M openings — the natural place to compress the cost of the thing you are financing.

---

## Why incumbents structurally can't or won't build it

- **HECM reverse mortgages** are federally standardised: principal limit factors are a function of age and interest rates, and health underwriting is barred by program design. The dominant product is *legally blind* to the single variable that matters. This is the core asymmetry.
- **Home-equity investment companies** (Point, Hometap, Unlock, Splitero, Fraction) underwrite the *house* — value, lien position, market — and have no clinical data, no clinical model, and no relationship with the care system.
- **Long-term care insurers** mispriced this risk once, took the losses, and left. Those who remain are constrained by statutory reserves and state rate approval, and their actuarial method is the thing that failed.
- **Waterlily** — the closest company and the run's cleanest kill — sells the trajectory prediction to advisors and carriers. It informs a decision. It does not take the risk, which is where the value and the compounding data sit.

---

## What compounds

Every advance produces a labelled observation nobody else holds: predicted care horizon versus realised care horizon, realised hours, realised time-in-home, realised repayment date, on a population that has never been systematically underwritten because the product that would have generated the data does not exist. That loss history is the asset, it is not purchasable, and it improves the advance rate — which is the price the customer shops on.

---

## Biggest risks, honestly

1. **Adverse selection is the historical killer.** The families who seek this out are, by construction, the ones who already know something is wrong. The LTC industry died of exactly this. Mitigation is product design (proceeds released against care invoices, look-back on the trigger event) and pricing discipline, not cleverness.
2. **Feedback loops are a decade long.** You learn whether the model was right when the house sells. Early capital has to be underwritten on modelled rather than realised loss.
3. **State-by-state regulation.** Depending on structure this is a mortgage product, a shared-appreciation instrument, or a security — and it is sold to elderly homeowners, which attracts the most protective regulators in the country. This is a legal-architecture problem before it is a modelling problem.
4. **Optics.** "AI decides how long your mother has left, then lends against her house" is a headline waiting to be written, even though the economics are pro-consumer for the sick — impaired-life pricing pays *more* to the people with shorter horizons. The product has to be built so that framing is obviously wrong, from day one.
5. **Capital.** This is a balance-sheet business. Equity funds the model and the first loss; the scale requires a forward-flow buyer. That relationship is as much of the company as the model is.

---

## The one question to answer first

**Does health-informed underwriting move the advance rate enough to matter?** Take the HECM principal-limit-factor table, take published care-onset and time-at-home distributions conditional on a handful of common diagnoses, and compute the spread between an age-only advance and a health-informed one for three archetypal 72-year-olds — healthy, early cognitive impairment, post-fall with mobility loss.

If the spread is on the order of ten points of home value, this is a company. If it is two, it is a feature of a reverse mortgage and should be killed. **That is an afternoon with a spreadsheet, and it is worth more than another research pass.**
