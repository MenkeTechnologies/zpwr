#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

source "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"

cat<<EOF
        if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
            $ZPWR_FZF_CLEARLIST
            test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
            xxd \$file | $COLORIZER_FZF_YAML
        else
            $casestr
        fi
    fi
else
    if test -e {}; then
        $ZPWR_FZF_CLEARLIST
    else
        source $ZPWR/.shell_aliases_functions.sh;
        {
            if print -r -- {} | command egrep "\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d"; then
                whois -- {} | command egrep -q "No (match|whois)" && dig {} || whois -- {};
            else
                cat $ZPWR_LOCAL/.common_aliases | grep -- {}= || set | command grep -a -- {} | command grep -v -- ZSH_EXEC || alias | command grep -a -- {} || { whois -- {} | command egrep -q "No (match|whois)" && dig {} || whois -- {}; }
            }
    fi

fi

EOF
