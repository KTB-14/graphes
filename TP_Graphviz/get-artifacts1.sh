#!/bin/sh
set -e

OWNER="KTB-14"
REPO="graphes"
TOKEN_FILE="$HOME/token.gh"
TOKEN="$(cat "$TOKEN_FILE")"

mkdir -p TP_Graphviz/générées

# Q2.14 
curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${TOKEN}" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/${OWNER}/${REPO}/actions/artifacts" \
  > TP_Graphviz/générées/gh-artifacts.json

# Q2.15 
ARTIFACT_ID="4544111392"

curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${TOKEN}" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/${OWNER}/${REPO}/actions/artifacts/${ARTIFACT_ID}/zip" \
  --output TP_Graphviz/générées/artifact.zip


unzip -o TP_Graphviz/générées/artifact.zip
