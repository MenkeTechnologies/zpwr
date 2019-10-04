#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Oct  4 16:27:42 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

cmd="$1"
log=/Users/wizard/updaterlog.txt
cat<<EOF
line=\$(echo {} | perl -lane "do{\\\$_=~s@^\\\s+|\\\s+\\\$@@g;print}");
echo "we got _\${line}_" >> $log
if test -z \$line; then
    man $1 | col -b | nl -b a
else
    man $1 | col -b | nl -b a | ag --color -C 20 --literal -- "\$line"
fi
EOF
