# Brief 0001 — Buy-side SBA capital-stack structuring engine for self-funded acquirers

- **Ledger id:** ts-0001
- **First proposed:** 2026-06-16
- **Status:** killed (revised 2026-06-16 thesis — fails the venture-scale $1B gate)
- **Composite score:** 4.0 (Novelty 4 · Why-now 5 · Market 3 · Solo-buildable 4 · YC-fit 4 · Founder-fit 4)
- **Note:** retained as a historical record. Killed when the project re-targeted to venture-scale, AI-native ideas: the market score of 3 (episodic, low-LTV buyer) is now a hard kill, not a survivable weakness. Kept because the why-now analysis is a clean worked example.

## One line

The tool that turns a self-funded business buyer's dying SBA deal into a
SOP-50-10-8-compliant capital stack — and gives them the one-page explainer to
get a reluctant retiring seller to accept a full-standby note.

## The cross

This is not "AI for SBA loans." It only exists at the intersection of two
2025–2026 signals, and collapses if you remove either:

- **AI capability:** frontier LLMs (Claude Opus 4.8 / Gemini 3.5 agentic era)
  can now reason over the dense, freshly-rewritten SOP 50-10 8 rule text *and*
  a buyer's messy, half-assembled deal inputs, and emit (a) an optimized
  compliant capital stack, (b) a lender-ready term sheet, and (c) plain-English
  seller-negotiation collateral. In 2024 this was a $5k+ retained-advisor task.
- **Structural shock:** **SBA SOP 50-10 8 (effective 2025-06-01)** reinstated a
  10% equity injection, ruled that a seller note counts toward it only if on
  **full standby for the entire 10-year loan term** (≤50% of the injection), and
  dropped the collateral threshold to $50k. Trade press: smaller-market deals
  are "falling through"; "the days of nearly zero-down acquisitions are gone."
  This lands right as the **$5T baby-boomer business transfer** (~6M SMBs by
  2035; today 92% close, only 5% sell) floods the market with sub-$5M deals.

Remove SOP 50-10 8 → no acute structuring crisis (the old rules were lenient).
Remove modern AI → it's a human advisor. Needs both.

## The exact buyer

A **first-time self-funded searcher / ETA buyer** under a **signed LOI** on a
**$400k–$2M SDE** owner-operated service business (HVAC, plumbing, commercial
landscaping, pest control). Not "people buying businesses" — specifically the
buyer in the financing-structuring window who is doing their first deal without
a committed search-fund investor base behind them.

## The trigger moment

The SBA lender's BDO tells them the seller note they had penciled in to cover
most of the down payment must be on **full standby for the full 10-year term**
to count toward the equity injection — so the 60-something seller would receive
nothing on that slice for a decade. The seller balks. The LOI/diligence clock
(30–60 days) is running, and the deal is about to die over *structure*, not
*price*. That is the moment of maximum willingness to pay.

## Why incumbents structurally can't / won't serve this

- **Lender-side software** (Aloan, LenderAI/iBusiness, Biz2x, CRS Credit API)
  organizes and underwrites the file **to protect the bank, after the structure
  is already set.** Wrong side of the table, wrong incentive, wrong moment.
- **Retained buy-side advisors** (e.g. Munera Capital) explicitly "pay for
  themselves in 18–24 months" — far too expensive and slow for a sub-$2M deal.
- **ETA content & communities** (ClearlyAcquired, EBIT, ProjectionHub) explain
  the rules but output a blog post, not a compliant structure + seller explainer
  + lender-ready term sheet.
- **Business brokers** represent the seller. Nobody is arming the small
  self-funded buyer at the structuring table.

## Why now

SOP 50-10 8 is datable to 2025-06-01 and is *actively killing deals today*; the
boomer-transfer volume surge is simultaneous. Urgent in 2026 in a way it was
not in 2024.

## What the MVP is (solo-buildable)

1. **Structure optimizer** — encode SOP 50-10 8's injection / standby /
   collateral rules; given price, SDE, buyer cash, and seller flexibility,
   output the compliant capital stack that *minimizes the seller's full-standby
   burden* (the deal-killer) while clearing the 10% injection.
2. **Seller one-pager** — auto-generate a plain-English explainer of why the
   note must be on full standby and what the seller nets, to defuse the balk.
3. **Lender-ready term sheet + lender-match** — format for the BDO and flag
   which SBA lenders accept the structure (preferred-lender behavior varies).

The hard part is faithfully encoding the regulation, not infrastructure — well
inside a nights-and-weekends MVP for one builder.

## Risks / how this is venture-scale (the weak spot)

- **Market/venture-scale = 3 and it's the load-bearing risk.** The wedge buyer
  is episodic and low-LTV — they buy one business, maybe once. A transactional
  $1–3k fee per deal is a feature, not a company.
- **Path to scale:** become the buy-side transaction/financing layer, not a
  one-shot calculator — lender-match take-rate at origination, recurring
  post-close portfolio-operations SaaS, and a move up-market to independent
  sponsors and PE tuck-in buyers who hit the same SOP rules at higher volume.
- **Validation before building:** (1) confirm with 5–10 ETA buyers that deals
  are dying at *structuring* (vs. price/sourcing); (2) confirm SBA BDOs would
  accept a buyer-generated term sheet; (3) test willingness to pay at the
  trigger moment.

## Founder-fit

Strong: decision-support + B2B/prosumer workflow, GTM into a reachable,
loud ETA community (Twitter/X, forums, SBA-lender networks), leverages a
strategy/finance background directly. No technical-cofounder blocker for the MVP.

## Adversarial novelty check (survived 2 attempts)

1. "SBA deal structuring tool buyer side… SOP 50 10 8" → only blogs, guides, and
   human advisory firms; the search itself noted results cover "financing
   requirements… rather than specific software tools for deal structuring."
2. "acquisition entrepreneur buy-side advisor… deal structuring software 2026" →
   surfaced retained human advisors (Munera) and education, no buy-side
   structuring SaaS.

Re-run these searches next pass; the main novelty risk is a lender-side or
ETA-community incumbent extending into buy-side structuring.
