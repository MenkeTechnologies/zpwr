#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: SUZIE
##### Date: Fri Apr 6 15:40:01 EDT 2018
##### Purpose: bash script to do pip updating
##### Notes:
#}}}***********************************************************

if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR_SCRIPTS" && export ZPWR_SCRIPTS="$HOME/.zpwr/scripts"
    source "$ZPWR_SCRIPTS/lib.sh" || {
        echo "cannot access lib.sh" >&2
        exit 1
    }
fi
#python 3.6
python3 -c 'import pip' && {
    prettyPrint "Updating Python3.6 Packages"
    needSudoBase=true
    if [[ "$needSudoBase" == true ]]; then
        prettyPrint "Outdated Pip3 list with sudo: $needSudoBase"
        outdated=$(sudo -E python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    else
        prettyPrint "Outdated Pip3 list with no sudo: $needSudoBase"
        outdated=$(python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    fi

    for package in $outdated; do
        #get last package
        needSudo=true

        installDir=$(python3 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"
        if [[ "$needSudo" == true ]]; then
            prettyPrint "sudo needed: $needSudo for $package at $installDir"
            sudo -E python3 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        else
            prettyPrint "false sudo needed: $needSudo for $package at $installDir"
            python3 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        fi

    done

    if [[ "$needSudoBase" == true ]]; then
        prettyPrint "Updating Pip3 with sudo needed: $needSudoBase"
        #update pip itself
        sudo -E python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        prettyPrint "Updating Pip3 needed: $needSudoBase"
        #update pip itself
        python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi

}

#python 2.7 (non system)
exists python2 && python2 -c 'import pip' && {
    prettyPrint "Updating Python2.7 Packages"
    needSudoBase=true

    if [[ "$needSudoBase" == true ]]; then
        prettyPrint "Outdated Pip2 list with sudo: $needSudoBase"
        outdated=$(sudo -E python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    else
        prettyPrint "Outdated Pip2 list with no sudo: $needSudoBase"
        outdated=$(python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    fi

    for package in $outdated; do
        needSudo=true
        installDir=$(python2 -m pip show "pip" | \perl -ne 'print $1 if /^Location: (.*)/')

        if [[ "$needSudo" == true ]]; then
            prettyPrint "sudo needed: $needSudo for $package at $installDir"
            sudo -E python2 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        else
            prettyPrint "false sudo needed: $needSudo for $package at $installDir"
            python2 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        fi

    done

    if [[ "$needSudoBase" == true ]]; then
        prettyPrint "Updating Pip2 with sudo needed: $needSudoBase"
        #update pip itself
        sudo -E python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        prettyPrint "Updating Pip2 with sudo needed: $needSudoBase"
        #update pip itself
        python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi
}
