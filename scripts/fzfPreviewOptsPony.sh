#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: 
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes allowed
#}}}***********************************************************

source "$SCRIPTS/fzfPreviewOptsCommon.sh"

cat<<EOF
        if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
            "$SCRIPTS/clearList.sh" -- \$file | fold -80 | head -500;
            test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
            xxd \$file | $COLORIZER_FZF_YAML
        else
            extension="\${\$file##*.}"
            if [[ -z "\$extension" ]]; then
                $COLORIZER_FZF_FILE -l ASP 2>/dev/null;
            else
                $COLORIZER_FZF_FILE 2>/dev/null;
            fi

        fi
    fi
else
    if test -e {}; then
        "$SCRIPTS/clearList.sh" -- {} | fold -80 | head -500;
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
