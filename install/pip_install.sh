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

goInstallerOutputDir

prettyPrintBox "installing gdb dashboard"
wget -P ~ https://git.io/.gdbinit

if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then

    prettyPrintBox "Upgrading pip"
    sudo python3 -m pip install --upgrade pip
    prettyPrintBox "Installing psutil for Python Glances"
    sudo python3 -m pip install psutil 
    prettyPrintBox "Installing Python Glances"
    sudo python3 -m pip install glances
    prettyPrintBox "Installing Virtualenv"
    sudo python3 -m pip install virtualenv

    prettyPrintBox "Installing Powerline..."

    sudo python3 -m pip install powerline-status
    prettyPrintBox "Installing Tmux Powerline"

    prettyPrintBox "Installing neovim python lib"
    sudo python3 -m pip install pynvim

    prettyPrintBox "Installing neovim remote"
    sudo python3 -m pip install neovim-remote

    tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux

    sudo python3 -m pip install powerline-mem-segment
    prettyPrintBox "Installing PyDf"
    sudo python3 -m pip install pydf

    prettyPrintBox "Installing MyCLI"
    sudo python3 -m pip install mycli

    prettyPrintBox "Installing PGCLI"
    sudo python3 -m pip install pgcli


    exists youtube_dl || {
        prettyPrintBox "Installing youtube-dl"
        sudo python3 -m pip install --upgrade youtube_dl
    }

    prettyPrintBox "Installing bpython for python3"
    sudo python3 -m pip install bpython

    prettyPrintBox "Installing pygments for python3"
    sudo python3 -m pip install pygments

    prettyPrintBox "Installing yapf"
    sudo python3 -m pip install yapf

    prettyPrintBox "Installing vim-vint"
    sudo python3 -m pip install vim-vint

elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then

    if [[ -z $distroName ]]; then
        distroName=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)

        case $distroName in
            (debian|ubuntu|elementary|raspbian|kali|linuxmint|zorin|parrot)
                distroFamily=debian
                ;;
            (arch|manjaro*)
                distroFamily=arch
                ;;
            (*suse*)
                distroFamily=suse
                ;;
            (centos|fedora|rhel|amzn)
                distroFamily=redhat
                ;;
            (*)
                prettyPrintBox "Your distroFamily $distroName is unsupported!" >&2
                exit 1
                ;;
        esac
    fi

    if [[ "$distroFamily" == redhat ]]; then
        goInstallerOutputDir
        prettyPrintBox "Installing grc for RedHat"
        git clone https://github.com/garabik/grc.git && builtin cd grc && sudo bash install.sh
    fi

    if [[ "$distroName" == centos ]]; then
        sudo yum install -y python36
        sudo ln -s /usr/bin/python36 /usr/bin/python3
    fi

    prettyPrintBox "Upgrading pip"
    sudo python3 -m pip install --upgrade pip

    prettyPrintBox "Installing powerline mem segment"
    sudo python3 -m pip install powerline-mem-segment

    prettyPrintBox "Installing psutil for Python Glances"
    sudo python3 -m pip install psutil 

    prettyPrintBox "Installing setuptools"
    sudo python3 -m pip install setuptools

    prettyPrintBox "Installing Python Glances"
    sudo python3 -m pip install glances
    prettyPrintBox "Installing Powerline..."

    python3 -c 'import pip' && sudo pip3 install powerline-status || sudo python3 -m pip install powerline-status
    python3 -c 'import pip' && sudo pip3 install powerline-mem-segment || sudo python3 -m pip install powerline-mem-segment

    prettyPrintBox "Installing Tmux Powerline"

    tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
    [[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"
    sudo python3 -m pip install powerline-mem-segment
    prettyPrintBox "Installing PyDf"
    sudo python3 -m pip install pydf

    prettyPrintBox "Installing neovim python lib"
    sudo python3 -m pip install pynvim

    prettyPrintBox "Installing neovim remote"
    sudo python3 -m pip install neovim-remote

    prettyPrintBox "Installing MyCLI"
    sudo python3 -m pip install mycli

    prettyPrintBox "Installing Speedtest"
    sudo python3 -m pip install speedtest-cli

    prettyPrintBox "Installing PGCLI"
    sudo python3 -m pip install pgcli

    exists youtube_dl || {
        prettyPrintBox "Installing youtube-dl"
        sudo python3 -m pip install --upgrade youtube_dl
    }

    prettyPrintBox "Installing bpython for python3"
    sudo python3 -m pip install bpython

    prettyPrintBox "Installing httpie for python3"
    sudo python3 -m pip install httpie

    prettyPrintBox "Installing pygments for python3"
    sudo python3 -m pip install pygments

    prettyPrintBox "Installing yapf"
    sudo python3 -m pip install yapf

    prettyPrintBox "Installing vim-vint"
    sudo python3 -m pip install vim-vint

else

    if [[ "$ZPWR_OS_TYPE" == "freebsd" ]]; then

        sudo python3 -m pip
        sudo python3 -m python3 -m pip install --upgrade

        prettyPrintBox "Upgrading pip"
        sudo python3 -m pip install --upgrade pip
        prettyPrintBox "Installing psutil for Python Glances"
        sudo python3 -m pip install psutil

        prettyPrintBox "Installing setuptools"
        sudo python3 -m pip install setuptools

        prettyPrintBox "Installing Python Glances"
        sudo python3 -m pip install glances
        prettyPrintBox "Installing Powerline..."

        python3 -c 'import pip' && sudo pip3 install powerline-status || sudo python3 -m pip install powerline-status
        python3 -c 'import pip' && sudo pip3 install powerline-mem-segment || sudo python3 -m pip install powerline-mem-segment

        prettyPrintBox "Installing Tmux Powerline"

        tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
        [[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"
        sudo python3 -m pip install powerline-mem-segment
        prettyPrintBox "Installing PyDf"
        sudo python3 -m pip install pydf

        prettyPrintBox "Installing MyCLI"
        sudo python3 -m pip install mycli

        prettyPrintBox "Installing Speedtest"
        sudo python3 -m pip install speedtest-cli

        prettyPrintBox "Installing neovim python lib"
        sudo python3 -m pip install pynvim

        prettyPrintBox "Installing neovim remote"
        sudo python3 -m pip install neovim-remote

        prettyPrintBox "Installing PGCLI"
        sudo python3 -m pip install pgcli

        exists youtube_dl || {
            prettyPrintBox "Installing youtube-dl"
            sudo python3 -m pip install youtube_dl
        }
        prettyPrintBox "Installing bpython for python3"
        sudo python3 -m pip install bpython

        prettyPrintBox "Installing pygments for python3"
        sudo python3 -m pip install pygments

        prettyPrintBox "Installing vim-vint"
        sudo python3 -m pip install vim-vint

        prettyPrintBox "Installing yapf"
        sudo python3 -m pip install yapf
    fi
fi
prettyPrintBox "Done With Python Packages"
