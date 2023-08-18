#!/usr/bin/env bash

SCRIPT_PATH=$(dirname "$0")

# Load shared functions
source $SCRIPT_PATH/scripts/shared.sh

# Run all scripts
for script in $SCRIPT_PATH/scripts/*.sh; do
    if [ $script == "$SCRIPT_PATH/scripts/shared.sh" ]; then
        continue
    fi
    echo
    log "STAGE - Executing $script..."
    $script
done

echo
log "Success! Please restart your shell."
echo

