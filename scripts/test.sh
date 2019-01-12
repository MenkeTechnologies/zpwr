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



if [[-z $WIZARD ]];then
    echo "tommy was her elol 2019-01-11"
fi


if [[ -z "$WIZARD" ]]; then
    ##################################
    #  asdfkaskdfjlaksdjflkjadkflsj  #
    ##################################

    echo "we are 2019-01-11 Jan 11, 2019 2019-01-11 13:33"

fi

if [[ x > 50 ]]; then
    echo "wer cool"
elif [[ x > 10 ]]; then
    echo "asdfadf"
else
    ####
    # adsfjajdsfj #
    ####

    echo "the dtae is 2019-01-11"
fi

echo one line to give the program's name and a brief description
Copyright 2019 yourname

echo one l
