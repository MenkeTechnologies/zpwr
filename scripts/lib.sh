#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:19:29 EDT 2018
#####   Purpose: bash script to hold installer lib fns
#####   Notes: 
#}}}***********************************************************

#{{{                    MARK:sanity
#**************************************************************
# do not want any surprises when relative cd to other dirs
unset CDPATH
#}}}***********************************************************

#{{{                    MARK:installer lib fns
#**************************************************************
function fail(){
        echo "failure due to $1" >&2
        exit 1
}

function fileMustExist(){
    if [[ ! -f "$1" ]]; then
        echo "where is the file $1?" >&2
        exit 1
    fi
}

function goInstallerDir(){
    local ret=0
    builtin cd "$ZPWR_INSTALL" || ret=1

    if [[ "$(pwd)" != "$ZPWR_INSTALL" ]]; then
        echo "pwd $PWD is not $ZPWR_INSTALL"
    fi

    if (( ret == 1 )); then
        echo "where is $ZPWR_INSTALL" >&2
        exit 1
    fi
}


function goInstallerOutputDir(){
    local ret=0
    builtin cd "$ZPWR_INSTALLER_OUTPUT" || ret=1

    if [[ "$(pwd)" != "$ZPWR_INSTALLER_OUTPUT" ]]; then
        echo "pwd $PWD is not $ZPWR_INSTALLER_OUTPUT"
    fi

    if (( ret == 1 )); then
        echo "where is $ZPWR_INSTALLER_OUTPUT" >&2
        exit 1
    fi
}

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
        sudo apt-get dist-upgrade -y
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
    #(( ++INSTALL_COUNTER ))
    #printf "\x1b[32;1m"
    #perl -le "print '#'x80"
    #printf "\x1b[34;4m"
    #printf "$INSTALL_COUNTER>>> $1\n"
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
    local perlfile="$ZPWR_BASE_SCRIPTS/boxPrint.pl"
    [[ ! -e "$perlfile" ]] && echo "where is $perlfile?" >&1 && exit 1
    (( ++INSTALL_COUNTER ))
    {
        printf "$INSTALL_COUNTER>>> $@\n"
        cat
    } | "$perlfile" -f
    echo
}

function prettyPrint(){
    local perlfile="$ZPWR_BASE_SCRIPTS/boxPrint.pl"
    [[ ! -e "$perlfile" ]] && echo "where is $perlfile?" >&1 && exit 1
    (( ++INSTALL_COUNTER ))
    printf "$INSTALL_COUNTER>>> $@\n" | "$perlfile" -f
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


#}}}***********************************************************
