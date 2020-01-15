#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: SUZIE
##### Date: Fri Apr 6 15:40:01 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

export ZPWR_DELIMITER_CHAR='%'

alternatingPrettyPrint() {
    counter=0

    if [[ -z $1 ]]; then
        cat | perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for my $arg (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$arg\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$arg\x1b[0m"
            }
        ++$counter;
        };print "\x1b[0m"'
    else
        perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for my $arg (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$arg\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$arg\x1b[0m"
            }
        ++$counter;
        }; print "\x1b[0m"' <<<"$@"

    fi

}

alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}Pip2${ZPWR_DELIMITER_CHAR} Packages for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
outdated=$(python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')

if [[ "$(uname)" == Darwin ]]; then
    #install outdated pip modules
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}$i${ZPWR_DELIMITER_CHAR} with ${ZPWR_DELIMITER_CHAR}Pip2${ZPWR_DELIMITER_CHAR} for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
        python2 -m pip install --upgrade --ignore-installed -- "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}Pip2${ZPWR_DELIMITER_CHAR} itself for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    #update pip itself
    python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null

    alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}Pip3${ZPWR_DELIMITER_CHAR} Packages for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    outdated=$(python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')

    #install outdated pip modules
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}$i${ZPWR_DELIMITER_CHAR} with ${ZPWR_DELIMITER_CHAR}Pip3${ZPWR_DELIMITER_CHAR} for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
        python3 -m pip install --upgrade --ignore-installed -- "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}Pip3${ZPWR_DELIMITER_CHAR} itself for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    #update pip itself
    python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
else
    alternatingPrettyPrint "Updating with ${ZPWR_DELIMITER_CHAR}sudo${ZPWR_DELIMITER_CHAR}"
    #install outdated pip modules
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}$i${ZPWR_DELIMITER_CHAR} with ${ZPWR_DELIMITER_CHAR}Pip2${ZPWR_DELIMITER_CHAR} for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
        sudo python2 -m pip install --upgrade --ignore-installed -- "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}Pip2${ZPWR_DELIMITER_CHAR} itself for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    #update pip itself
    sudo python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null

    alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}Pip3${ZPWR_DELIMITER_CHAR} Packages for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    outdated=$(python3 -m pip list --outdated | sed -n '3,$p' | awk '{print $1}')

    #install outdated pip modules
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}$i${ZPWR_DELIMITER_CHAR} with ${ZPWR_DELIMITER_CHAR}Pip3${ZPWR_DELIMITER_CHAR} for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
        sudo python3 -m pip install --upgrade --ignore-installed -- "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}Pip3${ZPWR_DELIMITER_CHAR} itself for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    #update pip itself
    sudo python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
fi
