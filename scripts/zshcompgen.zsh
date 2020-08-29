#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Thu Nov 15 10:17:18 EST 2018
##### Purpose: zsh script to generate missing comps
##### Notes: source this file
#}}}***********************************************************
source="${BASH_SOURCE[0]}"
while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
  dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
  source="$(readlink "$source")"
  [[ $source != /* ]] && source="$dir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

if ! source "$dir/init.sh"; then
    echo "could not source dir '$dir/init.sh'"
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
