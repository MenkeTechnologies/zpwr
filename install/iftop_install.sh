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

goInstallerOutputDir

automake --version 2>&1 | grep -q '16' || {
    wget https://ftp.gnu.org/gnu/automake/automake-1.16.tar.gz
        tar xvfz automake-1.16.tar.gz
        builtin cd automake-1.16 && ./configure && make && sudo make install
        make clean
    }

[[ ! -d "$HOME/forkedRepos" ]] && mkdir "$HOME/forkedRepos"
if builtin cd "$HOME/forkedRepos"; then
    git clone https://github.com/MenkeTechnologies/iftopcolor
    if builtin cd iftopcolor; then
        aclocal
        automake --add-missing
        ./configure && make && sudo make install
    else
        fail "could not cd to iftopcolor"
    fi
fi
