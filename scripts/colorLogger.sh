#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 17 13:30:47 EDT 2017
##### Purpose: bash script to monitor log files in color
##### Notes:
#}}}***********************************************************

prettyPrint() {
    [[ -n "$1" ]] && printf "\e[1m$1\e[0m\n" || {
        echo "Need one arg" >&2
        return 1
    }
}

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
        #"$tailVersion" -f /var/log/**/*.log /var/log/**/*.out /var/log/cups/* $HOME/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out /Library/Logs/**/*.log /usr/local/var/log/**/*.log | ccze
        "$tailVersion" -F /var/log/**/*.log /var/log/**/*.out /var/log/cups/* | ccze
    else
        prettyPrint "Decolorized logging for Darwin"
        "$tailVersion" -F /var/log/**/*.log /var/log/**/*.out /var/log/cups/* "$HOME"/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out /Library/Logs/**/*.log
    fi
else
    #linux
    distroName="$(grep '^ID=' /etc/os-release | cut -d= -f2 | tr -d \")"

    case "$distroName" in
    debian | ubuntu | elementary | raspbian | kali | zorin | parrot)
        distro=debian
        ;;
    centos | fedora | rhel)
        distro=redhat
        ;;
    opensuse* | suse*)
        distro=suse
        ;;
    esac

    if [[ "$distro" == debian ]]; then

        if [[ "$weHaveCCZE" == yes ]]; then
            prettyPrint "Color logging for $distroName"
            "$tailVersion" -F /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err "$HOME"/**/*.log | ccze
        else
            prettyPrint "Decolorized logging for $distroName"
            "$tailVersion" -F /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err "$HOME"/**/*.log
        fi

    elif [[ "$distro" == redhat ]]; then

        if [[ "$weHaveCCZE" == yes ]]; then
            prettyPrint "Color logging for $distroName"
            sudo "$tailVersion" -F /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog,secure} /var/**/*.err "$HOME"/**/*.log | ccze
        else
            prettyPrint "Decolorized logging for $distroName"
            sudo "$tailVersion" -F /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog,secure} /var/**/*.err "$HOME"/**/*.log
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
            "$tailVersion" -F /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err "$HOME"/**/*.log | ccze
        else
            prettyPrint "Decolorized logging for $distroName"
            "$tailVersion" -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err "$HOME"/**/*.log
        fi
    fi

fi
