#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 17 13:30:47 EDT 2017
##### Purpose: bash script to monitor log files in color
##### Notes:
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$zpwrBaseDir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="$(dirname "$zpwrBaseDir")"
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

shopt -s globstar

#tailVersion="colortail -k $HOME/.colortailconf"
tailVersion=tail

weHaveCCZE=no

type ccze 1>/dev/null 2>&1 && weHaveCCZE=yes

[[ -n "$1" ]] && weHaveCCZE=no

#dont care about std err
#exec 2>/dev/null

if [[ "$(uname)" == Darwin ]]; then
    if [[ "$weHaveCCZE" == yes ]]; then

        zpwrPrettyPrint "Color logging for Darwin"
        #"$tailVersion" -f /var/log/**/*.log /var/log/**/*.out /var/log/cups/* \
        #$HOME/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out \
        #/Library/Logs/**/*.log $HOMEBREW_PREFIX/var/log/**/*.log | ccze
        "$tailVersion" -F /var/log/**/*.log /var/log/**/*.out /var/log/cups/* \
            /var/log/*beat*/*  2>/dev/null | ccze
    else
        zpwrPrettyPrint "Decolorized logging for Darwin"
        "$tailVersion" -F /var/log/**/*.log /var/log/**/*.out /var/log/cups/* \
        "$HOME"/Library/Logs/**/*.log \
        "$HOME"/Library/Logs/**/*.out /Library/Logs/**/*.log /var/log/*beat*/*
    fi
else
    #linux
    zpwrOsFamily \
            distro=debian \
            distro=redhat \
            distro=suse \
            distro=suse \
            distro=alpine

    if [[ "$distro" == debian ]]; then

        if [[ "$weHaveCCZE" == yes ]]; then
            zpwrPrettyPrint "Color logging for $ZPWR_DISTRO_NAME"
            sudo "$tailVersion" -F \
                /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/* 2>/dev/null | ccze
        else
            zpwrPrettyPrint "Decolorized logging for $ZPWR_DISTRO_NAME"
            sudo "$tailVersion" -F /var/log/**/*.log \
                /var/log/{dmesg,debug,lastlog,messages,syslog} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/* 2>/dev/null 
        fi

    elif [[ "$distro" == redhat ]]; then

        if [[ "$weHaveCCZE" == yes ]]; then
            zpwrPrettyPrint "Color logging for $ZPWR_DISTRO_NAME"
            sudo "$tailVersion" -F \
                /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog,secure} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/* 2>/dev/null | ccze
        else
            zpwrPrettyPrint "Decolorized logging for $ZPWR_DISTRO_NAME"
            sudo "$tailVersion" -F /var/log/**/*.log \
                /var/log/{dmesg,debug,lastlog,messages,syslog,secure} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/* 2>/dev/null 
        fi
    elif [[ "$distro" == suse ]]; then
        if [[ "$weHaveCCZE" == yes ]]; then
            zpwrPrettyPrint "Color logging for $ZPWR_DISTRO_NAME"
            sudo journalctl -f  2>/dev/null | ccze
        else
            zpwrPrettyPrint "Decolorized logging for $ZPWR_DISTRO_NAME"
            sudo journalctl -f 2>/dev/null 
        fi
    else
        printf "Unsupported distro: $ZPWR_DISTRO_NAME...but trying anyways\n" >&2
        if [[ "$weHaveCCZE" == yes ]]; then
            zpwrPrettyPrint "Color logging for $ZPWR_DISTRO_NAME"
            sudo "$tailVersion" -F \
                /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/* 2>/dev/null | ccze
        else
            zpwrPrettyPrint "Decolorized logging for $ZPWR_DISTRO_NAME"
            sudo "$tailVersion" -f \
                /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/* 2>/dev/null 
        fi
    fi

fi
