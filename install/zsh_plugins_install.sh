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

if [[ ! -d "$ZPWR_PLUGIN_MANAGER_HOME/plugins" ]]; then
    mkdir -p "$ZPWR_PLUGIN_MANAGER_HOME/plugins"
fi

if builtin cd "$ZPWR_PLUGIN_MANAGER_HOME/plugins"; then
    zpwrInstallGitHubPluginsFromFile "$@" "$ZPWR_INSTALL/.zshplugins"
else
    echo "could not cd to $HOME/.vim/bundle/YouCompleteMe" >&2
    exit 1
fi
