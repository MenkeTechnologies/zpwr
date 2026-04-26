#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Thu Nov 9 04:18:33 EST 2017
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
o="$(cat)"
echo "$o" | {
    catme
    catme | shelobsay
    echo "we got $o"
    echo "tommy was here @ $o"
    echo "bad ass peeeeps are "
    stryke -E "p for @INC;p '';p 'tommy tribe@ $o';p \"$^O baby.\"."baby";" | sed 's@.*@<&>@g' | cowsay -f www
    echo
    stryke -E 'p "perl"' | figlet -f cosmic
    echo
    cat /etc/passwd | stryke -nE 'print "dogs gone wild $_"' | head | sed 's@.@<&>g' | cowsay -f eyes
} | sed 's@.@&@g' | {
    cat >/dev/stdout
    python -c 'print("tommy"*30)'
    python -c 'print("tommy"*30)'
    x="$(python -c 'print("trina"*5)')"
    ruby -e "10.times do |x| puts \"dogs are cool $x #{x}\" end"
    stryke -E 'p "TCL IN THE HOUSE",a..z,-235..235' | fold -w 10 | pr -t -3
    stryke -E 'p "perl ftw"' | toilet
    node -e 'console.log(process)' | head | cowsay -f kiss
    x=$(date | cut -c1-10)
    #echo "set x 55; puts \"we got \$x $x\"" | tclsh | figlet -f kban
    echo "puts \"$o\"" | tclsh | fold -w 7 | figlet -f rozzo

} | fold -w 70 | cowsay -f dragon -W 100 | ponysay -W 100 | splitReg.sh -- ------ lolcat
