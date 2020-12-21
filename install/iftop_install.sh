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

zpwrGoInstallerOutputDir

automake --version 2>&1 | grep -q '16' || {
    wget https://ftp.gnu.org/gnu/automake/automake-1.16.tar.gz
        tar xvfz automake-1.16.tar.gz
        if builtin cd automake-1.16; then
            ./configure && make && sudo make install
            make clean
        else
            fail "could not cd to automake-1.16"
        fi
    }

[[ ! -d "$HOME/forkedRepos" ]] && mkdir "$HOME/forkedRepos"
if builtin cd "$HOME/forkedRepos"; then
    git clone https://github.com/MenkeTechnologies/iftopcolor
    if builtin cd iftopcolor; then
        aclocal
        automake --add-missing
        ./configure && make && sudo make install
        make clean
    else
        fail "could not cd to iftopcolor"
    fi
fi
