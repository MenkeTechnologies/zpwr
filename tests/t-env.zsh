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

@test 'zpwr -- banner verb script no output' {
    run zpwr -- banner &>/dev/null
    assert $state equals 0

    assert "$output" is_not_empty
    assert "$output" contains fetch
    assert "$output" contains push
}

@test 'zpwr junk verb 1' {
    run zpwr junk &>/dev/null
    assert $state equals 1
}

@test 'zpwr -- junk verb 1' {
    run zpwr -- junk &>/dev/null
    assert $state equals 1
}

@test 'zpwr --version' {
    run zpwr --version
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'zpwr --help' {
    run zpwr --help &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'zpwr --junk' {
    run zpwr --junk
    assert $state equals 1
}

@test 'zpwr junk verb 2' {
    run zpwr 111 &>/dev/null
    assert $state equals 1
}

@test 'ZPWR' {
    run test -n "$ZPWR"
    assert $state equals 0
    run test -d "$ZPWR"
    assert $state equals 0
}

@test 'ZPWR_ENV' {
    run test -n "$ZPWR_ENV"
    assert $state equals 0
    run test -d "$ZPWR_ENV"
    assert $state equals 0
}

@test 'ZPWR_ENV/.zpwr_env.sh' {

    run test -f "$ZPWR_ENV/.zpwr_env.sh"
    assert $state equals 0
}

@test 'ZPWR_ENV/.zpwr_env.sh not dir' {
    run test -d "$ZPWR_ENV/.zpwr_env.sh"
    assert $state equals 1
}

@test 'ZPWR_ENV/.zpwr_re_env.sh' {

    run test -f "$ZPWR_ENV/.zpwr_re_env.sh"
    assert $state equals 0
}

@test 'ZPWR_ENV/.zpwr_re_env.sh not dir' {
    run test -d "$ZPWR_ENV/.zpwr_re_env.sh"
    assert $state equals 1
}

@test 'ZPWR_INSTALL/zpwr.yml' {

    run test -f "$ZPWR_INSTALL/zpwr.yml"
    assert $state equals 0
}

@test 'ZPWR_INSTALL/.gitconfig' {

    run test -f "$ZPWR_INSTALL/.gitconfig"
    assert $state equals 0
}

@test 'ZPWR_INSTALL/.zshrc' {

    run test -f "$ZPWR_INSTALL/.zshrc"
    assert $state equals 0
}

@test 'ZPWR_INSTALL/install.sh' {

    run test -f "$ZPWR_INSTALL/install.sh"
    assert $state equals 0
}

@test 'ZPWR_INSTALL junk' {

    run test -d "$ZPWR_INSTALLd"
    assert $state equals 1
}

@test 'ZPWR_INSTALL' {

    run test -d "$ZPWR_INSTALL"
    assert $state equals 0
}

@test 'ZPWR_TMUX' {

    run test -n "$ZPWR_TMUX"
    assert $state equals 0
    run test -d "$ZPWR_TMUX"
    assert $state equals 0
}

@test 'ZPWR_TMUX_LOCAL' {

    run test -n "$ZPWR_TMUX_LOCAL"
    assert $state equals 0
    run test -d "$ZPWR_TMUX_LOCAL"
    assert $state equals 0
}

@test 'ZPWR_TEST' {

    run test -n "$ZPWR_TEST"
    assert $state equals 0
    run test -d "$ZPWR_TEST"
    assert $state equals 0
}

@test 'ZPWR_SCRIPTS' {

    run test -n "$ZPWR_SCRIPTS"
    assert $state equals 0
    run test -d "$ZPWR_SCRIPTS"
    assert $state equals 0
}

@test '$ZPWR/.zpwr_root' {

    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'ZPWR_ENV_FILE' {

    run test -n "$ZPWR_ENV_FILE"
    assert $state equals 0
    run test -f "$ZPWR_ENV_FILE"
    assert $state equals 0
}

@test 'ZPWR_RE_ENV_FILE' {

    run test -n "$ZPWR_RE_ENV_FILE"
    assert $state equals 0
    run test -f "$ZPWR_RE_ENV_FILE"
    assert $state equals 0
}

@test 'ZPWR_EXPAND' {

    run test -n "$ZPWR_EXPAND"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_NATIVE' {

    run test -n "$ZPWR_EXPAND_NATIVE"
    assert $state equals 0
}

@test 'ZPWR_LIB_INIT' {

    run test -n "$ZPWR_LIB_INIT"
    assert $state equals 0
    run test -f "$ZPWR_LIB_INIT"
    assert $state equals 0
}

@test 'ZPWR_LIB' {

    run test -n "$ZPWR_LIB"
    assert $state equals 0
    run test -f "$ZPWR_LIB"
    assert $state equals 0
}

@test 'ZPWR_COMPS' {

    run test -n "$ZPWR_COMPS"
    assert $state equals 0
    run test -d "$ZPWR_COMPS"
    assert $state equals 0
}

@test 'ZPWR_FZF grep fzf' {

    run echo $ZPWR_FZF
    assert $output contains fzf
}

@test 'ZPWR_FZF' {

    run test -n "$ZPWR_FZF"
    assert $state equals 0
}

@test 'ZPWR_VERBS' {
    run test -n "${#ZPWR_VERBS}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cd]' {
run test -n "${(qqq)ZPWR_VERBS[cd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tests]' {
run test -n "${(qqq)ZPWR_VERBS[tests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS counts' {
    run echo "${#ZPWR_VERBS}"
    assert $output is_greater_than 200
}

@test 'ZPWR_COLOR_BLUE' {
    run test -n $ZPWR_COLOR_BLUE
    assert $state equals 0
}

@test 'ZPWR_LOCAL' {
    run test -n $ZPWR_LOCAL
    assert $state equals 0
    run test -d $ZPWR_LOCAL
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_COMMON' {
    run test -n "$ZPWR_AUTOLOAD_COMMON"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_COMMON"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD' {
    run test -n "$ZPWR_AUTOLOAD"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_DARWIN' {
    run test -n "$ZPWR_AUTOLOAD_DARWIN"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_DARWIN"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_LINUX' {
    run test -n "$ZPWR_AUTOLOAD_LINUX"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_LINUX"
    assert $state equals 0
}

@test 'ZPWR_COMPYS_CACHE' {
    run test -z "$ZPWR_COMPYS_CACHE"
    assert $state equals 0
}

@test 'ZPWR_COMPSYS_CACHE' {
    run test -n "$ZPWR_COMPSYS_CACHE"
    assert $state equals 0
}

@test 'ZPWR_OS_TYPE' {
    run test -n "$ZPWR_OS_TYPE"
    assert $state equals 0
}

@test 'ZPWR_GITHUB_ACCOUNT' {
    run test -n "$ZPWR_GITHUB_ACCOUNT"
    assert $state equals 0
}

@test 'ZPWR_REPO_NAME' {
    run test -n "$ZPWR_REPO_NAME"
    assert $state equals 0
    assert $ZPWR_REPO_NAME equals zpwr
}

@test 'ZPWR_COMPLETION_DIR' {
    run test -n "$ZPWR_COMPLETION_DIR"
    assert $state equals 0
}

@test 'ZPWR_COMPETION_DIR' {
    run test -z "$ZPWR_COMPETION_DIR"
    assert $state equals 0
}

@test 'ZPWR_GITHUB_ACCOUNT' {
    run test -n "$ZPWR_GITHUB_ACCOUNT"
    assert $state equals 0
}

@test 'ZPWR_GITHUB_URL' {
    run test -n "$ZPWR_GITHUB_URL"
    assert $state equals 0
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

@test 'exists zpwrLoggDebug' {
    run exists zpwrLoggDebug
    assert $state equals 0
}

@test 'exists zpwrLoggErr' {
    run exists zpwrLoggErr
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

@test 'commandExists zsh' {
    run commandExists zsh
    assert $state equals 0
}

@test 'commandExists ls' {
    run commandExists ls
    assert $state equals 0
}

@test 'exists type' {
    run exists type
    assert $state equals 0
}

@test 'exists prettyPrintBox' {
    run exists prettyPrintBox
    assert $state equals 0
}

@test 'exists prettyPrint' {
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
