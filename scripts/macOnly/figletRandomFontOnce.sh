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

for file in $(find "$FIGLET_DIR" -iname "*.flf"); do
    ary+=( $file )
done

rangePossibleIndices=${#ary[*]}

randIndex=$(($RANDOM % $rangePossibleIndices))
font=${ary[$randIndex]}

echo "$(date) random font is $font" >> "$LOGFILE"

if (( $# == 0 )); then
    cat | figlet -f "$font" | lolcat
else
    output="$(echo $TEXT_TO_DISPLAY | figlet -f $font)"

    [[ -n "$FILTER" ]] && echo "$output" | "$FILTER" || echo "$output"

fi

