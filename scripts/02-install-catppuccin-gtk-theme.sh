#!/usr/bin/env bash

SCRIPT_PATH=$(dirname "$0")

# Load shared functions
source $SCRIPT_PATH/shared.sh

THEMES_DIR=$HOME/.themes

# Get the latest version of catppuccin/gtk
LATEST_VERSION=$(curl -sL "https://api.github.com/repos/catppuccin/gtk/releases/latest" |
    grep '"tag_name":' |
    sed -E 's/.*"([^"]+)".*/\1/')

# Create user themes directory
mkdir -p $THEMES_DIR
rm -rf $THEMES_DIR/Catppuccin-Mocha-*
cd $THEMES_DIR

# Download theme archive
log "Downloading Catppuccin-Mocha..."
wget -q --show-progress https://github.com/catppuccin/gtk/releases/download/$LATEST_VERSION/Catppuccin-Mocha-Standard-Blue-dark.zip

# Unpack fonts
log "Unpacking Catppuccin-Mocha..."
unzip $THEMES_DIR/Catppuccin-Mocha-Standard-Blue-dark.zip >/dev/null

# Link gtk4 theme
log "Installing gtk-4.0 theme..."
mkdir -p $HOME/.config/gtk-4.0
ln -sf $THEMES_DIR/Catppuccin-Mocha-Standard-Blue-dark/gtk-4.0/gtk.css $HOME/.config/gtk-4.0/gtk.css
ln -sf $THEMES_DIR/Catppuccin-Mocha-Standard-Blue-dark/gtk-4.0/gtk-dark.css $HOME/.config/gtk-4.0/gtk-dark.css
ln -sf $THEMES_DIR/Catppuccin-Mocha-Standard-Blue-dark/gtk-4.0/assets $HOME/.config/gtk-4.0/assets

# Apply theme to flatpak apps
flatpak override --user --filesystem=$THEMES_DIR --filesystem=$HOME/.config/gtk-4.0 --env=GTK_THEME=Catppuccin-Mocha-Standard-Blue-dark

# Cleanup
log "Running cleanup."
rm -rf $THEMES_DIR/Catppuccin-Mocha-Standard-Blue-dark.zip $THEMES_DIR/*hdpi


log "Catppuccin Mocha GTK Theme version $LATEST_VERSION installed succesfully."

