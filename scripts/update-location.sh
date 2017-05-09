#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/locations"
curl "${API}${URL_PATH}/8" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=BAhJIiU5ZTRhYmY4NjE1NTNkMzJjYTQzYjRhMTQwMTMxZDI5MAY6BkVG--98e577e641ad94a292cfc450d980467644b892fd" \
  --header "Content-Type: application/json" \
  --data '{
    "location": {
      "city": "'"dc"'",
      "city": "'"flor"'"
    }
  }'

echo
