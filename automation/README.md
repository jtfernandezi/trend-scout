# Trend Scout automation

Headless Claude Code, triggered by GitHub Actions cron, authenticated via
a Claude Code OAuth token secret, driven by a markdown prompt. The same
pattern I use for other scheduled agents, with the write posture tuned to
what this particular job can damage.

## Why this one commits straight to main

An agent's write permissions should match its blast radius, not a blanket
policy. My scheduled agents that touch stateful systems open PRs for human
review and run against read-only credentials, because a bad autonomous run
there is expensive and hard to reverse.

Trend Scout has no such surface: it reads the public web and writes its own
markdown into its own repo. The worst a bad run produces is a bad report,
which is visible in the diff and reverted with a `git revert`. So this
workflow **commits straight to `main`** — no PR gate, no approval step. The
guard that matters here is different: the run must not silently produce
nothing (see the commit step, which fails the build on an empty diff).

## Secrets (GitHub repo settings → Secrets and variables → Actions)

- `CLAUDE_CODE_OAUTH_TOKEN` — generate/refresh with `claude setup-token` (requires a Claude subscription)
  and update via `gh secret set CLAUDE_CODE_OAUTH_TOKEN -R <owner>/<repo>`.
  A stale or revoked token fails fast with `401 Invalid bearer token` in the
  "Run trend research" step — that's the signal to rotate it.
- `TELEGRAM_BOT_TOKEN` — a bot dedicated to this project, so idea pings stay
  in their own channel and don't mix with notifications from other agents
- `TELEGRAM_CHAT_ID` — your chat id for that bot

## Local secrets (for manual test runs)

`~/.config/trend-scout/secrets.env`:

```
TELEGRAM_BOT_TOKEN=...
TELEGRAM_CHAT_ID=...
```

## Schedule

Tue/Thu/Sat 06:00 UTC = 00:00 America/Mexico_City (UTC-6, no DST).
Overnight so it doesn't compete with daytime token budget, and deliberately
off Sunday so it doesn't collide with another scheduled agent that runs then.

## Manual test run

```
claude -p "$(cat automation/trend_research_prompt.md)" --model opus
```

Run this locally first and read the output before relying on the
scheduled cloud run.
