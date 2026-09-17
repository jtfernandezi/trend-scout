# Brief 0030 — The AI-native medicolegal death investigation firm

**Ledger id:** ts-0410 · **Date:** 2026-09-17 · **Composite:** 4.0

---

## The one-line version

Become the company a county hires to run its death investigations — reconstructing who the decedent
was and what killed them from records nobody can route to, triaging with a postmortem CT scanner
instead of a scalpel, and drafting the certified determination for the scarce pathologist to
interrogate and sign — priced as a fixed annual contract into a market where the number of qualified
doctors is fixed by arithmetic and the number of autopsies each may perform is fixed by accreditation.

## The plain-English version

When somebody dies unexpectedly — an overdose, a crash, a possible homicide, an old person found at
home — the county has a legal duty to determine what killed them. Only a forensic pathologist can make
that determination. There are about **850 of them practising in the United States, roughly 400 fewer
than the work requires**, against more than three million deaths a year, **1.3 million referrals** to
medical examiner and coroner offices, and about **605,000 cases accepted** for investigation.

The shortage cannot be worked around by working harder, because the profession's own accreditation
body forbids it: the National Association of Medical Examiners caps an accredited practice at **250
autopsies per pathologist per year, 325 in extraordinary circumstances**, and crossing it puts
accreditation at risk. So the backlog simply grows. Offices now average **well over 100 days** to
complete an autopsy report. Prosecutors in North Carolina say the delays are obstructing cases. West
Virginia has publicly attributed its backlog to the shortage. Maryland asked for federal help with a
backlog of bodies.

Counties have been coping the way counties cope: shipping cases to the next county over (Kootenai
County sent about 70 a year to Spokane at roughly 2,000 dollars each, until that arrangement ended in
December 2025), contracting the medical examiner function to a private memorial group (Mohave County),
or paying millions to outside firms after their own staff quit (Franklin County, after four of its five
pathologists resigned). **The duct tape exists and it is visibly failing** — which is exactly the test
the 2026-09-15 method note said to run before treating a shortage as an opening.

So: be the contractor. Win county death-investigation contracts and run them as an AI-native
organisation that no incumbent can build and no health-AI vendor will.

## Why this is a frontier-model company and not a staffing roll-up

**1. Decedent reconstruction — the job with no route in.** A body arrives with a name, an age and a
scene report. The evidence of what killed them is in a hospital record at a system the county has no
relationship with, a state prescription drug monitoring database, EMS run sheets, prior admissions,
and a pharmacy history. Every retrieval path healthcare has built assumes a living patient with a
medical record number at your institution, a consent, and a payer to route the request through. A
decedent has none of those. Today this is one investigator on the telephone for a week, and the
quality of the eventual determination is bounded by how much of it they found. It is entity resolution
plus clinical judgement over contradictory fragments, and it is the single largest recoverable block
of time in the building.

**2. Imaging-led triage — the only lever that actually moves capacity.** The 2026 literature is
explicit that postmortem imaging (PMCT, PMMR, postmortem CT angiography, 3D reconstruction) is **the
most mature and extensively validated component of contemporary forensic investigation**, while AI
applications to death investigation remain assistive and largely experimental. That combination is the
opportunity, not a problem: the mature technology is the scanner, and the missing piece is a model that
reads the scan against the scene report and the reconstructed history and decides *which cases need a
pathologist's hands at all*. Because the pathologist count is fixed and the autopsy count per
pathologist is capped, the only way to increase how many deaths get a competent determination is to
reduce how many of them require a full autopsy — and to make the ones that do require it faster.

**3. The determination and the certificate.** The output is a legal document that has to survive
cross-examination: cause and manner of death, the toxicology read in the context of the history, and a
death certificate whose coding feeds national mortality statistics. Drafting a defensible document for
a pathologist to attack and then sign is the highest-value use of the scarcest hour in American
forensic medicine. Note the direction of travel carefully — the model does not certify. The
board-certified pathologist certifies, and everything the model produced is in the file, cited, for the
defence to examine.

Strip any one of these three out and you are a staffing agency with a nicer dictation tool.

## The wedge — why the incumbents structurally cannot do this

**The price list is the wedge, and it is on the public record.** ProPublica documented the dominant
private model in detail. Forensic Medical Group: minimal overhead, the client county supplies the
examination facilities, the tools and the scene investigators, headquarters functions as an invoice
processing centre, and pricing is a la carte — **1,250 dollars for a full autopsy, 600 dollars for an
external examination**, plus records reviews, travel and testimony. Converting autopsies into
imaging-led external examinations is the only way to add capacity, and it **roughly halves their
revenue per case**. They have no scanners, no imaging pipeline, no records-retrieval engine and no
software organisation to build one with. The efficient path and their revenue line point in opposite
directions. This is the sharper form of the "staffing business" wedge that this book has previously
used loosely, and it is the form that survives (see the water-utility kill, ts-0408, where a fixed-fee
incumbent automated itself happily).

**The accreditation ceiling forbids their actual growth plan.** NAME caps accredited practice at 250
autopsies per pathologist per year. The same reporting has that firm's five doctors each handling
**300 cases a year or more** — already outside the standard, and with the predictable consequence
(an autopsy report describing surgically absent ovaries as "unremarkable"; the county terminated the
contract). Their scaling model is not merely inefficient, it is capped by a regulator and already past
the cap.

**The health-AI leaders have the wrong data model and, decisively, no revenue path.** Epic, Oracle
Health and the ambient-documentation vendors model a living, insured patient inside an encounter that
generates a claim. A decedent has no medical record number at the investigating office, no payer, no
consent and no claim. There is no revenue-cycle machinery to attach to — and revenue cycle is what
funds essentially every health-AI product sold in the United States. Serving this would be a second
product with a second data model, sold through county procurement, to a buyer who is often an elected
sheriff. Nobody is going to do that as a feature.

**The pricing motion is itself a moat.** A fixed annual contract to run a county's death investigation
requires absorbing volume risk — overdose waves, a mass-casualty event, a bad winter. A firm whose only
asset is a roster of pathologists billing per procedure cannot offer that. A firm whose marginal cost
per case is mostly compute can.

## Occupancy — what was searched and what came back

Searched first, before any of the four parts were written, four ways:

1. *Forensic pathology / death investigation AI startups funded 2026* — returns academic literature
   only. The 2026 reviews state that applications specific to medicolegal death investigation remain
   largely experimental, resting on retrospective proof-of-concept studies with limited datasets and
   little external validation, and that AI should presently be regarded as assistive.
2. *Y Combinator directory and seed coverage for coroner / death-investigation software* — nothing.
3. *Private forensic pathology companies scaling on county contracts* — **Forensic Pathology Services
   LLC** (founded 2018, selling nationwide "scalable staffing solutions" to ME and coroner offices, run
   by a founder whose prior business was relief staffing for hospitals) and **Forensic Medical Group**
   (three counties to more than a dozen, the per-procedure model above). Both are staffing businesses.
   Neither is venture-backed and neither is AI-native.
4. *Case-management software for medical examiners* — small, unfunded legacy vendors.

**No venture-backed AI-native entrant exists anywhere in this segment.** One adjacency *is* taken and
the expansion path must route around it: **ClosureMD** sells AI voice agents to funeral homes chasing
physician signatures on death certificates (logged as ts-0409). That is the funeral side of the
transaction, not the investigation.

## Beachhead, and how you reach the first ten

**The buyer** is the county board of supervisors or commissioners together with the elected coroner,
sheriff-coroner or appointed chief medical examiner who holds the contract. The district attorney is
the co-signer in practice, because the report backlog is their problem before it is anyone else's.

**The segment** is the roughly 1,500 US jurisdictions too small to hold a fully staffed accredited
office and too busy to do without one — where the median office budget is tiny and the dependency on a
single contract pathologist is absolute.

**The trigger** is the contract falling due: a retiring or resigning pathologist, an accreditation
lapse, or a judge putting the backlog on the record in a pending homicide.

**Reaching them is unusually tractable**, which matters because most segments this book kills are
unreachable. These buyers congregate in a small number of named places: the National Association of
Medical Examiners annual meeting, the American Academy of Forensic Sciences, the International
Association of Coroners and Medical Examiners, and the state coroners' associations that meet
annually in every state. County contracts are public records, so the renewal calendar can be
assembled directly. Every in-custody death, every backlog story and every accreditation lapse is
reported in the local press, which is a live trigger feed. And the National Institute of Justice and
the state forensic science commissions publish the lists of which offices are failing.

**The first contract is the hard one** and it should be bought, not sold: take a county at cost,
instrument everything, and publish the turnaround-time delta.

## Expansion path to a billion

1. **The beachhead.** ~605,000 accepted cases a year at an average budget of roughly 3,000 dollars per
   accepted case is about **1.8bn dollars of standing public expenditure across ~2,000 offices**. That
   alone is a large, non-cyclical, contracted market, and nobody in it is a technology company.
2. **Metropolitan and statewide systems**, where a single contract is eight figures and the same
   imaging, records and reporting engine applies without modification.
3. **Forensic toxicology and postmortem imaging**, today bought separately from national reference
   laboratories, which become margin the moment you own the case rather than the procedure.
4. **The other 2.5 million deaths**, certified by attending clinicians with no training in cause-of-death
   certification, producing data everyone in public health knows is poor. Same engine, different channel.
5. **The compounding asset.** The only linked national dataset of scene, imaging, toxicology, medical
   history and certified cause of death. That is the dataset that prices mortality for life insurers,
   that detects a change in the illicit drug supply weeks before a surveillance system does, and that
   supplies post-market signal to pharmacovigilance. It cannot be assembled by anyone who does not hold
   the cases.
6. **The same system abroad.** The UK, Canada, Australia and the Nordics all run coronial systems with
   the same statutory duty and the same workforce arithmetic.

## Scores

| Dimension | Score | Why |
|---|---|---|
| Wedge durability | 4 | The incumbent's revenue line is the procedure being replaced, and their growth path is capped by an accreditation standard they already exceed. Not 5 only because a well-capitalised pathology platform could in principle buy the capability rather than build it. |
| Pattern strength | 4 | Integral (18M euro, 2026-09-16), the YC Summer 2026 AI-run accounting and law firms, Savvy Wealth (100M at 600M, 2026-09-09) and Ferry Health (9M from a16z and Index, 1M+ patients, 2026-09-16) — several funded companies at the same job with disclosed traction. Why-now is the maturity of postmortem CT meeting models that can reconstruct a history with no identifier. |
| Market / venture scale | 4 | ~1.8bn dollars of standing public spend as the beachhead, with toxicology, imaging, clinician-side certification and the mortality dataset above it. Large and expanding with a clear path; not a 5 because the beachhead itself is public money and slow. |
| Defensibility | 4 | Multi-year contracts, accreditation standing, and a linked decedent dataset nobody else can assemble because nobody else holds the cases. |
| YC fit | 4 | Unglamorous, enormous unmet need, AI-native at the core, contrarian, and a clear "makes something people want" story told by prosecutors and grieving families rather than by a category analyst. |
| Founder fit | 4 | Technically ambitious — heterogeneous record retrieval without an identifier, postmortem CT interpretation, defensible document generation — and operationally hard in the ways the operator is good at: procurement, contracting, and recruiting a licensed profession. Needs a board-certified forensic pathologist as a founding partner on day one, not as a hire. |
| **Composite** | **4.0** | |

## The risks, honestly

**The constraint binds you too.** There are 850 forensic pathologists and you have to recruit some of
them. The offer — *you will do only the examination and the judgement, and never again spend a day on
the telephone* — is a good one, and the profession's own literature says burnout and caseload are why
people leave it. But this is the single thing most likely to cap growth, and it should be tested with
five real conversations before anything is built.

**Imaging does not substitute where it matters most.** Postmortem CT is excellent for trauma, gunshot
trajectories, gas, fractures and the great mass of undramatic natural deaths. It is weaker on precisely
the cases the buyer cares about most — subtle homicides, drug deaths requiring toxicology, and anything
turning on soft-tissue findings. The product has to be honest about which cases it escalates, and being
wrong about that once is existential.

**The liability is real and it is the discoverable kind.** A cause-of-death determination can free or
convict someone. Everything the model produced sits in the file and is discoverable. The countervailing
argument is the one that makes the business defensible: the status quo already produces errors at
300-cases-a-year caseloads, and a fully cited, fully reconstructed file is a better evidentiary
position than an overworked pathologist's recollection — but that argument has to be won in a courtroom
at least once.

**County procurement is slow, and the money is public.** Expect twelve-month sales cycles, elected
buyers, and open-records exposure on everything.

**And this is a business whose product is other people's worst day.** That is a real recruiting,
communications and duty-of-care problem, and it should be designed for rather than discovered.
