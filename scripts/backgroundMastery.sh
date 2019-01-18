#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Wed Nov 1 21:16:06 EDT 2017
##### Purpose: bash script to launch background sripts as quickly as possible
##### Notes:
#}}}***********************************************************

trap 'kill $s1_pid $s2_pid $s3_pid $s4_pid \
    $s5_pid $s6_pid $s8_pid $s10_pid' INT HUP

bash S1 &
s1_pid="$!"
bash S2 &
s2_pid="$!"

{
bash S4
#once s4 is done, s4 echoed to temp file
echo s4 >> temp."`whoami`"
} &
s4_pid="$!"

{
bash S5
#once s5 is done, s5 echoed to temp file
echo s5 >> temp."`whoami`"
} &
s5_pid="$!"

{
    while true; do
        #if s4 and s5 echoed to file then we can
        #run s10
        if [[ $(wc -l temp."$(whoami)" \
            | tr -d ' ') == 2 ]]; then
            bash S10 &
            wait "$!"
            bash S11 &
            bash S12 &
            break
        fi
    done
} &
s10_pid="$!"

{
bash S8
wait "$!"
bash s9
} &
s8_pid="$!"

#block for s1 and s2
wait $s1_pid $s2_pid
bash S3 &
s3_pid="$!"

#second block
wait $s3_pid $s4_pid $s5_pid
bash S6 &
s6_pid="$!"

