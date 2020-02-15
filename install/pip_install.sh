#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:02:41 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************


if ! test -f common.sh; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

source common.sh

goInstallerOutputDir

prettyPrint "installing gdb dashboard"
wget -P ~ https://git.io/.gdbinit

if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then
    prettyPrint "Upgrading pip"
    sudo python3 -m pip install --upgrade pip
    prettyPrint "Installing psutil for Python Glances"
    sudo python3 -m pip install psutil 
    prettyPrint "Installing Python Glances"
    sudo python3 -m pip install glances
    prettyPrint "Installing Virtualenv"
    sudo python3 -m pip install virtualenv

    prettyPrint "Installing Powerline..."

    sudo python3 -m pip install powerline-status
    prettyPrint "Installing Tmux Powerline"

    prettyPrint "Installing neovim python lib"
    sudo python3 -m pip install pynvim

    prettyPrint "Installing neovim remote"
    sudo python3 -m pip install neovim-remote

    tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux

    sudo python3 -m pip install powerline-mem-segment
    prettyPrint "Installing PyDf"
    sudo python3 -m pip install pydf

    prettyPrint "Installing MyCLI"
    sudo python3 -m pip install mycli

    prettyPrint "Installing PGCLI"
    sudo python3 -m pip install pgcli


    exists youtube_dl || {
        prettyPrint "Installing youtube-dl"
        sudo python3 -m pip install --upgrade youtube_dl
    }

    prettyPrint "Installing bpython for python3"
    sudo python3 -m pip install bpython

    prettyPrint "Installing pygments for python3"
    sudo python3 -m pip install pygments

    prettyPrint "Installing yapf"
    sudo python3 -m pip install yapf

    prettyPrint "Installing vim-vint"
    sudo python3 -m pip install vim-vint
elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then

    if [[ -z $distroName ]]; then
        distroName=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)

        case $distroName in
            (debian|ubuntu|elementary|raspbian|kali|linuxmint|zorin|parrot)
                distroFamily=debian
                prettyPrint "Fetching Dependencies for $distroName with the Advanced Package Manager..."
                addDependenciesDebian
                ;;
            (arch)
                distroFamily=arch
                prettyPrint "Fetching Dependencies for $distroName with zypper"
                addDependenciesArch
                ;;
            (*suse*)
                distroFamily=suse
                prettyPrint "Fetching Dependencies for $distroName with zypper"
                addDependenciesSuse
                ;;
            (centos|fedora|rhel)
                distroFamily=redhat
                prettyPrint "Fetching Dependencies for $distroName with the Yellowdog Updater Modified"
                addDependenciesRedHat
                ;;
            (*)
                prettyPrint "Your distroFamily $distroName is unsupported!" >&2
                exit 1
                ;;
        esac
    fi

    if [[ "$distroFamily" == redhat ]]; then
        goInstallerOutputDir
        prettyPrint "Installing grc for RedHat"
        git clone https://github.com/garabik/grc.git && builtin cd grc && sudo bash install.sh
    fi

    if [[ "$distroName" == centos ]]; then
        sudo yum install -y python36
        sudo ln -s /usr/bin/python36 /usr/bin/python3
    fi

    prettyPrint "Upgrading pip"
    sudo python3 -m pip install --upgrade pip

    prettyPrint "Installing powerline mem segment"
    sudo python3 -m pip install powerline-mem-segment

    prettyPrint "Installing psutil for Python Glances"
    sudo python3 -m pip install psutil 

    prettyPrint "Installing setuptools"
    sudo python3 -m pip install setuptools

    prettyPrint "Installing Python Glances"
    sudo python3 -m pip install glances
    prettyPrint "Installing Powerline..."

    python3 -c 'import pip' && sudo pip3 install powerline-status || sudo python3 -m pip install powerline-status
    python3 -c 'import pip' && sudo pip3 install powerline-mem-segment || sudo python3 -m pip install powerline-mem-segment

    prettyPrint "Installing Tmux Powerline"

    tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
    [[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"
    sudo python3 -m pip install powerline-mem-segment
    prettyPrint "Installing PyDf"
    sudo python3 -m pip install pydf

    prettyPrint "Installing neovim python lib"
    sudo python3 -m pip install pynvim

    prettyPrint "Installing neovim remote"
    sudo python3 -m pip install neovim-remote

    prettyPrint "Installing MyCLI"
    sudo python3 -m pip install mycli

    prettyPrint "Installing Speedtest"
    sudo python3 -m pip install speedtest-cli

    prettyPrint "Installing PGCLI"
    sudo python3 -m pip install pgcli

    exists youtube_dl || {
        prettyPrint "Installing youtube-dl"
        sudo python3 -m pip install --upgrade youtube_dl
    }

    prettyPrint "Installing bpython for python3"
    sudo python3 -m pip install bpython

    prettyPrint "Installing httpie for python3"
    sudo python3 -m pip install httpie

    prettyPrint "Installing pygments for python3"
    sudo python3 -m pip install pygments

    prettyPrint "Installing yapf"
    sudo python3 -m pip install yapf

    prettyPrint "Installing vim-vint"
    sudo python3 -m pip install vim-vint
else
    if [[ "$ZPWR_OS_TYPE" == "freebsd" ]]; then
        sudo python3 -m pip
        sudo python3 -m python3 -m pip install --upgrade

        prettyPrint "Upgrading pip"
        sudo python3 -m pip install --upgrade pip
        prettyPrint "Installing psutil for Python Glances"
        sudo python3 -m pip install psutil

        prettyPrint "Installing setuptools"
        sudo python3 -m pip install setuptools

        prettyPrint "Installing Python Glances"
        sudo python3 -m pip install glances
        prettyPrint "Installing Powerline..."

        python3 -c 'import pip' && sudo pip3 install powerline-status || sudo python3 -m pip install powerline-status
        python3 -c 'import pip' && sudo pip3 install powerline-mem-segment || sudo python3 -m pip install powerline-mem-segment
        
        prettyPrint "Installing Tmux Powerline"

        tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
        [[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"
        sudo python3 -m pip install powerline-mem-segment
        prettyPrint "Installing PyDf"
        sudo python3 -m pip install pydf

        prettyPrint "Installing MyCLI"
        sudo python3 -m pip install mycli

        prettyPrint "Installing Speedtest"
        sudo python3 -m pip install speedtest-cli

        prettyPrint "Installing neovim python lib"
        sudo python3 -m pip install pynvim

        prettyPrint "Installing neovim remote"
        sudo python3 -m pip install neovim-remote

        prettyPrint "Installing PGCLI"
        sudo python3 -m pip install pgcli

        exists youtube_dl || {
            prettyPrint "Installing youtube-dl"
            sudo python3 -m pip install youtube_dl
        }
        prettyPrint "Installing bpython for python3"
        sudo python3 -m pip install bpython

        prettyPrint "Installing pygments for python3"
        sudo python3 -m pip install pygments

        prettyPrint "Installing vim-vint"
        sudo python3 -m pip install vim-vint

        prettyPrint "Installing yapf"
        sudo python3 -m pip install yapf
    fi
fi
prettyPrint "Done With Python Packages"
