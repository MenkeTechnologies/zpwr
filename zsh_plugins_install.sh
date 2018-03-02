#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 20:01:10 EDT 2017
#####   Purpose: bash script to install zsh plugins
#####   Notes: 
#}}}***********************************************************


if [[ ! -d "$HOME/.oh-my-zsh/custom/plugins" ]]; then
    mkdir -p "$HOME/.oh-my-zsh/custom/plugins"
fi

INSTALLER_DIR="$(pwd)"

installOhMyZshPlugin(){
    git clone "https://github.com/$1.git" 
}

cd "$HOME/.oh-my-zsh/custom/plugins" && {
    while read repo; do
        installOhMyZshPlugin "$repo"
    done < "$INSTALLER_DIR/.zshplugins"
}
