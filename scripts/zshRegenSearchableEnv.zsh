#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Fri Oct  4 17:27:00 EDT 2019
##### Purpose: zsh script to get envv
##### Notes:
#}}}***********************************************************

() {
    emulate -L zsh
    setopt noglob
    local k v

    for k v in ${(kv)parameters}; do
        print -l "param $k"
    done > "$ZPWR_TEMPFILE2"

    for k v in ${(kv)aliases}; do
        print -l "alias $k"
    done >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)builtins}; do
        print -l "builtin $k"
    done >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)reswords}; do
        print -l "resword $k"
    done >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)commands}; do
        print -l "command $v"
    done >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)functions}; do
        print -l "func $k"
    done >> "$ZPWR_TEMPFILE2"

    sort -f -k 2 -u < "$ZPWR_TEMPFILE2" > "$ZPWR_ENV_KEY_FILE"

    for k v in ${(kv)parameters}; do
        print -l "export $k=${(P)k}"
    done > "$ZPWR_TEMPFILE2"


    #separators between each section
    print "======" >> "$ZPWR_TEMPFILE2"

    alias -L \
        >> "$ZPWR_TEMPFILE2"

    print "======" >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)builtins}; do
        type -a -- $k
    done >> "$ZPWR_TEMPFILE2"

    print "======" >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)reswords}; do
        type -a -- $reswords
    done >> "$ZPWR_TEMPFILE2"

    print "======" >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)commands}; do
        print -l -- $v
    done >> "$ZPWR_TEMPFILE2"

    print "======" >> "$ZPWR_TEMPFILE2"

    echo "start gen functions"
    for k v in ${(kv)functions}; do
        autoload +X -z -- $k
        type -a -- $k >> "$ZPWR_TEMPFILE2"
    done

    print "======" >> "$ZPWR_TEMPFILE2"

    typeset -f >> "$ZPWR_TEMPFILE2"

    print "======" >> "$ZPWR_TEMPFILE2"

    cp "$ZPWR_TEMPFILE2" "$ZPWR_ENV_VALUE_FILE"
}

