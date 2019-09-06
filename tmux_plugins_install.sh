#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 20:42:55 EDT 2017
#####   Purpose: bash script to install vim plugins
#####   Notes: 
#}}}***********************************************************

installGitHubPlugin(){
    echo "Installing tmux plugin $1."
    git clone "https://github.com/$1.git" 
}

if [[ -d "$HOME/.tmux/plugins" ]]; then
    mkdir -p "$HOME/.tmux/plugins"
fi

INSTALLER_DIR="$(pwd)"

builtin cd "$HOME/.tmux/plugins" && {
while read repo; do
    installGitHubPlugin "$repo"
done < "$INSTALLER_DIR/.tmuxplugins"
}
