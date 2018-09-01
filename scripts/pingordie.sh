#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Aug 31 23:37:08 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

gateway_ip='8.8.8.8'

while true; do
    network_check_tries=0

    network_check_threshold=5

    restart_wlan0() {
        echo "Network was not working for the previous $network_check_tries checks."
        echo "Restarting wlan0"
        ifdown wlan0
        sleep 5
        ifup --force wlan0
        sleep 60
        host_status=$(fping $gateway_ip)
        echo "$host_status" | grep -iq alive || sudo reboot
    }

    while (( $network_check_tries < $network_check_threshold )); do

        host_status=$(fping $gateway_ip)

        (( network_check_tries++ ))
        
        echo "$host_status" | grep -iq alive && {
            echo "Network is working correctly" && exit 0
        } || {
            echo "Network is down, failed check number $network_check_tries of $network_check_threshold"
        }
        
        (($network_check_tries >= $network_check_threshold)) && restart_wlan0

        sleep 5
    done
done

