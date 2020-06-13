#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Jun 13 17:36:30 EDT 2020
##### Purpose: zsh script to delete comp file
##### Notes:
#}}}***********************************************************

echo deleting git modified _comps dups

while read f; do
    cmd="$(echo $f | cut -c2-)"
    if [[ -n $_comps[$cmd] ]]; then
        echo "remove $f"
        rm "$f"
    else
        echo "keeping $f"
    fi
done < <(git status -u | command grep _ | perl -pe 's@\s@@')
