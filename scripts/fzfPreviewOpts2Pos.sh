#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes allowed
#}}}***********************************************************

source "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh"
isZsh && ps='$pipestatus[1]' || ps='${PIPESTATUS[0]}'

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
    $ZPWR_FZF_CLEARLIST
fi

EOF
