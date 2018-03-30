#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 21:02:23 EDT 2017
#####   Purpose: bash script to get remote details from repo name
#####   Notes: 
#}}}***********************************************************

for directory; do
    if [[ -d "$directory" ]]; then
        cd "$directory" && {
            [[ -d .git ]] && {
                line="$(git remote -v 2>/dev/null)" && {
                    user="$(echo $line | awk -F'/' '{print $4}')"
                    repo="$(echo $line | awk -F'/' '{print $5}' | awk '{print $1}')"
                    echo "$user/${repo%%.git*}"
                }
        }
    }
fi
done
