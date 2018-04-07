#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: SUZIE
#####   Date: Fri Apr  6 15:40:01 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

alternatingPrettyPrint(){
    counter=0

    if [[ -z $1 ]]; then
        cat | perl -F\\. -anE '
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
        perl -F\\. -anE '
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

alternatingPrettyPrint "Updating .Pip2. Packages for .$(whoami). on .$(hostname)."
outdated=$(pip2 list --outdated | awk '{print $1}')

if [[ "$(uname)" == Darwin ]]; then
    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating .$i. with .Pip2. for .$(whoami). on .$(hostname)."
        pip2 install --upgrade "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating .Pip2. itself for .$(whoami). on .$(hostname)."
    #update pip itself
    pip2 install --upgrade pip setuptools wheel #&> /dev/null

    alternatingPrettyPrint "Updating .Pip3. Packages for .$(whoami). on .$(hostname)."
    outdated=$(pip3 list --outdated | awk '{print $1}')

    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating .$i. with .Pip3. for .$(whoami). on .$(hostname)."
        pip3 install --upgrade "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating .Pip3. itself for .$(whoami). on .$(hostname)."
    #update pip itself
    pip3 install --upgrade pip setuptools wheel #&> /dev/null
else
    alternatingPrettyPrint "Updating with .sudo."
    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating .$i. with .Pip2. for .$(whoami). on .$(hostname)."
        sudo pip2 install --upgrade "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating .Pip2. itself for .$(whoami). on .$(hostname)."
    #update pip itself
    sudo pip2 install --upgrade pip setuptools wheel #&> /dev/null

    alternatingPrettyPrint "Updating .Pip3. Packages for .$(whoami). on .$(hostname)."
    outdated=$(pip3 list --outdated | awk '{print $1}')

    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        alternatingPrettyPrint "Updating .$i. with .Pip3. for .$(whoami). on .$(hostname)."
        sudo pip3 install --upgrade "$i" #&> /dev/null
    done

    alternatingPrettyPrint "Updating .Pip3. itself for .$(whoami). on .$(hostname)."
    #update pip itself
    sudo pip3 install --upgrade pip setuptools wheel #&> /dev/null
fi

