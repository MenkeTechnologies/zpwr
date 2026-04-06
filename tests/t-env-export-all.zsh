#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all ZPWR env vars are exported
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_AUTO_ATTACH is exported' {
    local tflags="${(t)ZPWR_AUTO_ATTACH}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE is exported' {
    local tflags="${(t)ZPWR_AUTO_COMPLETE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE_DELAY is exported' {
    local tflags="${(t)ZPWR_AUTO_COMPLETE_DELAY}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_RM is exported' {
    local tflags="${(t)ZPWR_AUTO_LS_RM}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_CD is exported' {
    local tflags="${(t)ZPWR_AUTO_LS_CD}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_SELECT is exported' {
    local tflags="${(t)ZPWR_AUTO_SELECT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_BANNER_CLEARLIST is exported' {
    local tflags="${(t)ZPWR_BANNER_CLEARLIST}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_DARWIN is exported' {
    local tflags="${(t)ZPWR_BANNER_DESKTOP_DARWIN}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_LINUX is exported' {
    local tflags="${(t)ZPWR_BANNER_DESKTOP_LINUX}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_BANNER_TYPE is exported' {
    local tflags="${(t)ZPWR_BANNER_TYPE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_BAT_THEME is exported' {
    local tflags="${(t)ZPWR_BAT_THEME}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_CHAR_LOGO is exported' {
    local tflags="${(t)ZPWR_CHAR_LOGO}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE is exported' {
    local tflags="${(t)ZPWR_DESC_PRE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_DESC_POST is exported' {
    local tflags="${(t)ZPWR_DESC_POST}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_DESC_TEXT_COLOR is exported' {
    local tflags="${(t)ZPWR_DESC_TEXT_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE_COLOR is exported' {
    local tflags="${(t)ZPWR_DESC_PRE_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_DESC_POST_COLOR is exported' {
    local tflags="${(t)ZPWR_DESC_POST_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COLORS is exported' {
    local tflags="${(t)ZPWR_COLORS}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COLORS_SECTIONS is exported' {
    local tflags="${(t)ZPWR_COLORS_SECTIONS}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COLORS_VERBS is exported' {
    local tflags="${(t)ZPWR_COLORS_VERBS}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COLOR_BLUE is exported' {
    local tflags="${(t)ZPWR_COLOR_BLUE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COLOR_RED is exported' {
    local tflags="${(t)ZPWR_COLOR_RED}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COLOR_RESET is exported' {
    local tflags="${(t)ZPWR_COLOR_RESET}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COMMIT_STYLE is exported' {
    local tflags="${(t)ZPWR_COMMIT_STYLE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_NAMED_COLORS is exported' {
    local tflags="${(t)ZPWR_NAMED_COLORS}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COMMON_ZSTYLE_OPTS is exported' {
    local tflags="${(t)ZPWR_COMMON_ZSTYLE_OPTS}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_SUDO_CMD is exported' {
    local tflags="${(t)ZPWR_SUDO_CMD}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_FULL_SUDO is exported' {
    local tflags="${(t)ZPWR_FULL_SUDO}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COMPLETION_DIR is exported' {
    local tflags="${(t)ZPWR_COMPLETION_DIR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_CORRECT is exported' {
    local tflags="${(t)ZPWR_CORRECT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_CORRECT_EXPAND is exported' {
    local tflags="${(t)ZPWR_CORRECT_EXPAND}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_DEBUG is exported' {
    local tflags="${(t)ZPWR_DEBUG}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_DEFAULT_OMZ_THEME is exported' {
    local tflags="${(t)ZPWR_DEFAULT_OMZ_THEME}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_DELIMITER_CHAR is exported' {
    local tflags="${(t)ZPWR_DELIMITER_CHAR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_VIM is exported' {
    local tflags="${(t)ZPWR_VIM}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EDITOR_TO_VIM is exported' {
    local tflags="${(t)ZPWR_EDITOR_TO_VIM}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EMACS is exported' {
    local tflags="${(t)ZPWR_EMACS}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EMACS_CLIENT is exported' {
    local tflags="${(t)ZPWR_EMACS_CLIENT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXA_EXTENDED is exported' {
    local tflags="${(t)ZPWR_EXA_EXTENDED}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND is exported' {
    local tflags="${(t)ZPWR_EXPAND}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_SECOND_POSITION is exported' {
    local tflags="${(t)ZPWR_EXPAND_SECOND_POSITION}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_NATIVE is exported' {
    local tflags="${(t)ZPWR_EXPAND_NATIVE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC is exported' {
    local tflags="${(t)ZPWR_EXPAND_PRE_EXEC}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_NATIVE is exported' {
    local tflags="${(t)ZPWR_EXPAND_PRE_EXEC_NATIVE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION is exported' {
    local tflags="${(t)ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_DOUBLE is exported' {
    local tflags="${(t)ZPWR_EXPAND_QUOTE_DOUBLE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_SINGLE is exported' {
    local tflags="${(t)ZPWR_EXPAND_QUOTE_SINGLE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_FZF is exported' {
    local tflags="${(t)ZPWR_FZF}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_FD is exported' {
    local tflags="${(t)ZPWR_FD}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_FZF_LOGO is exported' {
    local tflags="${(t)ZPWR_FZF_LOGO}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_GITHUB_ACCOUNT is exported' {
    local tflags="${(t)ZPWR_GITHUB_ACCOUNT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_GLOBAL_ALIAS_PREFIX is exported' {
    local tflags="${(t)ZPWR_GLOBAL_ALIAS_PREFIX}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_INTERACTIVE_MENU_SELECT is exported' {
    local tflags="${(t)ZPWR_INTERACTIVE_MENU_SELECT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_KEYTIMEOUT is exported' {
    local tflags="${(t)ZPWR_KEYTIMEOUT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_LEARN is exported' {
    local tflags="${(t)ZPWR_LEARN}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_LOG_UNDER_COLOR is exported' {
    local tflags="${(t)ZPWR_LOG_UNDER_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_LOG_QUOTE_COLOR is exported' {
    local tflags="${(t)ZPWR_LOG_QUOTE_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_LOG_DATE_COLOR is exported' {
    local tflags="${(t)ZPWR_LOG_DATE_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_LOG_MSG_COLOR is exported' {
    local tflags="${(t)ZPWR_LOG_MSG_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_MAP_C_V_VIM_NORMAL is exported' {
    local tflags="${(t)ZPWR_MAP_C_V_VIM_NORMAL}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_MARKER_COLOR is exported' {
    local tflags="${(t)ZPWR_MARKER_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_PYGMENTIZE_COLOR is exported' {
    local tflags="${(t)ZPWR_PYGMENTIZE_COLOR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_COLORIZER is exported' {
    local tflags="${(t)ZPWR_COLORIZER}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_OPTS is exported' {
    local tflags="${(t)ZPWR_OPTS}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_OS_TYPE is exported' {
    local tflags="${(t)ZPWR_OS_TYPE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_MANAGER is exported' {
    local tflags="${(t)ZPWR_PLUGIN_MANAGER}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_PROFILING is exported' {
    local tflags="${(t)ZPWR_PROFILING}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_PROMPT is exported' {
    local tflags="${(t)ZPWR_PROMPT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_PSSH_TIMEOUT is exported' {
    local tflags="${(t)ZPWR_PSSH_TIMEOUT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_GIT_COLOR_PREFIX is exported' {
    local tflags="${(t)ZPWR_GIT_COLOR_PREFIX}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_QUOTE_START_CHAR is exported' {
    local tflags="${(t)ZPWR_QUOTE_START_CHAR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_QUOTE_END_CHAR is exported' {
    local tflags="${(t)ZPWR_QUOTE_END_CHAR}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_REPO_NAME is exported' {
    local tflags="${(t)ZPWR_REPO_NAME}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_FULL is exported' {
    local tflags="${(t)ZPWR_SEND_KEYS_FULL}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_LOOK_TIME is exported' {
    local tflags="${(t)ZPWR_LOOK_TIME}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_PANE is exported' {
    local tflags="${(t)ZPWR_SEND_KEYS_PANE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_SURROUND is exported' {
    local tflags="${(t)ZPWR_SURROUND}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_TABSTOP is exported' {
    local tflags="${(t)ZPWR_TABSTOP}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_TABSTOP_ALIASES is exported' {
    local tflags="${(t)ZPWR_TABSTOP_ALIASES}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_MAC is exported' {
    local tflags="${(t)ZPWR_TMUX_PREFIX_MAC}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_LINUX is exported' {
    local tflags="${(t)ZPWR_TMUX_PREFIX_LINUX}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_TMUX_HISTORY_LIMIT is exported' {
    local tflags="${(t)ZPWR_TMUX_HISTORY_LIMIT}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_TRACE is exported' {
    local tflags="${(t)ZPWR_TRACE}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_VIM_TEMPLATES is exported' {
    local tflags="${(t)ZPWR_VIM_TEMPLATES}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_BINDKEY_VI is exported' {
    local tflags="${(t)ZPWR_BINDKEY_VI}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_ZINIT_COMPINIT_DELAY is exported' {
    local tflags="${(t)ZPWR_ZINIT_COMPINIT_DELAY}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_ZDHARMA is exported' {
    local tflags="${(t)ZPWR_ZDHARMA}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_THUMBS_REGEX is exported' {
    local tflags="${(t)ZPWR_THUMBS_REGEX}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}

@test 'ZPWR_TTY is exported' {
    local tflags="${(t)ZPWR_TTY}"
    run test "${tflags}" != "${tflags/export/}"
    assert $state equals 0
}
