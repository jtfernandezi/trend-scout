# Trend Scout

Finds startup ideas worth pitching at YC by scanning current trends, making
a non-obvious second-order leap, and adversarially novelty-checking the
result before keeping anything.

Runs Tue/Thu/Sat at 3am (America/Mexico_City) via GitHub Actions + headless
Claude Code. See `automation/README.md` for how it's wired, and
`automation/trend_research_prompt.md` for the actual research logic.

## Layout

- `automation/` — the prompt, the GitHub Actions workflow, the Telegram script
- `sources/watchlist.md` — where it looks for signals
- `scoring/rubric.md` — how surviving ideas get scored
- `ideas/ledger.json` — every idea ever proposed (new/watching/promising/building/killed)
- `ideas/briefs/` — full write-ups for ideas that score well
- `reports/YYYY/YYYY-MM-DD.md` — one file per run, the durable daily archive

## Status

Scaffolded 2026-06-16. Two manual dry-runs done (outside this repo) to
validate the scan→leap→novelty-check loop before building the automation —
both rounds killed every idea generated, which validated that the novelty
filter has teeth but showed the prompt needed to force buyer-specific,
trigger-specific ideas instead of category-level ones. That fix is baked
into `trend_research_prompt.md`. Next: one manual end-to-end test run
inside this repo before turning on the schedule.
