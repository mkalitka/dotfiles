set -gx EDITOR "nvim"
set -gx VISUAL "nvim"

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

set -gx VIRTUALFISH_HOME "$XDG_DATA_HOME/virtualfish"
set -gx PYTHON_HISTORY "$XDG_STATE_HOME/python/history"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -gx DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -gx NODE_REPL_HISTORY "$XDG_STATE_HOME/node/repl_history"
set -gx GOPATH "$XDG_DATA_HOME/go"

set -gx BAT_THEME "base16"

fish_add_path -g "$HOME/.local/bin"

# Work related
set -gx ANSIBLE_HOME "$XDG_CONFIG_HOME/ansible"
set -gx ANSIBLE_GALAXY_CACHE_DIR "$XDG_CACHE_HOME/ansible/galaxy_cache"
set -gx VAGRANT_HOME "$XDG_DATA_HOME/vagrant"
