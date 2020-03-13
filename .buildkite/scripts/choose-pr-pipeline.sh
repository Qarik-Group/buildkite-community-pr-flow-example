#!/bin/bash

set -euo pipefail

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"
cd "$ROOT"

if [[ $BUILDKITE_PULL_REQUEST_REPO == "https://github.com/starkandwayne*" ]]; then
  cat .buildkite/pipeline.pr-friendly.yml
else
  cat .buildkite/pipeline.pr-guest.yml
fi