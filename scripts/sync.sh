#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:28:12 EDT 2017
#####   Purpose: bash script to sync two directories 
#####   Notes: first arg is origin 2nd arg is destination 
#}}}***********************************************************
firstFile="$1"

#exit is argument count less than 2
if (( $# < 2 ));then
    echo "Need two args"
    exit 1
fi

#add backslash if not already present to first file
#to make sure the contents of file 1 are synced not the file itself
if [[ "${firstFile: -1}" != "/" ]]; then
    firstFile="${firstFile}/"
fi

echo -e "\e[44;37mSyncing \"$firstFile\" to \"$2\""
#sync first folder to second folder
#direct output to dev/null
rsync -avh --info=progress2 --stats "$firstFile" "$2" &> /dev/null
echo -e "Done\e[0m"

tt
