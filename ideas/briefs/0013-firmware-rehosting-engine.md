# Brief — ts-0141: The firmware re-hosting engine

*Idea generated 2026-08-01. Composite 4.3 — second-highest of 152 ledger entries, and the most immediately buildable of the four live candidates. The "machine that moves a shipped product's software onto a chip it can actually buy, and proves it still behaves the same."*

---

## One-liner

An autonomous, **verification-first** firmware migration engine: give it a shipped embedded product's source, its build, and the replacement part it must move to, and it re-hosts the firmware onto the new memory device, microcontroller or architecture, **proves behavioural equivalence against the incumbent binary on real hardware**, and emits the change-control and requalification evidence package a regulated OEM needs to actually ship the change.

## In plain English

Almost everything with a plug or an engine — a car's dashboard, a factory controller, an infusion pump, a lift controller, a railway signal box — runs on a small memory chip that somebody chose fifteen years ago. Those chips are now vanishing, because the factories that made them have been converted to making memory for AI data centres, which this year swallow roughly seventy percent of the world's supply.

When a chip is discontinued, the manufacturer has to redesign the product and rewrite the software that runs on it — and then prove to a regulator, or to a carmaker's change board, that the new version behaves *exactly* like the old one. That job costs between twenty thousand and two million dollars every time it happens, takes a year or more, and is done by hand by contract engineers who are already fully booked.

This company builds a machine that does it. Hand it the old software and the replacement chip; it rewrites the software, runs it side by side against the original on real hardware until it can demonstrate the behaviour is identical, and produces the paperwork proving it. Manufacturers pay happily, because the alternative is a production line that stops.

---

## The cross (why this needs both halves)

**Frontier AI half — long-horizon agents plus a hard, automatic checker.**

- Every frontier lab converged on the **multi-hour agent** in a single month: Grok 4.5, the GPT-5.6 family, Kimi K3, **Claude Opus 5 on 2026-07-24** (near-Fable performance at roughly half the input price), **DeepSeek-V4-Flash on 2026-07-31**. The stated target of all of them is carrying a long task from research through code to structured output without losing the plan.
- The July 9 price collapse put high-quality inference at ~$1/M input, so the economics of an agent that iterates for *days* against a physical test rig now work.
- Critically, this task sits in the regime where 2026 agents are strongest and where the general legacy-migration tooling explicitly fails. Migration is **verifiable end to end** — differential execution against the incumbent binary, timing and memory-map equivalence, peripheral register traces, hardware-in-the-loop replay of recorded field data. There is a machine oracle. The published state of the art on AI legacy migration notes plainly that *"testing embedded systems is not straightforward with LLM agents"*, which is exactly why the enterprise-modernisation crowd stopped at the boundary of this market.
- Note the shape it shares with the month's headline capability: the HAWK cryptanalysis result worked because a formal object met an automatic checker met enough compute. This is the industrial version of the same regime.

**Structural half — the AI buildout is eating the memory the rest of the economy runs on.**

- **Data centres consume ~70% of all memory chips made in 2026**, against 20-30% in 2022. DRAM supply grows only 16% and NAND 17%, versus a 20-30% historical norm.
- **Q2-2026 conventional DRAM contract prices rose a record 90-95% quarter-on-quarter**; DDR2 rose 55-60% with a further 35-40% expected in Q3; spot DRAM is up ~700% year on year; automotive LPDDR4 rose ~70% by January 2026.
- The pain is concentrated exactly where products last longest: **automotive dashboards, gateways and legacy infotainment run mainly on automotive-grade DDR3**, and industrial systems on DDR3 or high-reliability DDR2 — the legacy nodes being starved as fabs convert to HBM.
- **No meaningful new capacity arrives until late 2027-2028**, and SK Hynix warned on 2026-07-10 that the shortage may run past 2030. This is a permanent reallocation of wafer capacity, not a cycle.
- The cost of the consequence is documented: **Z2Data puts a single obsolescence-driven redesign at $20,000 to nearly $2 million**, and in automotive, industrial and medical *"even minor component changes can trigger cascading validation requirements, extending delays from weeks to months."*

**Neither half is a company.** Component obsolescence has existed forever and was, until this year, a manageable trickle absorbed by sustaining-engineering teams and contract shops. Long-horizon coding agents without this forcing function are a general code-migration play — a crowded, undifferentiated market with no urgency. The cross works because the arrival rate of forced redesigns has stepped up sharply and permanently at the same moment the tooling to absorb them became possible, and because the affected products are the ones where *proof* of equivalence, not code, is the deliverable.

---

## The product, concretely

Three layers. As with ts-0133, the moat is in layers 2 and 3, and a founder who leads with layer 1 will build a commodity.

1. **The re-hosting agent.** Ingest the source, build system, linker scripts, board support package, RTOS configuration and datasheets for both parts. Produce a candidate port: memory map, timing, DMA and peripheral differences, driver and HAL substitutions, cache and alignment behaviour, and — where the move is cross-architecture — calling convention, endianness and intrinsics.
2. **The equivalence harness — the actual product.** Build the rig that can *demonstrate* the port is behaviourally identical: differential execution of old and new binaries against recorded field traces, cycle- and interrupt-level timing comparison, peripheral register-level diffing, fault injection, worst-case-execution-time bounds, and coverage-directed test generation aimed at the divergence surface rather than at line coverage. This is the hard engineering, it is where competitors will stop, and it is the thing the customer is really buying.
3. **The evidence package.** Emit, automatically, what a Tier-1 change board or a regulated change-control process asks for: an impact analysis, a requirements-to-test traceability matrix, the equivalence argument with its residual-risk statement, and the delta-qualification plan. In automotive this maps to the ISO 26262 change-impact and confirmation-measure path; in medical to IEC 62304 change control; in aerospace to the DO-178C change-impact analysis.

**The counterintuitive design consequence:** do not sell "AI writes your firmware." Sell **"here is the proof it is the same product."** The customer's risk is not that the code is bad; it is that they cannot defend the change. Positioning on autonomy will lose deals that positioning on evidence wins.

---

## Beachhead → $1B path

**Beachhead buyer.** The embedded-software or sustaining-engineering lead at an **industrial-controls or automotive Tier-1 supplier**, at the moment a product-change notification or end-of-life notice lands on a memory part inside a product with a 10-15 year service life. Chosen because:

- The budget **already exists** and is large per instance ($20k-$2M), so there is no new line item to create.
- The trigger is involuntary and dated — a PCN arrives with a last-time-buy date on it, which is a clock, not a preference.
- The decision is made by an engineering manager on a per-part basis, not by a CIO in an annual cycle.
- The incumbent alternative is a contract engineering firm whose quote is the reference price, which makes the value proposition arithmetic rather than rhetorical.
- Industrial controls first, before automotive: the same technical problem with a lighter functional-safety burden, which is the right order for building the evidence track record you will need to sell into automotive and medical.

**Why it's a wedge, not a niche.**

1. **Memory is the wave; obsolescence is the ocean.** Legacy DRAM is the acute forcing function that gets you in the door in 2026-2028, but the general case — any component going end-of-life in a long-life product — is permanent and industry-wide, and every obsolescence-intelligence vendor exists because of its scale.
2. **From reactive to subscription.** Once the engine has re-hosted a product line once, it holds a machine-readable model of that product's hardware dependencies and its equivalence harness. That converts to a recurring "silicon independence" subscription: continuous monitoring of every part in the BOM against lifecycle risk, with a **pre-validated migration path already built and tested** for each high-risk part. This is the recurring-revenue answer to the episodic-buyer failure mode that killed ts-0121 and ts-0149.
3. **RISC-V is the same product with a much bigger market.** The entire industry wants off proprietary instruction sets and the blocker is exactly this: porting cost and requalification risk on shipped products. An engine that can prove equivalence across a memory-part change is the same engine that proves it across an architecture change.
4. **The post-quantum retrofit is the third act.** The G7 financial-sector roadmap (2026-01-13) targets full transition by 2035, CNSA 2.0 deadlines are set, and the July 28 HAWK break is a live reminder that cryptographic assumptions can fail faster than product lifecycles. Every one of these same long-life devices has hardcoded cryptography that has to change, on hardware that may not have room for it — and the deliverable is, again, verified equivalence plus an evidence package. This ledger killed the discovery-and-inventory version of that market (ts-0128) because SandboxAQ and IBM own it; the *engineering execution* on the embedded installed base is not theirs.
5. **The corpus compounds.** Every completed migration adds verified part-to-part and architecture-to-architecture knowledge, a reusable harness for that device family, and — most valuably — a record of which equivalence arguments survived a real change board. None of that is available anywhere else, and none of it can be scraped.

**Sizing the path honestly.** Directly addressable today: obsolescence-driven redesign spend, which at $20k-$2M per event across tens of thousands of annual EOL and PCN events is credibly a few hundred million dollars a year of *displaceable engineering cost*, sitting inside an embedded software services market of $30B+. The $1B outcome comes from converting that into per-product-line recurring revenue across automotive ($3T industry), industrial, medical and aerospace, plus the architecture-migration and cryptographic-retrofit waves behind it. This is a **4 on market**, not a 5 — the path is credible but it runs through a slow-moving buyer, and a founder should underwrite it on that basis.

---

## Why incumbents structurally can't or won't build it

- **Obsolescence-intelligence platforms — Z2Data (Vituoso), SiliconExpert, PartAnalytics, Accuris, ComponentSense.** Their entire product is *notification and sourcing*: aggregated PCN feeds from 1,000+ manufacturers, lifecycle risk scores 12-24 months ahead, AI-driven alternative-part recommendations. Their product ends at "here is a suggested replacement part" — precisely where the expensive work begins. They are data companies with no compiler, toolchain, RTOS or hardware-test competence, and acquiring it would be a different company.
- **Embedded toolchain vendors — IAR, Green Hills, Segger, Vector, Lauterbach.** They sell per-architecture, per-seat licences and derive their value from deep integration with specific silicon. A tool that makes silicon interchangeable is directly adverse to how they are paid.
- **The semiconductor vendors themselves.** Their business model is lock-in. Portability is not something they are slow to build; it is something they actively do not want to exist. This is the cleanest structural conflict in the whole idea, and it is the reason the square has stayed empty through a shortage this severe.
- **Contract firmware-engineering firms — Promwad, Lemberg and hundreds of regional equivalents.** They already do exactly this job, as billable hours. Productising it destroys their revenue model. Same disqualification that left ts-0133's square open.
- **The AI legacy-modernisation crowd.** Focused on mainframe, COBOL and enterprise application migration, where the code is business logic and the test oracle is a database. Their own published assessments concede that embedded and terminal-based systems are not straightforwardly testable with agents — they have named the boundary and stayed on the other side of it.
- **The big EDA vendors (Synopsys, Cadence, Siemens EDA).** They sit on the silicon-design side of the line, not the customer's-firmware side, and their acquisition logic points at design and verification IP, not at OEM sustaining engineering.

---

## Scoring

| dimension | score | reasoning |
|---|---|---|
| Novelty | 4 | Kill checks returned obsolescence *data* vendors, firmware *services* firms and generic AI coding assistants — no productised autonomous, verified re-hosting engine. Not a 5 because AI code migration broadly is a hot and crowded field; the differentiation is the verification harness and the evidence artifact, which is defensible but must be built before it is visible. |
| Why-now | 5 | Q2-2026 DRAM contract prices +90-95% QoQ; data centres at ~70% of memory output versus 20-30% in 2022; legacy DDR2/DDR3 being starved; no new capacity until late 2027-2028; and the July-2026 convergence on multi-hour agents. Both halves are dated to within weeks. |
| Market | 4 | Large and permanent, but reached through a slow, conservative buyer. Credible $1B path via subscription conversion, architecture migration and cryptographic retrofit; not an obvious-massive-market 5. |
| Defensibility | 4 | Compounding corpus of verified migrations, per-device-family harnesses, and a record of equivalence arguments that survived real change boards. Plus the structural fact that the data owners are adverse to the product. |
| YC-fit | 4 | Hard technical thesis, physical-world adjacent, clear "makes something people want" story with a documented reference price. Not on the Fall-2026 RFS, which by this project's own exclusion rule is a point in its favour. |
| Founder-fit | 5 | Genuinely ambitious systems engineering — compilers, RTOS internals, hardware-in-the-loop test infrastructure, formal-ish equivalence argumentation. Requires a serious embedded/compilers cofounder, which the rubric now treats as a feature. The operator's edge is the GTM: this is sold on evidence and risk transfer, which is a strategy sale, not a developer-tools sale. |

**Composite 4.3.**

---

## Biggest risks, honestly

1. **Safety-critical firmware is the least forgiving place to put an autonomous agent.** A missed timing divergence in a brake controller is not a bug report. Mitigation is architectural, not aspirational: the agent's output is never trusted, only the harness's evidence is, and the harness must be built first. Expect the first eighteen months to go into verification infrastructure.
2. **The customer still owns qualification.** The engine reduces engineering time; it does not remove the change board, the regulator or the delta-qualification test campaign. The realistic claim is "70% of the engineering, 100% of the evidence prep," and a founder who over-claims will lose the first regulated customer permanently.
3. **The acute trigger may soften.** New memory capacity arrives late 2027-2028. If the shortage eases faster than expected, the urgency premium fades — though component obsolescence itself is structural and permanent, so the product survives, more slowly. Underwrite the business on the general obsolescence wave and treat the DRAM crunch as the go-to-market accelerant, not the thesis.
4. **Sales cycles are brutal.** Automotive Tier-1s and medical OEMs move in quarters at best. The industrial-controls beachhead is chosen partly to get revenue and reference evidence before entering that world.
5. **A well-capitalised adjacency could enter.** Z2Data or SiliconExpert could acquire an embedded services firm; a toolchain vendor could change strategy. The defence is speed on the harness and the corpus — the part that takes real time to accumulate and cannot be bought.

---

## What the operator should do next

1. **Three conversations, in this order.** (a) A sustaining-engineering manager at an industrial-controls OEM: how many EOL-driven redesigns did you do last year, what did each cost, and what did the change board actually demand? (b) A firmware lead at an automotive Tier-1: what would it take for you to accept a machine-generated port, and what evidence would your change board require? (c) A contract firmware house: what fraction of your backlog is obsolescence-driven porting right now? That last one is the fastest read on whether the wave is really arriving.
2. **Build the harness before the agent.** The demo that closes a customer is not "the AI ported it" — it is "here are two boards running old and new firmware against the same recorded field trace, and here is the divergence report." That demo is buildable with one device family and no customers.
3. **Pick one device family and go deep.** A single automotive-grade DDR3 part with a large installed base, or one popular EOL'd Cortex-M family, is enough to build the whole stack against. Breadth is the second-year problem.
