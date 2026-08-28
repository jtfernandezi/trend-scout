# Scoring Rubric

**Rubric version 3** (effective 2026-08-19). Every scored ledger entry carries
`rubric_version`. Composites are comparable only within a version:
v1 (2026-06-16) `novelty` + `solo_buildable_during_mba`;
v2 (2026-06-18 → 2026-08-25) `novelty` + `why_now`;
v3 replaces those with `wedge_durability` + `pattern_strength`.

Three things are **hard gates**, applied before scoring — an idea that fails any
one is killed, not scored:

1. **Durable wedge** — the category leader cannot serve this segment next
   quarter with a config change, and no one else is already niching this way.
   Survives the adversarial wedge check.
2. **AI-native** — impossible or radically worse without frontier AI. Not a thin
   wrapper, not a legacy workflow with an AI feature bolted on.
3. **Venture-scale ($1B+ path)** — the narrow buyer is a beachhead, not the
   ceiling. A credible story for becoming a billion-dollar company by expanding
   out of it. A niche that dead-ends small is killed, however defensible.

Only ideas that clear all three get scored. Score 1-5 on each dimension below;
composite = average. (Market/venture-scale also appears as a score, but remember
it is a gate first: anything below 4 should already have been killed.)

- **Wedge durability** — how structural the leader's block is. 5 = they would
  have to build a second company (architecture, regulated posture, channel
  conflict, incompatible economics); 3 = a real but crossable moat (a quarter of
  focused work); below 3 = should have been gated out. "They're distracted"
  scores 1.
- **Pattern strength** — how proven the source mechanism is, and how recently.
  5 = several funded companies winning at the same job plus disclosed traction;
  4 = one clear breakout with hard numbers; low = press coverage and vibes. Also
  covers why-now: what changed that made this job newly solvable, and why the
  segment is reachable now rather than two years ago.
- **Market / venture-scale** — size and growth of the market behind the
  beachhead, and the credibility of the expansion path. 5 = obvious massive
  market; 4 = large/expanding with a clear path; below 4 = should have been
  gated out.
- **Defensibility** — what compounds once you're in: proprietary data from the
  segment, network effects, model/infra edge, workflow lock-in, regulatory
  standing. Distinct from wedge durability — the wedge gets you in, this keeps
  you there once the leader finally notices.
- **YC-fit** — fundable thesis, clear "makes something people want" story,
  aligns with current YC RFS thinking and the AI-native, ambitious tilt.
- **Founder-fit** — rewards **technical ambition and AI-native depth**. Assume
  the operator builds in SF with a technical cofounder, so do NOT down-score for
  requiring serious engineering. The operator's edge (strategy/product/GTM) is a
  plus on top, not a constraint that caps ambition.

## Ledger lifecycle

`new` → `watching` → `promising` → `building` → `killed`

- `new`: just generated, passed the wedge check, not yet revisited
- `watching`: seen again or has a developing signal, not yet acted on
- `promising`: composite score consistently high across multiple runs
- `building`: the operator has started building it
- `killed`: failed a gate (no durable wedge, not AI-native, or not
  venture-scale) or judged not viable — keep the reason, and note which of the
  three kill tests caught it
