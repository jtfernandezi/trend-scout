# Trend Scout — Daily Research Run

You are running the autonomous research pass for Trend Scout, a project whose
sole purpose is to find startup ideas worth pitching at YC. You get three
runs a week. Most ideas you will generate are not novel — that's expected.
Your job is to filter ruthlessly and only keep what survives.

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

Instead, **cross two unrelated signals**: one AI/technical capability and one
non-AI structural trend (economic, demographic, regulatory, industry-specific).
The idea must not make sense without both halves present.

Develop **several** candidate crosses this run (aim for 5-8), not just one.
The goal is to end up with a handful of ideas worth a look, so the operator
has options to investigate later — not a single take-it-or-leave-it pick.

## Step 3 — Force specificity

A category-level idea ("AI for post-merger integration") will already exist.
For every idea, you must name:

- **The exact buyer** — not "small businesses," but a specific role/situation
  (e.g. "a search-fund operator in the first 90 days after a single-location
  HVAC acquisition").
- **The trigger moment** — the specific event that creates urgency right now,
  not a generic pain point.
- **Why incumbents structurally can't or won't serve this** — too small for
  them, wrong motion, wrong margin profile, etc.

If you can't fill in all three with something specific, the idea is too
generic — discard it before spending a novelty check on it.

## Step 4 — Adversarial novelty check

For every idea that passes Step 3, actively try to kill it:
- Search for the idea's obvious name/category + "startup"
- Search for the specific buyer + the specific workflow
- Search YC's company directory / RFS landscape mentions if relevant

Default assumption: it already exists. Only keep ideas that survive 2-3
honest kill attempts. Log every kill (even ones that don't make the final
report) in the ledger with status `killed` and the reason — this prevents
re-discovering and re-killing the same dead idea next run.

This check kills ideas for **being already occupied**, not for being weak on
some scoring dimension. An idea with a small or episodic market but no direct
competitor still *survives* — it gets reported with that weakness called out
as a caveat (see Step 6), so the operator can judge it. Do not silently drop a
genuinely novel idea just because one rubric score is low. Surface every idea
that survives novelty; a typical good run reports 2-5 survivors, not one.

## Step 5 — Score survivors

Use `scoring/rubric.md`. Score every survivor on all dimensions, including
founder-fit (the operator's edge is consulting/strategy/product — bias
toward GTM-heavy, B2B workflow, vertical SaaS, decision-support plays, but
do not discard strong ideas outside that lane — flag them as
"needs technical cofounder" instead).

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
     5. **Scores** — one line: `Novelty X · Why-now X · Market X · Solo-build X
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
