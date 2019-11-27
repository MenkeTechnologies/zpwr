#!/usr/bin/env zsh
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Fri Oct  4 17:27:00 EDT 2019
##### Purpose: bash script to show screenfetch
##### Notes:
#}}}***********************************************************
#

{
    for k v in ${(kv)parameters}; do
        print -l "param $k"
    done

    for k v in ${(kv)aliases}; do
        print -l "alias $k"
    done

    for k v in ${(kv)builtins}; do
        print -l "builtin $k"
    done

    for k v in ${(kv)reswords}; do
        print -l "resword $k"
    done

    for k v in ${(kv)commands}; do
        print -l "command $v"
    done

    for k v in ${(kv)functions}; do
        print -l "func $k"
    done

} > "${1}Key.txt"

{

    for k v in ${(kv)parameters}; do
        print -l "export $k=${(P)k}"
    done

    alias -L

    for k v in ${(kv)builtins}; do
        type -a -- $k
    done

    for k v in ${(kv)reswords}; do
        type -a -- $reswords
    done

    for k v in ${(kv)commands}; do
        print -l -- $v
    done

    for k v in ${(kv)functions}; do
        autoload +X -z -- $k
        type -a -- $k
    done

    declare -f


} > "${1}Value.txt"
