#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Feb  6 15:33:41 EST 2021
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if [[ -z "$EMAIL" ]]; then
    echo "\$EMAIL must be set" >&2
    exit 1
fi

function memCheckLoop() {

    local used

    while true; do
        used=$(free | perl -anE 'say $F[2] if $. == 2')
        echo "Used memory: $used"
        if (( used > "$2" )); then
            echo "mail: MEMORY_THRESHOLD exceeded: $used"
            free -h

            mutt -s "MEMORY_THRESHOLD exceeded: $used" "$1" < <(free -h; top -w 500 -c -o %MEM -bn1; )
            "builtin" command sudo -E reboot
        fi
        sleep 10
    done

}

if [[ -z "$1" ]]; then
    MEMORY_THRESHOLD=30000000
else
    MEMORY_THRESHOLD="$1"
fi

echo "start memCheckLoop with EMAIL => '$EMAIL' MEMORY_THRESHOLD => '$MEMORY_THRESHOLD'"
memCheckLoop "$EMAIL" "$MEMORY_THRESHOLD"
