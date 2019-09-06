#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: 
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

source "$SCRIPTS/fzfPreviewOptsCommon.sh"
cat<<EOF
    $COLORIZER_FZF_FILE 2>/dev/null;
    fi
else
    if test -e {}; then
        stat -- {} | fold -80 | head -500;
    else
        source ~/.shell_aliases_functions.sh;
        {
            if print -r -- {} | command egrep "\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d"; then
                whois -- {} | command egrep -q "No (match|whois)" && dig {} || whois -- {};
            else
                cat ~/.common_aliases | grep -- {}= || set | command grep -a -- {} | command grep -v -- ZSH_EXEC || alias | command grep -a -- {} || { whois -- {} | command egrep -q "No (match|whois)" && dig {} || whois -- {}; }
            fi
        } | cowsay | ponysay
    fi
fi
EOF

