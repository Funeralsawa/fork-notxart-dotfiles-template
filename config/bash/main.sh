# This script acts as the main loader for all bash configuration files.
# It sources all shell scripts within the rc.d directory in lexicographical order.

BASH_RCDIR="${XDG_CONFIG_HOME:-$HOME/.config}/bash/rc.d"

if [[ -d "$BASH_RCDIR" ]]; then
    for file in "$BASH_RCDIR"/*.sh; do
        if [[ -r "$file" ]]; then
            source "$file"
        fi
    done
fi

unset BASH_RCDIR file
