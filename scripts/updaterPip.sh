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
    outdated=$(python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')

    for package in $outdated; do
        #get last package
        installDir=$(python3 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"
        if [[ ! -w "$installDir" ]]; then
            needSudo=yes
        else
            needSudo=no
        fi

        if [[ -n "$needSudo" ]]; then
            prettyPrint "sudo needed: $needSudo for $package at $installDir"
        else
            prettyPrint "no sudo needed: $needSudo for $package at $installDir"
        fi

        if [[ "$needSudo" == yes ]]; then
            sudo python3 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        else
            python3 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        fi
done
if [[ -n "$needSudo" ]]; then
    prettyPrint "Updating Pip3 with sudo"
    #update pip itself
    sudo python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
else
    prettyPrint "Updating Pip3"
    #update pip itself
    python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
fi

}

#python 2.7 (non system)
python2 -c 'import pip' && {
    prettyPrint "Updating Python2.7 Packages"
    outdated=$(python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    for package in $outdated; do
        installDir=$(python2 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"
        if [[ ! -w "$installDir" ]]; then
            needSudo=yes
        else
            needSudo=no
        fi

        if [[ -n "$needSudo" ]]; then
            prettyPrint "sudo needed: $needSudo for $package at $installDir"
        else
            prettyPrint "no sudo needed: $needSudo for $package at $installDir"
        fi

        if [[ "$needSudo" == yes ]]; then
            sudo python2 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        else
            python2 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        fi
    done
    if [[ -n "$needSudo" ]]; then
        prettyPrint "sudo needed: $needSudo for pip2 at $installDir"
        prettyPrint "Updating Pip2"
        #update pip itself
        sudo python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        prettyPrint "no sudo needed: $needSudo for pip2 at $installDir"
        prettyPrint "Updating Pip2"
        #update pip itself
        python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi
}
