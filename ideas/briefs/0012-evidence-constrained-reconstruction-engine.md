# Brief — ts-0133: The evidence-constrained reconstruction engine

*Idea generated 2026-07-30. Composite 4.5 — the highest-scoring entry in 140 ledger records. The "world model that reconstructs what actually happened, and can prove where every number came from."*

---

## One-liner

A reconstruction engine for physical-fact disputes: it ingests the **actual evidence record** of an incident — scene photographs, dashcam and CCTV footage, vehicle event-data-recorder and telematics logs, medical imaging, site scans, deposition testimony — and generates a **physics-consistent, navigable simulation** of what happened, together with the machine-readable **reliability record**: which piece of evidence constrained which parameter, the uncertainty envelope on each, and every alternative fact pattern the evidence still permits.

## In plain English

When someone is badly hurt in a truck crash or a fall, the fight in court is over *what actually happened* — how fast the truck was going, who braked and when, whether the floor was wet, whether the injury is even consistent with the impact. Today a law firm pays an engineer $25,000 to $50,000 to hand-build a three-dimensional cartoon of their preferred version of events, and the other side pays a different engineer to hand-build the opposite cartoon. Both take months. Neither can really be checked.

This company builds a machine that does it properly. Feed it the real evidence — the photos, the dashcam video, the truck's own black box, the CT scans, the sworn testimony — and it produces an accurate, physically realistic replay you can walk around inside and view from any angle. More importantly, it shows its work: which piece of evidence pinned down which fact, how certain each number is, and which *other* versions of events the evidence still allows. Law firms and insurance companies pay for it because it costs a fraction of what they pay now, arrives in days rather than months, and — because it can prove where its answers came from — it survives a judge asking whether the computer can be trusted.

---

## The cross (why this needs both halves)

**Frontier AI half — world models stopped being demos this quarter.**

- **DeepMind Genie 3** generates *interactive* 3D worlds at 24fps/720p with simulated physics, collision and persistence — a world you control and probe, not a video you watch.
- **World Labs' Marble**, with its **World API** exposing persistent assets and programmable interfaces, went live at marble.worldlabs.ai as of **2026-07-28** — two days before this run.
- The research layer has moved past aesthetics to physical grounding: **Mirage2Matter** (physically-grounded Gaussian world models recovered from video) and Stanford CICL's **counterfactual world simulation models**, which explicitly answer causal questions from CCTV evidence by re-running the world with one variable changed. That last paper is, in effect, the academic statement of this product.
- And the **July 9, 2026 tri-lab price war** (Grok 4.5, the GPT-5.6 family, Muse Spark 1.1, then Kimi K3 and Claude Opus 5) put high-quality inference at ~$1/M input and $4-6/M output. That matters specifically here: the product is not "generate *the* reconstruction," it is "generate and score **thousands** of candidate worlds and keep the ones the evidence permits." That search was uneconomic six months ago.

**Structural half — a $443B system whose evidence layer is still artisanal.**

- US tort costs run ~**$443B/yr**, and the physical-fact core is inflating: **15 trucking/automotive verdicts totalling >$4.1B in 2024**, median nuclear verdict at **$36M** (up ~50% from 2013), truck-tractor filings growing **3.7%/yr** since 2014.
- The evidence underneath is hand-made. A routine reconstruction is **$3-10k**; a major trucking case is **$25-50k+**. It is produced by forensic-engineering firms (Rimkus, Exponent, ARCCA) and animation studios (Austin Visuals, AttorneyProof3D, High Impact) on pre-AI deterministic tools (FARO Zone 3D, HVE, PC-Crash, v-Crash), on a months-long cycle.
- **The courts are writing the rules for this product right now.** Proposed **FRE 707** would subject machine-generated evidence to Rule-702-style judicial gatekeeping — sufficient facts or data, reliable principles and methods, reliable application. It was approved by the Judicial Conference, then sent back for revision by the Standing Committee in **June 2026**; **2027-12-01** is the earliest effective date.

**Neither half is a company.** A world model without the evidentiary constraint solver is a prettier cartoon — and cartoons are exactly what the incumbents already sell. The tort system without world models is what it has been for thirty years. The cross only works because the *new* gating requirement is **defensibility**, and defensibility is a property of the generation process, not of the render: you get it by constraining generation against evidence and carrying the uncertainty forward, which is a thing only an AI-native architecture can do.

---

## The product, concretely

Three layers, and the order matters — the moat is in layers 2 and 3, not layer 1.

1. **World reconstruction.** Fuse the heterogeneous evidence record into a metric 3D scene and a dynamics model: photogrammetry and scans for geometry, video for motion, EDR/telematics for vehicle state, medical imaging for injury mechanics.
2. **The evidentiary constraint solver — the actual product.** Treat every disputed quantity (closing speed, brake application time, coefficient of friction, sightline occlusion, time-to-collision) as a free parameter, and let the evidence *constrain* rather than *specify* it. Sample the space of worlds, discard the ones inconsistent with any evidence item, and return the **admissible set** with its posterior — not a single answer. This is the inversion of every incumbent tool, which requires the expert to assert the scenario up front.
3. **The reliability record.** Emit, automatically, the artifact an FRE 707-style gate asks for: an evidence-to-parameter dependency graph, the uncertainty envelope on each claim, the sensitivity of the conclusion to each evidence item, and the surviving alternative fact patterns. This is also the honest answer to the deepfake objection — the output is not "trust this video," it is "here is the constraint set, and here is everything it rules out."

The counterintuitive design consequence: **do not optimise for photorealism.** Realism is what the animation studios sell and what makes judges nervous. Optimise for auditability, and let the render be deliberately, visibly diagrammatic.

---

## Beachhead → $1B path

**Beachhead buyer.** The trial lawyer or litigation-support director at a **commercial-trucking / catastrophic-injury plaintiff firm**, at the moment they retain a reconstruction expert. Chosen because: the budget already exists ($25-50k, on a case worth $1M+); the buyer is sophisticated, contingency-funded and unusually willing to try new tooling for an edge; the decision is per-case, so there is no enterprise procurement cycle; and there are tens of thousands of such firms — fragmented, not concentrated, which is what killed ts-0051, ts-0090 and ts-0111.

**Why it's a wedge, not a niche.**

1. **Both sides of the same case.** Once the plaintiff bar uses it, defence counsel and their carriers must answer it — and the natural answer is to run the same engine. That is a second buyer acquired by the first buyer's adoption.
2. **Upstream into claims, where the volume is.** Roughly 95% of disputes never reach a jury. The same engine that reconstructs one case for trial can triage causation on **millions** of first-party auto and property claims — the wind-vs-wear roof dispute, the staged-accident flag, the injury-inconsistent-with-impact flag. This is the volume business, and it is a P&C claims-operations budget, not a legal budget.
3. **Across every physical fact pattern.** Auto and trucking first, then premises liability, product liability, construction defect, med-mal mechanism-of-injury, workers' comp, marine and rail.
4. **Displacing a services market with public comps.** Exponent alone runs ~$550M of revenue as a listed forensic-engineering firm. The engine's target is the analysis layer under that entire industry.

**Path to $1B.** Two stacked revenue models: per-case pricing into a fragmented legal market at a fraction of the incumbent $25-50k, and seat/volume licensing into P&C claims operations. The end state is owning the **format** — if your reliability record is what carriers accept in settlement and what courts accept at trial, you are the evidentiary substrate for physical-fact disputes, which is an ICE/Verisk-shaped outcome rather than a SaaS-shaped one.

---

## Why incumbents structurally can't / won't

- **Demonstrative-evidence studios (Austin Visuals, AttorneyProof3D, High Impact, DecisionQuest)** sell artist-hours. The engine deletes the thing they invoice. They have no model, no physics substrate and no data asset.
- **Forensic-engineering firms (Rimkus, Exponent, ARCCA)** sell an expert's personal credibility on the stand and carry the professional liability for it. Productizing the analysis cannibalises the billable hour *and* changes their liability posture — the classic innovator's dilemma, with a malpractice carrier enforcing it.
- **Reconstruction software (FARO Zone 3D, HVE, PC-Crash, v-Crash)** are deterministic forward solvers: they answer *"simulate the scenario I specify."* The whole value here is the inverse problem — *"enumerate every scenario the evidence permits"* — which is a different architecture, not a feature.
- **Capture-layer entrants (SkyeBrowse, $2.3M seed, drone scene documentation)** feed the incumbents' solvers. They are a data source, and a plausible partner, not a competitor.
- **Legal-AI leaders (EvenUp, Darrow, Theo AI, Alexi, Eve)** are entirely on the document layer — demand packages, case sourcing, outcome prediction. None of them touches the physical fact pattern, and none has a physics or 3D competence. EvenUp is the most likely eventual acquirer or fast-follower and should be watched; today it is not in this business.
- **World-model labs (World Labs, DeepMind, Odyssey, AMI)** sell horizontal creation APIs into 3D and content workflows. The evidentiary constraint solver, the uncertainty record and the adjudicated-outcome corpus are application-layer assets, and the ts-0063 kill is instructive in reverse: the labs land-grab the *foundation*, which is precisely why the defensible position is a vertical asset they will never build.

---

## What compounds

1. **The adjudicated-outcome corpus.** Every reconstruction, paired with its full evidentiary record *and* its eventual resolution (verdict, settlement amount, claim disposition), is a dataset that does not exist anywhere. It makes the engine's priors better and, more valuably, turns into a predictive product: what is this fact pattern worth?
2. **The physics-constrained tuning.** Getting a world model to respect conservation laws, vehicle crush dynamics and human biomechanics under evidentiary constraint is real engineering with a real learning curve.
3. **Format lock-in.** Once carriers accept your reliability record in settlement negotiation, the format is the standard and the switching cost is the entire claims-adjudication workflow.

---

## Risks, honestly

- **Admissibility is the existential one.** If courts apply an FRE 707-style gate and reject generatively-produced reconstructions outright, the trial use case dies. Mitigation: ~95% of cases settle, so mediation and claims triage carry the business regardless — but the founder should assume the first two years are spent on the reliability record and the peer-reviewed validation, not the renderer. Budget for funding the validation science.
- **The deepfake backlash lands on this product first.** Judges are being trained to distrust AI-generated imagery at exactly the moment this ships. The diagrammatic-not-photorealistic design choice above is the answer, and it needs to be a founding commitment, not a later concession.
- **Physics fidelity is genuinely hard.** Current world models are visually consistent, not metrically trustworthy. Closing that gap for vehicle dynamics and biomechanics is the core technical risk and the reason this needs a serious technical cofounder — computer vision plus physical simulation, ideally someone who has shipped inverse-problem solvers.
- **Liability.** If a reconstruction is wrong and a case is lost, who is responsible? The likely structure is that a licensed expert still signs, with the engine as their instrument — which is a smaller business at first, but it is also how every prior instrument entered a courtroom.
- **EvenUp fast-follows.** It has the plaintiff-PI distribution and the capital. The defence is the physics competence and the corpus, both of which take time to build and neither of which is on their roadmap today.

---

## First 90 days

1. **Ten reconstructions, done retroactively, for free.** Get closed trucking cases from two or three plaintiff firms — cases where the outcome is known and the incumbent's $40k reconstruction is on file. Reproduce them. The pitch writes itself if the engine matches the expert on the facts, discloses uncertainty the expert asserted away, and costs a hundredth as much.
2. **Recruit the expert, not just the engineer.** A credentialed accident reconstructionist who will sign outputs is both the compliance path and the domain teacher. This is the second hire.
3. **Write the reliability record spec in public.** Publish what an FRE 707-compliant machine-evidence disclosure should contain, before the rule is finalised. Whoever defines the artifact has an outsized chance of becoming the thing the artifact is measured against — and the rule is in revision right now, which is a window that closes.
4. **Get one carrier's claims-innovation team in the room early.** Not to sell — to learn where causation disputes actually cost them money, because that is where the volume business is and it is invisible from the litigation side.

---

## Verdict

Highest-scoring idea in the ledger, and the first survivor in ten runs. It clears all three gates cleanly: novel (three kill attempts found only hand-animation studios, deterministic solvers and document-layer legal AI), AI-native (the inverse-problem constraint solver over generated worlds is impossible without frontier world models and cheap enough inference to search thousands of them), and venture-scale (a $443B system, a fragmented buyer base with an existing five-figure per-case budget, and a claims-operations expansion with orders of magnitude more volume).

It needs a technical cofounder with computer-vision-plus-physics depth, and it needs a founder willing to spend two years making a thing defensible rather than impressive. Both are the right kind of hard.
