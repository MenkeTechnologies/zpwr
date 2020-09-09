#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Thu Nov 15 10:17:18 EST 2018
##### Purpose: zsh script to generate missing comps
##### Notes: source this file
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    dir="${0:A}"

    while [[ ! -f "$dir/.zpwr_root" ]]; do
        dir="${dir:h}"
        if [[ "$dir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$dir/scripts/init.sh" "$dir"; then
        echo "Could not source dir '$dir/scripts/init.sh'."
        exit 1
    fi
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
