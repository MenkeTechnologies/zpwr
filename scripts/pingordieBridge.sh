#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Aug 31 23:37:08 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

type fping >/dev/null 2>&1 || {
    echo "$(date) no fping"
    exit 1
}

gateway_ip='8.8.8.8'

network_check_tries=0

network_check_threshold=5

restart_br0() {
    echo "$(date) Network was not working for the previous $network_check_tries checks."
    echo "Restarting br0"
    sudo ifdown br0
    sleep 5
    sudo ifup --force br0
    sleep 60
    host_status=$(fping $gateway_ip)
    if ! echo "$host_status" | grep -iq alive; then
        echo "$(date) Network failed...rebooting"
        sudo dmesg -T
        sudo journalctl --no-pager -n 100
        sudo ifconfig -a
        sudo brctl showstp br0
        sudo bash /etc/openvpn/server/down.sh
        sudo reboot
    fi
}

while ((network_check_tries < network_check_threshold)); do

    host_status=$(fping $gateway_ip)

    ((++network_check_tries))

    if echo "$host_status" | grep -iq alive; then
        echo "$(date) Bridged network is working correctly"
        exit 0
    else
        echo "$(date) Bridged Network is down, failed check number $network_check_tries of $network_check_threshold"
    fi

    ((network_check_tries >= network_check_threshold)) && restart_br0

    sleep 5
done
