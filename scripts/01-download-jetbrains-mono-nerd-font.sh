#!/usr/bin/env bash

SCRIPT_PATH=$(dirname "$0")

# Load shared functions
source $SCRIPT_PATH/shared.sh

FONTS_DIR=$HOME/.local/share/fonts

# Get the latest version of nerd fonts
LATEST_VERSION=$(curl -sL "https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest" |
    grep '"tag_name":' |
    sed -E 's/.*"([^"]+)".*/\1/')

# Create user fonts directory
mkdir -p $FONTS_DIR
rm -f $FONTS_DIR/JetBrainsMono*
cd $FONTS_DIR

# Download fonts archive
log "Downloading JetBrainsMono..."
wget -q --show-progress https://github.com/ryanoasis/nerd-fonts/releases/download/$LATEST_VERSION/JetBrainsMono.zip

# Unpack fonts
log "Unpacking JetBrainsMono..."
unzip $FONTS_DIR/JetBrainsMono.zip > /dev/null

# Cleanup
log "Running cleanup."
rm JetBrainsMono.zip *.txt *.md JetBrainsMonoNerdFont-* JetBrainsMonoNerdFontPropo* JetBrainsMonoNL*


log "JetBrains Mono Nerd Font version $LATEST_VERSION installed succesfully."

