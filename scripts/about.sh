#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:01:32 EDT 2017
##### Purpose: bash script to document
##### Notes:
#}}}***********************************************************
allRemotes(){
    while read; do
        printf "\x1b[1;34m$REPLY"
        printf "\x1b[0m\x0a"
        git remote show "$REPLY"
    done < <(git remote)
}
banner(){
if [[ -d "$ZPWR" ]]; then
    if cd "$ZPWR";then
        version="$(git describe --tags $(git rev-list --tags --max-count=1))"
        fetch="$(git remote -v | head -n 1)"
        push="$(git remote -v | tail -n 1)"
    fi
fi

printf "\x1b[32m"
echo
cat<<\EOF
              :::::::::::::::::: :::       :::::::::::: 
                  :+: :+:    :+::+:       :+::+:    :+: 
                +:+  +:+    +:++:+       +:++:+    +:+  
              +#+   +#++:++#+ +#+  +:+  +#++#++:++#:    
            +#+    +#+       +#+ +#+#+ +#++#+    +#+    
          #+#     #+#        #+#+# #+#+# #+#    #+#     
        ############         ###   ###  ###    ###      
EOF
echo

printf "\x1b[0m"
printf "\x1b[35m"
printf "\x1b[1m"
cat<<EOF
                                $version
    
EOF

printf "\x1b[0m"
printf "\x1b[34m"
cat<<\EOF
                    
                           eeeee  e    e
                           8   8  8    8
                           8eee8e 8eeee8
                           8   8   88
                           8eee8   88
EOF

printf "\x1b[0m"
printf "\x1b[33m"
echo
cat<<\EOF
    ___ ___    ___  ____   __  _    ___  ______    ___     __  __ __  ____
    |   T   T  /  _]|    \ |  l/ ]  /  _]|      T  /  _]   /  ]|  T  T|    \
    | _   _ | /  [_ |  _  Y|  ' /  /  [_ |      | /  [_   /  / |  l  ||  _  Y
    |  \_/  |Y    _]|  |  ||    \ Y    _]l_j  l_jY    _] /  /  |  _  ||  |  |
    |   |   ||   [_ |  |  ||     Y|   [_   |  |  |   [_ /   \_ |  |  ||  |  |
    |   |   ||     T|  |  ||  .  ||     T  |  |  |     T\     ||  |  ||  |  |
    l___j___jl_____jl__j__jl__j\_jl_____j  l__j  l_____j \____jl__j__jl__j__j

    ___   _       ___    ____  ____    ___  _____
    /   \ | T     /   \  /    Tl    j  /  _]/ ___/
    Y     Y| |    Y     YY   __j |  T  /  [_(   \_
    |  O  || l___ |  O  ||  T  | |  | Y    _]\__  T
    |     ||     T|     ||  l_ | |  | |   [_ /  \ |
    l     !|     |l     !|     | j  l |     T\    |
    \___/ l_____j \___/ l___,_j|____jl_____j \___j
EOF
echo
printf "\x1b[0m"
printf "\x1b[35m"
printf "\x1b[1m"
cat<<EOF
   $fetch
   $push
    
EOF

printf "\x1b[0m"
printf "\x1b[0m"
printf "\x1b[35m"
printf "\x1b[4m"

#if [[ -d "$ZPWR" ]]; then
    #if cd "$ZPWR";then
    #{
        #allRemotes
    #} | perl -pe 's@(.*)@\x1b[31m$1@' 

    #fi
#fi

printf "\x1b[0m"
}



banner
