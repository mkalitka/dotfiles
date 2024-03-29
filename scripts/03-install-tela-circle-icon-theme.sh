#!/usr/bin/env bash

SCRIPT_PATH=$(dirname "$0")

# Load shared functions
source $SCRIPT_PATH/shared.sh

ICONS_DIR=$HOME/.local/share/icons

# Load shared functions
source $SCRIPT_PATH/shared.sh

# Clone repo
log "Downloading Tela circle icon theme..."
git clone --quiet git@github.com:vinceliuice/Tela-circle-icon-theme 1>/dev/null

# Install theme
mkdir -p $ICONS_DIR
log "Installing Tela circle icon theme..."
Tela-circle-icon-theme/install.sh -d $ICONS_DIR standard >/dev/null

# Cleanup
log "Running cleanup."
rm -rf Tela-circle-icon-theme


log "Tela circle icon theme successfully installed."

