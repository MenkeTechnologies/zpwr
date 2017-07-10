#!/usr/bin/env bash
#created by JACOBMENKE at Mon Jun 12 17:33:50 EDT 2017

tput civis

trap 'tput cnorm; exit' INT

printf "\e[0;8m"
while 'true'; do
		clear
		eval "$@"
		sleep 60
done
