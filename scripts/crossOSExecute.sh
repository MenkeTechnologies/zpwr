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
            test -n "$1" && eval "$1"
            ;;
        (debian | ubuntu* | elementary* | kali | linuxmint | zorin | parrot)
            test -n "$2" && eval "$2"
            ;;
        (fedora | ol | centos | rhel | amzn)
            test -n "$3" && eval "$3"
            ;;
        (*suse* | arch | endeavouros | garuda | manjaro*)
            test -n "$4" && eval "$4"
            ;;
        (*)
            test -n "$5" && eval "$5"
            ;;
    esac
}


function zpwrOsDebVsUbuntu() {

    case $ZPWR_DISTRO_NAME in
        (debian | raspbian | kali | parrot | zorin)
            test -n "$1" && eval "$1"
            ;;
        (ubuntu* | linuxmint | pop* | elementary*)
            test -n "$2" && eval "$2"
            ;;
        (fedora | ol | centos | rhel | amzn)
            test -n "$3" && eval "$3"
            ;;
        (arch | endeavouros | garuda | manjaro*)
            test -n "$4" && eval "$4"
            ;;
        (*suse*)
            test -n "$5" && eval "$5"
            ;;
        (*)
            test -n "$6" && eval "$6"
            ;;
    esac
}

function zpwrOsFamily() {

    case $ZPWR_DISTRO_NAME in
        (debian | ubuntu* | pop* | elementary* | raspbian | kali | linuxmint | zorin | parrot)
            test -n "$1" && eval "$1"
            ;;
        (fedora | ol | centos | rhel | amzn)
            test -n "$2" && eval "$2"
            ;;
        (arch | endeavouros | garuda | manjaro*)
            test -n "$3" && eval "$3"
            ;;
        (*suse*)
            test -n "$4" && eval "$4"
            ;;
        (*)
            test -n "$5" && eval "$5"
            ;;
    esac
}
