#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep 19 16:36:12 EDT 2019
##### Purpose: bash script to
##### Notes:
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

test -z $ZPWR_EXA_COMMAND && ZPWR_EXA_COMMAND="command exa --git -il -F -H --extended --color-scale -g -a --colour=always"

if [[ "$1" == "--" ]]; then
    shift
fi

clearList "$@"

