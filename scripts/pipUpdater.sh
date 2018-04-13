#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: SUZIE
#####   Date: Fri Apr  6 15:40:01 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

export DELIMITER_CHAR='%'


alternatingPrettyPrint(){
    counter=0

    if [[ -z $1 ]]; then
        cat | perl -F"$DELIMITER_CHAR" -anE '
        my $counter=0;
        for my $arg (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$arg\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$arg\x1b[0m"
            }
        $counter++;
        };print "\x1b[0m"'
    else
        perl -F"$DELIMITER_CHAR" -anE '
        my $counter=0;
        for my $arg (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$arg\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$arg\x1b[0m"
            }
        $counter++;
        }; print "\x1b[0m"' <<< "$@"

    fi

}

alternatingPrettyPrint "Updating ${DELIMITER_CHAR}Pip2${DELIMITER_CHAR} Packages for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
outdated=$(pip2 list --outdated | awk '{print $1}')

if [[ "$(uname)" == Darwin ]]; then
    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating ${DELIMITER_CHAR}$i${DELIMITER_CHAR} with ${DELIMITER_CHAR}Pip2${DELIMITER_CHAR} for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
        pip2 install --upgrade "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating ${DELIMITER_CHAR}Pip2${DELIMITER_CHAR} itself for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
    #update pip itself
    pip2 install --upgrade pip setuptools wheel #&> /dev/null

    alternatingPrettyPrint "Updating ${DELIMITER_CHAR}Pip3${DELIMITER_CHAR} Packages for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
    outdated=$(pip3 list --outdated | awk '{print $1}')

    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating ${DELIMITER_CHAR}$i${DELIMITER_CHAR} with ${DELIMITER_CHAR}Pip3${DELIMITER_CHAR} for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
        pip3 install --upgrade "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating ${DELIMITER_CHAR}Pip3${DELIMITER_CHAR} itself for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
    #update pip itself
    pip3 install --upgrade pip setuptools wheel #&> /dev/null
else
    alternatingPrettyPrint "Updating with ${DELIMITER_CHAR}sudo${DELIMITER_CHAR}"
    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating ${DELIMITER_CHAR}$i${DELIMITER_CHAR} with ${DELIMITER_CHAR}Pip2${DELIMITER_CHAR} for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
        sudo pip2 install --upgrade "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating ${DELIMITER_CHAR}Pip2${DELIMITER_CHAR} itself for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
    #update pip itself
    sudo pip2 install --upgrade pip setuptools wheel #&> /dev/null

    alternatingPrettyPrint "Updating ${DELIMITER_CHAR}Pip3${DELIMITER_CHAR} Packages for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
    outdated=$(pip3 list --outdated | awk '{print $1}')

    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating ${DELIMITER_CHAR}$i${DELIMITER_CHAR} with ${DELIMITER_CHAR}Pip3${DELIMITER_CHAR} for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
        sudo pip3 install --upgrade "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating ${DELIMITER_CHAR}Pip3${DELIMITER_CHAR} itself for ${DELIMITER_CHAR}$(whoami)${DELIMITER_CHAR} on ${DELIMITER_CHAR}$(hostname)${DELIMITER_CHAR}"
    #update pip itself
    sudo pip3 install --upgrade pip setuptools wheel #&> /dev/null
fi

