#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 20:42:55 EDT 2017
#####   Purpose: bash script to install vim plugins
#####   Notes: 
#}}}***********************************************************

installGitHubPlugin(){
    git clone "https://github.com/$1.git" 
}

printf "Installing Tmux Plugins"
if [[ ! -d "$HOME/.tmux/plugins" ]]; then
    mkdir -p "$HOME/.tmux/plugins"
fi

INSTALLER_DIR="$(pwd)"

cd "$HOME/.tmux/plugins" && {
while read repo; do
    installGitHubPlugin "$repo"
done < "$INSTALLER_DIR/.tmuxplugins"
}

