# ts-0201 — Cut policy: force-controlled learned manipulation for protein fabrication

**Date:** 2026-08-13 · **Status:** new · **Composite:** 4.1
**Cross:** dexterity-first robot foundation models with force sensing (July–August 2026) × the physical removal of the fabrication-floor workforce

---

## The one-line version

Put force-controlled learned manipulation policies on the meat plant's fabrication
floor — the deboning, breaking and trimming stations that still need 60–80 people
per line and that forty years of mechanical automation has failed to take — and
sell it **per carcass against the wage line**, not as capital equipment, with the
yield gain as the second and larger revenue argument.

## In plain English

In a meat plant, the hardest and worst job is breaking down carcasses: deboning
hams, taking chicken breasts off the bone, trimming fat. Every animal is a
slightly different shape, so machines have never managed it — it still takes
sixty to eighty people standing in a cold, wet room with knives. Plants can't
fill those jobs any more, both because the workforce is being deported and
because three-quarters of the people quit within a year anyway. In 2026 robots
finally learned to handle soft, uneven, unpredictable things *by feel* rather
than by following a fixed program. This company puts those robots on the cutting
line and charges the plant a few cents per animal — less than the wages it
replaces, and it gets more usable meat off each bone than a tired person on hour
nine of a shift, which for a plant is worth more than the labour saving is.

---

## Why now — and why not eighteen months ago

**The capability half moved in one quarter.** Until 2026, robot manipulation of
irregular biological material meant *vision-planned rigid trajectories*: scan or
X-ray the piece, estimate the skeleton, compute a cut path, execute open-loop.
That is what every incumbent ships. What changed:

- **Gemini Robotics 2** (late July 2026) unified vision, language and motion
  control, and on **Apptronik Apollo 2** with a dexterous hand completed
  multi-finger tasks that require *compliance* rather than position accuracy —
  tying trash bags, unscrewing light bulbs, sealing resealable bags.
- **RLWRLD's RLDX-1** is explicitly dexterity-first and adds the two things
  prior VLAs lacked for wet, irregular work: **force sensing and context
  memorisation**. RLWRLD's own framing of its target market is "dexterous labour
  worth trillions."
- **Xiaomi-Robotics-1** shipped as **open weights**, trained on **100,000+ hours
  of real manipulation across 1,700+ scenarios**, reporting no performance
  saturation as data and model size scale. **Genesis GENE-26.5** targets
  dexterous manipulation directly.
- The field's own description of the moment: robotics' **"GPT-2.5 moment"** —
  capability real, scaling laws emerging, lab-to-production gap wide.

Open weights matter specifically here: a plant is a data-rich, network-hostile,
washdown environment, and the policy has to run on-site.

**The structural half moved at the same time.** ICE reported **over 1.2M removals
in FY2025** with **FY2026 projected above 1.5M**. Immigrants are **33% of
meatpacking workers**, 25% of agricultural workers and 54% of graders and
sorters. US meat processing facilities ran 2025 at **only 87% of targeted
workforce capacity**, with annual turnover **above 75%** at some large plants,
and **a single cutting-and-deboning line needs 60–80 workers**. This is not a
wage-inflation story; the people are being physically removed and are not being
replaced.

**And the target is documented as unsolved.** The literature is blunt: automated
deboning of specific livestock sections **remains limited to laboratory
settings**, and full automation is "a long way" off. The robotic meat processing
equipment market is only **$2.6–3.8B growing ~9%** — small precisely *because*
the machines never took the labour. That number is the trap in this idea, and
the pricing model below is the answer to it.

**Neither half alone is a business.** Force-controlled policies without a
collapsing workforce is a science project sold into a capex-averse industry with
20-year machine amortisation. A collapsing workforce without force control is
what the industry has had since 2020, and its answer has been line-speed
petitions and H-2B lobbying.

---

## The beachhead

**Buyer:** the VP of operations at a US **pork or beef fabrication plant**, at the
moment a shift cannot be staffed.

**Why this station:** the fabrication floor is simultaneously the
highest-headcount, worst-turnover and least-automated part of the building. It is
also where the economics are legible in one shift — every plant already weighs
yield per carcass on its own scale, so the value proposition is measured, not
argued.

**Why pork/beef before poultry:** poultry is where the incumbents are strongest
(high-volume, more standardised birds, TORIDAS-class machines already installed)
and where the USDA-funded academic centre is concentrated. Pork and beef
fabrication has higher piece-to-piece variance — which is exactly the regime
where a learned compliant policy beats a planned rigid one, and exactly the
regime where fixed automation has failed hardest.

**First contract shape:** one station, one cut, paid per carcass processed, with a
yield floor guarantee. Not a robot sale. Not a pilot fee.

---

## The path to $1B

The expansion is along the axis of *wet, deformable, never-identical biological
material*, which is the whole manual layer of food manufacturing:

1. **Pork/beef fabrication** (beachhead) — deboning, breaking, trimming.
2. **Across species** — poultry further-processing, lamb, seafood.
3. **Along the line** — trimming, portioning, offal and rendering, produce
   packing and grading.
4. **Across the industry** — the same policies, retrained, are the manual layer
   of food manufacturing generally.

**The sizing argument, stated honestly.** The equipment market is $2.6–3.8B and
that is *not* the market. US meat and poultry processing employs roughly half a
million people, so the US direct-labour pool is on the order of **$20–25B/yr**,
and global protein processing is several times that. Capturing 5–10% of the US
labour line alone is $1–2.5B of revenue. **This only clears the venture-scale
gate if it is sold as labour, per unit of output.** Sold as machines it is a
niche capital-goods business inside JBT Marel's category, and it should be killed
rather than built that way.

There is a second, larger revenue line: **yield**. A rigid machine must optimise
against an *estimated* skeleton and execute open-loop, so it leaves meat on the
bone as a safety margin. A compliant policy closes the loop on contact force and
can cut closer. On a beef carcass, single-digit-percentage yield improvement is
worth more per animal than the labour it replaces — and it is the argument that
survives after wages normalise.

---

## Why incumbents structurally can't or won't build it

**The protein equipment OEMs — wrong architecture and wrong business model.**
Mayekawa, JBT Marel, Frontmatec, BAADER and Stäubli sell **one bespoke mechanical
machine per cut per species**, amortised over twenty-year capital installs through
dealer networks. Mayekawa's TORIDAS does whole chicken legs; HAMDAS-RX debones
pork ham *only after a human performs the pre-cut*. JBT Marel's own framing of AI
is helping machines "see better and work more independently from operator
judgment" — vision and X-ray cut planning driving rigid trajectories. A per-cut
service that improves weekly cannibalises their machine margin, replaces a
capital sale with a usage fee, and requires a data flywheel their architecture
has no place for. This is a clean innovator's dilemma, not a capability gap.

**The horizontal dexterity companies — wrong altitude.** RLWRLD, Dyna Robotics,
FingerVision and Ubiros sell the model, the tactile sensor or the gripper. None
of them sells *the cut*, and none carries FSIS sanitary-design responsibility or
yield accountability. They are suppliers to this company, or acquirers of it.

**The one AI-native food company — adjacent, and the real risk.** Chef Robotics
has a food foundation model and shipped a bimanual physical-AI system in May 2026,
but it is in **prepared-meal assembly** for ghost kitchens, catering, airline food
and institutional dining: a portioning problem with no blade, no bone and no
dollars-per-pound yield economics. It is the nearest neighbour and it is not in
this square today. See the risk section.

---

## Defensibility

- **The data asset is unbuyable and self-pricing.** Every cut generates paired
  force/torque traces, carcass geometry, and a *measured* yield outcome in $/lb
  on the customer's own scale. Nobody can buy this: it does not exist outside
  running plants. It compounds per species and per cut, and because the outcome
  label is a dollar figure the flywheel is economic, not merely technical —
  each additional plant makes the policy visibly more profitable to the next.
- **The regulatory surface is a second, slower moat.** FSIS sanitary design,
  HACCP integration, 180 °F washdown ratings and USDA equipment acceptance are
  each a multi-quarter grind. That is a cost to the founder in year one and a
  wall to a fast follower in year three.
- **Per-outcome contracting is the structural defence against the platform-owner
  rule.** The lesson from this run's ts-0198 kill (Intrinsic's Automate 2026
  cell) is that runtime owners give away every layer that sells more robots. They
  cannot give away a per-carcass contract with proprietary yield data attached,
  because they do not have the data and do not want the operational liability.

---

## Risks, in order of how likely they are to kill this

1. **Chef Robotics walks.** It says out loud that it is building "the physical AI
   layer for food," it already has a food foundation model that generalises across
   hardware embodiments, and it already sells to food manufacturers. Fabrication
   is a harder physical problem than prep-table assembly, but a well-capitalised
   company with the model and the customer relationships does not have far to
   walk. **Mitigation is speed into the hardest cut**, not into the easiest one:
   the defensible position is bone-contact deboning, where the data is hardest to
   get and the yield economics are sharpest.
2. **The binding constraint turns out to be hardware, not policy.** Blade contact
   against bone, under washdown, at line rate, with FSIS sanitary design, may
   simply require an end effector nobody has built — in which case this becomes an
   equipment company competing on capital cost against JBT Marel, which is the
   wrong fight and the one every prior attempt has lost. **This is testable early
   and cheaply and should be tested before anything else.**
3. **Safety and liability.** A force-controlled blade in a room with people is a
   regulatory and insurance problem before it is a technical one. Expect fully
   caged cells first, which constrains where in the line you can land.
4. **Government-funded incumbency (the ts-0139 / ts-0185 pattern).** A USDA NIFA
   grant funds a Center for Scalable and Intelligent Automation in Poultry
   Processing. This is a *weaker* instance than the Senvol/Navy case that killed
   ts-0185 — a university centre produces papers and graduates, not an acceptance
   standard a private company must sell against — but it does mean the poultry
   half of the problem has an academically staffed competitor, which is a further
   reason to start in pork/beef.
5. **The buyer is slow and consolidated.** Four companies process most US beef.
   That is good for a landed reference and terrible for a first sale.

---

## Scores

| Dimension | Score | Reasoning |
|---|---|---|
| Novelty | 3.5 | Survived three kill attempts, but Chef Robotics' food foundation model shares the ambition, incumbents market "AI" heavily (vision, not force), and a USDA-funded academic centre works the poultry half. |
| Why-now | 4.5 | Force-sensing dexterous VLAs shipped July–August 2026; deboning documented as still lab-only; 1.5M removals projected FY2026; plants at 87% staffing with >75% turnover. Both halves are weeks old. |
| Market / venture-scale | 4 | US protein-processing direct labour ~$20–25B/yr, global several times that — but **only if priced per unit of output**. The $2.6–3.8B equipment market is the trap, and building it as equipment fails the gate. |
| Defensibility | 4.5 | Paired force/geometry/yield data per carcass is unbuyable, compounding and self-pricing; FSIS sanitary validation is a second moat; per-outcome contracts resist the platform-owner rule. |
| YC-fit | 4 | Hard physical AI replacing a labour function outright; sits squarely in "New Operating Systems for the Physical World." |
| Founder-fit | 4 | Demands a serious robotics/ML cofounder, which the rubric rewards; the operator's edge is the plant-by-plant GTM, which is relationship-heavy and winnable. |

**Composite: 4.1**

---

## The next action — one week, one plant, no novelty search

The question a plant manager will actually argue is not "is it cheaper than
labour." It is: **what does a learned force-controlled policy do on a fabrication
line that a vision-and-X-ray-planned rigid machine cannot?**

The candidate answer is the yield argument above: the rigid machine plans against
an estimated skeleton and executes open-loop, so it must leave margin on the
bone; a compliant policy closes the loop on contact force and cuts closer. That
is a claim, and it is falsifiable in a single shift on a single station, because
the plant already weighs the output.

Get one pork fabrication plant to run the comparison. That is worth more than
another twenty kill checks.
