#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Thu Nov  9 04:18:33 EST 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************
o="$(cat)"
echo "$o" | {
    catme
    catme | shelobsay 
    echo "we got $o"
    echo "tommy was here @ $o"
    echo "bad ass peeeeps are "
    perl -E "say foreach @INC;say;say 'tommy tribe@ $o';say \"$^O baby.\"."baby";" | sed 's/.*/<&>/g' | fold -w 50 | "$SCRIPTS/macOnly/randomCow.sh" 120
    echo
    perl -E 'say "perl"' | "$SCRIPTS/macOnly/figletRandomFontOnce.sh"
    echo
    cat /etc/passwd | perl -nE 'print "dogs gone wild $_"' | head | sed 's/./<&>/g'| cowsay -f eyes
} | sed 's/./&/g' | {
    cat > /dev/stdout
    python -c 'print("tommy"*30)'
    python -c 'print("tommy"*30)'
    x="$(python -c 'print("trina"*5)')"
    ruby -e "10.times do |x| puts \"dogs are cool $x #{x}\" end"
    perl -E 'say "TCL IN THE HOUSE",a..z,-235..235' | fold -w 10 | pr -t -3
    perl -E 'say "perl ftw"' | toilet 
    node -e 'console.log(process)'  | head | "$SCRIPTS/macOnly/randomCow.sh" 80
    x=$(date | cut -c1-10)
    #echo "set x 55; puts \"we got \$x $x\"" | tclsh | "$SCRIPTS/macOnly/figletRandomFontOnce.sh"
    echo "puts \"$o\"" | tclsh | fold -w 6 | "$SCRIPTS/macOnly/figletRandomFontOnce.sh"

} | fold -w 70 | "$SCRIPTS/macOnly/randomCow.sh" 100 |  ponysay -W 100 | splitReg.sh -- ------ lolcat

