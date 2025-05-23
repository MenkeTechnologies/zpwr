#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes allowed
#}}}***********************************************************

source "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"

cat<<EOF
        if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
            $ZPWR_FZF_CLEARLIST
            test -x \$file && objdump -d \$file | $FZF_COLORIZER_YAML
            xxd \$file | $FZF_COLORIZER_YAML
        else
            $casestr
        fi
    fi
else
    if test -e {}; then
        $ZPWR_FZF_CLEARLIST
    else
        source $ZPWR_ALIAS_FILE
        {
            if print -r -- {} | command grep -E "\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d"; then
                whois -- {} | command grep -E -q "No (match|whois)" && dig {} || whois -- {};
            else
                cat $ZPWR_LOCAL/.common_aliases | grep -- {}= || set | command grep -a -- {} | command grep -v -- ZSH_EXEC || alias | command grep -a -- {} || { whois -- {} | command grep -E -q "No (match|whois)" && dig {} || whois -- {}; }
            fi
        } | cowsay | ponysay
    fi
fi
EOF
