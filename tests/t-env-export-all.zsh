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
    run zsh -c 'echo $ZPWR_AUTO_ATTACH'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_AUTO_COMPLETE is exported' {
    run zsh -c 'echo $ZPWR_AUTO_COMPLETE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_AUTO_COMPLETE_DELAY is exported' {
    run zsh -c 'echo $ZPWR_AUTO_COMPLETE_DELAY'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_AUTO_LS_RM is exported' {
    run zsh -c 'echo $ZPWR_AUTO_LS_RM'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_AUTO_LS_CD is exported' {
    run zsh -c 'echo $ZPWR_AUTO_LS_CD'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_AUTO_SELECT is exported' {
    run zsh -c 'echo $ZPWR_AUTO_SELECT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_BANNER_CLEARLIST is exported' {
    run zsh -c 'echo $ZPWR_BANNER_CLEARLIST'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_BANNER_DESKTOP_DARWIN is exported' {
    run zsh -c 'echo $ZPWR_BANNER_DESKTOP_DARWIN'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_BANNER_DESKTOP_LINUX is exported' {
    run zsh -c 'echo $ZPWR_BANNER_DESKTOP_LINUX'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_BANNER_TYPE is exported' {
    run zsh -c 'echo $ZPWR_BANNER_TYPE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_BAT_THEME is exported' {
    run zsh -c 'echo $ZPWR_BAT_THEME'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_CHAR_LOGO is exported' {
    run zsh -c 'echo $ZPWR_CHAR_LOGO'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_DESC_PRE is exported' {
    run zsh -c 'echo $ZPWR_DESC_PRE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_DESC_POST is exported' {
    run zsh -c 'echo $ZPWR_DESC_POST'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_DESC_TEXT_COLOR is exported' {
    run zsh -c 'echo $ZPWR_DESC_TEXT_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_DESC_PRE_COLOR is exported' {
    run zsh -c 'echo $ZPWR_DESC_PRE_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_DESC_POST_COLOR is exported' {
    run zsh -c 'echo $ZPWR_DESC_POST_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COLORS is exported' {
    run zsh -c 'echo $ZPWR_COLORS'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COLORS_SECTIONS is exported' {
    run zsh -c 'echo $ZPWR_COLORS_SECTIONS'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COLORS_VERBS is exported' {
    run zsh -c 'echo $ZPWR_COLORS_VERBS'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COLOR_BLUE is exported' {
    run zsh -c 'echo $ZPWR_COLOR_BLUE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COLOR_RED is exported' {
    run zsh -c 'echo $ZPWR_COLOR_RED'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COLOR_RESET is exported' {
    run zsh -c 'echo $ZPWR_COLOR_RESET'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COMMIT_STYLE is exported' {
    run zsh -c 'echo $ZPWR_COMMIT_STYLE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_NAMED_COLORS is exported' {
    run zsh -c 'echo $ZPWR_NAMED_COLORS'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COMMON_ZSTYLE_OPTS is exported' {
    run zsh -c 'echo $ZPWR_COMMON_ZSTYLE_OPTS'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_SUDO_CMD is exported' {
    run zsh -c 'echo $ZPWR_SUDO_CMD'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_FULL_SUDO is exported' {
    run zsh -c 'echo $ZPWR_FULL_SUDO'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COMPLETION_DIR is exported' {
    run zsh -c 'echo $ZPWR_COMPLETION_DIR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_CORRECT is exported' {
    run zsh -c 'echo $ZPWR_CORRECT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_CORRECT_EXPAND is exported' {
    run zsh -c 'echo $ZPWR_CORRECT_EXPAND'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_DEBUG is exported' {
    run zsh -c 'echo $ZPWR_DEBUG'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_DEFAULT_OMZ_THEME is exported' {
    run zsh -c 'echo $ZPWR_DEFAULT_OMZ_THEME'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_DELIMITER_CHAR is exported' {
    run zsh -c 'echo $ZPWR_DELIMITER_CHAR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_VIM is exported' {
    run zsh -c 'echo $ZPWR_VIM'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EDITOR_TO_VIM is exported' {
    run zsh -c 'echo $ZPWR_EDITOR_TO_VIM'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EMACS is exported' {
    run zsh -c 'echo $ZPWR_EMACS'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EMACS_CLIENT is exported' {
    run zsh -c 'echo $ZPWR_EMACS_CLIENT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXA_EXTENDED is exported' {
    run zsh -c 'echo $ZPWR_EXA_EXTENDED'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXPAND is exported' {
    run zsh -c 'echo $ZPWR_EXPAND'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXPAND_SECOND_POSITION is exported' {
    run zsh -c 'echo $ZPWR_EXPAND_SECOND_POSITION'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXPAND_NATIVE is exported' {
    run zsh -c 'echo $ZPWR_EXPAND_NATIVE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXPAND_PRE_EXEC is exported' {
    run zsh -c 'echo $ZPWR_EXPAND_PRE_EXEC'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXPAND_PRE_EXEC_NATIVE is exported' {
    run zsh -c 'echo $ZPWR_EXPAND_PRE_EXEC_NATIVE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION is exported' {
    run zsh -c 'echo $ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXPAND_QUOTE_DOUBLE is exported' {
    run zsh -c 'echo $ZPWR_EXPAND_QUOTE_DOUBLE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_EXPAND_QUOTE_SINGLE is exported' {
    run zsh -c 'echo $ZPWR_EXPAND_QUOTE_SINGLE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_FZF is exported' {
    run zsh -c 'echo $ZPWR_FZF'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_FD is exported' {
    run zsh -c 'echo $ZPWR_FD'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_FZF_LOGO is exported' {
    run zsh -c 'echo $ZPWR_FZF_LOGO'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_GITHUB_ACCOUNT is exported' {
    run zsh -c 'echo $ZPWR_GITHUB_ACCOUNT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_GLOBAL_ALIAS_PREFIX is exported' {
    run zsh -c 'echo $ZPWR_GLOBAL_ALIAS_PREFIX'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_INTERACTIVE_MENU_SELECT is exported' {
    run zsh -c 'echo $ZPWR_INTERACTIVE_MENU_SELECT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_KEYTIMEOUT is exported' {
    run zsh -c 'echo $ZPWR_KEYTIMEOUT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_LEARN is exported' {
    run zsh -c 'echo $ZPWR_LEARN'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_LOG_UNDER_COLOR is exported' {
    run zsh -c 'echo $ZPWR_LOG_UNDER_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_LOG_QUOTE_COLOR is exported' {
    run zsh -c 'echo $ZPWR_LOG_QUOTE_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_LOG_DATE_COLOR is exported' {
    run zsh -c 'echo $ZPWR_LOG_DATE_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_LOG_MSG_COLOR is exported' {
    run zsh -c 'echo $ZPWR_LOG_MSG_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_MAP_C_V_VIM_NORMAL is exported' {
    run zsh -c 'echo $ZPWR_MAP_C_V_VIM_NORMAL'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_MARKER_COLOR is exported' {
    run zsh -c 'echo $ZPWR_MARKER_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_PYGMENTIZE_COLOR is exported' {
    run zsh -c 'echo $ZPWR_PYGMENTIZE_COLOR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_COLORIZER is exported' {
    run zsh -c 'echo $ZPWR_COLORIZER'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_OPTS is exported' {
    run zsh -c 'echo $ZPWR_OPTS'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_OS_TYPE is exported' {
    run zsh -c 'echo $ZPWR_OS_TYPE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_PLUGIN_MANAGER is exported' {
    run zsh -c 'echo $ZPWR_PLUGIN_MANAGER'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_PROFILING is exported' {
    run zsh -c 'echo $ZPWR_PROFILING'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_PROMPT is exported' {
    run zsh -c 'echo $ZPWR_PROMPT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_PSSH_TIMEOUT is exported' {
    run zsh -c 'echo $ZPWR_PSSH_TIMEOUT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_GIT_COLOR_PREFIX is exported' {
    run zsh -c 'echo $ZPWR_GIT_COLOR_PREFIX'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_QUOTE_START_CHAR is exported' {
    run zsh -c 'echo $ZPWR_QUOTE_START_CHAR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_QUOTE_END_CHAR is exported' {
    run zsh -c 'echo $ZPWR_QUOTE_END_CHAR'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_REPO_NAME is exported' {
    run zsh -c 'echo $ZPWR_REPO_NAME'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_SEND_KEYS_FULL is exported' {
    run zsh -c 'echo $ZPWR_SEND_KEYS_FULL'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_LOOK_TIME is exported' {
    run zsh -c 'echo $ZPWR_LOOK_TIME'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_SEND_KEYS_PANE is exported' {
    run zsh -c 'echo $ZPWR_SEND_KEYS_PANE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_SURROUND is exported' {
    run zsh -c 'echo $ZPWR_SURROUND'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_TABSTOP is exported' {
    run zsh -c 'echo $ZPWR_TABSTOP'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_TABSTOP_ALIASES is exported' {
    run zsh -c 'echo $ZPWR_TABSTOP_ALIASES'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_TMUX_PREFIX_MAC is exported' {
    run zsh -c 'echo $ZPWR_TMUX_PREFIX_MAC'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_TMUX_PREFIX_LINUX is exported' {
    run zsh -c 'echo $ZPWR_TMUX_PREFIX_LINUX'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_TMUX_HISTORY_LIMIT is exported' {
    run zsh -c 'echo $ZPWR_TMUX_HISTORY_LIMIT'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_TRACE is exported' {
    run zsh -c 'echo $ZPWR_TRACE'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_VIM_TEMPLATES is exported' {
    run zsh -c 'echo $ZPWR_VIM_TEMPLATES'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_BINDKEY_VI is exported' {
    run zsh -c 'echo $ZPWR_BINDKEY_VI'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_ZINIT_COMPINIT_DELAY is exported' {
    run zsh -c 'echo $ZPWR_ZINIT_COMPINIT_DELAY'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_ZDHARMA is exported' {
    run zsh -c 'echo $ZPWR_ZDHARMA'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_THUMBS_REGEX is exported' {
    run zsh -c 'echo $ZPWR_THUMBS_REGEX'
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_TTY is exported' {
    run zsh -c 'echo $ZPWR_TTY'
    assert $state equals 0
    assert "$output" is_not_empty
}
