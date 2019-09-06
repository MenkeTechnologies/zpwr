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
isZsh && ps='$pipestatus[1]' || ps='${PIPESTATUS[0]}'

cat<<EOF
    $COLORIZER_FZF_FILE 2>/dev/null;
    fi
else
    stat -- \$file | fold -80 | head -500; 
fi

EOF
