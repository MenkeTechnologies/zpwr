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

cd "$HOME/.vim/bundle" || { echo "no .vim/bundle dir" >&2; exit1; }
git clone https://github.com/Valloric/YouCompleteMe.git
cd "$HOME/.vim/bundle/YouCompleteMe" && {
    git submodule update --init --recursive
    #need greater than 3GB RAM for compiling
    YCM_CORES=1 ./install.py --clang-completer
}


