# Brief 0006 — The correlated-AI-failure catastrophe model for primary P&C carriers

**Ledger id:** ts-0054 · **Date:** 2026-06-25 · **Composite:** 4.3
**One-liner:** The RMS / CyberCube for the "silent-AI" peril — a catastrophe-accumulation model plus per-insured AI-exposure score that lets a primary commercial P&C carrier underwrite the AI-error liability peril across its whole book instead of blanket-excluding it.

---

## In plain English

Almost every company now uses AI somewhere, and when AI makes a costly mistake — bad advice, discrimination, an autonomous agent causing real damage — someone files an insurance claim. Insurers are terrified of one specific nightmare: because thousands of unrelated companies quietly depend on the *same handful* of AI models, a single bad model update or flaw could make all of them fail *at once*, producing a flood of simultaneous claims no insurer reserved for (the same way pandemic business-interruption claims nearly overwhelmed the industry). Their reaction today is blunt — refuse to cover anything AI-related. But you can't permanently refuse to insure the entire economy. This company builds the missing tool: it figures out which AI systems each of a carrier's customers relies on and calculates how hard the carrier would be hit if those systems failed together — so the carrier can go back to *pricing and selling* AI coverage instead of slamming the door. Carriers pay because pricing this peril is the only way back into the fastest-growing exposure in commercial insurance, and getting the accumulation wrong is a solvency-ending event.

---

## The cross (why it needs both halves)

**Frontier-AI half.** Pricing this peril requires two things no human team or classical model can do: (1) map the *AI-dependency graph* of an economy — which foundation models, vendors, agents and shared infrastructure each insured business actually relies on, inferred from filings, disclosures, vendor footprints and the insured's own attestations — and (2) simulate *correlated, cascading, non-malicious AI-error* scenarios across that graph to produce a joint loss distribution. Classical CAT and actuarial models assume independent or geographically-correlated risks; they structurally cannot represent "10,000 insureds all run on the same model that just regressed." The industry says so explicitly: *current methods do not measure whether failures could be correlated across multiple insureds simultaneously.* This is the same independent-rate blind spot that made ts-0048 (correlated redemption runs) AI-native.

**Structural half.** A live, dated, industry-wide crisis. Verisk/ISO issued standardized generative-AI exclusions (CG 40 47/48, effective **2026-01-01**); **WR Berkley filed an absolute AI exclusion for D&O / E&O / Fiduciary**; Berkshire, Chubb and Travelers won approval to strip AI damages from corporate policies. Carriers are excluding *because they can't price the peril* — but AI is embedded in ~97% of companies (Gartner: 80% of Q1-2026 enterprise apps embed an agent), so permanently excluding the whole economy is untenable. Reinsurers are already pricing AI into treaties (Swiss Re sigma 07/2026 "Insuring AI"; Munich Re), 200+ active AI-liability cases are working through courts, and the ecosystem's reliance on a few foundation models makes systemic correlated exposure the defining underwriting fear.

Neither half alone is a company: the regulatory/market crisis without the model just produces more blanket exclusions; the modeling capability without the silent-AI crisis has no urgent buyer.

---

## Beachhead → $1B path

- **Beachhead buyer.** Exposure-management lead / chief underwriting officer / portfolio-accumulation actuary at a mid-to-large commercial P&C carrier or specialty MGA, entering through **D&O / E&O / Tech-E&O** — the lines where Berkley's *absolute* exclusion is forcing a yes/no decision at the **2026 renewal**. The pain is acute and dated: exclude (and cede the fastest-growing exposure to a competitor who figures out pricing) or write blind (unbounded tail). First product: a per-submission AI-exposure score plus a book-level accumulation view for one line.
- **Expansion path.** Per-insured scoring + single-line accumulation → all commercial liability lines (CGL, EPL, product, fiduciary) → reinsurance-treaty pricing and cession optimization → the **industry-standard "AI peril" model** that reinsurers, ILS / cat-bond investors and brokers all price against. This is the RMS-for-hurricanes / CyberCube-for-cyber playbook: once two or three large carriers and a reinsurer price against your model, it becomes the reference, and the AI peril — as AI saturates the economy — becomes one of the largest exposures in P&C. CAT/cyber exposure modeling is already a multi-billion-dollar category; this is a new peril inside it.
- **Why it's $1B+, not a niche.** The reachable market is the entire commercial-liability side of P&C (a multi-trillion-dollar premium base) and the reinsurance/ILS capital that backs it. The buyer count is small but the contracts are large and sticky (model licensing + data subscriptions, the RMS/Verisk/CyberCube revenue shape), and the peril only grows.

---

## Why incumbents structurally can't (or won't)

- **Physical-CAT incumbents (Verisk, Moody's RMS).** Decades of geographic/actuarial data and hazard science — and *zero* AI-dependency data or model-failure expertise. Wrong DNA, wrong data.
- **Cyber-CAT incumbents (CyberCube, Moody's RMS Cyber).** The nearest threat — they own accumulation modeling and the exposure-management buyer relationship, and are explicitly "adding AI." But they frame AI as a *force-multiplier for cyber attacks* (malware propagation, zero-days). The non-malicious AI-*error* peril — an agent giving systematically bad outputs, a model regression causing correlated mistakes across liability lines with no attacker — has a different correlation mechanism, different lines (D&O/E&O vs. cyber), and different data. The bet is that this is a distinct enough modeling problem that attack-centric incumbents are slow to build it. **This is the central risk** (see below).
- **Per-agent MGAs (Klaimee, Mount, Corgi, HSB/Munich Re).** They insure the AI *vendor / agent-maker* and price one agent at a time. They do not model correlated accumulation across a *carrier's* book of ordinary, non-tech insureds. Different buyer, different product.
- **Reinsurers (Munich Re aiSure, Swiss Re).** Building AI risk views for *their own* treaties. Primaries don't want to depend on their reinsurer's model — the same conflict-of-interest that makes cedents demand *independent* CAT models. That structural preference for independence is the opening.

---

## Scoring (rubric)

| Dimension | Score | Rationale |
|---|---|---|
| Novelty | 4 | The kill-check confirmed an *unbuilt* problem ("current methods do not measure whether failures could be correlated across multiple insureds"); only adjacent players (cyber-CAT, per-agent MGAs, manual questionnaires). Not a 5 because cyber-CAT incumbents are visibly circling. |
| Why-now | 5 | ISO exclusions live 2026-01-01; Berkley absolute D&O/E&O exclusion; 2026 renewals; Swiss Re sigma 07/2026; frontier models newly make economy-wide dependency mapping + cascade simulation possible. |
| Market / venture-scale | 5 | Entire commercial-liability P&C + reinsurance/ILS; multi-billion CAT/exposure-modeling category; the peril only grows as AI saturates the economy. |
| Defensibility | 4 | Proprietary AI-dependency graph + loss/incident dataset + the model compounds into an industry standard with cross-carrier/reinsurer network effects; capped at 4 by incumbent-extension risk. |
| YC-fit | 4 | Fundable AI-native thesis ("the model for an uninsurable, economy-wide peril"); insurtech is YC-friendly; clear "makes something people want" (carriers desperate for a way back to writing AI). |
| Founder-fit | 4 | Rewards deep modeling + insurance/actuarial domain depth and serious engineering — a feature, not a constraint. Needs an insurance-credible cofounder to win carrier trust. |
| **Composite** | **4.3** | |

---

## Biggest risks & first tests

1. **Incumbent extension from cyber (the kill risk).** CyberCube / Moody's RMS could pivot their accumulation engines onto the AI-error liability peril. *Test:* talk to 5 exposure-management leads and confirm (a) they treat cyber-AI and liability-AI-error as distinct perils, and (b) they'd prefer an independent specialist over their cyber vendor's extension. *Mitigation:* win D&O/E&O accumulation fast and lock in the proprietary dependency-graph + loss dataset before incumbents ship a liability-line model.
2. **Cold-start data.** The model needs AI-dependency and AI-loss data that doesn't exist in clean form yet. *Test:* can you bootstrap a credible dependency graph from public sources + design-partner carriers' submission data, and is the first accumulation view good enough to change one carrier's exclude/write decision?
3. **Buyer inertia — exclusion is the easy default.** Carriers may sit on blanket exclusions for a year rather than buy a model. *Test:* find the carriers/MGAs treating "we can underwrite AI when competitors can't" as a *growth* wedge (likely specialty/MGA first), not the laggards.
4. **AI-native skeptic challenge.** A reviewer will say "this is just exposure analytics." *Answer:* the defensible core is the correlated-cascade simulation over a learned AI-dependency graph — exactly what classical independent-risk models get structurally wrong, and the reason the industry admits it can't measure correlated failure today.

---

## Adversarial novelty check (log)

- "AI catastrophe model / AI peril accumulation startup" → only cyber-CAT incumbents adding AI-as-cyber-amplifier (CyberCube, Moody's RMS) and per-agent MGAs (Klaimee). No independent liability-error accumulation modeler. **Survived.**
- "silent AI liability accumulation primary insurer D&O E&O exposure" → industry articles (Gallagher, Fenwick, Insurance Business) describe the *problem* and the crude tools (exclusions, underwriting questionnaires as "the front line"); no productized model. **Survived.**
- "model correlated AI failure across insureds foundation-model dependency" → industry explicitly states *current methods do not measure correlated failure across insureds*; arXiv "Insurance of Agentic AI" frames it as open. **Survived (gap confirmed).**

Survived 3 honest kill attempts. Distinct from the ledger's assurance vein (ts-0031/0039 certify a single AI for regulatory sign-off), robot-fleet underwriting (ts-0018), and per-agent liability carriers (ts-0058) — this is a portfolio-level insurance *peril model*, not single-unit certification or coverage.
