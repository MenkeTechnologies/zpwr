#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 20:01:10 EDT 2017
#####   Purpose: bash script to install zsh plugins
#####   Notes: 
#}}}***********************************************************

if ! test -f common.sh; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

source common.sh

ln -s "$(pwd)/.spacemacs" "$HOME/.spacemacs"
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
