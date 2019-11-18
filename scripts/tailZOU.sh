#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Mon Nov 18 01:54:48 EST 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

#######################################################################
#                                setup                                #
#######################################################################

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

if [[ $restart=yes ]]; then

    for s in ${svc[@]} ; do
        sudo systemctl restart $s
        sudo systemctl --no-pager status $s
        sudo journalctl -n 100 --no-pager

    done

fi

#######################################################################
#                                tail                                #
#######################################################################


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

