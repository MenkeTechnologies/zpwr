#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 17 13:30:47 EDT 2017
#####   Purpose: bash script to monitor log files in color
#####   Notes: 
#}}}***********************************************************

prettyPrint () {
	[[ ! -z "$1" ]] && printf "\e[1m$1\e[0m\n" || {
			echo "Need one arg" >&2
			return 1
	}
}


shopt -s globstar

#tailVersion="colortail -k $HOME/.colortailconf"
tailVersion=tail

weHaveCCZE=no

type ccze 1>/dev/null 2>&1 && {
    weHaveCCZE=yes
}

if [[ "$1" ]]; then
    weHaveCCZE=no
fi

#dont care about std err
#exec 2>/dev/null

if [[ "$(uname)" == Darwin ]]; then
    if [[ "$weHaveCCZE" == yes ]]; then
   "$tailVersion" -f /var/log/**/*.log /var/log/**/*.out /var/log/cups/* $HOME/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out /Library/Logs/**/*.log /usr/local/var/log/**/*.log | ccze
   else
   "$tailVersion" -f /var/log/**/*.log /var/log/**/*.out /var/log/cups/* "$HOME"/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out /Library/Logs/**/*.log
    fi
else
    #linux
    distroName="$(grep '^ID=' /etc/os-release | cut -d= -f2 | tr -d \")"

    case "$distroName" in
        (debian|ubuntu|raspbian|kali) prettyPrint "Installing Dependencies for $distroName with the Advanced Package Manager..."
            distro=debian
            ;;
        (centos|fedora|rhel) prettyPrint "Installing Dependencies for $distroName with the Yellowdog Updater Modified"
            distro=redhat
            ;;
    esac

    if [[ "$distro" == debian ]]; then

        if [[ "$weHaveCCZE" == yes ]]; then
            "$tailVersion" -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err "$HOME"/**/*.log | ccze
        else
            "$tailVersion" -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err "$HOME"/**/*.log 
        fi
    elif [[ "$distroName" == redhat ]]; then

        if [[ "$weHaveCCZE" == yes ]]; then
            sudo "$tailVersion" -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog,secure} /var/**/*.err "$HOME"/**/*.log | ccze
        else
            sudo "$tailVersion" -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog,secure} /var/**/*.err "$HOME"/**/*.log 
        fi
    else 
        printf "Unsupported distro: $distroName...but trying anyways\n" >&2
        if [[ "$weHaveCCZE" == yes ]]; then
            "$tailVersion" -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err "$HOME"/**/*.log | ccze
        else
            "$tailVersion" -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err "$HOME"/**/*.log
        fi
    fi

fi
