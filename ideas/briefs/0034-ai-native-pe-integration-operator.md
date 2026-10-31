# Brief 0034 — The Day-1 machine: an AI-native integration operator for private-equity buy-and-build platforms

**Ledger id:** ts-0568 · **Date:** 2026-10-31 · **Composite:** 3.7 (rubric v3)

---

## The one-line version

When a PE-backed platform buys an add-on, agents discover the acquired company's systems (identity, email and files,
ERP and chart of accounts, payroll and benefits, line-of-business apps) from its configs, logs and tickets. They plan
the Day-1 to Day-100 integration, then execute it into the platform's stack for a fixed fee per deal, with engineers
handling the exceptions. Carve-out TSA exits are run the same way.

## The plain-English version

A lot of private-equity money now goes into "buy and build": buy one decent dental group, plumbing company or
accounting firm, then buy dozens of smaller ones and fold them in. The savings only arrive once each small company is
actually folded in. Its people need to be on the parent's email and logins, paid through the parent's payroll, and
booking revenue in the parent's accounting system. Today that's done by consultants and IT contractors over months,
and many acquisitions stay half-merged for a year.

We would do that merging job with software. It reads how the new company's systems are set up, works out what maps to
what, writes and runs the moves, and checks the result, with people handling the odd cases. The investor pays a fixed
price per acquisition and gets the company merged in weeks, so the savings they bought it for start sooner.

## The proven pattern

**Serval** raised a **150M dollar Series C led by Sequoia at a 3bn dollar post-money valuation on 2026-10-29**, its
third round in 12 months (277M dollars in total). The company says **ARR has doubled every quarter** since its
December 2025 Series B, and it recently signed **two Fortune 20 customers**. Its agents read a company's ticket
history, policies and connected systems, then build and run the automations for internal IT and HR requests:
onboarding, offboarding and access. It is sold as a ServiceNow replacement.

The mechanism: **frontier agents can now learn an organisation's systems from its own exhaust (tickets, configs,
logs) and safely execute changes across them.** Hyphenate (45M dollar Series A, revenue reportedly up 80x or more)
shows the same thing on top of an existing ERP for finance operations. Broccoli AI hiring a PE-partnerships director
shows roll-up platforms already buy agents.

Pattern strength is 4: one clear breakout with hard round data and a growth claim, but no absolute revenue disclosed.

## Why the leader structurally can't follow

**Serval: adjacent buyer, different trigger, different data model.**
- **Unit of sale.** Serval sells a per-employee subscription to one company for continuous internal requests. This
  job is *episodic*: priced per deal, delivered as an outcome by a deadline.
- **Buyer.** The buyer is the PE operating partner or platform CFO, paying out of the deal's value-creation plan. It is
  not the IT team of a company that already exists.
- **Schema.** Serval's world is one organisation's systems. Integration is two legal entities, two identity tenants,
  two ERPs and two payrolls that must be reconciled and collapsed, often across a TSA with a third party (the seller).
- **Delivery.** It needs a services operation with forward-deployed engineers and liability for Day-1 cutovers. That
  is a second company for a product-led SaaS business.

**Migration tools (ShareGate, Quest On Demand Migration, BitTitan)** each cover one workload, mostly Microsoft 365.
They don't touch ERP, payroll, chart-of-accounts mapping or business processes, which is where the time and money go.

**Consultancies (Big Four, West Monroe, Accordion, Persistent, TCS)** own the job today and bill by the hour. A
fixed-fee, weeks-not-months operator cannibalises their integration practices. That is an innovator's-dilemma block,
not a capability block.

**Honest limit (why the wedge is 3, not 4).** A consultancy could buy Serval-like agents and offer fixed fees, or
Serval could partner with one. Horizontal automation vendors (Caddi) already blog about "Day-1 add-on integration".
The defence is speed to a cross-deal playbook library and becoming the sponsor's default, not an unbreakable moat.

## Beachhead buyer and trigger

- **Who:** operating partners and platform CFOs/CIOs at lower-middle-market PE firms running buy-and-build in
  fragmented services: home services, dental, veterinary, physical therapy, accounting, IT services and insurance
  brokerage. Platforms doing 5-20 add-ons a year of 20-500 employees each.
- **Why them first:** add-ons are small enough that consultancies are uneconomic. The acquired systems are a familiar
  set (QuickBooks or NetSuite, Gusto or ADP, Google or Microsoft, a vertical practice-management app), which suits
  machine-learned playbooks. And one sponsor relationship brings many deals.
- **Trigger:** an add-on signs and Day 1 is 30-60 days out; or a backlog of half-integrated add-ons is blocking
  consolidated reporting ahead of a sale process.
- **Where they congregate:** ACG chapters and DealMAKERS events, PE operating-partner forums, and the portfolio-ops
  teams of the most active add-on sponsors. The first ten come from 2-3 sponsors, each running several platforms.

## What the product actually is

1. **Discovery agent.** Read-only connectors into the target's identity provider, email tenant, file stores, ERP,
   payroll and key apps. It builds an inventory of systems, users, roles, integrations, data and the undocumented
   things people rely on (shared mailboxes, scheduled exports, the spreadsheet that feeds payroll).
2. **Mapping and plan.** The model maps the target's chart of accounts, pay codes, roles and records to the platform's
   standards, flags conflicts, and emits a Day-1/Day-30/Day-100 runbook with cutover risks.
3. **Execution.** Agents run identity and tenant moves, data migrations, payroll setup and ERP entity onboarding
   through APIs, with dry runs, reconciliation checks and rollback. Humans approve every irreversible step.
4. **Verification.** First payroll reconciled to the penny, first close tied out, access reviewed. This is the
   artefact the CFO signs off.
5. **Playbook library.** Every deal adds system-pair mappings (QuickBooks to NetSuite, Gusto to ADP, vertical app X to
   platform standard), so each new integration is cheaper.

## Expansion path to $1B+

1. Lower-middle-market add-on integrations: fixed fee per deal, recurring per sponsor.
2. Upper-middle-market platforms and corporate M&A integration, with larger tickets.
3. **Carve-outs and TSA exits:** the highest-fee, hardest-deadline work (TSAs typically cost 1-3% of deal value and
   run 9-12 months for IT and ERP).
4. **The standing portfolio-operations layer:** once a platform's systems run on our playbooks, we keep running
   onboarding, access and back-office integration for every portfolio company. This is the continuing Serval-like seat
   that many sponsor-backed mid-market companies never buy separately.

M&A integration services are a multi-billion-dollar annual market, and the portfolio-operations layer behind them is
larger. Holding a meaningful share of add-on integrations among the most active US sponsors at software-like gross
margins supports a 1bn-dollar-plus company.

## Scores (rubric v3)

| Dimension | Score | Why |
|---|---|---|
| Wedge durability | 3 | Real motion, buyer and schema mismatch for Serval and an innovator's dilemma for consultancies, but crossable through partnerships |
| Pattern strength | 4 | Serval: 3bn dollars, three rounds in 12 months, ARR doubling quarterly; Hyphenate confirms the mechanism |
| Market / venture scale | 4 | Add-ons are most US buyouts; carve-outs and portfolio operations extend it |
| Defensibility | 3 | The cross-deal playbook library and sponsor relationships compound, but no regulatory standing |
| YC-fit | 4 | Clear "agents replace a consulting line item" story with a sharp buyer |
| Founder-fit | 4 | Hard agent-execution engineering (safe cutovers, reconciliation) plus an operator's PE and GTM edge |
| **Composite** | **3.67** | |

## Biggest risks

- **Services drag.** Every target has oddities. Without discipline this becomes a consultancy with good tools and
  30% margins.
- **Liability.** A botched payroll or email cutover on Day 1 is very visible. It needs strong dry-run and rollback
  design, plus E&O cover.
- **Partnership squeeze.** A Big Four practice or a Serval partnership could offer fixed-fee integration before we
  reach sponsor scale.
- **Access.** Read access to a target's systems before close is limited by the purchase agreement and clean-team
  rules, so real discovery may only start at signing.

## First 90 days

1. Interview 20 operating partners and platform CFOs. Quantify cost per add-on integration today, time to first
   consolidated close, and the share of add-ons still half-integrated after 6 months.
2. Pick the most common system pairs in one vertical (for example dental: practice-management app, QuickBooks to
   NetSuite, Gusto to ADP, Google to Microsoft) and build discovery plus mapping for them.
3. Run two integrations at cost for one sponsor's platform, measuring days to Day-1 readiness and errors in the first
   payroll and close.
4. Re-check occupancy: ACG and operating-partner conference sponsors, and any Serval, ShareGate or Quest M&A programme.
