#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Jun 13 17:34:28 EDT 2020
##### Purpose: bash script to print random figet fonts
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
    if [[ -z "$FILTER" ]]; then
        figlet -f "$file" < <(echo "$TEXT_TO_DISPLAY")
    else
        figlet -f "$file" < <(echo "$TEXT_TO_DISPLAY") | "$FILTER"
    fi
    echo "$file"

    sleep 1
done
