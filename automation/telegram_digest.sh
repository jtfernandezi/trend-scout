#!/usr/bin/env bash
# Send the Trend Scout Telegram digest.
# Usage: telegram_digest.sh "message text"
set -uo pipefail
SECRETS="$HOME/.config/trend-scout/secrets.env"
if [ -f "$SECRETS" ]; then set -a; source "$SECRETS"; set +a; fi
MSG="${1:-(empty message)}"
curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
  --data-urlencode "chat_id=${TELEGRAM_CHAT_ID}" \
  --data-urlencode "text=${MSG}" \
  -d disable_web_page_preview=true > /dev/null
