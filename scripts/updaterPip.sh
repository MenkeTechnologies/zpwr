#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: SUZIE
##### Date: Fri Apr 6 15:40:01 EDT 2018
##### Purpose: bash script to do pip updating
##### Notes:
#}}}***********************************************************

prettyPrint() {
    printf "\e[1;4m"
    printf "$1"
    printf "\n\e[0m"
}

#python 3.6
python3 -c 'import pip' && {
    prettyPrint "Updating Python3.6 Packages"
    installDir=$(python3 -m pip show "pip" | \perl -ne 'print $1 if /^Location: (.*)/')
    if [[ ! -w "$installDir" ]]; then
        needSudoBase=true
    else
        needSudoBase=false
    fi
    if [[ "$needSudoBase" == true ]]; then
        outdated=$(sudo -E python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    else
        outdated=$(python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    fi

    for package in $outdated; do
        #get last package
        installDir=$(python3 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"
        if [[ ! -w "$installDir" ]]; then
            needSudo=true
        else
            needSudo=false
        fi

        if [[ "$needSudo" == true ]]; then
            prettyPrint "sudo needed: $needSudo for $package at $installDir"
            sudo -E python3 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        else
            prettyPrint "false sudo needed: $needSudo for $package at $installDir"
            python3 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        fi

    done

    if [[ "$needSudoBase" == true ]]; then
        prettyPrint "Updating Pip3 with sudo"
        #update pip itself
        sudo -E python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        prettyPrint "Updating Pip3"
        #update pip itself
        python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi

}

#python 2.7 (non system)
python2 -c 'import pip' && {
    prettyPrint "Updating Python2.7 Packages"

    installDir=$(python2 -m pip show "pip" | \perl -ne 'print $1 if /^Location: (.*)/')
    if [[ ! -w "$installDir" ]]; then
        needSudoBase=true
    else
        needSudoBase=false
    fi

    if [[ "$needSudoBase" == true ]]; then
        outdated=$(sudo -E python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    else
        outdated=$(python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    fi

    for package in $outdated; do
        installDir=$(python2 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"
        if [[ ! -w "$installDir" ]]; then
            needSudo=true
        else
            needSudo=false
        fi

        if [[ "$needSudo" == true ]]; then
            prettyPrint "sudo needed: $needSudo for $package at $installDir"
            sudo -E python2 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        else
            prettyPrint "false sudo needed: $needSudo for $package at $installDir"
            python2 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        fi

    done

    if [[ "$needSudoBase" == true ]]; then
        prettyPrint "sudo needed: $needSudo for pip2 at $installDir"
        prettyPrint "Updating Pip2"
        #update pip itself
        sudo -E python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        prettyPrint "false sudo needed: $needSudo for pip2 at $installDir"
        prettyPrint "Updating Pip2"
        #update pip itself
        python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi
}
