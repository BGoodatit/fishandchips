#!/usr/bin/env bash

# Remove custom theme files
rm -rf ~/.config/fish/completions/tide.fish
rm -rf ~/.config/fish/conf.d/_tide_init.fish
rm -rf ~/.config/fish/functions/*_tide_*.fish
rm -rf ~/.config/fish/functions/tide.fish

# Revert any changes made by the installation script
fish --init-command "set -g fish_greeting 'Welcome to the Fish shell!'"

# Cleanup
rm -rf ~/.config/fishandchips

# Final message
echo "Uninstallation completed. Please restart your Fish shell."
