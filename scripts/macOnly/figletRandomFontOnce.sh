#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul  3 12:41:20 EDT 2017
##### Purpose: bash script to display random figlet fonts
##### Notes:
#}}}***********************************************************

[[ "$(uname)" == Darwin ]] && {
    FIGLET_DIR="/usr/local/Cellar/figlet/2.2.5/share/figlet/fonts"
} || {
    FIGLET_DIR="/usr/share/figlet"
}

TEXT_TO_DISPLAY="$1"
FILTER="$2"

while read; do
    ary+=($REPLY)
done < <(find "$FIGLET_DIR" -iname "*.flf" 2>/dev/null)


rangePossibleIndices=${#ary[*]}

randIndex=$(($RANDOM % $rangePossibleIndices))
font=${ary[$randIndex]}

echo "$(date) random font is $font" >>"$LOGFILE"

if (($# == 0)); then
    cat | figlet -f "$font" | lolcat
else
    output="$(echo $TEXT_TO_DISPLAY | figlet -f $font)"

    [[ -n "$FILTER" ]] && echo "$output" | "$FILTER" || echo "$output"

fi
