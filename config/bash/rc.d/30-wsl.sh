# This file contains settings specific to the Windows Subsystem for Linux (WSL).
# Loaded only when running under WSL.

if grep -qEi "(microsoft|wsl/|wslg/)" /proc/sys/kernel/osrelease /proc/mounts 2>/dev/null; then
    ## Connect to Docker Desktop running on the Windows host
    export DOCKER_HOST="tcp://localhost:2375"

    ## Alias
    alias explorer="/mnt/c/Windows/explorer.exe"

    ## Environment variable
    # Visual Studio Code (WSL)
    export vscode_user_profile='/mnt/c/Users/Foo'
    if [[ -d "$vscode_user_profile" ]]; then
        export CODE_HOME="$vscode_user_profile/AppData/Local/Programs/Microsoft VS Code"
        if [[ -d "$CODE_HOME/bin" && ":$PATH:" != *":$CODE_HOME/bin:"* ]]; then
            export PATH="$PATH:$CODE_HOME/bin"
        fi
    fi

    unset vscode_user_profile
fi
