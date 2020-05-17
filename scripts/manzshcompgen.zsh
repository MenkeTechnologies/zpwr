#!/usr/bin/env zsh
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Thu Nov 15 10:17:18 EST 2018
##### Purpose: zsh script to generate missing comps
##### Notes: source this file
#}}}***********************************************************

if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR_SCRIPTS" && export ZPWR_SCRIPTS="$HOME/.zpwr/scripts"
    source "$ZPWR_SCRIPTS/lib.sh" || {
        echo "cannot access lib.sh" >&2
        exit 1
    }
fi

comp_dir="comp_dir"

exists mantozshcomp.py || {
    echo "we need a man to zsh completion generator..." >&2
    return 1
}
test ! -d "$comp_dir" && command mkdir -p "$comp_dir"

for command abs in ${(kv)commands}; do
    if [[ -z $_comps[$command] ]];then
       prettyPrintBox $command | lolcat
       echo mantozshcomp.py -v 1 -s $(man -w $command)
       mantozshcomp.py -s $(man -w $command) > "$comp_dir"/_$command
        if [[ ! -s "$comp_dir/_$command" ]]; then
            command rm "$comp_dir/_$command" 2>/dev/null
        fi
        if [[ -n "$comp_dir" ]]; then
            command rm "$comp_dir/"*(L1) &>/dev/null
        fi
   else
       echo
       echo "_____completion for $command exists_____"
       echo
       
    fi

done
