#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Jun  3 22:47:49 EDT 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'autoload env' {
    run prettyPrintBox env
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'zpwr about verb script' {
    run zpwr about
    assert $state equals 0

    assert "$output" is_not_empty
    assert "$output" contains fetch
    assert "$output" contains push
}

@test 'zpwr banner verb script no output' {
    run zpwr banner &>/dev/null
    assert $state equals 0

    assert "$output" is_not_empty
    assert "$output" contains fetch
    assert "$output" contains push
}

@test 'zpwr junk verb 1' {
    run zpwr junk &>/dev/null
    assert $state equals 1
}

@test 'zpwr junk verb 2' {
    run zpwr 111 &>/dev/null
    assert $state equals 1
}

@test 'ZPWR' {

    test -n $ZPWR
    assert $? equals 0
    test -d $ZPWR
    assert $? equals 0
}

@test '$ZPWR/.zpwr_root' {

    test -f "$ZPWR/.zpwr_root"
    assert $? equals 0
}

@test 'ZPWR_ENV_FILE' {

    test -n $ZPWR_ENV_FILE
    assert $? equals 0
    test -f $ZPWR_ENV_FILE
    assert $? equals 0
}

@test 'ZPWR_RE_ENV_FILE' {

    test -n $ZPWR_RE_ENV_FILE
    assert $? equals 0
    test -f $ZPWR_RE_ENV_FILE
    assert $? equals 0
}

@test 'ZPWR_EXPAND' {

    test -n $ZPWR_EXPAND
    assert $? equals 0
}

@test 'ZPWR_EXPAND_NATIVE' {

    test -n $ZPWR_EXPAND_NATIVE
    assert $? equals 0
}

@test 'ZPWR_LIB_INIT' {

    test -n $ZPWR_LIB_INIT
    assert $? equals 0
    test -f $ZPWR_LIB_INIT
    assert $? equals 0
}

@test 'ZPWR_LIB' {

    test -n $ZPWR_LIB
    assert $? equals 0
    test -d $ZPWR_LIB
    assert $? equals 0
}

@test 'ZPWR_FZF' {

    run echo $ZPWR_FZF | grep fzf
    assert $state equals 0
}

@test 'ZPWR_FZF' {

    test -n $ZPWR_FZF
    assert $? equals 0
}

@test 'ZPWR_VERBS' {
    test -n "$ZPWR_VERBS"
    assert $? equals 0
}


@test 'ZPWR_COLOR_BLUE' {
    test -n $ZPWR_COLOR_BLUE
    assert $? equals 0
}

@test 'ZPWR_LOCAL' {
    test -n $ZPWR_LOCAL
    assert $? equals 0
    test -d $ZPWR_LOCAL
    assert $? equals 0
}

@test 'ZPWR_AUTOLOAD_COMMON' {
    test -n $ZPWR_AUTOLOAD_COMMON
    assert $? equals 0
    test -d $ZPWR_AUTOLOAD_COMMON
    assert $? equals 0
}

@test 'ZPWR_AUTOLOAD' {
    test -n $ZPWR_AUTOLOAD
    assert $? equals 0
    test -d $ZPWR_AUTOLOAD
    assert $? equals 0
}

@test 'ZPWR_AUTOLOAD_DARWIN' {
    test -n $ZPWR_AUTOLOAD_DARWIN
    assert $? equals 0
    test -d $ZPWR_AUTOLOAD_DARWIN
    assert $? equals 0
}

@test 'ZPWR_AUTOLOAD_LINUX' {
    test -n $ZPWR_AUTOLOAD_LINUX
    assert $? equals 0
    test -d $ZPWR_AUTOLOAD_LINUX
    assert $? equals 0
}

@test 'ZPWR_COMPYS_CACHE' {
    test -n $ZPWR_COMPYS_CACHE
    assert $? equals 0
}

@test 'ZPWR_OS_TYPE' {
    test -n $ZPWR_OS_TYPE
    assert $? equals 0
}

@test 'ZPWR_GITHUB_ACCOUNT' {
    test -n $ZPWR_GITHUB_ACCOUNT
    assert $? equals 0
}

@test 'ZPWR_REPO_NAME' {
    test -n $ZPWR_REPO_NAME
    assert $? equals 0
    assert $ZPWR_REPO_NAME equals zpwr
}

@test 'ZPWR_COMPETION_DIR' {
    test -n $ZPWR_COMPETION_DIR
    assert $? equals 0
}
@test 'ZPWR_GITHUB_ACCOUNT' {
    test -n $ZPWR_GITHUB_ACCOUNT
    assert $? equals 0
}

@test 'ZPWR_GITHUB_URL' {
    test -n $ZPWR_GITHUB_URL
    assert $? equals 0
}

@test 'is a git dir message' 
    run isGitDirMessage
    assert $state equals 0
    assert "$output" is_empty
}

@test 'is a git dir' {
    run isGitDir
    assert $state equals 0
    assert "$output" is_empty
}

@test 'exists loggDebug' {
    run exists loggDebug
    assert $state equals 0
}

@test 'exists loggErr' {
    run exists loggErr
    assert $state equals 0
}

@test 'exists loggNotGit' {
    run exists loggNotGit
    assert $state equals 0
}

@test 'exists logg' {
    run exists logg
    assert $state equals 0
}

@test 'isZsh' {
    run isZsh
    assert $state equals 0
}

@test 'exists isZsh' {
    run exists isZsh
    assert $state equals 0
}

@test 'commandExists' {
    run commandExists ls
    assert $state equals 0
}

@test 'exists' {
    run exists prettyPrint
    assert $state equals 0
}

@test 'prettyPrintBox' {
    run prettyPrintBox test
    assert $state equals 0
}

@test 'prettyPrintBox output' {
    out=myoutput
    run prettyPrintBox $out
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains $out
}

@test 'prettyPrintBox increment' {
    out=myoutput
    prettyPrintBox $out
    run prettyPrintBox $out
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains "2>"
}

@test 'r' {
    origPwd=$(pwd)
    parent=${$(pwd):h}
    r &> /dev/null
    assert $parent same_as $(pwd)
    f &> /dev/null
    assert $origPwd same_as $(pwd)
}

@test 'f' {
    origPwd=$(pwd)
    parent=${$(pwd):h}
    f .. &> /dev/null
    assert $parent same_as $(pwd)
    f  &> /dev/null
    assert $origPwd same_as $(pwd)
}

@test 'prettyPrint' {
    run prettyPrint test
    assert $state equals 0
}

@test 'www no args' {
    run www
    assert $state equals 1
}

@test 'ww no args' {
    run ww
    assert $state equals 1
}

@test 'fff no args' {
    run fff
    assert $state equals 1
}

@test 'ff no args' {
    run ff
    assert $state equals 1
}

@test 'gcl' {
    run gcl
    assert $state equals 1
}

@test 'isZsh fn' {
    run type isZsh
    assert $? equals 0
}

@test 'isZsh returns 0' {
    run isZsh
    assert $? equals 0
}

@test 'exists zsh' {
    run exists zsh
    assert $? equals 0
}

@test 'exists isGitDir' {
    run exists isGitDir
    assert $? equals 0
}

@test 'isGitDir works' {
    run isGitDir
    assert $? equals 0
}

@test 'exists isZsh' {
    run exists isZsh
    assert $? equals 0
}

@test 'exists prettyPrint' {
    run exists prettyPrint
    assert $? equals 0
}

@test 'prettyPrint works' {
    run prettyPrint "hello world"
    assert $? equals 0
}

@test 'exists fn' {
    run type exists
    assert $? equals 0
}

@test 'logg fn' {
    run type logg
    assert $? equals 0
}

@test 'prettyPrint fn' {
    run type prettyPrint
    assert $? equals 0
}

@test 'tac' {
    run tac $TEST_FILE
    assert $? equals 0

    assert "$output" is_not_empty
}

@test 'tac content' {
    run tac $TEST_FILE
    assert $? equals 0

    firstline=$(cat $TEST_FILE | head -n 1)
    out=$(echo $output | tail -n 1)

    assert "$firstline" equals "$out"
}

@test 'tac content' {
    run tac $TEST_FILE
    assert $? equals 0

    lastline=$(cat $TEST_FILE | tail -n 1)
    out=$(echo $output | head -n 1)

    assert "$lastline" equals "$out"
}
