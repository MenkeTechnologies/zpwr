#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:19:29 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

unset CDPATH

if ! test -f install.sh; then
    echo "install.sh ust be in ~/.zpwr/install directory" >&2
    exit 1
fi

if ! test -f common.sh; then
    echo "common.sh Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

ZPWR_OS_TYPE="$(uname -s | tr A-Z a-z)"

#resolve all symlinks
ZPWR_INSTALLER_DIR="$(pwd -P)"
ZPWR_BASE_DIR="$ZPWR_INSTALLER_DIR/.."
ZPWR_BASE_SCRIPTS="$ZPWR_INSTALLER_DIR/../scripts"
ZPWR_INSTALLER_OUTPUT="$ZPWR_BASE_DIR/local/installer"

export ZPWR_DELIMITER_CHAR='%'


function exists(){
    type "$1" >/dev/null 2>&1
}

function update(){
    exists "$1" || {

        if [[ $2 == mac ]]; then
            brew install "$1"
        elif [[ $2 == debian ]];then
            sudo apt-get install -y "$1"
        elif [[ $2 == suse ]];then
            sudo zypper --non-interactive install "$1"
        elif [[ $2 == arch ]];then
            sudo pacman -S --noconfirm "$1"
        elif [[ $2 == redhat ]];then
            sudo yum install -y "$1"
        elif [[ $2 == freebsd ]];then
            sudo pkg install -y "$1"
        else
            prettyPrint "Error at install of $1 on $2." >&2
        fi
    }
}

function upgrade(){
    if [[ $1 == mac ]]; then
        brew update
        brew upgrade
    elif [[ $1 == debian ]];then
        sudo apt-get update -y
        sudo apt-get upgrade -y
    elif [[ $1 == suse ]];then
        sudo zypper --non-interactive update
    elif [[ $1 == arch ]];then
        sudo pacman -Suy
    elif [[ $1 == redhat ]];then
        sudo yum upgrade -y
    elif [[ $1 == freebsd ]];then
        sudo pkg upgrade -y
    else
        prettyPrint "Error with upgrade with $1." >&2
    fi
}

function refresh(){
    if [[ $1 == mac ]]; then
        brew update
    elif [[ $1 == debian ]];then
        sudo apt-get update -y
        sudo apt-get autoremove -y
    elif [[ $1 == suse ]];then
        sudo zypper refresh
    elif [[ $1 == arch ]];then
        sudo pacman -Syy
    elif [[ $1 == freebsd ]];then
        sudo pkg update
    elif [[ $1 == redhat ]];then
        sudo yum update -y
    else
        prettyPrint "Error with refresh with $1." >&2
    fi

}

#function prettyPrint(){
    #(( ++install_counter ))
    #printf "\x1b[32;1m"
    #perl -le "print '#'x80"
    #printf "\x1b[34;4m"
    #printf "$install_counter>>> $1\n"
    #printf "\x1b[0;32;1m"
    #perl -le "print '#'x80"
    #printf "\x1b[0m"
    #printf "\n"
#}

function needSudo(){
    if [[ ! -w "$1" ]]; then
        return 0
    else
        return 1
    fi
}

function proceed(){
    printf "Proceed?(y/n) >>> "
    read -n1
    echo
    case $REPLY in
        [yY][eE][sS]|[yY])
            :
            ;;
        *)
            exit 1
            ;;
    esac
}

function prettyPrintStdin(){
    perlfile="$ZPWR_BASE_SCRIPTS/boxPrint.pl"
    [[ ! -e "$perlfile" ]] && echo "where is $perlfile?" >&1 && exit 1
    (( ++install_counter ))
    {
        printf "$install_counter>>> $@\n"
        cat
    } | "$perlfile" -f
    echo
}

function prettyPrint(){
    perlfile="$ZPWR_BASE_SCRIPTS/boxPrint.pl"
    [[ ! -e "$perlfile" ]] && echo "where is $perlfile?" >&1 && exit 1
    (( ++install_counter ))
    printf "$install_counter>>> $@\n" | "$perlfile" -f
    echo
}

function turnOffDebugging(){
    set +x
    set +v
    exec 2> /dev/tty
}

function turnOnDebugging(){
    set -x
    set -v
    exec 2>> >(tee "$ZPWR_INSTALLER_OUTPUT/logfile.txt")
    exec >> >(tee "$ZPWR_INSTALLER_OUTPUT/logfile.txt")
}

function alternatingPrettyPrint(){
    counter=0

    if [[ -z $1 ]]; then
        cat | perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        ++$counter;
        };print "\x1b[0m"'
    else
        perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        ++$counter
        }; print "\x1b[0m"' <<< "$@"

    fi

}

