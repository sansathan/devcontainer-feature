#!/bin/bash
set -e

echo "Activating common utilities feature"

bash ./install_fish.sh
bash ./install_starship.sh

# Get all possible non-root users
POSSIBLE_USERS=("vscode" "node" "codespace" "$(awk -v val=1000 -F ":" '$3==val{print $1}' /etc/passwd)")
# create .config/fish if it doesn't exist
for CURRENT_USER in "${POSSIBLE_USERS[@]}"; do
  if id -u ${CURRENT_USER} > /dev/null 2>&1; then
    USERNAME=${CURRENT_USER}
    if [ ! -d "/home/${USERNAME}/.config/fish" ]; then
      mkdir -p "/home/${USERNAME}/.config/fish"
      chown -R ${USERNAME} "/home/${USERNAME}/.config"
      echo "starship init fish | source" >> "/home/${USERNAME}/.config/fish/config.fish"
    fi
    break
  fi
done