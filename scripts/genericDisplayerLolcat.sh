#!/usr/bin/env bash
#created by JACOBMENKE at Mon Jun 12 17:33:50 EDT 2017

tput civis

#printf "\e[0;8m"
trap 'tput cnorm; exit' INT
while 'true'; do
		clear
		eval "$@ | lolcat"
		sleep 60
done
