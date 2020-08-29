#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: SUZIE
##### Date: Fri Apr 6 15:40:01 EDT 2018
##### Purpose: bash script to do pip updating
##### Notes:
#}}}***********************************************************

source="${BASH_SOURCE[0]}"
while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
  dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
  source="$(readlink "$source")"
  [[ $source != /* ]] && source="$dir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

if [[ $ZPWR_REMOTE == false ]]; then
    if ! source "$dir/init.sh"; then
        echo "could not source dir '$dir/init.sh'"
    fi
fi

#python3
python3 -c 'import pip' && {
    prettyPrint "Updating Python3 Packages"
    installDir=$(python3 -m pip show "pip" | \perl -ne 'print $1 if /^Location: (.*)/')
    if [[ ! -w "$installDir" ]]; then
        needSudoBase=true
    else
        needSudoBase=false
    fi
    if [[ "$needSudoBase" == true ]]; then
        prettyPrint "Outdated Pip3 list with sudo: $needSudoBase"
        outdated=$(sudo -E python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    else
        prettyPrint "Outdated Pip3 list with no sudo: $needSudoBase"
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
        prettyPrint "Updating Pip3 with sudo needed: $needSudoBase"
        #update pip itself
        sudo -E python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        prettyPrint "Updating Pip3 needed: $needSudoBase"
        #update pip itself
        python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi

}

#python 2 (non system)
exists python2 && python2 -c 'import pip' && {
    prettyPrint "Updating Python2 Packages"

    installDir=$(python2 -m pip show "pip" | \perl -ne 'print $1 if /^Location: (.*)/')
    if [[ ! -w "$installDir" ]]; then
        needSudoBase=true
    else
        needSudoBase=false
    fi

    if [[ "$needSudoBase" == true ]]; then
        prettyPrint "Outdated Pip2 list with sudo: $needSudoBase"
        outdated=$(sudo -E python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    else
        prettyPrint "Outdated Pip2 list with no sudo: $needSudoBase"
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
        prettyPrint "Updating Pip2 with sudo needed: $needSudoBase"
        #update pip itself
        sudo -E python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        prettyPrint "Updating Pip2 with sudo needed: $needSudoBase"
        #update pip itself
        python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi
}
