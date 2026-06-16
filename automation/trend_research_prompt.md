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

Use WebSearch against the watchlist. Pull 2-4 genuinely current signals
(launches, funding, regulation, capability jumps, RFS lists, structural
economic shifts). Prefer signals from the last 1-2 weeks.

## Step 2 — Cross, don't extend

The single most common failure mode (confirmed by manual dry-runs) is taking
one AI trend and extending it one obvious step — "X launched, so build an
AI wrapper for X." That space is saturated; everyone has the same idea
simultaneously. Do not do this.

Instead, **cross two unrelated signals**: one AI/technical capability and one
non-AI structural trend (economic, demographic, regulatory, industry-specific).
The idea must not make sense without both halves present.

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
   - Signals scanned
   - Ideas killed (one line each + reason) — this is signal, keep it
   - Surviving ideas: full brief (buyer, trigger, why-incumbents-can't,
     scores, why-now)
3. **Write a brief to `ideas/briefs/NNNN-slug.md`** for each idea scoring
   above a 4-average composite.
4. **Commit and push** everything above directly to `main` with message
   `trend-scout: report YYYY-MM-DD`.
5. **Send the Telegram digest** by running `automation/telegram_digest.sh`
   with a short summary message (survivor count, top idea one-liner, link
   note that the full report is in the repo).

If zero ideas survive the novelty check, that is a valid and useful outcome —
report it honestly rather than forcing a weak idea through.
