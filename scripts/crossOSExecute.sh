#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Wed Dec 15 22:51:36 EST 2021
##### Purpose: bash script to execute code base on os
##### Notes:
#}}}***********************************************************

function zpwrOsCommon() {

    test -z "$ZPWR_DISTRO_NAME" && export ZPWR_DISTRO_NAME=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)

}

function zpwrOsRaspbianVsRHvsSuse() {

    zpwrOsCommon

    case $ZPWR_DISTRO_NAME in
        (raspbian)
            test -n "$1" && eval "$1"
            ;;
        (fedora | ol | centos | rhel)
            test -n "$2" && eval "$2"
            ;;
        (*suse*)
            test -n "$3" && eval "$3"
            ;;
        (*)
            test -n "$4" && eval "$4"
            ;;
    esac
}

function zpwrOsRaspbianVsFamily() {

    zpwrOsCommon

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

    zpwrOsCommon

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

function zpwrOsDebianVsRh() {

    zpwrOsCommon

    case $ZPWR_DISTRO_NAME in
        (debian | ubuntu* | pop* | elementary* | raspbian | kali | linuxmint | zorin | parrot)
            test -n "$1" && eval "$1"
            ;;
        (fedora | ol | centos | rhel | amzn | *suse*)
            test -n "$2" && eval "$2"
            ;;
        (*)
            test -n "$3" && eval "$3"
            ;;
    esac
}

function zpwrOsFamily() {

    zpwrOsCommon

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

function zpwrOsAllVsFedora() {

    zpwrOsCommon

    case "$ZPWR_DISTRO_NAME" in
        (*suse* | ubuntu | debian | linuxmint | raspbian | Mac)
            test -n "$1" && eval "$1"
            ;;
        (fedora)
            test -n "$2" && eval "$2"
            ;;
        (*)
            test -n "$3" && eval "$3"
            ;;
    esac

}

function zpwrOsFedoraVsJournalctl() {

    zpwrOsCommon

    case $ZPWR_DISTRO_NAME in
        (debian | ubuntu* | pop* | elementary* | raspbian | kali | linuxmint | zorin | parrot)
            test -n "$1" && eval "$1"
            ;;
        (centos | rhel | amzn)
            test -n "$2" && eval "$2"
            ;;
        (*suse* | arch | endeavouros | garuda | manjaro*)
            test -n "$3" && eval "$3"
            ;;
        (fedora | ol)
            test -n "$4" && eval "$4"
            ;;
        (*)
            test -n "$5" && eval "$5"
            ;;
    esac
}
