#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Thu Jan 10 15:51:59 EST 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

OS="$(uname -s)"
case "$OS" in
    Linux*)     open_cmd=xdg-open;;
    Darwin*)    open_cmd=open;;
    CYGWIN*)    open_cmd=cygstart;;
    MINGW*)     open_cmd=start;;
    *)          echo "Your OS: $OS is unsupported..." >&2 && return 2;;
esac

[[ ! -d .git ]] && echo "Not a git directory" >&2 && return 1

name=$(git config user.name)
if ! [[ $(git remote -v) ]]; then
    $machine https://github.com/$name?tab=repositories
fi

argValues="$*";
command git remote -v | command grep "$(echo ${argValues// /\\|})" | command grep 'heroku' | command grep fetch | command grep -o -E ':.*' | \
    cut -c 19- | command awk '{print $1}' | command sed 's@.git$@@' | \
    command xargs -I {} "$open_cmd" https://dashboard.heroku.com/apps/{} https://{}.herokuapp.com

{
    command git remote -v | command grep "$(echo ${argValues// /\\|})" | command grep '@'  | command grep -o -E '@.*' | cut -c 2-
    command git remote -v | command grep "$(echo ${argValues// /\\|})" | command grep '//' | command grep -o -E ':.*' | cut -c 4- | command grep -v 'heroku'
} | command grep fetch | command sed 's@:/\\@@g' | command awk '{print $1}' | sed 's@.git$@@' | command xargs -I {} "$open_cmd" https://www.{}



if [[ -z $WIZARD ]];then
    echo "tommy was her elol 2019-01-11"
fi


if [[ -z "$WIZARD" ]]; then
    ##################################
    #  asdfkaskdfjlaksdjflkjadkflsj  #
    ##################################

    echo "we are 2019-01-11 Jan 11, 2019 2019-01-11 13:33"

fi

x=1

if (( x > 50 )); then
    echo "wer cool"
elif (( x > 10 )); then
    echo "asdfadf"
else
    ####
    # adsfjajdsfj #
    ####

    echo "the dtae is 2019-01-11"
fi

if (( x > 5000 )); then
    echo "we are here inside the house and why not 2019-01-15 was Jan 15, 2019 lol Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
fi

case x > 50 in
    x > 100)
            
    ;;
    x > 200)

    ;;
    x > 300)

            ;;
            *)

            Esac


 
