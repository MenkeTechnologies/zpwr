#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Aug 31 23:37:08 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

PATH="$PATH:/sbin:/usr/sbin"

type fping >/dev/null 2>&1 || {
    echo "$PATH"
    echo "$(date) no fping"
    exit 1
}

gateway_ip='8.8.8.8'

network_check_tries=0

network_check_threshold=5

restart_wlan0() {
    echo "$(date) Network was not working for the previous $network_check_tries checks."
    echo "Restarting wlan0"
    ifdown wlan0
    sleep 5
    ifup --force wlan0
    sleep 60
    host_status=$(fping $gateway_ip)
    if ! echo "$host_status" | grep -iq alive; then
        echo "$(date) Network failed...rebooting"
        sudo dmesg -T
        sudo journalctl --no-pager -n 100
        sudo ifconfig -a
        sudo reboot
    fi
}

while ((network_check_tries < network_check_threshold)); do

    host_status=$(fping $gateway_ip)

    ((network_check_tries++))

    if echo "$host_status" | grep -iq alive; then
        echo "$(date) WLAN Network is working correctly"
        exit 0
    else
        echo "$(date) WLAN Network is down, failed check number $network_check_tries of $network_check_threshold"
    fi

    ((network_check_tries >= network_check_threshold)) && restart_wlan0

    sleep 5
done
