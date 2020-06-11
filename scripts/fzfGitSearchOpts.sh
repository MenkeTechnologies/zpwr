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

cat<<EOF
    printf "\x1b[1;4;37;44m%s\x1b[0m\n" "git -C {} status -s; git diff --stat -p --color=always HEAD";

if cd {}; then
    if ! git diff-index --quiet HEAD -- 2>/dev/null;then
        git status -s
        git diff --stat -p --color=always HEAD 2>/dev/null
    elif [[ ! -z "\$(git ls-files --exclude-standard --others 2>/dev/null)" ]];then
        git status -s
        git diff --stat -p --color=always HEAD 2>/dev/null
    else
        git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --all --color=always
    fi
fi

EOF
