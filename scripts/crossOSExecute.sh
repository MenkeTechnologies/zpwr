#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Wed Dec 15 22:51:36 EST 2021
##### Purpose: bash script to execute code base on os
##### Notes:
#}}}***********************************************************


function zpwrOsRaspbianVsFamily() {

    case $ZPWR_DISTRO_NAME in
            (raspbian)
                eval "$1"
                ;;
            (debian | ubuntu* | elementary* | kali | linuxmint | zorin | parrot)
                eval "$2"
                ;;
            (fedora | ol | centos | rhel | amzn)
                eval "$3"
                ;;
            (*suse* | arch | endeavouros | garuda | manjaro*)
                eval "$4"
                ;;
            (*)
                eval "$5"
                ;;
        esac
}


function zpwrOsDebVsUbuntu() {

    case $ZPWR_DISTRO_NAME in
        (debian | raspbian | kali | parrot | zorin)
            eval "$1"
            ;;
        (ubuntu* | linuxmint | pop* | elementary*)
            eval "$2"
            ;;
        (fedora | ol | centos | rhel | amzn)
            eval "$3"
            ;;
        (arch | endeavouros | garuda | manjaro*)
            eval "$4"
            ;;
        (*suse*)
            eval "$5"
            ;;
        (*)
            eval "$6"
            ;;
    esac
}

function zpwrOsFamily() {

    case $ZPWR_DISTRO_NAME in
        (debian | ubuntu* | pop* | elementary* | raspbian | kali | linuxmint | zorin | parrot)
            eval "$1"
            ;;
        (fedora | ol | centos | rhel | amzn)
            eval "$2"
            ;;
        (arch | endeavouros | garuda | manjaro*)
            eval "$3"
            ;;
        (*suse*)
            eval "$4"
            ;;
        (*)
            eval "$5"
            ;;
    esac
}
