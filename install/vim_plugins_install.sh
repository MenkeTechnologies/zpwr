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

if [[ ! -d "$HOME/.vim/bundle" ]]; then
    mkdir -p "$HOME/.vim/bundle"
fi

if builtin cd "$HOME/.vim/bundle"; then
    zpwrInstallGitHubPluginsFromFile "$ZPWR_INSTALL/.vimbundle"

    echo "Installing Taglist Plugin"
    cp -R "$ZPWR_INSTALL/taglist_46" .
else
    echo "could not cd to $HOME/.vim/bundle" >&2
    exit 1
fi
