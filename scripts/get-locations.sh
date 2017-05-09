#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/locations/16"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiU5ZTRhYmY4NjE1NTNkMzJjYTQzYjRhMTQwMTMxZDI5MAY6BkVG--98e577e641ad94a292cfc450d980467644b892fd"

echo
