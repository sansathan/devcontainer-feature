#!/usr/bin/env bash

set -e

source /etc/os-release

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

check "fish" fish -v

# Report result
reportResults