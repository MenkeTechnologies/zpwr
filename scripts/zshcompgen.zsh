#!/usr/bin/env zsh
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Thu Nov 15 10:17:18 EST 2018
##### Purpose: zsh script to generate missing comps
##### Notes: source this file
#}}}***********************************************************

comp_dir="comp_dir"

exists(){
    type "$1" >/dev/null 2>&1 #alternative is command -v
}

boxesPrint(){
    width=70
    len=${#1}
    spacerlen=2
    boxesChar='/'
    spaceChar=' '
    sidelen=$(($width - $len - $spacerlen * 2))
    #ceil
    sidelen=$(( ($sidelen + 2 -1) / 2))
    sidelen2=$sidelen
    if (( $len % 2 == 1 )); then
        ((--sidelen2 ))
    fi

    perl -E "say '"$boxesChar"' x $width; print '"$boxesChar"' x $sidelen; print '"$spaceChar"' x $spacerlen"
    printf "$1"
    perl -E "print '"$spaceChar"' x $spacerlen; say '"$boxesChar"' x $sidelen2; say '"$boxesChar"' x $width"
    echo
}

exists help2comp.py || {
    echo "we need a zsh completion generator..." >&2
    return 1
}
test ! -d "$comp_dir" && command mkdir -p "$comp_dir"

for command abs in ${(kv)commands}; do
    if (( ${+_comps[$command]} == 0 ));then
       boxesPrint $command | lolcat
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
