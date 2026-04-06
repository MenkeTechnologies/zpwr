#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to validate ZPWR_VERBS structure and values
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_VERBS has entries' {
    run test $#ZPWR_VERBS -gt 0
    assert $state equals 0
}

@test 'ZPWR_VERBS has at least 100 entries' {
    run test $#ZPWR_VERBS -ge 100
    assert $state equals 0
}

@test 'every ZPWR_VERBS value contains =' {
    local key fail=0
    for key in ${(k)ZPWR_VERBS}; do
        if [[ "${ZPWR_VERBS[$key]}" != *=* ]]; then
            fail=1
            break
        fi
    done
    run test "$fail" -eq 0
    assert $state equals 0
}

@test 'every ZPWR_VERBS value has non-empty command before =' {
    local key cmd fail=0
    for key in ${(k)ZPWR_VERBS}; do
        cmd="${ZPWR_VERBS[$key]%%=*}"
        if [[ -z "$cmd" ]]; then
            fail=1
            break
        fi
    done
    run test "$fail" -eq 0
    assert $state equals 0
}

@test 'every ZPWR_VERBS value has non-empty description after =' {
    local key desc fail=0
    for key in ${(k)ZPWR_VERBS}; do
        desc="${ZPWR_VERBS[$key]#*=}"
        if [[ -z "$desc" ]]; then
            fail=1
            break
        fi
    done
    run test "$fail" -eq 0
    assert $state equals 0
}

@test 'every ZPWR_VERBS key is alphanumeric' {
    local key fail=0
    for key in ${(k)ZPWR_VERBS}; do
        if [[ "$key" != [a-zA-Z0-9]## ]]; then
            fail=1
            break
        fi
    done
    run test "$fail" -eq 0
    assert $state equals 0
}

@test 'no ZPWR_VERBS key is empty' {
    local key fail=0
    for key in ${(k)ZPWR_VERBS}; do
        if [[ -z "$key" ]]; then
            fail=1
            break
        fi
    done
    run test "$fail" -eq 0
    assert $state equals 0
}

@test 'no duplicate ZPWR_VERBS keys' {
    local keys=("${(@k)ZPWR_VERBS}")
    local unique_keys=("${(@u)keys}")
    run test "${#keys}" -eq "${#unique_keys}"
    assert $state equals 0
}

@test 'no ZPWR_VERBS command contains unbalanced quotes' {
    local key cmd fail=0
    for key in ${(k)ZPWR_VERBS}; do
        cmd="${ZPWR_VERBS[$key]%%=*}"
        local singles="${cmd//[^\']/}"
        local doubles="${cmd//[^\"]/}"
        if (( ${#singles} % 2 != 0 )) || (( ${#doubles} % 2 != 0 )); then
            fail=1
            break
        fi
    done
    run test "$fail" -eq 0
    assert $state equals 0
}
