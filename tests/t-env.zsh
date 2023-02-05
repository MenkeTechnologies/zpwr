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

@test 'zpwrIsZsh fn returns 0' {
    run type zpwrIsZsh
    assert $state equals 0
}

@test 'bash source bad file' {
    run bash -c "source ${ZPWR_LIB}t || exit 2; zpwrIsZsh || exit 1"
    assert $state equals 2
}

@test 'bash zpwrIsZsh fn returns 1' {
    run bash -c "source $ZPWR_LIB"
    assert $state equals 0
    run bash -c "source $ZPWR_LIB || exit 2; zpwrIsZsh || exit 1"
    assert $state equals 1
}

@test 'zpwrIsZsh fn' {
    run type zpwrIsZsh
    assert $state equals 0
}

@test 'zpwrIsZsh returns 0' {
    run zpwrIsZsh
    assert $state equals 0
}

@test 'autoload env' {
    run zpwrPrettyPrintBox env
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

@test 'zpwr -V' {
    run zpwr -V
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'zpwr --version' {
    run zpwr --version
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'zpwr -h' {
    run zpwr --h &>/dev/null
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

@test 'ZPWR_AUTOLOAD' {
    run test -n "$ZPWR_AUTOLOAD"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD"
    assert $state equals 0
}


@test 'ZPWR_AUTO_LS_CD' {
    run test -n $ZPWR_AUTO_LS_CD
    assert $state equals 0
}

@test 'ZPWR_AUTO_RM_CD' {
    run test -n $ZPWR_AUTO_RM_CD
    assert $state equals 0
}

@test 'ZPWR_AUTO_SELECT' {
    run test -n $ZPWR_AUTO_SELECT
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_COMMON' {
    run test -n "$ZPWR_AUTOLOAD_COMMON"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_COMMON"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_COMPS' {
    run test -n "$ZPWR_AUTOLOAD_COMPS"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_COMPS"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_COMP_UTILS' {
    run test -n "$ZPWR_AUTOLOAD_COMP_UTILS"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_COMP_UTILS"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_DARWIN' {
    run test -n "$ZPWR_AUTOLOAD_DARWIN"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_DARWIN"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_FZF' {
    run test -n "$ZPWR_AUTOLOAD_FZF"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_FZF"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_LINUX' {
    run test -n "$ZPWR_AUTOLOAD_LINUX"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_LINUX"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_SYSTEMCTL' {
    run test -n "$ZPWR_AUTOLOAD_SYSTEMCTL"
    assert $state equals 0
    run test -d "$ZPWR_AUTOLOAD_SYSTEMCTL"
    assert $state equals 0
}

@test 'ZPWR_COLOR_BLUE' {
    run test -n $ZPWR_COLOR_BLUE
    assert $state equals 0
}

@test 'ZPWR_COLOR_RED' {

    run test -n "$ZPWR_COLOR_RED"
    assert $state equals 0
}

@test 'ZPWR_COLOR_RESET' {

    run test -n "$ZPWR_COLOR_RESET"
    assert $state equals 0
}

@test 'ZPWR_COLOR typo' {

    run test -n "$ZPWR_COLOR"
    assert $state equals 1
}

@test 'ZPWR_COLORIZER' {

    run test -n "$ZPWR_COLORIZER"
    assert $state equals 0
}

@test 'ZPWR_COLORS_SECTIONS' {

    run test -n "$ZPWR_COLORS_SECTIONS"
    assert $state equals 0
}

@test 'ZPWR_COLORS_VERBS' {

    run test -n "$ZPWR_COLORS_VERBS"
    assert $state equals 0
}

@test 'ZPWR_COLORS' {

    run test -n "$ZPWR_COLORS"
    assert $state equals 0
}

@test 'ZPWR_COLORSs typo' {

    run test -n "$ZPWR_COLORSs"
    assert $state equals 1
}

@test 'ZPWR_COMPLETION_DIR' {
    run test -n "$ZPWR_COMPLETION_DIR"
    assert $state equals 0
}

@test 'ZPWR_COMPETION_DIR typo' {
    run test -n "$ZPWR_COMPETION_DIR"
    assert $state equals 1
}

@test 'ZPWR_COMPYS_CACHE typo' {
    run test -n "$ZPWR_COMPYS_CACHE"
    assert $state equals 1 
}

@test 'ZPWR_COMPSYS_CACHE' {
    run test -n "$ZPWR_COMPSYS_CACHE"
    assert $state equals 0
}

@test 'ZPWR_COPY_CMD' {

    run test -n "$ZPWR_COPY_CMD"
    assert $state equals 0
}

@test 'ZPWR_COMPS' {

    run test -n "$ZPWR_COMPS"
    assert $state equals 0
    run test -d "$ZPWR_COMPS"
    assert $state equals 0
}

@test 'ZPWR_COMMIT_STYLE' {

    run test -n "$ZPWR_COMMIT_STYLE"
    assert $state equals 0
}

@test 'ZPWR_CORRECT' {

    run test -n "$ZPWR_CORRECT"
    assert $state equals 0
}

@test 'ZPWR_CORRECT_EXPAND' {

    run test -n "$ZPWR_CORRECT_EXPAND"
    assert $state equals 0
}

@test 'ZPWR_CROSS_OS_CMD' {

    run test -n "$ZPWR_CROSS_OS_CMD"
    assert $state equals 0
    run test -f "$ZPWR_CROSS_OS_CMD"
    assert $state equals 0
}

@test 'ZPWR_D' {

    run test -n "$ZPWR_D"
    assert $state equals 0
}

@test 'ZPWR_DEBUG' {

    run test -n "$ZPWR_DEBUG"
    assert $state equals 0
}

@test 'ZPWR_DESC_POST' {
    run test -n "$ZPWR_DESC_POST"
    assert $state equals 0
}

@test 'ZPWR_DESC_POST_COLOR' {
    run test -n "$ZPWR_DESC_POST_COLOR"
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE' {
    run test -n "$ZPWR_DESC_PRE"
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE_COLOR' {
    run test -n "$ZPWR_DESC_PRE_COLOR"
    assert $state equals 0
}

@test 'ZPWR_EMACS' {
    run test -n "$ZPWR_EMACS"
    assert $state equals 0
    run printf "$ZPWR_EMACS"
    assert "$output" contains emacs
}

@test 'ZPWR_EMACS_CLIENT' {
    run test -n "$ZPWR_EMACS_CLIENT"
    assert $state equals 0
    run printf "$ZPWR_EMACS_CLIENT"
    assert "$output" contains emacs
}

@test 'ZPWR_ENV' {
    run test -n "$ZPWR_ENV"
    assert $state equals 0
    run test -d "$ZPWR_ENV"
    assert $state equals 0
}

@test 'ZPWR_ENV_FILE' {

    run test -n "$ZPWR_ENV_FILE"
    assert $state equals 0
    run test -f "$ZPWR_ENV_FILE"
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

@test 'ZPWR_EXA_COMMAND' {
    run test -n "$ZPWR_EXA_COMMAND"
    assert $state equals 0
    run printf "$ZPWR_EXA_COMMAND"
    assert "$output" contains exa
}

@test 'ZPWR_EXA_EXTENDED' {
    run test -n "$ZPWR_EXA_EXTENDED"
    assert $state equals 0
    run printf "$ZPWR_EXA_EXTENDED"
    assert "$output" contains true
}

@test 'ZPWR_EXPAND_NATIVE' {

    run test -n "$ZPWR_EXPAND_NATIVE"
    assert $state equals 0
}

@test 'ZPWR_EXPAND' {

    run test -n "$ZPWR_EXPAND"
    assert $state equals 0
}

@test 'ZPWR_FULL_SUDO' {

    run test -n "$ZPWR_FULL_SUDO"
    assert $state equals 0
    run printf $ZPWR_FULL_SUDO
    assert $output contains sudo
}

@test 'ZPWR_FZF grep fzf' {

    run printf $ZPWR_FZF
    assert $output contains fzf
}

@test 'ZPWR_FZF_LOGO' {

    run test -n "$ZPWR_FZF_LOGO"
    assert $state equals 0
}

@test 'ZPWR_FZF_CLEARLIST' {

    run test -n "$ZPWR_FZF_CLEARLIST"
    assert $state equals 0
}

@test 'ZPWR_FZF_DIR' {

    run test -n "$ZPWR_FZF_DIR"
    assert $state equals 0
    run test -d "$ZPWR_FZF_DIR"
    assert $state equals 0
}

@test 'ZPWR_FOKED_DIR typo' {

    run test -n "$ZPWR_FOKED_DIR"
    assert $state equals 1
}

@test 'ZPWR_FORKED_DIR' {

    run test -n "$ZPWR_FORKED_DIR"
    assert $state equals 0
    run test -d "$ZPWR_FORKED_DIR"
    assert $state equals 0
}

@test 'ZPWR_GIT_COLOR_PREFIX' {
    run test -n "$ZPWR_GIT_COLOR_PREFIX"
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

@test 'ZPWR_GLOBAL_ALIAS_PREFIX' {
    run test -n "$ZPWR_GLOBAL_ALIAS_PREFIX"
    assert $state equals 0
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

@test 'ZPWR_INSTALL/zpwrInstall.sh' {

    run test -f "$ZPWR_INSTALL/zpwrInstall.sh"
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

@test 'ZPWR_LEARN' {
    run test -n "$ZPWR_LEARN"
    assert $state equals 0
}

@test 'ZPWR_LIB' {

    run test -n "$ZPWR_LIB"
    assert $state equals 0
    run test -f "$ZPWR_LIB"
    assert $state equals 0
}

@test 'ZPWR_LIB_INIT' {

    run test -n "$ZPWR_LIB_INIT"
    assert $state equals 0
    run test -f "$ZPWR_LIB_INIT"
    assert $state equals 0
}

@test 'ZPWR_LOCAL' {
    run test -n $ZPWR_LOCAL
    assert $state equals 0
    run test -d $ZPWR_LOCAL
    assert $state equals 0
}

@test 'ZPWR_LOCAL_ENV' {
    run test -n $ZPWR_LOCAL_ENV
    assert $state equals 0
}

@test 'ZPWR_LOCAL_TEMP' {
    run test -n $ZPWR_LOCAL_TEMP
    assert $state equals 0
    run test -d $ZPWR_LOCAL_TEMP
    assert $state equals 0
}

@test 'ZPWR_LOCK_FILE' {

    run test -n "$ZPWR_LOCK_FILE"
    assert $state equals 0
}

@test 'ZPWR_LOGFILE' {

    run test -n "$ZPWR_LOGFILE"
    assert $state equals 0
}
@test 'ZPWR_OPEN_CMD' {

    run test -n "$ZPWR_OPEN_CMD"
    assert $state equals 0
}

@test 'ZPWR_OS_TYPE' {
    run test -n "$ZPWR_OS_TYPE"
    assert $state equals 0
}

@test 'ZPWR_PASTE_CMD' {

    run test -n "$ZPWR_PASTE_CMD"
    assert $state equals 0
}

@test 'ZPWR_RE_ENV_FILE' {

    run test -n "$ZPWR_RE_ENV_FILE"
    assert $state equals 0
    run test -f "$ZPWR_RE_ENV_FILE"
    assert $state equals 0
}

@test 'ZPWR_REPO_NAME' {
    run test -n "$ZPWR_REPO_NAME"
    assert $state equals 0
    assert $ZPWR_REPO_NAME equals zpwr
}

@test 'ZPWR_SCRIPTS' {

    run test -n "$ZPWR_SCRIPTS"
    assert $state equals 0
    run test -d "$ZPWR_SCRIPTS"
    assert $state equals 0
}

@test 'ZPWR_SCRIPTS_MAC' {

    run test -n "$ZPWR_SCRIPTS_MAC"
    assert $state equals 0
    run test -d "$ZPWR_SCRIPTS_MAC"
    assert $state equals 0
}

@test 'ZPWR_TEST' {

    run test -n "$ZPWR_TEST"
    assert $state equals 0
    run test -d "$ZPWR_TEST"
    assert $state equals 0
}

@test 'ZPWR_TOKEN_PRE' {

    run test -n "$ZPWR_TOKEN_PRE"
    assert $state equals 0
}

@test 'ZPWR_TOKEN_POST' {

    run test -n "$ZPWR_TOKEN_POST"
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

@test 'ZPWR_TRACE' {

    run test -n "$ZPWR_TRACE"
    assert $state equals 0
}


@test 'ZPWR_VIM' {

    run test -n "$ZPWR_VIM"
    assert $state equals 0
}

@test '$ZPWR/.zpwr_root' {

    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'ZPWR_VERBS' {
    run test -n "${#ZPWR_VERBS}"
    assert $state equals 0
}

@test 'ZPWR_VERBS_FILE' {
    run test -n "$ZPWR_VERBS_FILE"
    assert $state equals 0
    run test -f "$ZPWR_VERBS_FILE"
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

@test 'ZPWR_VIM' {
    run test -n "$ZPWR_VIM"
    assert $state equals 0
    run printf "$ZPWR_VIM"
    assert $output contains vim
}

@test 'ZPWR_VIMRC' {
    run test -n "$ZPWR_VIMRC"
    assert $state equals 0
    run test -f "$ZPWR_VIMRC"
    assert $state equals 0
}

@test 'is a git dir message' 
    run zpwrIsGitDirMessage
    assert $state equals 0
    assert "$output" is_empty
}

@test 'is a git dir' {
    run zpwrIsGitDir
    assert $state equals 0
    assert "$output" is_empty
}

@test 'zpwrExists zpwrLogDebug' {
    run zpwrExists zpwrLogDebug
    assert $state equals 0
}

@test 'zpwrExists zpwrLogConsoleErr' {
    run zpwrExists zpwrLogConsoleErr
    assert $state equals 0
}

@test 'zpwrExists zpwrLogConsoleNotGit' {
    run zpwrExists zpwrLogConsoleNotGit
    assert $state equals 0
}

@test 'zpwrExists zpwrLog' {
    run zpwrExists zpwrLog
    assert $state equals 0
}

@test 'zpwrIsh typo' {
    run zpwrIsh
    assert $state equals 127
}

@test 'zpwrIsZsh' {
    run zpwrIsZsh
    assert $state equals 0
}

@test 'zpwrExists zpwrIsZsh' {
    run zpwrExists zpwrIsZsh
    assert $state equals 0
}

@test 'zpwrCommandExists zsh' {
    run zpwrCommandExists zsh
    assert $state equals 0
}

@test 'zpwrCommandExists ls' {
    run zpwrCommandExists ls
    assert $state equals 0
}

@test 'zpwrExists type' {
    run zpwrExists type
    assert $state equals 0
}

@test 'zpwrExists zpwrPrettyPrintBox' {
    run zpwrExists zpwrPrettyPrintBox
    assert $state equals 0
}

@test 'zpwrExists zpwrPrettyPrint' {
    run zpwrExists zpwrPrettyPrint
    assert $state equals 0
}

@test 'zpwrPrettyPrintBox' {
    run zpwrPrettyPrintBox test
    assert $state equals 0
}

@test 'zpwrPrettyPrintBox output' {
    out=myoutput
    run zpwrPrettyPrintBox $out
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains $out
}

@test 'zpwrPrettyPrintBox increment' {
    out=myoutput
    zpwrPrettyPrintBox $out
    run zpwrPrettyPrintBox $out
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

@test 'zpwrPrettyPrint' {
    run zpwrPrettyPrint test
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

@test 'zpwrExists zsh' {
    run zpwrExists zsh
    assert $? equals 0
}

@test 'zpwrExists zpwrIsGitDir' {
    run zpwrExists zpwrIsGitDir
    assert $? equals 0
}

@test 'zpwrIsGitDir works' {
    run zpwrIsGitDir
    assert $? equals 0
}

@test 'zpwrExists zpwrIsZsh' {
    run zpwrExists zpwrIsZsh
    assert $? equals 0
}

@test 'zpwrExists zpwrPrettyPrint' {
    run zpwrExists zpwrPrettyPrint
    assert $? equals 0
}

@test 'zpwrPrettyPrint works' {
    run zpwrPrettyPrint "hello world"
    assert $? equals 0
}

@test 'zpwrExists fn' {
    run type zpwrExists
    assert $? equals 0
}

@test 'zpwrLogInfo fn' {
    run type zpwrLogInfo
    assert $? equals 0
}

@test 'zpwrLog fn' {
    run type zpwrLog
    assert $? equals 0
}

@test 'zpwrPrettyPrint fn' {
    run type zpwrPrettyPrint
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
