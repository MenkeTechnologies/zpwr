#!/usr/bin/env bash
#created by JACOBMENKE at Mon Jun 12 17:33:50 EDT 2017

tput civis

trap 'tput cnorm; exit' INT
while [[ true ]]; do
    clear
    screenfetch 2>/dev/null
    sleep 1000
done
