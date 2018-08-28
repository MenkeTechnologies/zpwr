#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:02:41 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

#not called from main
echo "$0" | grep -q pip_install.sh && source common.sh

if [[ "$OS_TYPE" == "Darwin" ]]; then

    prettyPrint "Upgrading pip"
    pip install --upgrade pip
    prettyPrint "Installing psutil for Python Glances"
    pip install psutil 
    prettyPrint "Installing Python Glances"
    pip install glances
    prettyPrint "Installing Virtualenv"
    pip3 install virtualenv

    prettyPrint "Installing Powerline..."

    pip install powerline-status
    prettyPrint "Installing Tmux Powerline"

    tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux

    pip install powerline-mem-segment
    prettyPrint "Installing PyDf"
    pip install pydf

    prettyPrint "Installing MyCLI"
    pip install mycli

    prettyPrint "Installing PGCLI"
    pip install pgcli

    exists youtube_dl || {
        prettyPrint "Installing youtube-dl"
        pip install --upgrade youtube_dl
    }
else
    if [[ "$distroFamily" == redhat ]]; then
        prettyPrint "Installing grc for RedHat"
        git clone https://github.com/garabik/grc.git && cd grc && sudo bash install.sh
    fi

    if [[ "$distroName" == centos ]]; then
        sudo yum install -y python36
        sudo ln -s /usr/bin/python36 /usr/bin/python3
    fi

    prettyPrint "Upgrading pip"
    sudo pip install --upgrade pip
    prettyPrint "Installing psutil for Python Glances"
    sudo pip install psutil 

    prettyPrint "Installing setuptools"
    sudo pip install setuptools

    prettyPrint "Installing Python Glances"
    sudo pip install glances
    prettyPrint "Installing Powerline..."

    exists pip2 && sudo pip2 install powerline-status || sudo pip install powerline-status
    exists pip2 && sudo pip2 install powerline-mem-segment || sudo pip install powerline-mem-segment
    
    prettyPrint "Installing Tmux Powerline"

    tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
    [[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"
    sudo pip install powerline-mem-segment
    prettyPrint "Installing PyDf"
    sudo pip install pydf

    prettyPrint "Installing MyCLI"
    sudo pip install mycli

    prettyPrint "Installing Speedtest"
    sudo pip install speedtest-cli

    prettyPrint "Installing PGCLI"
    sudo pip install pgcli

    exists youtube_dl || {
        prettyPrint "Installing youtube-dl"
        sudo pip install --upgrade youtube_dl
    }

    exists pip3 && {
        sudo pip3 install bpython
    }

fi
prettyPrint "Done With Python Packages"
