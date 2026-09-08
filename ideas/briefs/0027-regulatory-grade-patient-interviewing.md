# Brief 0027 — Regulatory-grade patient interviewing

**Ledger id:** ts-0336 · **Date:** 2026-09-08 · **Composite:** 4.2 · **Rubric:** v3

---

## 1. The one-line thesis

Two companies just raised at scale for the same job — machines conducting open-ended interviews with
people — and both are pointed at marketing. The place that work is worth ten times more is the place
neither can go: **the qualitative patient interview that a drug regulator reads**. Build the AI-native
clinical research organisation whose product is that interview, conducted under ICH-GCP with an IRB
approval, Part 11 records and a live adverse-event duty, and own the instrument that turns what a
patient says into evidence.

## 2. The problem, stated exactly

To use a measure of benefit in a drug submission — a symptom score, a function scale, a
patient-reported outcome — a sponsor must show the regulator that the measure captures what patients
actually experience and that patients understand the questions the way the sponsor intends. That proof
is built from three kinds of interview:

1. **Concept elicitation** — open-ended interviews establishing which symptoms and impacts patients
   themselves consider important, continued until no new concepts appear (*saturation*).
2. **Cognitive debriefing** — interviews testing whether each drafted item, instruction and response
   option is understood as intended.
3. **In-trial and exit interviews** — interviews with actual trial participants about their experience
   of the disease and the treatment, used to interpret score changes, support meaningful-change
   thresholds, and supply supportive evidence on efficacy and tolerability.

Each is an hour of skilled, non-leading, adaptive questioning by a trained qualitative researcher,
followed by double-coding of the transcript against a concept matrix. The economics are brutal and they
shape the science: a typical concept-elicitation study talks to fifteen to thirty patients and takes
three months. In rare disease, where the whole population may be a few hundred people speaking a dozen
languages, the study frequently is not done, and the endpoint is argued without it.

The demand is not soft. In-trial interviewing is described in the 2024-26 peer-reviewed literature as
having grown rapidly inside pharmaceutical clinical development — while **published guidelines on how
to conduct it remain scarce**. That combination, a fast-growing regulated practice with no settled
method, is the condition in which a standard-setter can be founded.

And the regulator is moving toward machine involvement rather than away from it. FDA published a
Request for Information in the Federal Register on **2026-04-29** for an *AI-Enabled Optimization of
Early-Phase Clinical Trials* pilot programme, and announced its **Real-Time Clinical Trials** initiative
with two proof-of-concept trials reporting endpoints and data signals to the agency in real time.

## 3. Why this is now a software problem

The mechanism is proven this quarter, at enterprise scale, by two independent companies:

- **Simile** — more than **$200M Series B at a $2B post-money valuation** on 2026-07-30, five months
  after a $100M Series A; **revenue up fivefold** since public launch; tens of millions of simulations;
  CVS Health, Wealthfront, Deloitte and Gallup as customers.
- **Conveo** — **$50M Series A** on 2026-09-02 (DST Global, Balderton, Visionaries, 6 Degrees, YC;
  $55.8M total); **400+ enterprises**, infrastructure across **50+ Fortune 500 companies**,
  multi-million-dollar enterprise contracts, findings in 5-7 days against a 6-12 week norm.

Strip the branding and the mechanism is: *a model can conduct an adaptive open-ended interview, and
interpret it, well enough that the trained human interviewer is no longer the constraint on how many
people you can ask.*

Four things follow that are impossible without frontier models, and they are the reason this is a new
instrument rather than a cheaper version of the old one:

1. **Saturation becomes a live measurement.** Today a researcher declares saturation after the fact,
   from twenty transcripts. A model coding every interview into a shared concept space as it happens can
   report the saturation curve while the study is running — so the sample size stops being a guess and
   starts being an observation. That is a methodological improvement, not a cost saving, and it is what
   a reviewer will care about.
2. **Every participant, not a sample.** If the interview costs near-zero marginal effort, you interview
   the whole cohort. In rare disease this is the difference between an argument and a census.
3. **One concept space across languages.** Interviews conducted in the participant's own language and
   coded into a single ontology make a genuinely global cohort reachable — currently the binding
   constraint on multinational qualitative work.
4. **Safety detection inside the conversation.** A model listening to a patient describe symptoms can
   recognise a reportable adverse event and escalate it against the 24-hour clock. This is not a feature;
   it is the specific duty that makes a consumer research tool unusable on trial participants, and
   carrying it is what makes you a clinical service provider rather than a SaaS vendor.

## 4. The wedge — three blocks, one per plausible follower

**(1) Conveo and Simile — regulated posture.** Crossing into this segment means acquiring a second
regulatory identity: IRB submissions and informed consent, 21 CFR Part 11 validated systems with audit
trails, pharmacovigilance intake with a 24-hour adverse-event clock, sponsor and site contracts, HIPAA
and GDPR special-category handling, and being inspectable by FDA. Their supply side is also wrong:
consumer panels, not consented participants recruited through investigator sites and patient advocacy
organisations. That is a second company. The field states the block itself — 2026 write-ups of
AI-moderated interviewing say IRB-governed clinical studies and vulnerable populations *require human
moderation*.

**(2) The actual leaders in the narrowed market — innovator's dilemma.** The buyers here do not buy from
Conveo. They buy from **IQVIA Patient Centered Solutions, PPD (Thermo Fisher), RTI Health Solutions,
Adelphi Values and Clinigma**, all of whom sell in-trial and exit interviews as a human-moderated
service. Their unit of revenue is the interviewer hour and the CRO pass-through margin on it. Automating
the interview deletes both at once. They have had capable models for eighteen months and have shipped
none of this.

**(3) The eCOA incumbents — data model.** Signant, Clario and Medidata own structured questionnaire
capture on provisioned devices: fixed items, fixed response options, fixed schedules. Qualitative
evidence is free narrative coded to a concept matrix, bought by a different function inside the sponsor,
governed by different standards. For them it arrives as an acquisition, not a release note — which is
the exit, not the threat.

**What the occupancy search actually found.** AI-moderated interviewing *in healthcare* is taken —
**User Intuition** runs HIPAA-aligned AI interviews with patients, caregivers and providers, and
**Glaut AIMI** sells AI-moderated interviews for pharma brand trackers; Conveo itself publishes a pharma
page. All of it is commercial insight work. On the regulated side: **Phases** (YC 2026) does AI voice
interviews for trial *eligibility screening* — recruitment, not evidence. **Cambridge Cognition's AQUA**
and **Signant's central rating** cover clinician-administered scale quality assurance — a different
artefact, and the reason ts-0337 was killed this run. No funded company was found conducting GCP- and
IRB-governed qualitative patient interviews with a model.

## 5. Beachhead and how you reach the first ten

**Beachhead:** rare disease and oncology, at mid-cap biotechs and specialty CROs. Chosen because it is
where the human interviewer panel breaks hardest — tiny, scattered, multilingual cohorts — and where
regulators most actively want patient experience data, so the buyer is arguing *for* you internally.

**Trigger:** a dated evidence obligation with a budget line already attached. An FDA or EMA meeting
requiring content-validity evidence for a novel or modified endpoint; a protocol going final that needs
in-trial interviews written into it; an EU Joint Clinical Assessment dossier requiring patient input the
sponsor has not collected.

**Reaching the first ten.** This is a small, named, physically congregating community — perhaps a few
hundred people worldwide commission this work. They are at **ISPOR** and **ISPOR Europe** (November
2026), **ISOQOL**, and the **DIA** meetings; they publish in *The Patient* and *Journal of
Patient-Reported Outcomes*, so the authors of the last three years of in-trial-interview methods papers
are a literal target list. The **Critical Path Institute's ePRO/eCOA consortium** is the standards venue
and the fastest route to credibility. Practical first move: run one head-to-head validation study —
machine-conducted concept elicitation against a human panel on the same cohort, with saturation curves
published — because in a field with scarce guidelines, the company that publishes the method gets to
define it.

## 6. Expansion path to $1B

1. **In-trial and exit interviews, plus COA development** in rare disease and oncology. A services pool
   of a few hundred million dollars. Deliberately small — this is where the method gets accepted by
   reviewers, and acceptance is the real asset being bought.
2. **The qualitative arm of record inside the trial**, sold beside eCOA rather than beneath it. The eCOA
   market is $2.5B+ growing mid-teens, held by Signant, Clario and Medidata, and none of them holds the
   narrative half.
3. **Post-market and real-world evidence.** The same instrument answers the effectiveness and
   tolerability questions payers ask after approval, and the buyer is already yours.
4. **HTA and reimbursement.** The EU **Joint Clinical Assessment** has made patient input a mandatory
   input to a pricing decision across 27 countries, and widens to all new medicines by 2030. This is the
   step that turns a US services business into a global evidence business.
5. **The compounding asset.** A cross-indication corpus of coded patient experience linked to outcomes —
   concept libraries, saturation curves, meaningful-change thresholds — is what every future endpoint
   gets argued against. That is a standards position, and standards positions are how this becomes a
   $1B+ company rather than a $100M consultancy.

## 7. Scores

| Dimension | Score | Reasoning |
|---|---|---|
| Wedge durability | 4 | Regulated posture blocks the mechanism leaders; innovator's dilemma blocks the market leaders; data model blocks the eCOA vendors. Not a 5 because a CRO can buy rather than build |
| Pattern strength | 5 | Two funded companies at the identical job five weeks apart, both with disclosed traction; plus a regulator actively piloting AI in trials |
| Market / venture-scale | 4 | Beachhead is small by design; the eCOA, RWE and HTA expansion is large and growing, with credible comparables |
| Defensibility | 4 | The coded corpus and the accepted method compound; regulatory precedent, once won, is very hard to re-win |
| YC-fit | 4 | AI-native, technically deep, regulated, clear "makes something people want" story with a named budget line |
| Founder-fit | 4 | Needs real engineering (interview policy, concept ontology, live saturation, safety escalation) plus regulatory strategy and a scientific-credibility campaign — the operator's half is exactly the GTM here |
| **Composite** | **4.2** | |

## 8. Honest risks

**The field says this is impossible, in print.** 2026 commentary on AI-moderated interviewing states
that IRB-governed clinical studies and vulnerable populations require human moderation. That belief is
simultaneously the wedge and the sales obstacle, and it will not be dislodged by a demo — it will be
dislodged by the first accepted submission containing machine-conducted interviews. You do not control
when that happens.

**Regulatory acceptance is the whole company and it is binary-ish.** If FDA reviewers treat
machine-conducted interviews as inadmissible for content validity, the beachhead collapses to
"exploratory" work at exploratory prices. Mitigation is to be conservative early: human-in-the-loop
verification on every transcript, publish the validation study, work through C-Path rather than around
it.

**Adverse-event liability is real and asymmetric.** A missed reportable event inside an interview is a
regulatory incident for your customer. The engineering must treat safety escalation as a hard
requirement, and the business model must price for carrying it.

**Sponsors may prefer to keep it inside the CRO.** Qualitative work is often a line inside a larger CRO
award. Selling the sponsor directly means fighting the procurement path, which is why the specialty-CRO
partnership is the second channel and probably the faster one.

**The market may be smaller than the expansion path assumes.** Steps 1 and 2 are well evidenced. Steps 4
and 5 depend on HTA regimes continuing to broaden patient input, and European policy has reversed on
due-diligence style obligations before. Underwrite the company on steps 1-3.
