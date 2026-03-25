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

function pipInstallerCommonCmd() {
if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then
        python3 -m pip install --upgrade --break-system-packages --user $1
    else
        python3 -m pip install --upgrade --break-system-packages --user $1
    fi
}

function pipInstallerCommon() {

    zpwrPrettyPrintBox "Upgrading pip"
    pipInstallerCommonCmd '--upgrade pip'

    zpwrPrettyPrintBox "Installing psutil for Python Glances"
    pipInstallerCommonCmd psutil

    zpwrPrettyPrintBox "Installing setuptools"
    pipInstallerCommonCmd setuptools

    zpwrPrettyPrintBox "Installing Python Glances"
    pipInstallerCommonCmd glances

    zpwrPrettyPrintBox "Installing Virtualenv"
    pipInstallerCommonCmd virtualenv

    zpwrPrettyPrintBox "Installing Powerline..."
    pipInstallerCommonCmd powerline-status

    zpwrPrettyPrintBox "Installing Tmux Powerline"
    tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
    [[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"

    zpwrPrettyPrintBox "Installing Powerline Mem Segment..."
    pipInstallerCommonCmd powerline-mem-segment

    zpwrPrettyPrintBox "Installing PyDf"
    pipInstallerCommonCmd pydf

    zpwrPrettyPrintBox "Installing neovim python lib"
    pipInstallerCommonCmd pynvim

    zpwrPrettyPrintBox "Installing neovim remote"
    pipInstallerCommonCmd neovim-remote

    zpwrPrettyPrintBox "Installing MyCLI"
    pipInstallerCommonCmd mycli

    zpwrPrettyPrintBox "Installing Speedtest"
    pipInstallerCommonCmd speedtest-cli

    zpwrPrettyPrintBox "Installing PGCLI"
    pipInstallerCommonCmd pgcli

    zpwrExists youtube_dl || {

        zpwrPrettyPrintBox "Installing youtube-dl"
        pipInstallerCommonCmd youtube-dl
    }

    zpwrPrettyPrintBox "Installing bpython for python3"
    pipInstallerCommonCmd bpython

    zpwrPrettyPrintBox "Installing httpie for python3"
    pipInstallerCommonCmd httpie

    zpwrPrettyPrintBox "Installing pygments for python3"
    pipInstallerCommonCmd pygments

    zpwrPrettyPrintBox "Installing yapf"
    pipInstallerCommonCmd yapf

    zpwrPrettyPrintBox "Installing vim-vint"
    pipInstallerCommonCmd vim-vint

}

if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then

    pipInstallerCommon

elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then

    zpwrPrettyPrintBox "Ensure pip"
    sudo -EH python3 -m ensurepip --user

    if [[ -z $ZPWR_DISTRO_NAME ]]; then


        zpwrOsFamily \
                ZPWR_DISTRO_FAMILY=debian \
                ZPWR_DISTRO_FAMILY=redhat \
                ZPWR_DISTRO_FAMILY=suse \
                ZPWR_DISTRO_FAMILY=suse \
                ZPWR_DISTRO_FAMILY=alpine \
                'zpwrPrettyPrintBox "Your ZPWR_DISTRO_FAMILY $ZPWR_DISTRO_NAME is unsupported!" >&2
                exit 1'

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
