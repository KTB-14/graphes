#!/bin/sh

OWNER="KTB-14"
REPO="graphes"
TOKEN_FILE="$HOME/token.gh"

TOKEN="$(cat "$TOKEN_FILE")"


curl \
  -H "Authorization: Bearer $TOKEN" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/$OWNER/$REPO/actions/artifacts"
