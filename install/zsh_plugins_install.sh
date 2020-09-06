#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 20:01:10 EDT 2017
#####   Purpose: bash script to install zsh plugins
#####   Notes: 
#}}}***********************************************************

if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh

if [[ ! -d "$ZINIT_HOME/plugins" ]]; then
    mkdir -p "$ZINIT_HOME/plugins"
fi

if builtin cd "$ZINIT_HOME/plugins"; then
    installGitHubPluginsFromFile "$@" "$ZPWR_INSTALL/.zshplugins"
else
    echo "could not cd to $HOME/.vim/bundle/YouCompleteMe" >&2
    exit 1
fi
