#!/bin/bash

set -euo pipefail

# From https://buildkite.com/docs/pipelines/links-and-images-in-log-output#links
function inline_link {
  LINK=$(printf "url='%s'" "$1")

  if [ $# -gt 1 ]; then
    LINK=$(printf "$LINK;content='%s'" "$2")
  fi

  # printf '%s' "$LINK"
  printf '\033]1339;%s\a\n' "$LINK"
}

echo "--- :cloudfoundry: Preparing"
sleep 1
echo "--- :cloudfoundry: Configuring"
sleep 1
echo "--- :cloudfoundry: Deploying"
sleep 1
echo "--- :cloudfoundry: Annotating"
sleep 1

url=https://myapp.com
[[ -n "${SUBDOMAIN:-}" ]] && {
  url=https://${SUBDOMAIN}.myapp.com
}
echo "--- :cloudfoundry: Deployed to $(inline_link "$url")"
