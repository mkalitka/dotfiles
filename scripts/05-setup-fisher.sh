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
tide configure --auto --style=Lean --prompt_colors='16 colors' --show_time='24-hour format' --lean_prompt_height='One line' --prompt_spacing=Compact --icons='Many icons'
log "Fish plugins succesfully installed."


log "Fisher successfully set up."

