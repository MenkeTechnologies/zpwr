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

gateway_ip='1.1.1.1'
network_check_tries=0
network_check_threshold=5

function restart_br0() {

    echo "$(date) Network was not working for the previous $network_check_tries checks."
    sudo brctl showstp br0
    echo "Restarting br0"
    sudo bash /etc/openvpn/server/down.sh
    sleep 5
    echo "Restarting ovpn"
    sudo sytemctl restart ovpn
    sleep 60
    host_status=$(fping $gateway_ip)
    if ! echo "$host_status" | grep -iq alive; then
        echo "$(date) Network failed...rebooting"
        sudo dmesg -T
        sudo journalctl --no-pager -n 100
        sudo ifconfig -a
        sudo brctl showstp br0
        sudo bash /etc/openvpn/server/down.sh
        sudo bash /etc/openvpn/server/up.sh
        sudo reboot
    fi
}

while ((network_check_tries < network_check_threshold)); do

    host_status=$(fping $gateway_ip)

    ((++network_check_tries))

    if echo "$host_status" | grep -iq alive; then
        echo "$(date) Bridged VPN NIC is working correctly"
        exit 0
    else
        echo "$(date) Bridged VPN NIC is down, failed check number $network_check_tries of $network_check_threshold"
    fi

    ((network_check_tries >= network_check_threshold)) && restart_br0

    sleep 5
done
