#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Wed Dec 15 22:51:36 EST 2021
##### Purpose: bash script to execute code base on os
##### Notes:
#}}}***********************************************************

function zpwrSetDistroName() {

    test -z "$ZPWR_DISTRO_NAME" && export ZPWR_DISTRO_NAME=$(perl -lne 'do{($_=$1)=~s@"@@g;print;exit0}if m{^ID=(.*)}' /etc/os-release)

}

function zpwrOsRaspbianVsRHvsSuse() {

    zpwrSetDistroName

    case $ZPWR_DISTRO_NAME in
        (raspbian)
            eval "$1"
            ;;
        (fedora | ol | centos | rhel)
            eval "$2"
            ;;
        (*suse*)
            eval "$3"
            ;;
        (*)
            eval "$4"
            ;;
    esac
}

function zpwrOsRaspbianVsFamily() {

    zpwrSetDistroName

    case $ZPWR_DISTRO_NAME in
        (raspbian)
            eval "$1"
            ;;
        (debian | ubuntu* | elementary* | kali | linuxmint | zorin | parrot | *alpine*)
            eval "$2"
            ;;
        (fedora | ol | centos | rhel | amzn)
            eval "$3"
            ;;
        (*suse* | arch | *artix* | endeavouros | garuda | manjaro*)
            eval "$4"
            ;;
        (*)
            eval "$5"
            ;;
    esac
}

function zpwrOsDebVsUbuntu() {

    zpwrSetDistroName

    case $ZPWR_DISTRO_NAME in
        (debian | raspbian | kali | parrot | zorin | *alpine*)
            eval "$1"
            ;;
        (ubuntu* | linuxmint | pop* | elementary*)
            eval "$2"
            ;;
        (fedora | ol | centos | rhel | amzn)
            eval "$3"
            ;;
        (arch | *artix* | endeavouros | garuda | manjaro*)
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

function zpwrOsDebianVsRh() {

    zpwrSetDistroName

    case $ZPWR_DISTRO_NAME in
        (debian | ubuntu* | pop* | elementary* | raspbian | kali | linuxmint | zorin | parrot | *alpine*)
            eval "$1"
            ;;
        (fedora | ol | centos | rhel | amzn | *suse*)
            eval "$2"
            ;;
        (*)
            eval "$3"
            ;;
    esac
}

function zpwrOsFamily() {

    zpwrSetDistroName

    case $ZPWR_DISTRO_NAME in
        (debian | ubuntu* | pop* | elementary* | raspbian | kali | linuxmint | zorin | parrot)
            eval "$1"
            ;;
        (fedora | ol | centos | rhel | amzn)
            eval "$2"
            ;;
        (arch | *artix* | endeavouros | garuda | manjaro*)
            eval "$3"
            ;;
        (*suse*)
            eval "$4"
            ;;
        (*alpine*)
            eval "$5"
            ;;
        (*)
            eval "$6"
            ;;
    esac
}

function zpwrOsAllVsFedora() {

    zpwrSetDistroName

    case "$ZPWR_DISTRO_NAME" in
        (*suse* | ubuntu | debian | linuxmint | raspbian | Mac | *alpine*)
            eval "$1"
            ;;
        (fedora)
            eval "$2"
            ;;
        (*)
            eval "$3"
            ;;
    esac

}

function zpwrOsFedoraVsJournalctl() {

    zpwrSetDistroName

    case $ZPWR_DISTRO_NAME in
        (debian | ubuntu* | pop* | elementary* | raspbian | kali | linuxmint | zorin | parrot | *alpine*)
            eval "$1"
            ;;
        (centos | rhel | amzn)
            eval "$2"
            ;;
        (*suse* | arch | *artix* | endeavouros | garuda | manjaro*)
            eval "$3"
            ;;
        (fedora | ol)
            eval "$4"
            ;;
        (*)
            eval "$5"
            ;;
    esac
}
