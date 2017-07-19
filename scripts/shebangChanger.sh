#!/usr/bin/env bash
#     /\  \         /\__\         /\  \         /|  |         /\__\    
#    |::\  \       /:/ _/_        \:\  \       |:|  |        /:/ _/_   
#    |:|:\  \     /:/ /\__\        \:\  \      |:|  |       /:/ /\__\  
#  __|:|\:\  \   /:/ /:/ _/_   _____\:\  \   __|:|  |      /:/ /:/ _/_ 
# /::::|_\:\__\ /:/_/:/ /\__\ /::::::::\__\ /\ |:|__|____ /:/_/:/ /\__\
# \:\~~\  \/__/ \:\/:/ /:/  / \:\~~\~~\/__/ \:\/:::::/__/ \:\/:/ /:/  /
#  \:\  \        \::/_/:/  /   \:\  \        \::/~~/~      \::/_/:/  / 
#   \:\  \        \:\/:/  /     \:\  \        \:\~~\        \:\/:/  /  
#    \:\__\        \::/  /       \:\__\        \:\__\        \::/  /   
#     \/__/         \/__/         \/__/         \/__/         \/__/    
#                    ___           ___           ___     
#                   /\__\         /\__\         /\  \    
#      ___         /:/ _/_       /:/  /         \:\  \   
#     /\__\       /:/ /\__\     /:/  /           \:\  \  
#    /:/  /      /:/ /:/ _/_   /:/  /  ___   ___ /::\  \ 
#   /:/__/      /:/_/:/ /\__\ /:/__/  /\__\ /\  /:/\:\__\
#  /::\  \      \:\/:/ /:/  / \:\  \ /:/  / \:\/:/  \/__/
# /:/\:\  \      \::/_/:/  /   \:\  /:/  /   \::/__/     
# \/__\:\  \      \:\/:/  /     \:\/:/  /     \:\  \     
#      \:\__\      \::/  /       \::/  /       \:\__\    
#       \/__/       \/__/         \/__/         \/__/    

#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Thu Jul  6 23:16:50 EDT 2017
#####   Purpose: bash script to change the shebang line
#####   Notes: 
#}}}***********************************************************

usage(){
    #here doc for printing multiline
    cat <<\endofmessage
    usage:
    script $1=executableProgram $*=files
endofmessage

    printf "\e[0m"
}
if (( $# < 2 )); then
    usage >&2
    exit 1
fi

executableProgram=$1
path="#!/usr/bin/env $executableProgram"
shift


addContents(){
    printf "\e[1;4m Adding shebang : $path to $file\e[0m\n"
    echo "$path" > "$file"
    echo "$tail" >> "$file"
    chmod u+x "$file"
}

for file; do
    lineCounter=1
    found=false
    while read line; do
        let lineCounter++

        if [[ $line =~ ^\#! ]]; then
            found=true
            break;	
        fi

        if [[ $line =~ ^\# ]]; then
            found=false
            break;	
        fi

        if [[ $line =~ ^[a-zA-Z]+ ]]; then
            found=false
            break;	
        fi
    done < $file

    if [[ $found == true ]]; then
        #doesn't work on rpi
        #tail=$(tail +$lineCounter "$file")
        tail=$(sed -n "$lineCounter,$"p "$file")
        addContents
    fi

    if [[ $found == false ]]; then
        tail=$(cat "$file")
        addContents
    fi

done
