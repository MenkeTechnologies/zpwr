#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all ZPWR env vars are defined
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_AUTO_ATTACH is defined' {
    run test "${+ZPWR_AUTO_ATTACH}" = 1
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE is defined' {
    run test "${+ZPWR_AUTO_COMPLETE}" = 1
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE_DELAY is defined' {
    run test "${+ZPWR_AUTO_COMPLETE_DELAY}" = 1
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_RM is defined' {
    run test "${+ZPWR_AUTO_LS_RM}" = 1
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_CD is defined' {
    run test "${+ZPWR_AUTO_LS_CD}" = 1
    assert $state equals 0
}

@test 'ZPWR_AUTO_SELECT is defined' {
    run test "${+ZPWR_AUTO_SELECT}" = 1
    assert $state equals 0
}

@test 'ZPWR_BANNER_CLEARLIST is defined' {
    run test "${+ZPWR_BANNER_CLEARLIST}" = 1
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_DARWIN is defined' {
    run test "${+ZPWR_BANNER_DESKTOP_DARWIN}" = 1
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_LINUX is defined' {
    run test "${+ZPWR_BANNER_DESKTOP_LINUX}" = 1
    assert $state equals 0
}

@test 'ZPWR_BANNER_TYPE is defined' {
    run test "${+ZPWR_BANNER_TYPE}" = 1
    assert $state equals 0
}

@test 'ZPWR_BAT_THEME is defined' {
    run test "${+ZPWR_BAT_THEME}" = 1
    assert $state equals 0
}

@test 'ZPWR_CHAR_LOGO is defined' {
    run test "${+ZPWR_CHAR_LOGO}" = 1
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE is defined' {
    run test "${+ZPWR_DESC_PRE}" = 1
    assert $state equals 0
}

@test 'ZPWR_DESC_POST is defined' {
    run test "${+ZPWR_DESC_POST}" = 1
    assert $state equals 0
}

@test 'ZPWR_DESC_TEXT_COLOR is defined' {
    run test "${+ZPWR_DESC_TEXT_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE_COLOR is defined' {
    run test "${+ZPWR_DESC_PRE_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_DESC_POST_COLOR is defined' {
    run test "${+ZPWR_DESC_POST_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_COLORS is defined' {
    run test "${+ZPWR_COLORS}" = 1
    assert $state equals 0
}

@test 'ZPWR_COLORS_SECTIONS is defined' {
    run test "${+ZPWR_COLORS_SECTIONS}" = 1
    assert $state equals 0
}

@test 'ZPWR_COLORS_VERBS is defined' {
    run test "${+ZPWR_COLORS_VERBS}" = 1
    assert $state equals 0
}

@test 'ZPWR_COLOR_BLUE is defined' {
    run test "${+ZPWR_COLOR_BLUE}" = 1
    assert $state equals 0
}

@test 'ZPWR_COLOR_RED is defined' {
    run test "${+ZPWR_COLOR_RED}" = 1
    assert $state equals 0
}

@test 'ZPWR_COLOR_RESET is defined' {
    run test "${+ZPWR_COLOR_RESET}" = 1
    assert $state equals 0
}

@test 'ZPWR_COMMIT_STYLE is defined' {
    run test "${+ZPWR_COMMIT_STYLE}" = 1
    assert $state equals 0
}

@test 'ZPWR_NAMED_COLORS is defined' {
    run test "${+ZPWR_NAMED_COLORS}" = 1
    assert $state equals 0
}

@test 'ZPWR_COMMON_ZSTYLE_OPTS is defined' {
    run test "${+ZPWR_COMMON_ZSTYLE_OPTS}" = 1
    assert $state equals 0
}

@test 'ZPWR_SUDO_CMD is defined' {
    run test "${+ZPWR_SUDO_CMD}" = 1
    assert $state equals 0
}

@test 'ZPWR_FULL_SUDO is defined' {
    run test "${+ZPWR_FULL_SUDO}" = 1
    assert $state equals 0
}

@test 'ZPWR_COMPLETION_DIR is defined' {
    run test "${+ZPWR_COMPLETION_DIR}" = 1
    assert $state equals 0
}

@test 'ZPWR_CORRECT is defined' {
    run test "${+ZPWR_CORRECT}" = 1
    assert $state equals 0
}

@test 'ZPWR_CORRECT_EXPAND is defined' {
    run test "${+ZPWR_CORRECT_EXPAND}" = 1
    assert $state equals 0
}

@test 'ZPWR_DEBUG is defined' {
    run test "${+ZPWR_DEBUG}" = 1
    assert $state equals 0
}

@test 'ZPWR_DEFAULT_OMZ_THEME is defined' {
    run test "${+ZPWR_DEFAULT_OMZ_THEME}" = 1
    assert $state equals 0
}

@test 'ZPWR_DELIMITER_CHAR is defined' {
    run test "${+ZPWR_DELIMITER_CHAR}" = 1
    assert $state equals 0
}

@test 'ZPWR_VIM is defined' {
    run test "${+ZPWR_VIM}" = 1
    assert $state equals 0
}

@test 'ZPWR_EDITOR_TO_VIM is defined' {
    run test "${+ZPWR_EDITOR_TO_VIM}" = 1
    assert $state equals 0
}

@test 'ZPWR_EMACS is defined' {
    run test "${+ZPWR_EMACS}" = 1
    assert $state equals 0
}

@test 'ZPWR_EMACS_CLIENT is defined' {
    run test "${+ZPWR_EMACS_CLIENT}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXA_EXTENDED is defined' {
    run test "${+ZPWR_EXA_EXTENDED}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXPAND is defined' {
    run test "${+ZPWR_EXPAND}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXPAND_SECOND_POSITION is defined' {
    run test "${+ZPWR_EXPAND_SECOND_POSITION}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXPAND_NATIVE is defined' {
    run test "${+ZPWR_EXPAND_NATIVE}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC is defined' {
    run test "${+ZPWR_EXPAND_PRE_EXEC}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_NATIVE is defined' {
    run test "${+ZPWR_EXPAND_PRE_EXEC_NATIVE}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION is defined' {
    run test "${+ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_DOUBLE is defined' {
    run test "${+ZPWR_EXPAND_QUOTE_DOUBLE}" = 1
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_SINGLE is defined' {
    run test "${+ZPWR_EXPAND_QUOTE_SINGLE}" = 1
    assert $state equals 0
}

@test 'ZPWR_FZF is defined' {
    run test "${+ZPWR_FZF}" = 1
    assert $state equals 0
}

@test 'ZPWR_FD is defined' {
    run test "${+ZPWR_FD}" = 1
    assert $state equals 0
}

@test 'ZPWR_FZF_LOGO is defined' {
    run test "${+ZPWR_FZF_LOGO}" = 1
    assert $state equals 0
}

@test 'ZPWR_GITHUB_ACCOUNT is defined' {
    run test "${+ZPWR_GITHUB_ACCOUNT}" = 1
    assert $state equals 0
}

@test 'ZPWR_GLOBAL_ALIAS_PREFIX is defined' {
    run test "${+ZPWR_GLOBAL_ALIAS_PREFIX}" = 1
    assert $state equals 0
}

@test 'ZPWR_INTERACTIVE_MENU_SELECT is defined' {
    run test "${+ZPWR_INTERACTIVE_MENU_SELECT}" = 1
    assert $state equals 0
}

@test 'ZPWR_KEYTIMEOUT is defined' {
    run test "${+ZPWR_KEYTIMEOUT}" = 1
    assert $state equals 0
}

@test 'ZPWR_LEARN is defined' {
    run test "${+ZPWR_LEARN}" = 1
    assert $state equals 0
}

@test 'ZPWR_LOG_UNDER_COLOR is defined' {
    run test "${+ZPWR_LOG_UNDER_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_LOG_QUOTE_COLOR is defined' {
    run test "${+ZPWR_LOG_QUOTE_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_LOG_DATE_COLOR is defined' {
    run test "${+ZPWR_LOG_DATE_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_LOG_MSG_COLOR is defined' {
    run test "${+ZPWR_LOG_MSG_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_MAP_C_V_VIM_NORMAL is defined' {
    run test "${+ZPWR_MAP_C_V_VIM_NORMAL}" = 1
    assert $state equals 0
}

@test 'ZPWR_MARKER_COLOR is defined' {
    run test "${+ZPWR_MARKER_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_PYGMENTIZE_COLOR is defined' {
    run test "${+ZPWR_PYGMENTIZE_COLOR}" = 1
    assert $state equals 0
}

@test 'ZPWR_COLORIZER is defined' {
    run test "${+ZPWR_COLORIZER}" = 1
    assert $state equals 0
}

@test 'ZPWR_OPTS is defined' {
    run test "${+ZPWR_OPTS}" = 1
    assert $state equals 0
}

@test 'ZPWR_OS_TYPE is defined' {
    run test "${+ZPWR_OS_TYPE}" = 1
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_MANAGER is defined' {
    run test "${+ZPWR_PLUGIN_MANAGER}" = 1
    assert $state equals 0
}

@test 'ZPWR_PROFILING is defined' {
    run test "${+ZPWR_PROFILING}" = 1
    assert $state equals 0
}

@test 'ZPWR_PROMPT is defined' {
    run test "${+ZPWR_PROMPT}" = 1
    assert $state equals 0
}

@test 'ZPWR_PSSH_TIMEOUT is defined' {
    run test "${+ZPWR_PSSH_TIMEOUT}" = 1
    assert $state equals 0
}

@test 'ZPWR_GIT_COLOR_PREFIX is defined' {
    run test "${+ZPWR_GIT_COLOR_PREFIX}" = 1
    assert $state equals 0
}

@test 'ZPWR_QUOTE_START_CHAR is defined' {
    run test "${+ZPWR_QUOTE_START_CHAR}" = 1
    assert $state equals 0
}

@test 'ZPWR_QUOTE_END_CHAR is defined' {
    run test "${+ZPWR_QUOTE_END_CHAR}" = 1
    assert $state equals 0
}

@test 'ZPWR_REPO_NAME is defined' {
    run test "${+ZPWR_REPO_NAME}" = 1
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_FULL is defined' {
    run test "${+ZPWR_SEND_KEYS_FULL}" = 1
    assert $state equals 0
}

@test 'ZPWR_LOOK_TIME is defined' {
    run test "${+ZPWR_LOOK_TIME}" = 1
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_PANE is defined' {
    run test "${+ZPWR_SEND_KEYS_PANE}" = 1
    assert $state equals 0
}

@test 'ZPWR_SURROUND is defined' {
    run test "${+ZPWR_SURROUND}" = 1
    assert $state equals 0
}

@test 'ZPWR_TABSTOP is defined' {
    run test "${+ZPWR_TABSTOP}" = 1
    assert $state equals 0
}

@test 'ZPWR_TABSTOP_ALIASES is defined' {
    run test "${+ZPWR_TABSTOP_ALIASES}" = 1
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_MAC is defined' {
    run test "${+ZPWR_TMUX_PREFIX_MAC}" = 1
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_LINUX is defined' {
    run test "${+ZPWR_TMUX_PREFIX_LINUX}" = 1
    assert $state equals 0
}

@test 'ZPWR_TMUX_HISTORY_LIMIT is defined' {
    run test "${+ZPWR_TMUX_HISTORY_LIMIT}" = 1
    assert $state equals 0
}

@test 'ZPWR_TRACE is defined' {
    run test "${+ZPWR_TRACE}" = 1
    assert $state equals 0
}

@test 'ZPWR_VIM_TEMPLATES is defined' {
    run test "${+ZPWR_VIM_TEMPLATES}" = 1
    assert $state equals 0
}

@test 'ZPWR_BINDKEY_VI is defined' {
    run test "${+ZPWR_BINDKEY_VI}" = 1
    assert $state equals 0
}

@test 'ZPWR_ZINIT_COMPINIT_DELAY is defined' {
    run test "${+ZPWR_ZINIT_COMPINIT_DELAY}" = 1
    assert $state equals 0
}

@test 'ZPWR_ZDHARMA is defined' {
    run test "${+ZPWR_ZDHARMA}" = 1
    assert $state equals 0
}

@test 'ZPWR_THUMBS_REGEX is defined' {
    run test "${+ZPWR_THUMBS_REGEX}" = 1
    assert $state equals 0
}

@test 'ZPWR_TTY is defined' {
    run test "${+ZPWR_TTY}" = 1
    assert $state equals 0
}
