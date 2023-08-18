#/usr/bin/env bash

SCRIPT_PATH=$(dirname "$0")

# Load shared functions
source $SCRIPT_PATH/shared.sh

log "Applying dconf..."
dconf load / < $SCRIPT_PATH/../files/dconf.txt


log "Dconf applied successfully."

