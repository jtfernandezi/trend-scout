# Brief 0026 — Attestation: the competence engine for supervised practice

**Ledger id:** ts-0324 · **Date:** 2026-09-05 · **Composite:** 4.2 · **Rubric:** v3

---

## 1. The one-line thesis

Twenty-seven US states have just made **demonstrated clinical competence**, rather than an American
residency, a legal route to a medical licence — and nobody sells the two things that route requires: a
board-acceptable assessment of whether a foreign-trained physician is actually good, and two years of
continuous supervised evaluation that a rural hospital has no capacity to provide. Build both as one
company: assess by machine, place the physician, run the supervision by reading every piece of clinical
work they produce, sign the attestation, and take the employment and liability rather than selling
software to a credentialing office.

## 2. The problem, stated exactly

The United States is projected to be short roughly **86,000 physicians by 2036**. It also contains an
estimated **65,000+ internationally trained physicians who are not practising medicine** — people who
completed medical school and often years of practice abroad, and who are blocked by a single
requirement: a US residency, for which there are structurally too few positions.

Between late 2025 and mid-2026 that requirement stopped being absolute. **27 states now have provisional
licensure pathways for internationally trained physicians; 13 have fully implemented them and are
accepting applications** — Arkansas, Colorado, Florida, Idaho, Illinois, Indiana, Iowa, Minnesota,
Oklahoma, Tennessee, Texas, Washington and Wisconsin.

The statutes are structurally similar, and they all require the same three things:

1. **Proof of competence** — a board-approved exam, a recognised licensing exam, specialty board
   certification, **or a comprehensive board-approved clinical assessment**.
2. **A sponsoring employer** — an employment offer under a named supervising physician at a rural
   practice, a qualifying hospital, an FQHC or an accredited medical school.
3. **A supervised period** — typically two years of consecutive supervised practice, with *"continuous
   observation and progressive assessment by board-certified physicians"* and satisfactory clinical
   evaluations, after which the physician moves to a restricted and then a full licence.

Washington's SB 5185 created its clinical experience graduate pilot programme effective **2026-06-11**
on exactly this template. Illinois built a two-stage structure — an IMG Limited Licence for two
supervised years, then an IMG Restricted Licence permitting more independent practice in shortage areas.

**And almost nobody is getting through.** Illinois has issued its first licences and has **24
applicants under review against four granted**. The state is standing up a *Clinical Readiness Program*
with the Department of Public Health and the Governor's Office of New Americans to try to match
qualified physicians with sponsoring healthcare organisations — a government office doing manual
matchmaking because there is no vendor. A law firm in Illinois publishes a guide titled *"Finding a
Sponsor for the Illinois IMG Limited License."* Minnesota's Office of Rural Health hands out grants for
"clinical preparation" of immigrant physicians.

That is what an implementation gap looks like. The law exists; the capacity to satisfy it does not.

**Why it does not:**

- **Nobody sells the assessment.** "A comprehensive board-approved clinical assessment" is written into
  the statutes as an alternative to a US licensing exam, and no scalable instrument exists. Boards will
  approve one; they have nothing to approve.
- **Nobody can supply the supervision.** A critical-access hospital that cannot recruit a physician
  self-evidently does not have a spare board-certified physician to observe one continuously for two
  years. This is the binding constraint, and it is a *capacity* problem, not a software problem.
- **Nobody carries the risk.** The sponsoring hospital takes the malpractice exposure and the medical
  staff attestation on a clinician whose competence nobody has independently established.

## 3. Why this is now a software problem

**Supervision is exactly the thing a frontier model can manufacture.**

A provisional physician generates a continuous, high-fidelity evidence stream of their own competence:
progress notes, orders, prescriptions, referrals, imaging interpretations, patient messages, coding, and
downstream outcomes. Every one of those artefacts can be read against the six core competencies the
statutes and the ACGME framework use — patient care, medical knowledge, practice-based learning and
improvement, interpersonal and communication skills, professionalism, and systems-based practice.

The model does not replace the supervising physician. It **multiplies their reach**:

- score every encounter, not the four charts a busy attending reviews per month;
- detect the anomaly — the missed differential, the dose outside range, the deteriorating patient not
  escalated, the consent conversation that never happened — and escalate *only* that to a human;
- track a competence trajectory over 24 months instead of producing two annual evaluations written
  from memory;
- produce the board-facing attestation as an evidence-linked record rather than a signed opinion.

One board-certified supervisor's judgment can then cover twenty provisional physicians rather than one.
That ratio is the entire business.

The peer-reviewed ground is already laid — *npj Digital Medicine* published multimodal-AI competency
assessment with anomaly detection in 2025; *Science* published frontier-model performance on physician
reasoning tasks; the University of Minnesota is applying models to video of physician–patient encounters
to measure communication and empathy. What has not been built is the company that turns this into a
licensure-grade instrument with a regulator's approval behind it.

The second AI-native half is the **entry gate**: generating and scoring high-fidelity structured
clinical simulations at volume, in the candidate's specialty, is a model problem rather than a
testing-centre problem. Doing this at the cost and scale required is the reason this company is possible
in 2026 and was not possible in 2023.

## 4. The wedge — four blocks, one per plausible follower

**ECFMG / Intealth — innovator's dilemma.** Intealth's ECFMG division is the incumbent assessor of
internationally trained physicians, and its entire product is ECFMG Certification feeding the residency
Match. These state pathways exist *specifically to bypass the residency requirement*. Building a
supervised-practice assessment product would legitimise the bypass and cannibalise the funnel that is
its reason for existing. It is also structurally the wrong shape: a nonprofit credential-verification
body with no employment vehicle, no malpractice posture and no relationships with rural hospitals.

**MedHub / New Innovations — wrong data model.** Residency evaluation software is architecturally built
around an ACGME-accredited *programme*: a designated institutional official, program directors,
rotation blocks, milestone committees, duty hours. A critical-access hospital or FQHC has none of those
objects. Serving this segment is a second product sold to a different buyer through a different channel,
not a configuration.

**AMN / CHG / Avant — wrong liability posture.** Physician and international-nurse staffing firms bill
an hourly or placement markup and deliberately do not take competence-attestation liability; that sits
with the client hospital's medical staff office and is the thing their contracts are written to avoid.
Following means converting a markup business into a liability-bearing assessor — a different balance
sheet, a different insurance programme, and a direct conflict with the MSP contracts they hold.

**The states — customer, not competitor.** Illinois, Minnesota and Washington are running matching and
readiness programmes out of government offices. They need an assessment instrument and a supply of
sponsoring employers. They are the fastest distribution channel available, not the competition.

**Occupancy.** Searched directly: state statutes, an FSMB tracking chart, a nonprofit advocacy directory
(WeAreDocs), WES and Niskanen policy commentary, university research groups, and law-firm guidance. **No
funded company is selling competence assessment or supervised-practice attestation for these pathways.**
On the nurse side the picture is the same: TruMerit/CGFNS does credential evaluation, and everything
else is exam prep and checklists (NCLEX Navigator, NCLEX Gateway, NCLEX-RN Academy).

## 5. Beachhead and how you reach the first ten

**Buyer:** the chief medical officer or medical staff leader at a rural hospital, critical-access
hospital or FQHC in one of the 13 live states, holding a physician vacancy that has failed a recruiting
cycle and is currently being covered at locum rates.

**Trigger:** the vacancy itself — or, on the state side, a pathway going live with applicants queued
and no sponsoring employers.

**Where they congregate:** state offices of rural health, state hospital associations, the National
Association of Community Health Centers and its state primary care associations, state medical boards
implementing the new statutes, and the state programme offices themselves. On the supply side the
internationally trained physician community is unusually concentrated and unusually motivated — WES,
Upwardly Global, the International Institute of Minnesota, and very large online IMG communities.

**The first ten:** go to Illinois and Washington, whose programmes are live, understaffed and publicly
looking for sponsoring employers, and offer to be the supply and the instrument at once. Twenty-four
Illinois applicants are sitting in review right now.

## 6. Expansion path to $1B

1. **Provisional-pathway physicians, 13 live states.** Deliberately small. Revenue is assessment plus a
   per-physician supervision subscription plus a placement fee. This is the credibility beachhead and
   the regulatory standing.
2. **Internationally educated nurses.** A far larger annual flow, and a better product-market fit than
   the physician case: the first-attempt NCLEX-RN pass rate for internationally educated nurses is
   roughly **47% against 87% for US-educated nurses**. That gap is a competence-assessment and
   remediation market before it is a placement market, and the same models serve it.
3. **Advanced practice and allied health supervision.** Physician assistants and, in most states, nurse
   practitioners practise under statutory supervision or collaboration agreements. The same
   evidence-linked attestation product applies to roughly the whole non-physician clinical workforce,
   plus physician re-entry after a practice gap and privileging decisions generally.
4. **Become the employer.** The highest-value version is not software: it is an AI-native medical group
   that employs the clinicians, supplies the supervision from a thin bench multiplied by the model,
   carries the malpractice, and contracts them into rural hospitals and health centres. That captures
   the clinician's economic output — locum and permanent-placement economics on a labour supply nobody
   else can unlock — rather than a seat licence, against an 86,000-physician shortfall by 2036.
5. **The asset.** What accumulates is the only dataset linking real clinical work product to verified
   downstream competence outcomes at scale. That is the substrate for every future licensure, re-entry
   and privileging decision — and, eventually, for the question the whole industry is walking toward:
   how to attest to the competence of AI-supervised clinical practice.

## 7. Scores

| Dimension | Score | Why |
|---|---|---|
| Wedge durability | 4 | Four distinct structural blocks, one per follower, including a genuine innovator's dilemma at the incumbent assessor. Not a 5 because a determined ECFMG could partner rather than build. |
| Pattern strength | 4 | One clear breakout with hard numbers (Mercor, $2B annualised, doubled in four months) carrying the mechanism, plus a dated statutory why-now across 27 states with 13 live. |
| Market / venture scale | 4 | Large and structurally expanding, with a credible ladder from a small beachhead to clinician economics against an 86,000-physician shortfall. Not a 5 because the beachhead is genuinely tiny today. |
| Defensibility | 4 | Board approvals are regulatory standing that compounds per state; the competence dataset is proprietary and gets better with every cohort; and the employment relationship is workflow lock-in. |
| YC-fit | 5 | Makes something people desperately want, in a market a regulator has just opened, with a hard technical core and an obvious "why now". |
| Founder-fit | 4 | Serious ML work on clinical competence assessment plus a regulated services business — a technical cofounder and an operator who can work state boards and rural health systems. |
| **Composite** | **4.2** | |

## 8. Honest risks

**The beachhead is four licences.** Illinois has granted four. This is a real market in law and a
notional market in practice, and its growth rate is set by state medical boards, which move slowly and
are lobbied against these pathways by the AMA. If the pathways stall politically, the physician
beachhead never gets large enough to fund the nurse expansion.

**Regulatory dependency is the whole product.** A "board-approved comprehensive clinical assessment" is
only worth anything once boards approve it. That is a multi-state, multi-year, relationship-driven sale
before the first dollar of scaled revenue.

**Liability.** Employing physicians and attesting to their competence means owning malpractice exposure
on clinicians whose training you did not supervise. Priced wrong, this is an insurance company that
thinks it is a software company. The mitigation — start as the assessor and supervisor with the hospital
as employer, and only take employment once the loss data exists — costs a year of margin.

**Model risk with a face.** A missed competence signal is a harmed patient. The system must be
conservative to the point of being annoying, which caps the supervision ratio that makes the economics
work. The honest unknown is whether that ratio is 20:1 or 5:1, and the answer determines whether this is
a venture business or a staffing business.
