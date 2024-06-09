#!/usr/bin/env bash

# Check for necessary commands
if ! command -v curl &> /dev/null || ! command -v tar &> /dev/null; then
    echo "This script requires 'curl' and 'tar' to be installed."
    exit 1
fi

# Temporary directory for the installation files
TIDE_TMP_DIR=$(mktemp -d)

# Clone the fishandchips repository
git clone https://github.com/BGoodatit/fishandchips.git "$TIDE_TMP_DIR"

# Installing Tide
cp -R "$TIDE_TMP_DIR"/fishandchips/* ~/.config/fish/

# Initialize the tide configuration
source ~/.config/fish/conf.d/_tide_init.fish
fish --init-command "set -g fish_greeting; emit _tide_init_install"

# Cleanup
echo "Installation completed. Please restart your Fish shell."
rm -r "$TIDE_TMP_DIR"
