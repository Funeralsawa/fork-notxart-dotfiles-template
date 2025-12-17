# ~/.bash_profile: executed by bash(1) for login shells.

# Ensure that the XDG directories are set.
# This script is sourced first, so it sets up the environment for .bashrc.
if [[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/bash/rc.d/00-xdg.sh" ]]; then
    source "${XDG_CONFIG_HOME:-$HOME/.config}/bash/rc.d/00-xdg.sh"
fi

# Load .bashrc to ensure consistency between interactive and login shells.
if [[ -f "$HOME/.bashrc" ]]; then
    source "$HOME/.bashrc"
fi
