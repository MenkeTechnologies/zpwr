#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 20:42:55 EDT 2017
#####   Purpose: bash script to install vim plugins
#####   Notes: 
#}}}***********************************************************

if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh

if [[ -d "$HOME/.tmux/plugins" ]]; then
    mkdir -p "$HOME/.tmux/plugins"
fi

if builtin cd "$HOME/.tmux/plugins"; then
    zpwrInstallGitHubPluginsFromFile "$ZPWR_INSTALL/.tmuxplugins"
else
    echo "could not cd to $HOME/.tmux/plugins" >&2
    exit 1
fi
