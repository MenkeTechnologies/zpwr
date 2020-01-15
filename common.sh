#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:19:29 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

ZPWR_OS_TYPE="$(uname -s | perl -e 'print lc<>')"

#resolve all symlinks
INSTALLER_DIR="$(pwd -P)"

export ZPWR_DELIMITER_CHAR='%'


exists(){
    type "$1" >/dev/null 2>&1
}

update(){
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

upgrade(){
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

refresh(){
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

#prettyPrint(){
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

needSudo(){
    if [[ ! -w "$1" ]]; then
        return 0
    else
        return 1
    fi
}

proceed(){
    printf "Proceed?(y/n) >>> "
    read
    case $REPLY in
        [yY][eE][sS]|[yY])
            :
            ;;
        *)
            exit 1
            ;;
    esac
}

prettyPrintStdin(){
    perlfile="$INSTALLER_DIR/scripts/boxPrint.pl"
    [[ ! -e "$perlfile" ]] && echo "where is $perlfile?" >&1 && exit 1
    (( ++install_counter ))
    {
        printf "$install_counter>>> $@\n"
        cat
    } | "$perlfile" -f
    echo
}

prettyPrint(){
    perlfile="$INSTALLER_DIR/scripts/boxPrint.pl"
    [[ ! -e "$perlfile" ]] && echo "where is $perlfile?" >&1 && exit 1
    (( ++install_counter ))
    printf "$install_counter>>> $@\n" | "$perlfile" -f
    echo
}

turnOffDebugging(){
    set +x
    set +v
    exec 2> /dev/tty
}
turnOnDebugging(){
    set -x
    set -v
    exec 2>> >(tee "$INSTALLER_DIR"/logfile.txt)
    exec >> >(tee "$INSTALLER_DIR"/logfile.txt)
}

alternatingPrettyPrint(){
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
        ++$counter+
        }; print "\x1b[0m"' <<< "$@"

    fi

}

