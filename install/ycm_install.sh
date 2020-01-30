#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Sat Apr 20 10:49:16 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

source common.sh || { echo "Must be in zpwr directory" >&2; exit 1; }

prettyPrint "Installing YouCompleteMe"
mkdir -p "$HOME/.vim/bundle"

if ! builtin cd "$HOME/.vim/bundle"; then
    echo "no .vim/bundle dir" >&2
    exit 1
fi

git clone https://github.com/ycm-core/YouCompleteMe.git
if builtin cd "$HOME/.vim/bundle/YouCompleteMe"; then
    git submodule update --init --recursive
    #need greater than 3GB RAM for compiling
    YCM_CORES=1 python3 install.py --clang-completer
else
    echo "could not cd to $HOME/.vim/bundle/YouCompleteMe" >&2
    exit 1
fi


