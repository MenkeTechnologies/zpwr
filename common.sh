#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:19:29 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************



OS_TYPE="$(uname -s)"
#resolve all symlinks
INSTALLER_DIR="$(pwd -P)"

export DELIMITER_CHAR='%'


exists(){
    type "$1" >/dev/null 2>&1
}

install_counter=0
prettyPrint(){
    (( install_counter++ ))
    printf "\x1b[32;1m"
    perl -le "print '#'x80"
    printf "\x1b[34;4m"
    printf "$install_counter>>> $1\n"
    printf "\x1b[0;32;1m"
    perl -le "print '#'x80"
    printf "\x1b[0m"
    printf "\n"
}


prettyPrint(){
    (( install_counter++ ))
    printf "$install_counter>>> $1\n" | "$INSTALLER_DIR/scripts/boxPrint.pl"
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
        cat | perl -F"$DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        $counter++;
        };print "\x1b[0m"'
    else
        perl -F"$DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        $counter++;
        }; print "\x1b[0m"' <<< "$@"

    fi

}

