# Setup XDG Base Directory
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

fish_add_path -g $HOME/.local/bin 

# Move programs dotfiles to XDG compatible directories
set -gx VIRTUALFISH_HOME $HOME/.local/share/virtualfish
set -gx CARGO_HOME $XDG_DATA_HOME/cargo

# Set default editor to neovim
set -gx EDITOR (type -p nvim)
set -gx VISUAL (type -p nvim)

# Enable touchpad gestures in Firefox
set -gx MOZ_ENABLE_WAYLAND 1
