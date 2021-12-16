#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Jan  2 09:42:20 PST 2020
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh

if [[ ! -d $ZPWR_INSTALLER_OUTPUT ]]; then
    mkdir -p $ZPWR_INSTALLER_OUTPUT
fi

zpwrGoInstallerOutputDir

function installNpmRpm(){

    zpwrPrettyPrintBox "curl -sL https://rpm.nodesource.com/setup_16.x | sudo -E bash -"
    curl -sL https://rpm.nodesource.com/setup_16.x | sudo -E bash -
    zpwrPrettyPrintBox "install nodejs"
    zpwrInstallerUpdate "nodejs" "$ZPWR_DISTRO_FAMILY"
    zpwrPrettyPrintBox "install npm"
    zpwrInstallerUpdate "npm" "$ZPWR_DISTRO_FAMILY"
    zpwrPrettyPrintBox "install build-essential"
    zpwrInstallerUpdate "build-essential" "$ZPWR_DISTRO_FAMILY"
}

function installNpmDeb(){

    zpwrPrettyPrintBox "curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -"
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    zpwrPrettyPrintBox "install nodejs"
    zpwrInstallerUpdate "nodejs" "$ZPWR_DISTRO_FAMILY"
    zpwrPrettyPrintBox "install npm"
    zpwrInstallerUpdate "npm" "$ZPWR_DISTRO_FAMILY"
    zpwrPrettyPrintBox "install build-essential"
    zpwrInstallerUpdate "build-essential" "$ZPWR_DISTRO_FAMILY"
}

if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then
    ZPWR_DISTRO_NAME=Mac
    ZPWR_DISTRO_FAMILY=mac
elif [[ "$ZPWR_OS_TYPE" == linux ]];then


    zpwrOsDebianVsRh \
            'ZPWR_DISTRO_FAMILY=debian
            installNpmDeb' \
            'ZPWR_DISTRO_FAMILY=suse
            installNpmRpm' \
            'zpwrPrettyPrintBox "Your ZPWR_DISTRO_FAMILY $ZPWR_DISTRO_NAME is unsupported for installing npm from source." >&2'

else
    if [[ "$ZPWR_OS_TYPE" == freebsd ]]; then
        ZPWR_DISTRO_FAMILY=freebsd
        ZPWR_DISTRO_NAME=FreeBSD
        installNpmDeb
    else
        zpwrPrettyPrintBox "Your ZPWR_DISTRO_FAMILY $ZPWR_DISTRO_NAME is unsupported!" >&2
    fi
fi

if zpwrCommandExists npm; then
    zpwrExists diff-so-fancy || {
        zpwrPrettyPrintBox "npm installing diff-so-fancy"
        sudo npm i -g diff-so-fancy
    }

    zpwrPrettyPrintBox "installing neovim nodejs lib"
    sudo npm i -g neovim
else
    zpwrPrettyPrintBox "npm is unavailable.  Abort npm package install." >&2
    return 1
fi

