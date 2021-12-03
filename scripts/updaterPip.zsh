#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: SUZIE
##### Date: Fri Apr 6 15:40:01 EDT 2018
##### Purpose: zsh script to do pip updating
##### Notes:
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source file ZPWR_LIB_INIT '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    zpwrBaseDir="${0:A}"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="${zpwrBaseDir:h}"
        if [[ "$zpwrBaseDir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
        echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
        exit 1
    fi
    unset zpwrBaseDir
fi

declare -T ZPWR_PIP_BLACKLIST pipBlacklist

python3 -c 'import pip' &> /dev/null && {

    zpwrPrettyPrint "Updating Python3 Packages"

    installDir=$(python3 -m pip show "pip" | \perl -ne 'print $1 if /^Location: (.*)/')

    if [[ ! -w "$installDir" ]]; then
        needSudoBase=true
    else
        needSudoBase=false
    fi
    if [[ "$needSudoBase" == true ]]; then

        zpwrPrettyPrint "Outdated Pip3 list with sudo needed: $needSudoBase"

        outdated=$(sudo -EH python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')

    else

        zpwrPrettyPrint "Outdated Pip3 list with sudo needed: $needSudoBase"

        outdated=$(python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    fi

    for package in "${(@f)outagdated}"; do

        zpwrValidatePipPackage "$package" || continue

        installDir=$(python3 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"

        if [[ ! -w "$installDir" ]]; then
            zpwrNeedSudo=true
        else
            zpwrNeedSudo=false
        fi

        if [[ "$zpwrNeedSudo" == true ]]; then

            zpwrPrettyPrint "sudo needed: $zpwrNeedSudo for $package at $installDir"

            sudo -EH python3 -m pip install --upgrade --ignore-installed -- "$package"
        else

            zpwrPrettyPrint "sudo needed: $zpwrNeedSudo for $package at $installDir"

            python3 -m pip install --upgrade --ignore-installed -- "$package"
        fi

    done

    if [[ "$needSudoBase" == true ]]; then

        zpwrPrettyPrint "Updating Pip3 with sudo needed: $needSudoBase"

        sudo -EH python3 -m pip install --upgrade pip setuptools wheel
    else

        zpwrPrettyPrint "Updating Pip3 with sudo needed: $needSudoBase"

        python3 -m pip install --upgrade pip setuptools wheel
    fi

}

zpwrCommandExists python2 && python2 -c 'import pip' &>/dev/null && {

    zpwrPrettyPrint "Updating Python2 Packages"

    installDir=$(python2 -m pip show "pip" | \perl -ne 'print $1 if /^Location: (.*)/')
    if [[ ! -w "$installDir" ]]; then
        needSudoBase=true
    else
        needSudoBase=false
    fi

    if [[ "$needSudoBase" == true ]]; then

        zpwrPrettyPrint "Outdated Pip2 list with sudo needed: $needSudoBase"

        outdated=$(sudo -EH python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    else

        zpwrPrettyPrint "Outdated Pip2 list with sudo needed: $needSudoBase"

        outdated=$(python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
    fi

    for package in "${(@f)outdated}"; do

        zpwrValidatePipPackage "$package" || continue

        installDir=$(python2 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"

        if [[ ! -w "$installDir" ]]; then
            zpwrNeedSudo=true
        else
            zpwrNeedSudo=false
        fi

        if [[ "$zpwrNeedSudo" == true ]]; then

            zpwrPrettyPrint "sudo needed: $zpwrNeedSudo for $package at $installDir"

            sudo -EH python2 -m pip install --upgrade --ignore-installed -- "$package"
        else

            zpwrPrettyPrint "false sudo needed: $zpwrNeedSudo for $package at $installDir"

            python2 -m pip install --upgrade --ignore-installed -- "$package"
        fi

    done

    if [[ "$needSudoBase" == true ]]; then

        zpwrPrettyPrint "Updating Pip2 with sudo needed: $needSudoBase"

        sudo -EH python2 -m pip install --upgrade pip setuptools wheel
    else

        zpwrPrettyPrint "Updating Pip2 with sudo needed: $needSudoBase"

        python2 -m pip install --upgrade pip setuptools wheel
    fi
}
