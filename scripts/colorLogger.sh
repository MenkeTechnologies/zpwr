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

        prettyPrint "Color logging for Darwin"
        #"$tailVersion" -f /var/log/**/*.log /var/log/**/*.out /var/log/cups/* \
        #$HOME/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out \
        #/Library/Logs/**/*.log /usr/local/var/log/**/*.log | ccze
        "$tailVersion" -F /var/log/**/*.log /var/log/**/*.out /var/log/cups/* \
            /var/log/*beat*/* | ccze
    else
        prettyPrint "Decolorized logging for Darwin"
        "$tailVersion" -F /var/log/**/*.log /var/log/**/*.out /var/log/cups/* \
        "$HOME"/Library/Logs/**/*.log \
        "$HOME"/Library/Logs/**/*.out /Library/Logs/**/*.log /var/log/*beat*/*
    fi
else
    #linux
    distroName=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)

    case "$distroName" in
    debian | ubuntu | elementary | raspbian | kali | zorin | parrot)
        distro=debian
        ;;
    centos | fedora | rhel)
        distro=redhat
        ;;
    opensuse* | suse* | arch | manjaro*)
        distro=suse
        ;;
    esac

    if [[ "$distro" == debian ]]; then

        if [[ "$weHaveCCZE" == yes ]]; then
            prettyPrint "Color logging for $distroName"
            sudo "$tailVersion" -F \
                /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/*| ccze
        else
            prettyPrint "Decolorized logging for $distroName"
            sudo "$tailVersion" -F /var/log/**/*.log \
                /var/log/{dmesg,debug,lastlog,messages,syslog} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/*
        fi

    elif [[ "$distro" == redhat ]]; then

        if [[ "$weHaveCCZE" == yes ]]; then
            prettyPrint "Color logging for $distroName"
            sudo "$tailVersion" -F \
                /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog,secure} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/*| ccze
        else
            prettyPrint "Decolorized logging for $distroName"
            sudo "$tailVersion" -F /var/log/**/*.log \
                /var/log/{dmesg,debug,lastlog,messages,syslog,secure} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/*
        fi
    elif [[ "$distro" == suse ]]; then
        if [[ "$weHaveCCZE" == yes ]]; then
            prettyPrint "Color logging for $distroName"
            sudo journalctl -f | ccze
        else
            prettyPrint "Decolorized logging for $distroName"
            sudo journalctl -f
        fi
    else
        printf "Unsupported distro: $distroName...but trying anyways\n" >&2
        if [[ "$weHaveCCZE" == yes ]]; then
            prettyPrint "Color logging for $distroName"
            sudo "$tailVersion" -F \
                /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/*| ccze
        else
            prettyPrint "Decolorized logging for $distroName"
            sudo "$tailVersion" -f \
                /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} \
                /var/log/**/*.err "$HOME"/**/*.log /var/log/*beat*/*
        fi
    fi

fi
