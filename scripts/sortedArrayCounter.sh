#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:26:32 EDT 2017
##### Purpose: bash script to see sorted commands in PATH
##### Notes:
#}}}***********************************************************
oldifs="$IFS"

IFS=:

sum=0

arr=()

for i in $PATH; do
    ls $i &>/dev/null
    if [[ $? == 0 ]]; then
        let "sum += $(ls $i | wc -w)"

        IFS="$oldifs"
        for i in $(ls $i); do
            arr+=($i)
        done

    fi

done

IFS=$'\n'
sorted=($(sort -f <<<"${arr[*]}"))
sorted=($(uniq <<<"${sorted[*]}"))

echo -e "\e[37;44mThe number of commands is $sum"

echo -e "Do you want to see the commands?\c"
echo
read -n1

if [[ "$REPLY" == "y" ]]; then
    for i in ${sorted[*]}; do
        echo $i
    done | less
fi
echo
echo -e "Done.\e[0m"
