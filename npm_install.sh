#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Jan  2 09:42:20 PST 2020
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

source common.sh || { echo "Must be in zpwr directory" >&2; exit 1; }
function installNpm(){
    prettyPrint "curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -"
    curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
    prettyPrint "install npm"
    update "npm" "$distroFamily"
    prettyPrint "install nodejs"
    update "nodejs" "$distroFamily"
    prettyPrint "install build-essential"
    update "build-essential" "$distroFamily"
}

if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then
    distroName=Mac
    distroFamily=mac
elif [[ "$ZPWR_OS_TYPE" == linux ]];then
    distroName=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)
    case $distroName in
        (debian|ubuntu|elementary|raspbian|kali|linuxmint|zorin|parrot)
            distroFamily=debian
            ;;
        (arch)
            distroFamily=arch
            ;;
        (*suse*)
            distroFamily=suse
            ;;
        (centos|fedora|rhel)
            distroFamily=redhat
            ;;
        (*)
            prettyPrint "Your distroFamily $distroName is unsupported!" >&2
            exit 1
            ;;
    esac
    installNpm
else
    if [[ "$ZPWR_OS_TYPE" == freebsd ]]; then
        distroFamily=freebsd
        distroName=FreeBSD
        installNpm
    else
        prettyPrint "Your distroFamily $distroName is unsupported!" >&2
    fi
fi


exists diff-so-fancy || {
    prettyPrint "npm installing diff-so-fancy"
    sudo npm i -g diff-so-fancy
}
prettyPrint "installing neovim nodejs lib"
sudo npm i -g neovim

