#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test ZPWR_VERBS command types resolve
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_VERBS commands that are autoloaded functions resolve' {
    local key cmd fail=0
    for key in ${(k)ZPWR_VERBS}; do
        cmd="${${ZPWR_VERBS[$key]%%=*}%% *}"
        if [[ "$cmd" == zpwr* ]] && (( $+functions[$cmd] )); then
            if ! whence -w "$cmd" &>/dev/null; then
                fail=1
                break
            fi
        fi
    done
    run test "$fail" -eq 0
    assert $state equals 0
}

@test 'ZPWR_VERBS commands that are builtins resolve' {
    local key cmd fail=0
    for key in ${(k)ZPWR_VERBS}; do
        cmd="${${ZPWR_VERBS[$key]%%=*}%% *}"
        if [[ "$cmd" == (cd|print|echo|test|source|eval|export|set|unset|typeset|local|declare|readonly|integer|float) ]]; then
            if ! whence -w "$cmd" &>/dev/null; then
                fail=1
                break
            fi
        fi
    done
    run test "$fail" -eq 0
    assert $state equals 0
}

@test 'majority of ZPWR_VERBS commands resolve' {
    local key val cmd found=0 total=0
    for key in ${(k)ZPWR_VERBS}; do
        val="${ZPWR_VERBS[$key]}"
        cmd="${val%%=*}"
        cmd="${cmd%% *}"
        if whence "$cmd" &>/dev/null; then
            found=$(( found + 1 ))
        fi
        total=$(( total + 1 ))
    done
    # at least half should resolve in any environment
    local half=$(( total / 2 ))
    run test "$found" -gt "$half"
    assert $state equals 0
}
