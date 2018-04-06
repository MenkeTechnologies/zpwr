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

outdated=$(pip2 list --outdated | awk '{print $1}')

#install outdated pip modules 
#split on space
for i in $outdated; do
    sudo pip2 install --upgrade "$i" #&> /dev/null
done

alternatingPrettyPrint "Updating .Pip3. itself"
#update pip itself
sudo pip2 install --upgrade pip setuptools wheel #&> /dev/null

outdated=$(pip3 list --outdated | awk '{print $1}')

#install outdated pip modules 
#split on space
for i in $outdated; do
    sudo pip3 install --upgrade "$i" #&> /dev/null
done

alternatingPrettyPrint "Updating .Pip3. itself"
#update pip itself
sudo pip3 install --upgrade pip setuptools wheel #&> /dev/null

