#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: SUZIE
##### Date: Fri Apr 6 15:40:01 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

source "$ZPWR_SCRIPTS/lib.sh" || {
    echo "cannot access lib.sh" >&2
    exit 1
}

export ZPWR_DELIMITER_CHAR='%'

if exists python2;then
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

fi
