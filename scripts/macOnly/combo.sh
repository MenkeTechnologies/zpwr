#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Thu Nov  9 04:18:33 EST 2017
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
o="$(cat)"
randomFigletFontScript="$SCRIPTS/macOnly/figletRandomFontOnce.sh"
randomCowsayCowScript="$SCRIPTS/macOnly/randomCow.sh"

echo "$o" | {
    catme
    catme | shelobsay
    echo "we got $o"
    echo "tommy was here @ $o"
    echo "bad peeeeps are "
    perl -E "say foreach @INC;say;say 'tommy tribe@ $o';say \"$^O baby.\"."baby";" | sed 's@.*@<&>@g' | fold -w 50 | "$randomCowsayCowScript" 120
    echo
    perl -E 'say "perl"' | "$randomFigletFontScript"
    echo
    cat /etc/passwd | perl -nE 'print "dogs gone wild $_"' | head | sed 's@.@<&>@g'| fold -w 50 | "$randomCowsayCowScript" 100
} | sed 's@.@&@g' | {
    cat > /dev/stdout
    echo "SCRIPTING" | "$randomFigletFontScript"
    {
        python -c 'print("tommy"*30)'
        python -c 'print("tommy"*30)'
    } | shelobsay
    x="$(python -c 'print("trina"*5)')"
    ruby -e "10.times do |x| puts \"dogs are cool $x #{x}\" end" | yosay
    perl -E 'say "TCL IN THE HOUSE",a..z,-235..235' | fold -w 10 | pr -t -3
    perl -E 'say "perl ftw"' | toilet
    node -e 'console.log(process)' | head | "$randomCowsayCowScript" 80
    x=$(date | cut -c1-10)
    #echo "set x 55; puts \"we got \$x $x\"" | tclsh | "$randomFigletFontScript"
    echo "puts \"$o\"" | tclsh | fold -w 7 | "$randomFigletFontScript"

} | fold -w 70 | "$randomCowsayCowScript" 100 | ponysay -W 100 | splitReg.sh -- ------ lolcat

