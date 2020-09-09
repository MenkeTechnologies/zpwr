#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Mon Nov 18 01:54:48 EST 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************


#{{{                    MARK:Setup
#**************************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
    dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$dir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

    while [[ ! -f "$dir/.zpwr_root" ]]; do
        dir="$(dirname "$dir")"
        if [[ "$dir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$dir/scripts/init.sh" "$dir"; then
        echo "Could not source dir '$dir/scripts/init.sh'."
        exit 1
    fi
fi

size=100
if [[ -n $1 ]]; then
    size=$1
fi

if [[ -n $2 ]]; then
    color=$2
fi

if [[ -n $3 ]]; then
    restart=$3
fi

trap 'kill $pid' INT QUIT

svc=(ufw ovpn zabbix-agent)

if [[ $restart == yes ]]; then

    for s in ${svc[@]} ; do
        if exists $s; then
            sudo systemctl restart $s
            sudo systemctl --no-pager status $s
            sudo journalctl -n 100 --no-pager
        fi

    done

fi
#}}}**************************************************************

#{{{                    MARK:Tail
#**************************************************************
if exists ccze; then
    if [[ $color == no ]]; then
        {
        sudo tail -n $size -F \
            /var/log/{syslog,messages} \
            | command grep -i ufw &
        pid=$!
        sudo tail -n $size -F \
            /var/log/openvpn/*.log \
            /var/log/zabbix*/*.log
        }
    else
        {
        sudo tail -n $size -F \
            /var/log/{syslog,messages} \
            | command grep -i ufw &
        pid=$!
        sudo tail -n $size -F \
            /var/log/openvpn/*.log \
            /var/log/zabbix*/*.log

        } | ccze
    fi
    {
    sudo tail -n $size -F \
        /var/log/{syslog,messages} \
        | command grep -i ufw &
    pid=$!
    sudo tail -n $size -F \
        /var/log/openvpn/*.log \
        /var/log/zabbix*/*.log

    } | ccze
else
    {
    sudo tail -n $size -F \
        /var/log/{syslog,messages} \
        | command grep -i ufw &
    pid=$!
    sudo tail -n $size -F \
        /var/log/openvpn/*.log \
        /var/log/zabbix*/*.log

    }
fi
#}}}**************************************************************
