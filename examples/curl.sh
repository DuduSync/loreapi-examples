#!/usr/bin/env bash
# LoreAPI quickstart with plain curl.
#
# Usage:
#   LOREAPI_KEY=sk-lore-... ./examples/curl.sh

set -euo pipefail

KEY="${LOREAPI_KEY:-sk-lore-...}"

# Chat completion (non-streaming)
curl -s https://loreapi.online/v1/chat/completions \
  -H "Authorization: Bearer $KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "loreapi-rp",
    "messages": [
      {"role": "system", "content": "You are a creative roleplay assistant."},
      {"role": "user", "content": "Start a short cyberpunk story."}
    ],
    "stream": false
  }'

echo

# Streaming
curl -sN https://loreapi.online/v1/chat/completions \
  -H "Authorization: Bearer $KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "loreapi-rp",
    "messages": [{"role": "user", "content": "Start a short cyberpunk story."}],
    "stream": true
  }'

echo

# List models
curl -s https://loreapi.online/v1/models \
  -H "Authorization: Bearer $KEY"
