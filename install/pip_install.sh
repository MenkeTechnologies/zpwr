#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:02:41 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************


if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh

zpwrGoInstallerOutputDir

if [[ ! -f "$HOME/.gdbinit" ]]; then
    zpwrPrettyPrintBox "installing gdb dashboard"
    wget -P ~ https://git.io/.gdbinit
fi

function pipInstallerCommon() {

    zpwrPrettyPrintBox "Upgrading pip"
    sudo -EH python3 -m pip install --upgrade pip

    zpwrPrettyPrintBox "Installing psutil for Python Glances"
    sudo -EH python3 -m pip install psutil

    zpwrPrettyPrintBox "Installing setuptools"
    sudo -EH python3 -m pip install setuptools

    zpwrPrettyPrintBox "Installing Python Glances"
    sudo -EH python3 -m pip install glances

    zpwrPrettyPrintBox "Installing Virtualenv"
    sudo -EH python3 -m pip install virtualenv

    zpwrPrettyPrintBox "Installing Powerline..."
    sudo -EH python3 -m pip install powerline-status

    zpwrPrettyPrintBox "Installing Powerline Mem Segment..."
    sudo -EH python3 -m pip install powerline-mem-segment

    zpwrPrettyPrintBox "Installing Tmux Powerline"
    tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
    [[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"

    zpwrPrettyPrintBox "Installing Powerline Mem Segment..."
    sudo -EH python3 -m pip install powerline-mem-segment

    zpwrPrettyPrintBox "Installing PyDf"
    sudo -EH python3 -m pip install pydf

    zpwrPrettyPrintBox "Installing neovim python lib"
    sudo -EH python3 -m pip install pynvim

    zpwrPrettyPrintBox "Installing neovim remote"
    sudo -EH python3 -m pip install neovim-remote

    zpwrPrettyPrintBox "Installing MyCLI"
    sudo -EH python3 -m pip install mycli

    zpwrPrettyPrintBox "Installing Speedtest"
    sudo -EH python3 -m pip install speedtest-cli

    zpwrPrettyPrintBox "Installing PGCLI"
    sudo -EH python3 -m pip install pgcli

    zpwrExists youtube_dl || {

        zpwrPrettyPrintBox "Installing youtube-dl"
        sudo -EH python3 -m pip install --upgrade youtube_dl
    }

    zpwrPrettyPrintBox "Installing bpython for python3"
    sudo -EH python3 -m pip install bpython

    zpwrPrettyPrintBox "Installing httpie for python3"
    sudo -EH python3 -m pip install httpie

    zpwrPrettyPrintBox "Installing pygments for python3"
    sudo -EH python3 -m pip install pygments

    zpwrPrettyPrintBox "Installing yapf"
    sudo -EH python3 -m pip install yapf

    zpwrPrettyPrintBox "Installing vim-vint"
    sudo -EH python3 -m pip install vim-vint

}

if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then

    pipInstallerCommon

elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then

    if [[ -z $ZPWR_DISTRO_NAME ]]; then

        ZPWR_DISTRO_NAME=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)

        case $ZPWR_DISTRO_NAME in
            (debian | ubuntu* | pop* | elementary* | raspbian | kali | linuxmint | zorin | parrot)
                ZPWR_DISTRO_FAMILY=debian
                ;;
            (arch | endeavouros | garuda | manjaro*)
                ZPWR_DISTRO_FAMILY=arch
                ;;
            (*suse*)
                ZPWR_DISTRO_FAMILY=suse
                ;;
            (centos | fedora | rhel | amzn)
                ZPWR_DISTRO_FAMILY=redhat
                ;;
            (*)
                zpwrPrettyPrintBox "Your ZPWR_DISTRO_FAMILY $ZPWR_DISTRO_NAME is unsupported!" >&2
                exit 1
                ;;
        esac
    fi

    if [[ "$ZPWR_DISTRO_FAMILY" == redhat ]]; then

        zpwrGoInstallerOutputDir
        zpwrPrettyPrintBox "Installing grc for RedHat"
        git clone https://github.com/garabik/grc.git && builtin cd grc && sudo bash install.sh
    fi

    if [[ "$ZPWR_DISTRO_NAME" == centos ]]; then

        sudo yum install -y python36
        sudo ln -s /usr/bin/python36 /usr/bin/python3
    fi

    pipInstallerCommon

else

    if [[ "$ZPWR_OS_TYPE" == "freebsd" ]]; then

        pipInstallerCommon
    else
        zpwrPrettyPrintBox "Your Unix OS is unsupported!" >&2
        exit 1
    fi
fi

zpwrPrettyPrintBox "Done With Python Packages"
