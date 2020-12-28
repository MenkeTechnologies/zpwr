#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Dec 13 07:54:08 EST 2020
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh

[[ ! -d "$ZPWR_FORKED_DIR" ]] && mkdir "$ZPWR_FORKED_DIR"

if builtin cd "$HOME/forkedRepos"; then
    git clone https://github.com/MenkeTechnologies/iftopcolor
    if builtin cd iftopcolor; then
        cmake . && make && sudo make install
        make clean
    else
        zpwrFail "could not cd to ZPWR_FORKED_DIR '$ZPWR_FORKED_DIR'"
    fi
fi
