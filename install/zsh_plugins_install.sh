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

ZPWR_INSTALLER_DIR="$(pwd)"

installOhMyZshPlugin(){
    echo "Installing zsh plugin $1."
    git clone "https://github.com/$1.git" 
}

if builtin cd "$HOME/.oh-my-zsh/custom/plugins"; then
    while read repo; do
        installOhMyZshPlugin "$repo"
    done < "$ZPWR_INSTALLER_DIR/.zshplugins"
else
    echo "could not cd to $HOME/.vim/bundle/YouCompleteMe" >&2
    exit 1
fi
