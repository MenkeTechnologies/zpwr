#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:14:20 EDT 2017
##### Purpose: bash script to list all comamnds in PATH
##### Notes:
#}}}***********************************************************

#initialize variables
sum=0

arr=()
#internal field seperator is colon so for loop will split on colon
IFS=:

#loop through PATh
for path in $PATH; do

	#use while read loop with process substitution < <() to add
	#each command in each path to array
	#as IFS=: and for loop depends on IFS
	while read command; do
		arr+=("$command")
	done < <(ls -c1 $path)

done

#escape sequences are for white text on blue background
#print the size of the array
echo -e "\e[37;44mThe number of commands is ${#arr[@]}"
echo -e "Do you want to see the commands?\c"
echo
#read 1 character
read -n1

if [[ "$REPLY" == "y" ]]; then
	for i in ${arr[*]}; do
	echo -e "$i"
#sort the array (-f ignore case) and get rid of duplicates and use less pager
done | sort -f | uniq | less
fi
#newline
echo
#stop colorization with \e[0m
echo -e "Done.\e[0m"
