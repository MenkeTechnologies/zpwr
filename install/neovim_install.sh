#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Nov  8 23:41:44 EST 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if ! test -f common.sh; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

source common.sh

goInstallerOutputDir

git clone https://github.com/neovim/neovim.git
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install
