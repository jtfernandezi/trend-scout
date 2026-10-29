# Brief 0033 — The AI-native fund office: an agent-run administrator for union multiemployer benefit funds

**Ledger id:** ts-0559 · **Date:** 2026-10-29 · **Composite:** 3.7 (rubric v3)

---

## The one-line version

Become the third-party administrator (TPA) for Taft-Hartley multiemployer health and welfare, pension and annuity
funds. Agents read every contributing employer's hours and contribution report, reconcile it against the collective
bargaining agreement (CBA), keep hours-bank eligibility current, run reciprocity and payroll audits, and answer
members. This is a seat that employer-side benefits software (Avante) is not built for and that the PE-owned incumbent
TPAs are paid not to automate.

## The plain-English version

Union construction workers, truck drivers, hotel workers and others usually don't get health insurance from one
employer. They move between many contractors, so every contractor pays into a shared fund for each hour worked, and
the fund provides the health plan and the pension. About 20-26 million Americans depend on these funds.

Every month each fund receives reports and payments from hundreds of small contractors. These come in every format
imaginable, each against a union contract with its own rates and job classes. Someone has to check them, catch
underpayments, work out which workers have enough hours to be covered next month, move hours between funds when a
worker travels to another local, and answer workers' calls. Today a few old outsourcing firms and in-house fund
offices do this with large clerical staffs and decades-old software. A worker can wait eight to ten weeks to find out
whether they're covered.

We would be the fund's administrator, doing that work with software that reads and checks everything the day it
arrives and with people handling the exceptions. The fund pays a per-member fee, as it does today, and gets faster
coverage, fewer mistakes and more of the contributions it's owed.

## The proven pattern

**Avante** raised a **30M dollar Series A (or A+) led by Frist Cressey Ventures in late October 2026**, with Sorenson
Capital, Hearst Ventures, Morgan Stanley Next Level Fund and FUSE (about 40M dollars in total). It has **more than 70
employer customers** (Zscaler, Samsung Semiconductor, Real Chemistry, News Corp), **more than 385,000 covered
employees and dependants**, and **bookings up about 5x year on year**. It launched Ava Agents, which do recurring
benefits work and return finished output for review, the week before the round.

The mechanism: frontier models can now read benefits documents (plan documents, carrier contracts, claims data) and
do the recurring administrative work around them with human review. Hyphenate's 45M dollar round the same week
(finance agents, revenue reportedly up 80x or more) confirms the wider pattern: agents that run back-office
operations end to end, not copilots, are what buyers are paying for this quarter.

Pattern strength is scored 3, not 4. Avante has real but modest disclosed traction, and nobody has yet proven the
AI-native *administrator* model in this specific market.

## Why the leader structurally can't follow

**Avante: data model plus business model.** Avante's world is one employer, one HRIS feed, one benefits team, and it
sells SaaS to corporate HR. A multiemployer fund turns that inside out:
- **Entities:** hundreds of contributing employers, many tiny, per fund. The worker is not anyone's single employee.
- **Eligibility:** coverage comes from hours banks and look-back rules applied to contributions, not from open
  enrolment.
- **Contracts:** CBA rate tables by trade, classification and effective date, often renegotiated mid-year.
- **Cross-fund flows:** reciprocity transfers when members work in another local's jurisdiction.
- **Enforcement:** payroll audits of contributing employers, delinquency collection and, for pensions, withdrawal
  liability.
- **Buyer:** a joint labour-management board of trustees that hires a bonded service provider through an RFP, usually
  advised by a benefits consultant and fund counsel. It does not buy a software seat.

Serving this means building a different product and becoming a services operator. It is not a configuration of
Avante.

**The incumbent TPAs: an innovator's dilemma.** Zenith American (PE-owned by BPOC, which calls itself the largest
independent Taft-Hartley TPA and grew through acquisitions), BeneSys, and the in-house fund offices are paid per
participant for clerical work. They run legacy benefit-processing systems (Bridgeway, formed from basys and ISSI).
They can buy agent tools, and horizontal platforms such as Cassidy already template "multi-employer fund
administration" agents. But that only trims their own costs. Rebuilding around machine reading and passing the savings
to trustees cuts their revenue, and a PE owner optimising for exit margin will not rebuild the platform.

**The honest limit.** An incumbent TPA can buy agents, keep the savings and compete on relationships. That is why
wedge durability is 4, not 5. The newcomer's edge has to show up where trustees feel it: eligibility in days rather
than weeks, more delinquent contributions recovered, and fewer member complaints.

## Beachhead buyer and trigger

**Buyer:** the trustees, fund manager and fund counsel of small and mid-sized building-trades health and welfare
funds (carpenters, laborers, electricians, operating engineers, plumbers and pipefitters) with about 2,000-20,000
participants. Start with **self-administered funds**, which run their own fund office and feel staff shortages
directly, and with funds visibly unhappy with their TPA.

**Trigger:** the administrator contract goes to RFP (typically every 3-5 years); the fund office loses its
eligibility or contributions staff; or an eligibility or contribution backlog causes member complaints, delinquency
losses or an auditor's finding.

**Where they congregate:** the International Foundation of Employee Benefit Plans (IFEBP) Annual Conference each
November, and its trustee-education programmes; NCCMP; the trade-specific fund-administrator associations; and the
small group of consulting actuaries and fund counsel (Segal and regional firms) who write the RFPs. The first ten come
through two or three consultants and fund-counsel firms that advise dozens of funds each.

## What the product actually is

1. **Contribution intake and reconciliation.** Read every employer remittance (PDF, spreadsheet, portal, EDI, paper)
   and map workers, hours, classifications and rates against the CBA in force for that date. Flag shortfalls,
   misclassifications and missing workers the same day.
2. **Eligibility engine.** Hours-bank and look-back rules computed continuously, so coverage is known when hours are
   reported, not eight weeks later.
3. **Reciprocity.** Automated transfer-in and transfer-out between funds. Every fund we administer makes this faster
   for the others, which gives a network effect.
4. **Payroll audit and delinquency.** Rank employers by underpayment risk using their reporting history against peer
   contractors and public signals (permits, certified payroll on public jobs), and assemble the audit and collection
   file.
5. **Member services.** A voice and text agent answers "am I covered?", "where are my hours?" and "what's my pension
   estimate?", with full context.
6. **Trustee reporting.** Board packs, delinquency reports and compliance filings (Form 5500 support, notices),
   prepared automatically.

Claims adjudication stays with the fund's existing claims administrator or network at first. The engine coordinates
eligibility with it and takes over claims later.

## Expansion path to $1B+

1. **Building-trades health and welfare funds**, the beachhead.
2. **The same fund office's other trusts.** One administrator typically runs the health, pension, annuity,
   apprenticeship and vacation funds for a local, so each win multiplies.
3. **Other multiemployer sectors:** Teamsters, hospitality (UNITE HERE), entertainment, healthcare-worker funds.
4. **Public-sector union trusts and VEBAs**, which have similar pooled structures.
5. **Moving up the value chain:** claims administration, pharmacy and stop-loss procurement, and contribution-audit
   recoveries priced as a share of what is recovered.

About 20-26 million people (NCCMP) are covered by multiemployer plans, and administration fees for that population
come to several billion dollars a year. Claims and pharmacy economics are larger still. An AI-native administrator
holding 10-15% of fund offices at software-like margins, plus recoveries and claims, supports a 1bn-dollar-plus
company. The market is large but not obviously massive, so the market score is 4.

## Scores (rubric v3)

| Dimension | Score | Why |
|---|---|---|
| Wedge durability | 4 | Avante would need a second company; the incumbent TPAs have an innovator's dilemma. Not 5, because a TPA can buy agents |
| Pattern strength | 3 | One fresh breakout with modest disclosed traction (Avante), plus the wider back-office agent signal (Hyphenate) |
| Market / venture scale | 4 | Billions in administration fees, with claims and recoveries on top. A credible path, not an obvious one |
| Defensibility | 4 | Multi-year trustee contracts, a cross-fund contribution and eligibility history, and reciprocity network effects |
| YC-fit | 4 | AI-native services replacing a labour-heavy, PE-rolled-up industry, which matches YC's current interest in AI-run service businesses |
| Founder-fit | 3 | Deep document AI and a real operating build; the labour-trustee sales motion is relationship-heavy and favours a founder with union-benefits access |
| **Composite** | **3.67** | |

## Biggest risks

- **A slow, relationship-led sale.** Trustees change administrators rarely and lean on consultants. Mitigation: start
  with self-administered funds and win through consultants who want a credible alternative to the roll-ups.
- **The incumbent buys agents.** Zenith or BeneSys bolts on horizontal agents and competes on relationships.
  Mitigation: win on measured outcomes (days to eligibility, dollars recovered) that a bolt-on can't match.
- **Fiduciary and operational risk.** Mistakes in eligibility or pension calculations harm members. Bonding,
  E&O insurance, SOC 2 and human review of exceptions are required from day one.
- **Labour politics.** Union trustees may resist anything that looks like automation replacing union-represented
  fund-office staff. Position it as faster service for members and redeploy staff into member advocacy.
- **Occupancy may arrive.** Horizontal agent vendors already template this workflow. Re-check each run.

## First 90 days

1. **Weeks 1-3:** interview 15-20 fund managers, fund counsel and benefits consultants. Validate the eligibility lag,
   delinquency rates and TPA fee levels, and collect anonymised remittance samples.
2. **Weeks 3-8:** build contribution intake and reconciliation against real remittances and CBA rate sheets. Measure
   the extraction and reconciliation accuracy that matters to auditors.
3. **Weeks 6-10:** run a shadow pilot with one self-administered fund. Reprocess three months of contributions in
   parallel and show the shortfalls caught and the days of eligibility lag removed.
4. **Weeks 10-13:** sign the first paid pilot (contribution audit and recovery, priced on recoveries, is the
   lowest-friction entry). Prepare a full-administrator proposal for the next RFP, and be at IFEBP.
