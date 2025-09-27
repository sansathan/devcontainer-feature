#!/bin/bash

set -e

source dev-container-features-test-lib

check "fish should be installed" bash -c "command -v fish"
check "default shell should be fish" bash -c "echo \$SHELL | grep 'fish'"
check "fish config directory exists" bash -c "[ -d ~/.config/fish ]"
check "fish config file exists" bash -c "[ -f ~/.config/fish/config.fish ]"
check "fish config file contains starship" bash -c "grep -q 'starship init fish' ~/.config/fish/config.fish"

reportResults