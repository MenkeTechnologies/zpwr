#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

#source "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"

ref=$1

cat<<EOF
    sha=\$(echo {} | cut -d" " -f1)
    printf "\x1b[1;4;37;44m%s\x1b[0m\n" "git diff --stat -p --color=always $1 \$sha"
    git diff --stat -p --color=always $1 \$sha
EOF
