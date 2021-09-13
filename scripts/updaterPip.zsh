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

#python3
python3 -c 'import pip' && {
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

    for package in "${(@f)outdated}"; do
        #get last package
        if (( $+pipBlacklist )); then
            if (( pipBlacklist[(Ie)$package] )); then
                zpwrLogInfo "skip update of $package due to blacklist"
                continue
            fi
        fi

        installDir=$(python3 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"
        if [[ ! -w "$installDir" ]]; then
            zpwrNeedSudo=true
        else
            zpwrNeedSudo=false
        fi

        if [[ "$zpwrNeedSudo" == true ]]; then
            zpwrPrettyPrint "sudo needed: $zpwrNeedSudo for $package at $installDir"
            sudo -EH python3 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        else
            zpwrPrettyPrint "sudo needed: $zpwrNeedSudo for $package at $installDir"
            python3 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        fi

    done

    if [[ "$needSudoBase" == true ]]; then
        zpwrPrettyPrint "Updating Pip3 with sudo needed: $needSudoBase"
        #update pip itself
        sudo -EH python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        zpwrPrettyPrint "Updating Pip3 with sudo needed: $needSudoBase"
        #update pip itself
        python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi

}

#python 2 (non system)
zpwrCommandExists python2 && python2 -c 'import pip' && {
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

        if (( $+pipBlacklist )); then
            if (( pipBlacklist[(Ie)$package] )); then
                zpwrLogInfo "skip update of $package due to blacklist"
                continue
            fi
        fi

        installDir=$(python2 -m pip show "$package" | \perl -ne 'print $1 if /^Location: (.*)/')"/$package"
        if [[ ! -w "$installDir" ]]; then
            zpwrNeedSudo=true
        else
            zpwrNeedSudo=false
        fi

        if [[ "$zpwrNeedSudo" == true ]]; then
            zpwrPrettyPrint "sudo needed: $zpwrNeedSudo for $package at $installDir"
            sudo -EH python2 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        else
            zpwrPrettyPrint "false sudo needed: $zpwrNeedSudo for $package at $installDir"
            python2 -m pip install --upgrade --ignore-installed -- "$package" #&> /dev/null
        fi

    done

    if [[ "$needSudoBase" == true ]]; then
        zpwrPrettyPrint "Updating Pip2 with sudo needed: $needSudoBase"
        #update pip itself
        sudo -EH python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    else
        zpwrPrettyPrint "Updating Pip2 with sudo needed: $needSudoBase"
        #update pip itself
        python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
    fi
}
