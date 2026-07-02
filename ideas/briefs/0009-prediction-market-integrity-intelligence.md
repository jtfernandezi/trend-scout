# Brief — ts-0077: The independent integrity + resolution-truth layer for prediction markets

*Generated 2026-07-02. Composite 4.2. The "RavenPack / Moody's for whether an event-market price is real."*

---

## One-liner

An independent, AI-native intelligence company that scores every liquid event contract for **bot/wash-trade distortion, cross-venue manipulation, coordinated narrative/pressure campaigns and resolution risk**, and outputs a **manipulation-adjusted "true probability" + integrity rating** for the institutions that now trade on, hedge with, or ingest prediction-market prices — the buy-side / data / policy consumers that per-venue exchange surveillance and retail whale-trackers structurally do not serve.

## In plain English

Betting-style markets on future events — "will the Fed cut rates," "will this drug be approved," "who wins the election" — exploded from a curiosity into a $24-billion-a-month business in about a year. Their prices now appear on Google Finance, get quoted by news anchors, and are used by Wall Street desks and even the Federal Reserve as a real read on what's likely to happen. The catch: those prices are increasingly gamed. Automated bots are now most of the trading, a tiny cluster of coordinated accounts drives the bulk of the volume, people have already been criminally charged for betting on secrets, and a well-funded actor can nudge a market to say what they want. So the banks, funds and companies that increasingly *rely* on these numbers have no trustworthy way to tell a genuine price from a manufactured one — or whether the bet will actually pay out the way the headline implies. This company is the truth meter: it watches the trading behavior, the wallets behind it, the same event across every venue, and the news that will settle it, then gives each price a "how real is this, and how likely is it to resolve as stated" score. Financial firms pay for it the way they already pay for clean market data — because trading or hedging on a rigged number is a very expensive mistake.

---

## The cross (why this needs both halves)

**Frontier AI half.** Producing a defensible, manipulation-adjusted, resolution-aware probability for thousands of live contracts requires fusing signals no single-venue rules engine or news-NLP feed can:
- **On-chain wallet-cluster attribution** — grouping bot-controlled wallets, detecting wash trading across clusters and coordinated/indirect manipulation on permissionless infrastructure (attribution is the hard part).
- **Cross-venue / cross-instrument flow** — reconciling the *same* event across Polymarket / Kalshi / Limitless *and* the correlated underlying market (equity, rate, commodity), where abuse is only visible once positions are aggregated at the **event** level, not the product level.
- **Event semantics + resolution modeling** — reasoning over a contract's natural-language wording, resolution source and temporal scope to estimate *resolution risk* (ambiguity, disputed outcomes, sources that can be pressured).
- **Coordinated-narrative / pressure-campaign detection** — spotting the media/social pushes designed to move a market others cite, or to sway the reporting that determines settlement.

Classical trade surveillance is **product-centric, rule/statistics-based and single-venue**; it cannot reason over event semantics, on-chain attribution or resolution ground-truth. Frontier multimodal models can — at the scale of thousands of markets, continuously. This is the same **independent-truth / correlated-structure** blind spot that made ts-0064 (demand realism) and ts-0054 (AI-error accumulation) AI-native, now applied to a fresh market.

**Structural half.** Prediction markets became financial infrastructure in ~9 months, and are being consumed as data and risk-transfer *right now*:
- Combined monthly volume ran **~$1.2B (early 2025) → ~$24B (April 2026)**, overtaking gambling (**$36.6B in Q1**); **800k+** unique wallets/month.
- Prices are embedded in **Google Finance**, **Nasdaq** (Kalshi partnership) and **Dow Jones** (Polymarket); **Fed economists** validated Kalshi macro markets as "distributionally rich" expectations data; **ARK Invest** signed a data collaboration; institutions increasingly **hedge** policy/weather/geopolitical event risk with contracts.
- Simultaneously an integrity crisis: **AI agents are 30%+ of Polymarket wallets and 14 of its 20 most-profitable accounts**; **~5% of bot-like wallets drive ~75% of volume**; the **first federal insider-trading prosecutions** landed (Feb 2026); the **Atlantic Council** warns of foreign-influence weaponization; **WEF** ranks misinformation the #1 near-term systemic risk; CFTC proposed the **first federal rules (2026-06-10)** and **S.4060** is live.

Neither half alone is a company. Manipulation detection without the institutional buyer is exchange-compliance tooling (already Solidus/Eventus). Prediction-market growth without frontier-AI truth-scoring is a scraped odds feed (already Oddpool). The company is the **manipulation-adjusted, resolution-aware truth signal, sold to the consumers who now bet real money on trusting the price.**

---

## Beachhead → $1B path

**Beachhead buyer.** The head of a **systematic / event-driven desk at a quant hedge fund**, or the **data/risk lead at an asset manager**, now trading, hedging with, or feeding prediction-market prices into models. Trigger moment: institutional adoption is surging (Fed, ARK, Oldenburg) *exactly* as bots and manipulators make the raw price least trustworthy — so before they act on a Kalshi/Polymarket price they need to know whether it's real and how it resolves. This buyer (a) feels the pain acutely, (b) already pays six/seven figures for market and alt-data (RavenPack-scale precedent; the alt-data market is heading to **$30B+**), and (c) structurally wants a truth source **not owned by the exchanges they trade against** — the same independence demand that sustains ratings agencies and CAT modelers.

**Why it's a wedge, not a niche:**
1. **Across the buy-side:** from event-driven/macro desks to systematic funds, prop firms and asset managers using event-market data as an alt-data signal or hedge input.
2. **Into the corporates:** treasuries / CROs hedging policy/weather/geopolitical event risk need the *same* integrity + resolution truth before committing to a "prediction-market-as-insurance" position.
3. **Into data distribution:** license an integrity-scored event-market feed through **Bloomberg / RavenPack-style vendors** — the fastest route to the "industry-standard true-probability layer" every screen quotes.
4. **Into policy/regulation:** the Fed already uses Kalshi data; the CFTC, exchanges and even news organizations are natural consumers of an independent integrity read as prediction-market prices become quasi-authoritative public signals.

As prediction markets scale toward a **$100B+ asset class** wired into mainstream finance and media, the neutral integrity/truth layer is the kind of infrastructure that becomes a standard — a credible $1B+ path.

---

## Why incumbents structurally can't / won't build it

- **Exchange-side surveillance (Solidus Labs @ Kalshi; Eventus Validus @ Novig)** serves the *exchange's* CFTC market-integrity obligation — protecting its own book, on its own venue. Wrong customer (the venue, not the price consumer), wrong scope (single-venue, product-centric), wrong motion (compliance tooling, not a buy-side data product). They *would have* to build a cross-venue + on-chain + resolution stack and a new go-to-market to compete.
- **News alt-data (RavenPack)** does NLP on news and corporate events — not on-chain manipulation attribution or event-contract resolution modeling. Closest adjacency; the defense is the on-chain + cross-venue + resolution stack it doesn't have, and speed to own the relationship.
- **Retail tools (Polytrackerbot, YN Signals, Oddpool)** are consumer whale-alert / odds-aggregator toys — no institutional-grade integrity model, no resolution risk, no SLA.
- **Oracles (Chainlink, UMA)** *resolve* contracts; they don't *score* resolution risk or manipulation for consumers.

---

## What compounds (defensibility)

1. **Proprietary cross-venue + on-chain dataset** — the labeled history of manipulation events, wallet clusters, wash patterns and resolution disputes across venues is not buyable off the shelf and grows with coverage.
2. **A measurable track record** — unlike most alt-data, manipulation-adjusted probabilities are *graded against real resolutions*. Demonstrable calibration (your "true probability" beats the raw market price and the naive feed) is a hard, compounding proof point and the core sales artifact.
3. **Becoming the standard** — once a Bloomberg-style feed or a set of anchor funds price against your integrity score, it's the reference; the independence that keeps you off the exchanges' side is the moat.

---

## The hard parts / open questions

- **Incumbent extension is the real race.** Solidus has cross-venue surveillance data; RavenPack has the institutional data relationship. First to ship a credible *consumer-facing* integrity feed with a graded track record wins the reference position — this is a speed game.
- **Regulatory path-dependence.** S.4060 could reclassify prediction markets as **wagering / gambling** (state licenses, age limits). That would *shrink* some use cases (corporate hedging) but *raise* the value of integrity/insider-detection intelligence — the thesis survives either way, but the buyer mix shifts. Watch which way CFTC vs. the gambling framing resolves.
- **On-chain attribution is genuinely hard** on permissionless infrastructure, and Kalshi (CFTC-regulated, not on-chain) exposes different data than Polymarket (on-chain). The product must fuse both regimes.
- **Buyer readiness.** Institutional consumption is early; the beachhead must be the funds already trading/hedging on these prices, not the long tail. Land the desks that already treat this as data.

---

## Kill-check log (survived 3 attempts)

1. **"Exchange surveillance already does this."** → Solidus (Kalshi) and Eventus (Novig) occupy the *exchange-compliance* square; neither sells a cross-venue consumer truth signal to the buy-side. Different buyer/job. **Survived.**
2. **"It's just another alt-data feed (RavenPack)."** → RavenPack does news NLP, not on-chain manipulation attribution or resolution modeling; the product is a graded manipulation-adjusted probability, not a scraped odds feed. **Survived.**
3. **"Retail tools / oracles cover it."** → Polytrackerbot/YN Signals/Oddpool are retail whale-alert/aggregator toys; Chainlink/UMA resolve contracts but don't score resolution risk for consumers. No institutional-grade independent integrity layer exists. **Survived.**

---

## Scores

Novelty 4 · Why-now 5 · Market 4 · Defensibility 4 · YC-fit 4 · Founder-fit 4 → **composite 4.2**

*Why-now 5:* institutionalization (Fed/ARK/Nasdaq/Google Finance) and the integrity crisis (bots dominant, first insider prosecutions, foreign-influence warnings) are simultaneous, dated to H1 2026, and frontier multimodal fusion newly makes the scoring possible. *Market 4:* alt-data ($30B+) + a prediction-market sector scaling toward a $100B+ asset class, with a still-forming but clearly-growing institutional buyer. *Defensibility 4:* proprietary cross-venue/on-chain dataset + a graded calibration track record + standard-setting. *Founder-fit 4:* deep multi-signal ML/on-chain-forensics/market-microstructure build — exactly the technically ambitious, AI-native product the rubric rewards.
</content>
