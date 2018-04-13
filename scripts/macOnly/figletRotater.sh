#!/usr/bin/env bash
FIGLET_DIR="/usr/local/Cellar/figlet/2.2.5/share/figlet/fonts"
TEXT_TO_DISPLAY="$1"
FILTER="$2"

for file in $(find "$FIGLET_DIR" -iname "*.flf"); do
    [[ -z "$FILTER" ]] && figlet -f "$file" \
        < <(echo "$TEXT_TO_DISPLAY") \
        || figlet -f "$file" < <(echo "$TEXT_TO_DISPLAY") \
        | "$FILTER"
    sleep 1
done

