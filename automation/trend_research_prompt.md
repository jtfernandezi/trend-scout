# Trend Scout — Daily Research Run

You are running the autonomous research pass for Trend Scout, a project whose
sole purpose is to find **venture-scale, AI-native startup ideas worth pitching
at YC** — the kind a founder moves to San Francisco to build. You get three
runs a week. Most ideas you will generate are not novel, or not big enough —
that's expected. Your job is to filter ruthlessly and only keep what survives.

**The bar.** Every surviving idea must clear three gates, in order: it is
**genuinely novel** (survives the kill check), it is **AI-native** (the product
is impossible or radically worse without frontier AI — not a thin wrapper, not
a workflow tool with an AI feature bolted on), and it has a **credible path to a
$1B+ outcome** (a large or fast-expanding market, not a niche or lifestyle
business). An idea that fails any one of these is killed, no matter how clever.
Bias toward high-impact, technically ambitious products — deep models, agents,
infrastructure, hard data moats, AI rebuilding large industries. Do **not**
penalize an idea for being hard to build or needing a technical cofounder;
ambition is the point.

**Today's date:** run `date -u +%F` and use that exact value everywhere a date
is needed (the report filename, the `date` field on every ledger entry). Do not
guess, infer from the schedule, or use a date from memory — read the clock.

## Context you must read first

1. `ideas/ledger.json` — every idea ever proposed, with its status. Do not
   propose anything that duplicates an existing entry (even a different
   wording of the same idea). If a `watching` idea now has new evidence,
   you may update it instead of creating a new one.
2. The last 3 files in `reports/` (most recent dates) — what was already
   covered, so you scan fresh ground.
3. `scoring/rubric.md` — how to score survivors.
4. `sources/watchlist.md` — where to look.

## Step 1 — Scan

Use WebSearch against the watchlist. Pull 4-6 genuinely current signals
(launches, funding, regulation, capability jumps, RFS lists, structural
economic shifts). Prefer signals from the last 1-2 weeks. More raw signals =
more candidate crosses to develop in the next steps.

## Step 2 — Cross, don't extend

The single most common failure mode (confirmed by manual dry-runs) is taking
one AI trend and extending it one obvious step — "X launched, so build an
AI wrapper for X." That space is saturated; everyone has the same idea
simultaneously. Do not do this.

Instead, **cross two signals**: one frontier AI/technical capability and one
large structural shift — a big market being rebuilt, a new platform, a major
labor/spend budget moving, a demographic or regulatory wave. The idea must not
make sense without both halves present, and the structural half must be **big**
(a large or fast-growing market), not a niche compliance corner. A new
regulation only qualifies if it unlocks a *large* market, not a few thousand
small shops.

Develop **several** candidate crosses this run (aim for 5-8), not just one.
The goal is to end up with a handful of ideas worth a look, so the operator
has options to investigate later — not a single take-it-or-leave-it pick.

## Step 3 — Force specificity, but as a beachhead into a big market

A category-level idea ("AI for post-merger integration") will already exist, so
you must still be specific. But specificity means a sharp **beachhead** — a
focused first customer you can win fast — that opens onto a huge market, **not**
a tiny terminal niche you'd be stuck in forever. For every idea, name:

- **The beachhead buyer** — a specific role/situation you can land first
  (e.g. "AI-first Series A startups drowning in on-call alerts"), chosen because
  it's winnable now *and* it's the thin end of a large wedge.
- **The expansion path to $1B** — how landing that beachhead expands into a
  large or fast-growing market (more segments, up-market, adjacent workflows, a
  platform). If you can't tell a credible story for how this becomes a
  $1B+ company, **kill it now** — this is a hard gate, not a soft score.
- **Why incumbents structurally can't or won't build it** — wrong architecture,
  innovator's dilemma, no AI-native foundation, wrong motion.

If you can't fill in all three with something specific *and* big, discard the
idea before spending a novelty check on it.

## Step 4 — Adversarial novelty check

For every idea that passes Step 3, actively try to kill it:
- Search for the idea's obvious name/category + "startup"
- Search for the specific buyer + the specific workflow
- Search YC's company directory / RFS landscape mentions if relevant

Default assumption: it already exists. Only keep ideas that survive 2-3
honest kill attempts. Log every kill (even ones that don't make the final
report) in the ledger with status `killed` and the reason — this prevents
re-discovering and re-killing the same dead idea next run.

This check kills ideas for **being already occupied**. It is separate from the
two hard gates already applied in Steps 1-3 (AI-native, and a credible $1B+
path) — an idea must clear all three to survive. A novel idea with a small or
episodic market does **not** survive: it fails the venture-scale gate, so kill
it and log why. Within the ideas that clear all three gates, surface every one
— don't drop a survivor over a merely middling score on some other dimension. A
typical good run reports 2-5 survivors, not one.

## Step 5 — Score survivors

Use `scoring/rubric.md`. Score every survivor on all dimensions. Founder-fit
now rewards **technical ambition and AI-native depth**, not how little
engineering is required — assume the operator builds in SF with a technical
cofounder. Do not down-score an idea for needing serious engineering; that is a
feature. Market/venture-scale is a hard gate (already applied in Step 3): if any
survivor scores below 4 there, it should not have survived — go back and kill
it.

## Step 6 — Write outputs

1. **Update `ideas/ledger.json`** — add every new idea (status `new` or
   `killed`), with id, one-line summary, scores, date, and kill reason if
   applicable.
2. **Write `reports/YYYY/YYYY-MM-DD.md`** — today's report. Include:
   - Signals scanned (one line each)
   - Ideas killed (one line each + reason) — this is signal, keep it
   - **Surviving ideas** — a short, scannable card for *each* survivor (not a
     full brief; the goal is options the operator can skim and pick from).
     Each card has, in this order:
     1. **The one-liner title** — keep it punchy/precise, jargon is fine here.
     2. **In plain English** (REQUIRED, 2-4 sentences) — explain it as if to a
        smart person who knows nothing about tech, startups, or the jargon in
        the title. No acronyms unspelled-out-once, no "capital stack,"
        "agentic," "LLM," "RAG." Say what the thing literally does, who pays
        for it, and why they'd happily pay — the way the operator would pitch
        it to a non-technical friend at dinner. This is a sales sentence, not
        a spec. If the title says "capital-stack structuring engine," this
        line says something like "It's a tool that tells someone buying a
        small business exactly how to set up the loan so the bank says yes and
        the deal doesn't fall apart."
     3. **Who buys it** — one line, the exact buyer + trigger moment.
     4. **Why no one already serves them** — one line.
     5. **Scores** — one line: `Novelty X · Why-now X · Market X · Defensibility X
        · YC-fit X · Founder-fit X → composite X.X`.
     6. **Biggest risk** — one honest line.
3. **Write a brief to `ideas/briefs/NNNN-slug.md`** — only for the single
   strongest survivor (or any scoring above a 4.0 composite). The report is
   the menu; the brief is the deep-dive on the best one. Don't write a full
   brief for every survivor.
4. **Commit and push** everything above directly to `main` with message
   `trend-scout: report YYYY-MM-DD`.
5. **Send the Telegram digest** by running `automation/telegram_digest.sh`
   with a short summary message: survivor count, then each survivor's one-liner
   followed by its one-sentence plain-English explanation (so the message is
   understandable on a phone without opening the repo), and a note that the
   full report is in the repo.

If zero ideas survive the novelty check, that is a valid and useful outcome —
report it honestly rather than forcing a weak idea through.
