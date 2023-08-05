#!/usr/bin/env fish

function log
    echo "[$(date +'%T %D')] - $argv"
end

# Install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source

# Install plugins
log "Installing fish plugins..."
fisher install jorgebucaran/fisher >/dev/null
fisher install jethrokuan/z >/dev/null
fisher install jorgebucaran/autopair.fish >/dev/null
fisher install decors/fish-colored-man >/dev/null
fisher install oh-my-fish/plugin-gi >/dev/null
fisher install oh-my-fish/plugin-license >/dev/null
fisher install ilancosman/tide >/dev/null
log "Fish plugins succesfully installed."
log "INFO: Run \"tide configure\" to configure shell theme."


log "Fisher successfully set up."

