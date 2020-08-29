#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Thu Nov 15 10:17:18 EST 2018
##### Purpose: zsh script to generate missing comps
##### Notes: source this file
#}}}***********************************************************
0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if ! source "${0:h}/init.sh"; then
    echo "could not source 0/init.sh '${0:h}/init.sh'"
fi

comp_dir="comp_dir"

exists help2comp.py || {
    echo "we need a zsh completion generator..." >&2
    return 1
}
test ! -d "$comp_dir" && command mkdir -p "$comp_dir"

for command abs in ${(kv)commands}; do
    if [[ -z $_comps[$command] ]];then
       prettyPrintBox $command | lolcat
       $abs --help < /dev/null |& help2comp.py $command > "$comp_dir"/_$command &
       sleep 0.25
       echo "killing $abs at $!"
       sudo kill -9 $!
       if [[ ! -s "$comp_dir/_$command" ]]; then
            $abs -h < /dev/null |& help2comp.py $command > "$comp_dir"/_$command &
            sleep 0.25
            echo "killing $abs at $!"
            sudo kill -9 $!
            if [[ ! -s "$comp_dir/_$command" ]]; then
                command rm "$comp_dir/_$command"
            fi
       fi
   else
       echo
       echo "_____completion for $command exists_____"
       echo
    fi

done
