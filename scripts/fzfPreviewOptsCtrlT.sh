#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes allowed
#}}}***********************************************************

source "$SCRIPTS/fzfPreviewOptsCommon.sh"
isZsh && ps='$pipestatus[1]' || ps='${PIPESTATUS[0]}'

cat<<EOF
        if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
            "$SCRIPTS/clearList.sh" -- \$file | fold -80 | head -500; 
            test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
            xxd \$file | $COLORIZER_FZF_YAML
        else
            $casestr
        fi
    fi
else
    "$SCRIPTS/clearList.sh" -- \$file | fold -80 | head -500
fi

EOF
