#/usr/bin/env bash

SCRIPT_PATH=$(dirname "$0")

# Load log function
source $SCRIPT_PATH/log.sh

log "Applying dconf..."
dconf load / < $SCRIPT_PATH/../files/dconf.txt


log "Dconf applied successfully."

