#!/bin/bash

set -euo pipefail

echo "--- :coverage: Running tests"
sleep 1

echo "--- :linux: Environment"
env | sort

# If a pull request:
# BUILDKITE_BRANCH=show-env
# BUILDKITE_PULL_REQUEST=1
# BUILDKITE_PULL_REQUEST_BASE_BRANCH=master
# BUILDKITE_PULL_REQUEST_REPO=git://github.com/drnic/buildkite-community-pr-flow-example.git

# If a branch:
# BUILDKITE_BRANCH=show-env
# BUILDKITE_PULL_REQUEST=false
# BUILDKITE_PULL_REQUEST_BASE_BRANCH=
# BUILDKITE_PULL_REQUEST_REPO=
