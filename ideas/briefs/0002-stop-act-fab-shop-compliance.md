# Brief 0002 — STOP Act compliance + certification copilot for engineered-stone fab shops

- **Ledger id:** ts-0007
- **First proposed:** 2026-06-19
- **Status:** new
- **Composite score:** 4.2 (Novelty 5 · Why-now 5 · Market 3 · Solo-buildable 4 · YC-fit 4 · Founder-fit 4)
- **Why this got the brief:** it is the run's strongest survivor and the only one above 4.0. The novelty is unusually clean — a direct search for compliance software in this sector returned *no* startup, only law-firm explainers, static OSHA/Natural Stone Institute PDFs, and human consultants.

## One line

The Spanish-first tool that keeps a tiny California countertop shop legally open
under the new silica law — it runs the required worker training, holds the medical
records, and produces the signed state attestation, without a $10k safety consultant.

## In plain English

California just passed a law to stop countertop workers from getting a deadly,
incurable lung disease (silicosis) they catch cutting fake-stone "quartz" counters.
From July 1, every little countertop shop — usually 5–15 people, often run by a
Spanish-speaking owner with no safety staff — has to train its workers and sign a
yearly government form swearing it's following the rules. Within a year it must get
state-certified, and if it isn't, its suppliers are legally banned from selling it
the stone slabs it needs to do any work at all. This is a phone-and-laptop tool, in
Spanish, that walks the owner through the training, keeps the worker health records
the law demands, and generates the exact signed form the state wants. The owner pays
because the alternatives are fines, a wrongful-death lawsuit, or being cut off from
the slabs that are their entire business.

## The cross

This idea only exists at the intersection of two 2025–2026 signals and collapses if
you remove either:

- **AI capability:** multimodal, Spanish-first frontier models can now (a) intake a
  shop's messy reality — photos of equipment, a roster, handwritten records — (b)
  generate the required *written exposure-control plan*, (c) deliver and log the
  "high-exposure trigger task" training in Spanish, (d) track each worker's mandated
  medical surveillance, and (e) emit the annual Cal/OSHA written attestation. Two
  years ago this was a consultant engagement and a binder.
- **Structural shock:** **California's STOP Act / SB 20** (signed 2025-10-13) bans
  dry-cutting, and from **2026-07-01** requires trigger-task training plus an **annual
  written attestation** to Cal/OSHA. It then phases into a **shop-certification
  regime**: by **2027-07-01** only certified shops may buy slabs, distributors must
  verify certification, and a **state public database** lists certified vs.
  non-compliant shops. Cal/OSHA voted **2026-05-21** to advance further >1%-silica
  rulemaking. The hazard is acute — California regulators have openly floated an
  outright artificial-stone ban as silicosis cases mount.

Remove SB 20 → no deadline, no attestation, no certification gate, no urgency.
Remove modern multilingual AI → it's a safety consultant and a stack of PDFs the
shop won't read. Needs both.

## The exact buyer

The **owner of a 3–15-employee engineered-stone countertop fabrication shop in
California** — frequently a **Spanish-first immigrant owner** with no EHS staff,
no compliance budget, and a workforce doing exactly the high-exposure trigger tasks
the law targets. Not "construction businesses" — specifically the small fab shop
that is now personally on the hook to train, attest, and certify.

## The trigger moment

Two stacked triggers, both live now:
1. **2026-07-01:** the training + annual written-attestation requirement begins. The
   owner has to produce documented training and a signed government attestation —
   right now, with no system for it.
2. **The distributor's warning:** as the certification regime spins up, the shop's
   slab distributor tells it that by **2027-07-01** it must be state-certified or the
   distributor is legally barred from selling it slabs. Losing slab access = the shop
   can't operate. That is the moment of maximum willingness to pay.

## Why incumbents structurally can't / won't serve this

- **General EHS platforms** (VelocityEHS, KPA, Cority, J.J. Keller) are built and
  priced for mid/large enterprises with full-time EHS managers and English-language
  workflows. A 6-person Spanish-first shop is below their floor and outside their UX.
- **What these shops use today** is static OSHA and Natural Stone Institute PDFs
  (silica exposure-control templates, inspection checklists) and **one-off
  consultants** — documents and labor, not a product that *produces the attestation*.
- **The regime is brand-new and CA-specific.** No incumbent has encoded SB 20's
  phased, shop-level certification + attestation rules; a direct novelty search found
  no software product for the sector at all.
- **Trade associations** educate and certify curricula but don't run a shop's
  ongoing compliance record.

## What the MVP is (solo-buildable)

1. **Attestation generator** — encode SB 20's trigger-task / wet-method / training /
   attestation requirements; from a short Spanish-language intake, output the written
   exposure-control plan and the annual Cal/OSHA attestation artifact.
2. **Training delivery + log** — deliver the required high-exposure-trigger-task
   training in Spanish, capture per-worker completion, store it as audit-ready proof.
3. **Medical-surveillance tracker** — schedule and store each worker's mandated
   surveillance (B-reader chest imaging, spirometry) so it's ready at attestation and
   certification.
4. **Certification readiness** — a checklist that maps the shop's state to the
   2027 certification application and flags gaps; later, sync to the state public
   database.

The hard part is faithfully encoding one new, narrow state regulation plus a clean
Spanish-language UX — well inside a nights-and-weekends MVP for one builder. No heavy
infrastructure.

## Risks / how this is venture-scale (the weak spot)

- **Market/venture-scale = 3 and it's the load-bearing risk.** The base wedge is
  CA-only and small — on the order of hundreds-to-low-thousands of fab shops, low ACV
  from tiny owners. A per-shop compliance subscription alone is a nice business, not
  obviously a venture outcome.
- **Path to scale, in order:**
  1. **National OSHA silica population.** The federal OSHA respirable-crystalline-
     silica standard + 2023 focused-inspection initiative already cover construction,
     foundries, masonry, and more. Same engine, far larger TAM, and other states are
     watching SB 20 (and federal HR 5437) — a regulatory tailwind that replicates the
     wedge.
  2. **Become the compliance record, then the rail.** Once the tool *is* the
     authoritative record of which shops are trained/attested/certified, it is the
     natural data source for the **distributor verification rail** (ledger ts-0008) —
     distributors need to confirm certification before selling slabs, and you already
     hold that data. Wedge (shops) → network (distributors must rely on you).
- **Validation before building:** (1) confirm 5–10 CA fab-shop owners experience the
  attestation/certification as an urgent, unserved pain (vs. ignoring it); (2) confirm
  a Spanish-first owner will adopt software at all here (vs. a bilingual consultant);
  (3) confirm willingness to pay at the distributor-warning trigger.

## Founder-fit

Strong (4): vertical B2B compliance workflow, decision-support, reachable GTM
(Natural Stone Institute, slab distributors as a channel, CA trade networks),
leverages a strategy/ops background. Two honest stretches: it needs genuine
Spanish-first field GTM and enough EHS-domain depth to encode the rule correctly —
solvable with a design partner and a safety-consultant advisor, not a technical
cofounder blocker.

## Adversarial novelty check (survived 2 attempts)

1. "stone fabrication shop silica compliance software certification training startup app
   California SB 20" → only law-firm explainers, trade press, and the bill text; the
   search explicitly noted it "did not find specific information about a particular
   startup app offering compliance software or certification training services for
   this sector."
2. "countertop fabricator how shops manage OSHA safety training paperwork spreadsheets
   consultant Spanish" → only static OSHA / Cal-DOSH / Natural Stone Institute PDFs
   and human-consultant resources. No software product owning the workflow.

Re-run these next pass; the main novelty risk is a general EHS vendor (KPA, J.J.
Keller) or the Natural Stone Institute shipping an SB-20-specific module, or a
solo "silica safety certificate" provider extending into ongoing attestation
software.
