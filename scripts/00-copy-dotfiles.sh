#!/usr/bin/env bash

SCRIPT_PATH=$(dirname "$0")

# Load shared functions
source $SCRIPT_PATH/shared.sh

CONFIG_DIR=$HOME/.config

# Decode git config file
gpg $SCRIPT_PATH/../files/.config/git/config.gpg 2>/dev/null

# Remove old config directories
for dir in $(command ls $SCRIPT_PATH/../files/.config); do
    rm -rf $CONFIG_DIR/$dir
    log "$CONFIG_DIR/$dir removed."
done

# Copy dotfiles
git submodule update --recursive --init > /dev/null
log "Copying dotfiles..."
cp -r $SCRIPT_PATH/../files/.* $HOME/

# Cleanup
log "Running cleanup."
rm $SCRIPT_PATH/../files/.config/git/config
rm $CONFIG_DIR/git/config.gpg


log "Dotfiles successfully copied to $CONFIG_DIR."

