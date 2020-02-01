#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Nov  8 23:41:44 EST 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

ZPWR_INSTALL="$(pwd -P)"

# verify in installer dir
if ! test -f common.sh; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

ZPWR_INSTALLER_OUTPUT="$ZPWR_INSTALL/local/installer"

if [[ ! -d $ZPWR_INSTALLER_OUTPUT ]]; then
    mkdir -p $ZPWR_INSTALLER_OUTPUT
fi

builtin cd "$ZPWR_INSTALLER_OUTPUT" || exit 1

git clone https://github.com/neovim/neovim.git && cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install
