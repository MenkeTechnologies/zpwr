#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Nov  8 23:41:44 EST 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

# whether sourced or called directly
echo "$0" | grep -q pip_install.sh && source common.sh

if ! test -f common.sh; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

ZPWR_INSTALL="$(pwd -P)"
ZPWR_BASE_DIR="$(dirname $ZPWR_INSTALL)"

if [[ $ZPWR_BASE_DIR == "$ZPWR_INSTALL" ]]; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

goInstallerOutputDir

git clone https://github.com/neovim/neovim.git && cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install
