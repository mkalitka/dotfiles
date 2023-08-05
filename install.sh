#!/usr/bin/env bash

SCRIPT_PATH=$(dirname "$0")

source $SCRIPT_PATH/scripts/log.sh

# Run all scripts
for script in $SCRIPT_PATH/scripts/*.sh; do
    if [ $script == "$SCRIPT_PATH/scripts/log.sh" ]; then
        continue
    fi
    echo
    log "STAGE - Executing $script..."
    bash $script
done

for script in $SCRIPT_PATH/scripts/*.fish; do
    echo
    log "STAGE - Starting $script..."
    fish $script
done

echo
log "Success! Please restart your shell."
echo

