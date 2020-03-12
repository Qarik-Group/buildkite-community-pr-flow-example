#!/bin/bash

set -euo pipefail

# From https://buildkite.com/docs/pipelines/links-and-images-in-log-output#links
function inline_link {
  LINK="url='"$1"'"

  if [ $# -gt 1 ]; then
    LINK="$LINK;content='"$2"'"
  fi

  printf '\033]1339;'$LINK'\a\n'
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
echo "--- :cloudfoundry: Deployed to $(inline_link $url)"
