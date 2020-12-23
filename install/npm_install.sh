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

    zpwrPrettyPrintBox "curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -"
    curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
    zpwrPrettyPrintBox "install nodejs"
    zpwrInstallerUpdate "nodejs" "$distroFamily"
    zpwrPrettyPrintBox "install npm"
    zpwrInstallerUpdate "npm" "$distroFamily"
    zpwrPrettyPrintBox "install build-essential"
    zpwrInstallerUpdate "build-essential" "$distroFamily"
}

function installNpmDeb(){

    zpwrPrettyPrintBox "curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -"
    curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    zpwrPrettyPrintBox "install nodejs"
    zpwrInstallerUpdate "nodejs" "$distroFamily"
    zpwrPrettyPrintBox "install npm"
    zpwrInstallerUpdate "npm" "$distroFamily"
    zpwrPrettyPrintBox "install build-essential"
    zpwrInstallerUpdate "build-essential" "$distroFamily"
}

if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then
    distroName=Mac
    distroFamily=mac
elif [[ "$ZPWR_OS_TYPE" == linux ]];then
    distroName=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)
    case $distroName in
        (debian|ubuntu|elementary|raspbian|kali|linuxmint|zorin|parrot)
            distroFamily=debian
        installNpmDeb
            ;;
        (*suse*)
            distroFamily=suse
            installNpmRpm
            ;;
        (centos|fedora|rhel|amzn)
            distroFamily=redhat
            installNpmRpm
            ;;
        (*)
            zpwrPrettyPrintBox "Your distroFamily $distroName is unsupported!" >&2
            ;;
    esac
else
    if [[ "$ZPWR_OS_TYPE" == freebsd ]]; then
        distroFamily=freebsd
        distroName=FreeBSD
        installNpmDeb
    else
        zpwrPrettyPrintBox "Your distroFamily $distroName is unsupported!" >&2
    fi
fi

zpwrExists diff-so-fancy || {
    zpwrPrettyPrintBox "npm installing diff-so-fancy"
    sudo npm i -g diff-so-fancy
}
zpwrPrettyPrintBox "installing neovim nodejs lib"
sudo npm i -g neovim

