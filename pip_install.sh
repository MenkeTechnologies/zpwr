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
    python2 -m pip install --upgrade pip
    prettyPrint "Installing psutil for Python Glances"
    python2 -m pip install psutil 
    prettyPrint "Installing Python Glances"
    python2 -m pip install glances
    prettyPrint "Installing Virtualenv"
    python3 -m pip install virtualenv

    prettyPrint "Installing Powerline..."

    python2 -m pip install powerline-status
    prettyPrint "Installing Tmux Powerline"

    tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux

    python2 -m pip install powerline-mem-segment
    prettyPrint "Installing PyDf"
    python2 -m pip install pydf

    prettyPrint "Installing MyCLI"
    python2 -m pip install mycli

    prettyPrint "Installing PGCLI"
    python2 -m pip install pgcli

    exists youtube_dl || {
        prettyPrint "Installing youtube-dl"
        python2 -m pip install --upgrade youtube_dl
    }

    exists pip3 && {
        prettyPrint "Installing bpython for python3"
        sudo python3 -m pip install bpython

        prettyPrint "Installing pygments for python3"
        sudo python3 -m pip install pygments
    }
elif [[ "$OS_TYPE" == "Linux" ]];then
    if [[ "$distroFamily" == redhat ]]; then
        prettyPrint "Installing grc for RedHat"
        git clone https://github.com/garabik/grc.git && cd grc && sudo bash install.sh
    fi

    if [[ "$distroName" == centos ]]; then
        sudo yum install -y python36
        sudo ln -s /usr/bin/python36 /usr/bin/python3
    fi

    prettyPrint "Upgrading pip"
    sudo python2 -m pip install --upgrade pip
    prettyPrint "Installing psutil for Python Glances"
    sudo python2 -m pip install psutil 

    prettyPrint "Installing setuptools"
    sudo python2 -m pip install setuptools

    prettyPrint "Installing Python Glances"
    sudo python2 -m pip install glances
    prettyPrint "Installing Powerline..."

    exists pip2 && sudo pip2 install powerline-status || sudo python2 -m pip install powerline-status
    exists pip2 && sudo pip2 install powerline-mem-segment || sudo python2 -m pip install powerline-mem-segment
    
    prettyPrint "Installing Tmux Powerline"

    tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
    [[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"
    sudo python2 -m pip install powerline-mem-segment
    prettyPrint "Installing PyDf"
    sudo python2 -m pip install pydf

    prettyPrint "Installing MyCLI"
    sudo python2 -m pip install mycli

    prettyPrint "Installing Speedtest"
    sudo python2 -m pip install speedtest-cli

    prettyPrint "Installing PGCLI"
    sudo python2 -m pip install pgcli

    exists youtube_dl || {
        prettyPrint "Installing youtube-dl"
        sudo python2 -m pip install --upgrade youtube_dl
    }

    exists pip3 && {
        prettyPrint "Installing bpython for python3"
        sudo python3 -m pip install bpython

        prettyPrint "Installing httpie for python3"
        sudo python3 -m pip install httpie

        prettyPrint "Installing pygments for python3"
        sudo python3 -m pip install pygments
    }
else
    if [[ "$OS_TYPE" == "FreeBSD" ]]; then
        sudo python3 -m pip
        sudo python3 -m python2 -m pip install --upgrade

        prettyPrint "Upgrading pip"
        sudo python3 -m pip install --upgrade pip
        prettyPrint "Installing psutil for Python Glances"
        sudo python3 -m pip install psutil

        prettyPrint "Installing setuptools"
        sudo python3 -m pip install setuptools

        prettyPrint "Installing Python Glances"
        sudo python3 -m pip install glances
        prettyPrint "Installing Powerline..."

        exists pip2 && sudo pip2 install powerline-status || sudo python2 -m pip install powerline-status
        exists pip2 && sudo pip2 install powerline-mem-segment || sudo python2 -m pip install powerline-mem-segment
        
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

        prettyPrint "Installing PGCLI"
        sudo python3 -m pip install pgcli

        exists youtube_dl || {
            prettyPrint "Installing youtube-dl"
            sudo python3 -m pip install youtube_dl
        }
        exists pip3 && {
            prettyPrint "Installing bpython for python3"
            sudo python3 -m pip install bpython

            prettyPrint "Installing pygments for python3"
            sudo python3 -m pip install pygments
        }
    fi
fi
prettyPrint "Done With Python Packages"
