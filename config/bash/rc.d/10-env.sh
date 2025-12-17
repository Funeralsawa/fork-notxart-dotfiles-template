# This file is for setting general environment variables.

# Set the default editor
export EDITOR='vim'
export VISUAL='vim'

# Increase history size
export HISTSIZE=10000
export HISTFILESIZE=20000

# Store history log in the XDG_DATA_HOME
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/bash_history"

# Avoid duplicate entries in history
export HISTCONTROL="ignoreboth:erasedups"

# Append to the history file, don't overwrite it
shopt -s histappend

# Man Page Colors (Make man pages more readable)
export GROFF_NO_SGR=1
export LESS_TERMCAP_mb=$'\e[1;31m'     # Begins blinking
export LESS_TERMCAP_md=$'\e[1;36m'     # Begins bold
export LESS_TERMCAP_me=$'\e[0m'        # Ends mode
export LESS_TERMCAP_se=$'\e[0m'        # Ends standout-mode
export LESS_TERMCAP_so=$'\e[1;44;33m'  # Begins standout-mode
export LESS_TERMCAP_ue=$'\e[0m'        # Ends underline
export LESS_TERMCAP_us=$'\e[1;32m'     # Begins underline


# ----------------------------------------------------------------------
# USER CUSTOMIZATIONS
# ----------------------------------------------------------------------
# Use the section below as a reference for adding your own tool-specific
# environment variables and updating your PATH.

# Example: Customizing Rust toolchain paths
# export CARGO_HOME="$HOME/.local/rust/cargo"
# export RUSTUP_HOME="$HOME/.local/rust/rustup"
# [[ -d "$CARGO_HOME/bin" ]] && export PATH="$PATH:$CARGO_HOME/bin"
