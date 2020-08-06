#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun 17 Nov 2019 12:27:14 AM EST
##### Purpose: bash script to add brige NIC for VPN
##### Notes: br0, tap0 and eth0 bridged
#}}}***********************************************************

function bridgeUp(){
#{{{                    MARK:Local vars
#**************************************************************
# Define physical ethernet interface to be bridged
# with TAP interface(s) above.
    local eth eth_ip eth_netmask eth_broadcast eth_gateway eth_mac t br tap

    eth="eth0"
    eth_ip="192.168.0.149"
    eth_netmask="255.255.255.0"
    eth_broadcast="192.168.0.255"
    eth_gateway="192.168.0.1"
    eth_mac="REPLACE"

    # Define Bridge Interface
    br="br0"

    # Define list of TAP interfaces to be bridged together
    tap="tap0"
    #}}}**************************************************************

    #{{{                    MARK:Bring up bridge
    #**************************************************************
    for t in $tap; do
        openvpn --mktun --dev $t
    done

    brctl addbr $br
    brctl addif $br $eth

    for t in $tap; do
        brctl addif $br $t
    done

    for t in $tap; do
        ifconfig $t 0.0.0.0 promisc up
        iptables -A INPUT -i $t -j ACCEPT
    done

    iptables -A INPUT -i $br -j ACCEPT
    iptables -A FORWARD -i $br -j ACCEPT

    ifconfig $eth 0.0.0.0 promisc up

    ifconfig $br $eth_ip netmask $eth_netmask broadcast $eth_broadcast
    ip link set $br address $eth_mac
    route add default gw $eth_gateway $br
    #}}}**************************************************************
}

bridgeUp "$@"
