#!/usr/bin/env sh

curl \
  --location --request POST 'https://api.github.com/repos/foss-for-synopsys-dwc-arc-processors/arc-gnu-toolchain/dispatches' \
  --header 'Content-Type: application/json' \
  --header 'Accept: application/vnd.github.everest-preview+json' \
  --header "Authorization: token $GITHUB_TOKEN" \
  --data-raw '{
    "event_type": "gh-webhook",
    "client_payload": {}
  }'
