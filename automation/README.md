# Trend Scout automation

Clones the pattern from the stocks-investment-agent's `weekly-audit.yml`:
headless Claude Code, triggered by GitHub Actions cron, authenticated via
a Claude Code OAuth token secret, driven by a markdown prompt.

## Key difference from the stocks audit

The stocks audit never auto-merges or auto-deploys because it touches a
live trading system — it opens PRs for a human to review. Trend Scout has
no live system to protect; it only reads the public web and writes its own
markdown reports. So this workflow **commits straight to `main`** — there
is no PR gate and no read-only DB role, because there's nothing to damage.

## Secrets (GitHub repo settings → Secrets and variables → Actions)

- `CLAUDE_CODE_OAUTH_TOKEN` — same token type used by the stocks audit.
  Generate/refresh with `claude setup-token` (requires a Claude subscription)
  and update via `gh secret set CLAUDE_CODE_OAUTH_TOKEN -R <owner>/<repo>`.
  A stale or revoked token fails fast with `401 Invalid bearer token` in the
  "Run trend research" step — that's the signal to rotate it.
- `TELEGRAM_BOT_TOKEN` — a **new** bot, separate from `@trade_stocks_ai_bot`,
  so idea pings don't mix with trading pings
- `TELEGRAM_CHAT_ID` — your chat id for that bot

## Local secrets (for manual test runs)

`~/.config/trend-scout/secrets.env`:

```
TELEGRAM_BOT_TOKEN=...
TELEGRAM_CHAT_ID=...
```

## Schedule

Tue/Thu/Sat 06:00 UTC = 00:00 America/Mexico_City. Deliberately skips
Sunday so it never competes with the stocks project's weekly audit
(07:00 UTC Sunday) for the same weekly Claude token budget.

## Manual test run

```
claude -p "$(cat automation/trend_research_prompt.md)" --model opus
```

Run this locally first and read the output before relying on the
scheduled cloud run.
