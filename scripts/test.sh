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
Linux*) open_cmd=xdg-open ;;
Darwin*) open_cmd=open ;;
MINGW*) open_cmd=start ;;
*) echo "Your OS: $OS is unsupported..." >&2 && return 2 ;;
esac

if [[ -z $WIZARD ]]; then

    echo "tommy was her elol 2019-01-11"
fi

if [[ -z "$WIZARD" ]]; then
    ##################################
    #  asdfkaskdfjlaksdjflkjadkflsj  #
    ##################################

    echo "we are 2019-01-11 Jan 11, 2019 2019-01-11 13:33"
    echo "the date is 2019-11-03 02:09"

fi

echo cool
echo cool
echo cool
echo cool

x=1

if ((x > 50)); then
    echo "wer cool"
elif ((x > 10)); then
    echo "asdfadf"
else
    ####
    # adsfjajdsfj #
    ####
    echo "the dtae is 2019-01-11"
fi

echo i am cool ok

if ((x > 5000)); then
    echo "we are here inside the house and why not 2019-01-15 was Jan 15, 2019 lol Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
fi

