#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat 16 Nov 2019 08:17:55 PM EST
##### Purpose: bash script to take down bridged NIC
##### Notes: eth0 replaces br0, tap0 and eth0 bridge
#}}}***********************************************************

#{{{                    MARK:Local Vars
#**************************************************************
# Define physical ethernet interface to be bridged
# with TAP interface(s) above.
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

#{{{                    MARK:Take Down Bridge
#**************************************************************
iptables -D INPUT -i $br -j ACCEPT
iptables -D FORWARD -i $br -j ACCEPT

ifconfig $br down
brctl delbr $br

for t in $tap; do
    openvpn --rmtun --dev $t
    iptables -D INPUT -i $t -j ACCEPT
done

ifconfig $eth $eth_ip netmask $eth_netmask broadcast $eth_broadcast
route add default gw $eth_gateway $eth
#}}}**************************************************************
