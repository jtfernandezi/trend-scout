# Brief — ts-0032: The independent test-and-evaluation assurance harness for DoD autonomous systems

*Idea generated 2026-06-18. Brief written 2026-07-25 on re-validation. Composite 4.0. The "independent lab that proves a military AI won't do something insane — before a commander signs the fielding decision."*

---

## One-liner

An independent test-and-evaluation company that adversarially stress-tests **non-deterministic military AI and autonomous-system policies** in simulation — at a scale and rigor manual T&E structurally cannot reach — and emits the **structured assurance case** a program office needs before a commander authorizes deployment, re-run automatically on every model update.

## In plain English

The US military is buying weapons and drones that make their own decisions using AI. The problem is that this kind of AI isn't predictable the way old military software was: run the same situation twice and it can behave differently, and nobody can list in advance all the ways it might behave badly. Yet before anything gets sent to real troops, a commander has to sign a piece of paper saying it's been tested and is safe enough to use — and right now there is no good way to produce the evidence for that signature. This company is the independent testing lab that produces it: it throws millions of nasty, weird, unexpected situations at the AI inside a simulator, finds the ones where it does something dangerous or stupid, and hands the government a report that says exactly what it will and won't do and where its limits are. The Pentagon pays for this because it cannot deploy the systems it has already bought without it — and it specifically wants the testing done by someone **other than** the company that built the weapon, because you don't let a contractor grade its own homework on something that shoots.

---

## The cross (why this needs both halves)

**Frontier AI half.** Characterizing a non-deterministic policy's behavior is now a *generation* problem, not an enumeration problem. Frontier models plus adversarial scenario synthesis can propose, mutate and prioritize millions of out-of-distribution situations against an autonomy stack, cluster the resulting failures into human-readable behavioral modes, and assemble the results into structured assurance evidence. Traditional T&E is a finite, hand-authored test matrix executed on ranges — it was built for deterministic systems where coverage is a checklist, and it cannot in principle cover the behavior space of a learned policy. Adversarial simulation at frontier scale is the only method that can, and it only became practical recently.

**Structural half.** The US government has moved from *wanting* this to *funding* it, with a dated budget line:
- The **FY2026 defense budget gives AI and autonomous systems a $13.4B standalone budget line — the first time ever**; RDT&E Defense-Wide sits at $35.2B.
- The Pentagon's **AI Acceleration Strategy (2026-01-09)** directs the department to become an "AI-first" warfighting force, executed through seven Pace-Setting Projects across warfighting, intelligence and enterprise operations.
- **DTE&A** (the DoD's developmental T&E authority) has funded researchers to build a framework for structuring and executing **assurance cases for systems with autonomous capabilities**, and to work out its implications for TEV&V — i.e. the government is paying to define the artifact this company would produce.
- A live **DoD SBIR topic, "Runtime Assured Autonomy for AI-Driven Unmanned Platforms"** ($250k Phase I / $2M Phase II), plus the earlier Army contract to assess AI "unpredictable behaviors" and DIU's MYSTIC DEPOT evaluation-harness solicitation, are explicit public asks for a product that does not exist.
- Autonomous-weapons venture funding hit **$14.6B in the first five months of 2026**, so the volume of systems needing to clear a TEV&V gate is compounding fast.

Neither half alone is a company. Adversarial simulation without the government's dated assurance mandate is a research tool. The mandate without frontier-scale scenario generation is a services contract for MITRE.

---

## Beachhead → $1B path

**Beachhead buyer.** A **DoD program office or T&E authority** that must clear a TEV&V gate before a fielding decision on one specific autonomy class — and the autonomy primes who are blocked at the same gate. The clean entry is a **DIU/CSO or SBIR solicitation for a narrow class** (counter-drone, or a specific uncrewed platform), which converts "sell to the Pentagon" from a multi-year enterprise slog into a funded, scoped first contract with a named sponsor.

**Why it's a wedge, not a niche:**
1. **Per-update, not per-program.** Learned policies ship like software. Every model update invalidates the prior assurance case, so this is recurring revenue against a growing installed base — the opposite of one-time certification.
2. **Across autonomy classes.** The same harness generalizes from counter-drone to uncrewed surface/subsurface, loitering munitions, autonomous logistics and decision-support — each with its own program office and budget line inside the $13.4B.
3. **Across buyers within the mandate.** Program offices, the T&E enterprise, the primes needing an independent stamp to win, and the operational commanders who own the risk acceptance.
4. **Allied and adjacent.** NATO and Five Eyes partners face the identical gate with no domestic option; and the same independent-assurance architecture is what civil aviation (autonomous aircraft), maritime autonomy and critical infrastructure will need next.

**Path to $1B.** Becoming the standard assurance harness for a **$13.4B/yr and rapidly growing** autonomy budget — with per-program, per-update licensing plus an accumulating library of adversarial scenarios and failure taxonomies — is an Anduril-adjacent, government-anchored outcome with unusually sticky revenue. The comparison class is not SaaS; it is the third-party assurance authorities that became mandatory infrastructure in every prior safety-critical industry.

---

## Why incumbents structurally can't / won't

- **The primes (Anduril ~$28B, Shield AI ~$5B) grade their own homework.** They run internal T&E on the systems they sell. DoD explicitly wants evaluation independent of the builder, and that independence requirement is a structural moat no prime can cross without giving up the thing that makes them a prime.
- **FFRDCs (MITRE, APL) are slow and unproductized.** They do this as bespoke, staff-limited analysis at government pace. They are the incumbent *method* and simultaneously the proof that no *product* exists — and they are natural partners rather than competitors.
- **Commercial AI-eval vendors are built for LLM chatbots**, not for embodied, physics-coupled, adversarially-contested autonomy with classified contexts and assurance-case output formats.
- **Simulation vendors (the Isaac/Unity/synthetic-environment layer) sell the substrate, not the verdict.** They have no incentive to become an accountable independent authority that can say "no."
- **DoD itself is funding the framework, not building the product.** DTE&A pays researchers to define assurance cases; SBIR topics ask industry to build the harness. That is a buyer signalling a procurement, not an incumbent occupying a square.

---

## The hard part / biggest risks

1. **Government sales cycle and founder-fit.** This is the honest weak point and the reason founder-fit scores 3 rather than 4 — it needs a cleared, credible defense-native cofounder or advisor, and revenue arrives on government time. Mitigation: the SBIR/DIU on-ramp is designed exactly to fund pre-revenue technical work, and the FY26 standalone budget line means the money is appropriated rather than hypothetical.
2. **The SBIR route invites a crowd.** A $250k Phase I topic will attract many small entrants, and several will build partial harnesses. The defensible asset is not winning one SBIR — it is the accumulating adversarial-scenario library and the graded record of failures found before fielding, which compounds per program and per update.
3. **Simulation-to-reality gap.** The core technical objection: a failure found in sim may not exist in the field, and a field failure may never appear in sim. This is the company's central research problem, and the answer is calibration — grading predicted failure modes against realized range-test and operational outcomes until the harness earns the right to be believed.
4. **Classification and infrastructure burden.** Operating on classified autonomy stacks means accredited environments, cleared staff and air-gapped deployment. Expensive and slow, but also a genuine barrier that keeps commercial eval vendors out.
5. **Scope collision with runtime assurance.** The SBIR language is "runtime assured autonomy" — a monitor that constrains behavior *in flight* — which is adjacent to but distinct from pre-deployment behavioral characterization. The two may converge, and a runtime-assurance winner could extend backwards into T&E.

---

## Why-now (why not 2 years ago, why not obvious)

- **The budget line is new and dated.** AI/autonomy got its **first-ever standalone $13.4B line in FY2026**, and the AI Acceleration Strategy landed 2026-01-09. Two years ago the money was scattered and the mandate was aspirational.
- **The systems arrived before the gate did.** $14.6B of autonomous-weapons venture funding in five months means the fielding queue is now full of non-deterministic systems that the existing TEV&V apparatus was never designed to clear.
- **The government is publicly soliciting the missing product** (DTE&A assurance-case framework research, the SBIR runtime-assurance topic, MYSTIC DEPOT, the Army "unpredictable behaviors" contract) — a rare case where the buyer has written the RFP for a category that doesn't exist yet.
- **The capability is new.** Frontier-scale adversarial scenario generation over an embodied policy, with automatic failure-mode clustering, was not reliable two years ago.

## First 90 days (how you'd de-risk it)

1. **Pick one autonomy class and one open solicitation.** Counter-drone is the sharpest: high program volume, unclassified-adjacent test setups, and an obvious catastrophic-failure story. Respond to the live SBIR/DIU topic to get a named sponsor and non-dilutive funding.
2. **Build the harness against an open-source autonomy stack and break it publicly.** Take a public VLA or UAV autonomy policy, generate adversarial scenarios at scale, and publish a failure taxonomy — behavioral modes nobody enumerated by hand. This is the credibility artifact that opens program-office doors and it needs no clearance.
3. **Recruit the independence.** Land a former DTE&A / DOT&E or service T&E leader as cofounder or advisor. In assurance businesses the product is trust, and trust here is credentialed.
4. **Produce one real assurance case.** Convert the failure taxonomy into the actual document format a program office would staff toward a fielding decision, and get a T&E authority to red-line it. The deliverable format *is* the product-market fit test.
