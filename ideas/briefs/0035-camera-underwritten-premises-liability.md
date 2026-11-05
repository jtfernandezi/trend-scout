# Brief 0035 — Camera-underwritten premises liability: an AI-native MGA that prices apartment and hotel liability on what the property's own cameras show

**Ledger id:** ts-0586 · **Date:** 2026-11-05 · **Composite:** 3.8 (rubric v3)

---

## The one-line version

A managing general agent (MGA) that writes general liability for apartment communities, and later hotels, retail
centres and parking. Vision-language models read each insured property's existing camera feeds, access-control logs
and maintenance tickets. They continuously verify the security conditions that decide negligent-security claims, the
policy is priced on that evidence, and the system keeps a timestamped record the property can use in its defence.

## The plain-English version

When someone is attacked at an apartment complex, the victim often sues the owner for having poor security, and juries
have been awarding very large sums. Insurers have reacted by raising prices sharply or refusing to insure those
buildings, and they cannot tell a well-run complex from a neglected one, because all they see is a questionnaire and a
ZIP code.

Most of these buildings already have cameras, but nobody watches them. We would be the insurer that does, using
software. It would check every night that the gates close, the stairwell lights work, the entry cameras record and
someone responds when an alarm goes off. Buildings that keep their security working get coverage at a fair price. If
they are sued, they have a dated record showing their security was in place, which in Florida can shift the law in
their favour.

## The proven pattern

- **Solink**: more than 100M dollars led by Vertu Capital, with Goldman Sachs Alternatives, Golub Growth and Comcast
  Ventures (late October 2026). It covers about 500,000 cameras across 35,000+ sites in 65 countries. It shows that AI
  layered on cameras a business already owns is a large, paid-for job.
- **Nirvana**: 100M dollar Series D at 1.5bn dollars (December 2025), with premium reportedly doubling year on year.
  It shows that an AI-native MGA/carrier pricing a hard liability line on continuous sensor data (truck telematics)
  can beat questionnaire underwriting and reach a 1bn dollar-plus valuation.
- **Kalepa**: 75M dollar Series B at 470M dollars (2026-11-05), cash-flow positive for two years. Insurers report
  58%+ more premium per underwriter (company-reported). It shows that agentic underwriting works in specialty lines.

**Mechanism:** continuous machine-read evidence of how a risk is actually managed replaces the application form as
the basis for pricing. Telematics did this for trucks. Vision-language models now make it possible for buildings.

**Why now.** (1) VLMs describe open-ended scene conditions across thousands of camera brands without per-site
training. Before them, video analytics needed per-site tuning for narrow events, and underwriting on video was not
economic. (2) Habitational and hospitality GL is among the hardest liability lines. Baldwin's mid-2026 report cites
nuclear verdicts and new liability theories constraining GL and umbrella capacity in high-litigation states and
higher-crime ZIP codes. (3) Florida's 2023 tort reform (Fla. Stat. 768.0706) created a written, machine-checkable
evidence standard. Multifamily owners who substantially implement named measures, including entry and exit cameras
and a CPTED assessment, get a presumption against negligent-security liability. Pending 2026 bills (HB 1423 / SB 956)
would remove it where reported crime is high, which makes property-level evidence matter more. Passage is
unconfirmed.

## Why the leader structurally can't follow

- **Camera-AI vendors (Solink, Verkada, Eagle Eye, Cloudastructure)** sell software to operators. Writing the risk
  means becoming a licensed MGA with capacity, actuarial work, claims handling and rate filings in every state: a
  second company. There is a sharper conflict too. Pricing your own customers' liability turns your product into a
  source of evidence and a grader of your customers, which changes the trust relationship that sells the software.
- **Underwriting-workbench vendors (Kalepa, FurtherAI, Cytora)** sell to carriers and MGAs. Writing risk directly would
  make them competitors of their customers (channel conflict).
- **Incumbent habitational carriers and MGAs (MSI, Kinsale, Lloyd's habitational facilities)** price from
  applications, loss runs, CPTED reports and crime scores, distributed through wholesalers that never touch the
  property. Following would need camera-agnostic ingestion across thousands of sites, a VLM stack and a new consent
  agreement with each insured. That is not a rating-plan change.
- **Honest limit.** A carrier could partner with a camera vendor on a discount programme, much as Progressive answered
  Nirvana with Smart Haul. That is why the wedge is scored 3, not 4. The defence is to be the carrier whose pricing and
  claims defence are built on the evidence, not a carrier offering a discount for owning cameras.

## Who buys first, and how to reach the first ten

- **Beachhead:** owners and third-party managers of Class B and C apartment communities (100-500 units) in Florida,
  Georgia and Texas that already run cloud cameras, and whose GL was non-renewed or rose sharply.
- **Trigger:** a renewal shock, a nearby negligent-security verdict, a lender insurance requirement, or the need to
  document 768.0706 compliance.
- **Channels:** the Florida Apartment Association and NAA, regional apartment associations in Atlanta and Houston,
  wholesale brokers that place distressed habitational GL (AmWINS, CRC, RT Specialty), and camera vendors' multifamily
  partner programmes. The camera vendors gain because insurance becomes a reason to buy their cameras.

## Expansion path to 1bn dollars+

1. Sunbelt multifamily GL, priced on live evidence.
2. All US habitational GL and umbrella.
3. Hotels and motels, student housing, retail centres, parking operators, then nightlife (liquor liability), all with
   the same negligent-security exposure.
4. A full premises-liability carrier, with loss control as a second revenue line (paid alerts and fixes) and
   claims-defence evidence packages as a third.

US general liability is a market of more than 100bn dollars of premium a year. The dataset linking camera-observed
conditions to claim outcomes compounds with every policy year, and incumbents cannot buy it. Nirvana reached 1.5bn
dollars on one sensor-priced liability line; premises liability is larger.

## Defensibility once in

- **A proprietary loss dataset** linking observed conditions (lighting outages, open gates, patrol gaps, response
  times) to claim frequency and severity.
- **Claims-defence advantage:** timestamped evidence cuts defence cost and severity, so loss ratios improve and pricing
  power follows.
- **Workflow lock-in:** the property's security operations (alerts, work orders, guard verification) run on the
  platform.

## Scores (rubric v3)

Wedge 3 · Pattern 4 · Market 4 · Defensibility 4 · YC-fit 4 · Founder-fit 4 → **composite 3.8**.

## Biggest risks and the first things to verify

1. **Capacity and adverse selection.** A new MGA in the hardest liability line needs a fronting carrier and reinsurers,
   and the first applicants are the buildings nobody else will write. Test: talk to three fronting carriers and two
   habitational wholesalers about the evidence-based rating plan.
2. **Partnership copy.** Check whether Verkada, Flock or a habitational carrier has announced a camera-linked liability
   programme.
3. **Legal posture of the evidence.** Footage held by an insurer is discoverable. The design has to make continuous
   evidence help the insured more than it helps the plaintiff (retention policy, what is logged, privilege). Get
   coverage counsel's view before building.
4. **Florida law.** Confirm whether HB 1423 / SB 956 passed in 2026, and what that does to the presumption.
5. **Privacy and tenants.** Common-area video only, with no facial recognition. Check state biometric and
   tenant-privacy rules (Texas CUBI, Illinois BIPA for later expansion).

## Sources

[Solink (The Next Web)](https://thenextweb.com/news/solink-100m-vertu-capital-ai-vision-cameras) ·
[Nirvana Series D](https://fintech.global/2026/01/02/ai-insurer-nirvana-raises-100m-to-see-value-surge-to-1-5bn/) ·
[Kalepa Series B](https://techfundingnews.com/kalepa-75m-series-b-updata-insurance-ai/) ·
[Fla. Stat. 768.0706](https://m.flsenate.gov/Statutes/768.0706) ·
[HB 1423 analysis](https://flsenate.gov/Session/Bill/2026/1423/Analyses/h1423a.CIV.PDF) ·
[Baldwin multifamily report](https://baldwin.com/insights/real-estate-multifamily-industry-report/) ·
[MSI habitational GL](https://coverager.com/msi-launches-commercial-general-liability-insurance/) ·
[Intellisee multifamily playbook](https://intellisee.com/intelligence/multifamily-housing-residential-property-ai-security-2026-sector-playbook/)
