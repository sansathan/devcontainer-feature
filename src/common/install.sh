#!/bin/sh
set -e

echo "Activating common utilities feature"

# Install fish and starship
apt-get update -y && apt-get install -y --no-install-recommends \
    fish \
    starship \
    && rm -rf /var/lib/apt/lists/*

# Make fish the default shell for the remote user
if [ -n "$_REMOTE_USER" ]; then
    echo "Changing default shell for user '$_REMOTE_USER' to fish"
    chsh -s "$(which fish)" "$_REMOTE_USER"
    mkdir -p "/home/$_REMOTE_USER/.config/fish"
    echo "starship init fish | source" > "/home/$_REMOTE_USER/.config/fish/config.fish"
    chown -R "$_REMOTE_USER" "/home/$_REMOTE_USER/.config/fish"
elif [ -n "$_CONTAINER_USER" ]; then
    echo "Changing default shell for user '$_CONTAINER_USER' to fish"
    chsh -s "$(which fish)" "$_CONTAINER_USER"
    mkdir -p "/home/$_CONTAINER_USER/.config/fish"
    echo "starship init fish | source" > "/home/$_CONTAINER_USER/.config/fish/config.fish"
    chown -R "$_CONTAINER_USER" "/home/$_CONTAINER_USER/.config/fish"
else
    echo "No remote or container user specified, skipping default shell change"
fi