set -gx LANG "en_US.UTF-8"

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx LESSHISTFILE "$XDG_STATE_HOME/less/history"
set -gx PYTHON_HISTORY "$XDG_STATE_HOME/python/history"
set -gx VIRTUALFISH_HOME "$XDG_DATA_HOME/virtualfish"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -gx NODE_REPL_HISTORY "$XDG_STATE_HOME/node/repl_history"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"

fish_add_path -g /opt/homebrew/opt/rustup/bin
fish_add_path -g "$HOME/.local/bin"

# Ansible
set -gx ANSIBLE_HOME "$XDG_CONFIG_HOME/ansible"
set -gx ANSIBLE_CONFIG "$XDG_CONFIG_HOME/ansible.cfg"
set -gx ANSIBLE_GALAXY_CACHE_DIR "$XDG_CACHE_HOME/ansible/galaxy_cache"

# Cocoapods (capacitor)
set -gx CP_HOME_DIR "$XDG_DATA_HOME/cocoapods"
