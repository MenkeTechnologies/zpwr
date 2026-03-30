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
    run test -n "${(P)ZPWR_AUTO_ATTACH+x}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE is defined' {
    run test -n "${(P)ZPWR_AUTO_COMPLETE+x}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE_DELAY is defined' {
    run test -n "${(P)ZPWR_AUTO_COMPLETE_DELAY+x}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_RM is defined' {
    run test -n "${(P)ZPWR_AUTO_LS_RM+x}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_CD is defined' {
    run test -n "${(P)ZPWR_AUTO_LS_CD+x}"
    assert $state equals 0
}

@test 'ZPWR_AUTO_SELECT is defined' {
    run test -n "${(P)ZPWR_AUTO_SELECT+x}"
    assert $state equals 0
}

@test 'ZPWR_BANNER_CLEARLIST is defined' {
    run test -n "${(P)ZPWR_BANNER_CLEARLIST+x}"
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_DARWIN is defined' {
    run test -n "${(P)ZPWR_BANNER_DESKTOP_DARWIN+x}"
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_LINUX is defined' {
    run test -n "${(P)ZPWR_BANNER_DESKTOP_LINUX+x}"
    assert $state equals 0
}

@test 'ZPWR_BANNER_TYPE is defined' {
    run test -n "${(P)ZPWR_BANNER_TYPE+x}"
    assert $state equals 0
}

@test 'ZPWR_BAT_THEME is defined' {
    run test -n "${(P)ZPWR_BAT_THEME+x}"
    assert $state equals 0
}

@test 'ZPWR_CHAR_LOGO is defined' {
    run test -n "${(P)ZPWR_CHAR_LOGO+x}"
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE is defined' {
    run test -n "${(P)ZPWR_DESC_PRE+x}"
    assert $state equals 0
}

@test 'ZPWR_DESC_POST is defined' {
    run test -n "${(P)ZPWR_DESC_POST+x}"
    assert $state equals 0
}

@test 'ZPWR_DESC_TEXT_COLOR is defined' {
    run test -n "${(P)ZPWR_DESC_TEXT_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE_COLOR is defined' {
    run test -n "${(P)ZPWR_DESC_PRE_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_DESC_POST_COLOR is defined' {
    run test -n "${(P)ZPWR_DESC_POST_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_COLORS is defined' {
    run test -n "${(P)ZPWR_COLORS+x}"
    assert $state equals 0
}

@test 'ZPWR_COLORS_SECTIONS is defined' {
    run test -n "${(P)ZPWR_COLORS_SECTIONS+x}"
    assert $state equals 0
}

@test 'ZPWR_COLORS_VERBS is defined' {
    run test -n "${(P)ZPWR_COLORS_VERBS+x}"
    assert $state equals 0
}

@test 'ZPWR_COLOR_BLUE is defined' {
    run test -n "${(P)ZPWR_COLOR_BLUE+x}"
    assert $state equals 0
}

@test 'ZPWR_COLOR_RED is defined' {
    run test -n "${(P)ZPWR_COLOR_RED+x}"
    assert $state equals 0
}

@test 'ZPWR_COLOR_RESET is defined' {
    run test -n "${(P)ZPWR_COLOR_RESET+x}"
    assert $state equals 0
}

@test 'ZPWR_COMMIT_STYLE is defined' {
    run test -n "${(P)ZPWR_COMMIT_STYLE+x}"
    assert $state equals 0
}

@test 'ZPWR_NAMED_COLORS is defined' {
    run test -n "${(P)ZPWR_NAMED_COLORS+x}"
    assert $state equals 0
}

@test 'ZPWR_COMMON_ZSTYLE_OPTS is defined' {
    run test -n "${(P)ZPWR_COMMON_ZSTYLE_OPTS+x}"
    assert $state equals 0
}

@test 'ZPWR_SUDO_CMD is defined' {
    run test -n "${(P)ZPWR_SUDO_CMD+x}"
    assert $state equals 0
}

@test 'ZPWR_FULL_SUDO is defined' {
    run test -n "${(P)ZPWR_FULL_SUDO+x}"
    assert $state equals 0
}

@test 'ZPWR_COMPLETION_DIR is defined' {
    run test -n "${(P)ZPWR_COMPLETION_DIR+x}"
    assert $state equals 0
}

@test 'ZPWR_CORRECT is defined' {
    run test -n "${(P)ZPWR_CORRECT+x}"
    assert $state equals 0
}

@test 'ZPWR_CORRECT_EXPAND is defined' {
    run test -n "${(P)ZPWR_CORRECT_EXPAND+x}"
    assert $state equals 0
}

@test 'ZPWR_DEBUG is defined' {
    run test -n "${(P)ZPWR_DEBUG+x}"
    assert $state equals 0
}

@test 'ZPWR_DEFAULT_OMZ_THEME is defined' {
    run test -n "${(P)ZPWR_DEFAULT_OMZ_THEME+x}"
    assert $state equals 0
}

@test 'ZPWR_DELIMITER_CHAR is defined' {
    run test -n "${(P)ZPWR_DELIMITER_CHAR+x}"
    assert $state equals 0
}

@test 'ZPWR_VIM is defined' {
    run test -n "${(P)ZPWR_VIM+x}"
    assert $state equals 0
}

@test 'ZPWR_EDITOR_TO_VIM is defined' {
    run test -n "${(P)ZPWR_EDITOR_TO_VIM+x}"
    assert $state equals 0
}

@test 'ZPWR_EMACS is defined' {
    run test -n "${(P)ZPWR_EMACS+x}"
    assert $state equals 0
}

@test 'ZPWR_EMACS_CLIENT is defined' {
    run test -n "${(P)ZPWR_EMACS_CLIENT+x}"
    assert $state equals 0
}

@test 'ZPWR_EXA_EXTENDED is defined' {
    run test -n "${(P)ZPWR_EXA_EXTENDED+x}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND is defined' {
    run test -n "${(P)ZPWR_EXPAND+x}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_SECOND_POSITION is defined' {
    run test -n "${(P)ZPWR_EXPAND_SECOND_POSITION+x}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_NATIVE is defined' {
    run test -n "${(P)ZPWR_EXPAND_NATIVE+x}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC is defined' {
    run test -n "${(P)ZPWR_EXPAND_PRE_EXEC+x}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_NATIVE is defined' {
    run test -n "${(P)ZPWR_EXPAND_PRE_EXEC_NATIVE+x}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION is defined' {
    run test -n "${(P)ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION+x}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_DOUBLE is defined' {
    run test -n "${(P)ZPWR_EXPAND_QUOTE_DOUBLE+x}"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_SINGLE is defined' {
    run test -n "${(P)ZPWR_EXPAND_QUOTE_SINGLE+x}"
    assert $state equals 0
}

@test 'ZPWR_FZF is defined' {
    run test -n "${(P)ZPWR_FZF+x}"
    assert $state equals 0
}

@test 'ZPWR_FD is defined' {
    run test -n "${(P)ZPWR_FD+x}"
    assert $state equals 0
}

@test 'ZPWR_FZF_LOGO is defined' {
    run test -n "${(P)ZPWR_FZF_LOGO+x}"
    assert $state equals 0
}

@test 'ZPWR_GITHUB_ACCOUNT is defined' {
    run test -n "${(P)ZPWR_GITHUB_ACCOUNT+x}"
    assert $state equals 0
}

@test 'ZPWR_GLOBAL_ALIAS_PREFIX is defined' {
    run test -n "${(P)ZPWR_GLOBAL_ALIAS_PREFIX+x}"
    assert $state equals 0
}

@test 'ZPWR_INTERACTIVE_MENU_SELECT is defined' {
    run test -n "${(P)ZPWR_INTERACTIVE_MENU_SELECT+x}"
    assert $state equals 0
}

@test 'ZPWR_KEYTIMEOUT is defined' {
    run test -n "${(P)ZPWR_KEYTIMEOUT+x}"
    assert $state equals 0
}

@test 'ZPWR_LEARN is defined' {
    run test -n "${(P)ZPWR_LEARN+x}"
    assert $state equals 0
}

@test 'ZPWR_LOG_UNDER_COLOR is defined' {
    run test -n "${(P)ZPWR_LOG_UNDER_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_LOG_QUOTE_COLOR is defined' {
    run test -n "${(P)ZPWR_LOG_QUOTE_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_LOG_DATE_COLOR is defined' {
    run test -n "${(P)ZPWR_LOG_DATE_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_LOG_MSG_COLOR is defined' {
    run test -n "${(P)ZPWR_LOG_MSG_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_MAP_C_V_VIM_NORMAL is defined' {
    run test -n "${(P)ZPWR_MAP_C_V_VIM_NORMAL+x}"
    assert $state equals 0
}

@test 'ZPWR_MARKER_COLOR is defined' {
    run test -n "${(P)ZPWR_MARKER_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_PYGMENTIZE_COLOR is defined' {
    run test -n "${(P)ZPWR_PYGMENTIZE_COLOR+x}"
    assert $state equals 0
}

@test 'ZPWR_COLORIZER is defined' {
    run test -n "${(P)ZPWR_COLORIZER+x}"
    assert $state equals 0
}

@test 'ZPWR_OPTS is defined' {
    run test -n "${(P)ZPWR_OPTS+x}"
    assert $state equals 0
}

@test 'ZPWR_OS_TYPE is defined' {
    run test -n "${(P)ZPWR_OS_TYPE+x}"
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_MANAGER is defined' {
    run test -n "${(P)ZPWR_PLUGIN_MANAGER+x}"
    assert $state equals 0
}

@test 'ZPWR_PROFILING is defined' {
    run test -n "${(P)ZPWR_PROFILING+x}"
    assert $state equals 0
}

@test 'ZPWR_PROMPT is defined' {
    run test -n "${(P)ZPWR_PROMPT+x}"
    assert $state equals 0
}

@test 'ZPWR_PSSH_TIMEOUT is defined' {
    run test -n "${(P)ZPWR_PSSH_TIMEOUT+x}"
    assert $state equals 0
}

@test 'ZPWR_GIT_COLOR_PREFIX is defined' {
    run test -n "${(P)ZPWR_GIT_COLOR_PREFIX+x}"
    assert $state equals 0
}

@test 'ZPWR_QUOTE_START_CHAR is defined' {
    run test -n "${(P)ZPWR_QUOTE_START_CHAR+x}"
    assert $state equals 0
}

@test 'ZPWR_QUOTE_END_CHAR is defined' {
    run test -n "${(P)ZPWR_QUOTE_END_CHAR+x}"
    assert $state equals 0
}

@test 'ZPWR_REPO_NAME is defined' {
    run test -n "${(P)ZPWR_REPO_NAME+x}"
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_FULL is defined' {
    run test -n "${(P)ZPWR_SEND_KEYS_FULL+x}"
    assert $state equals 0
}

@test 'ZPWR_LOOK_TIME is defined' {
    run test -n "${(P)ZPWR_LOOK_TIME+x}"
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_PANE is defined' {
    run test -n "${(P)ZPWR_SEND_KEYS_PANE+x}"
    assert $state equals 0
}

@test 'ZPWR_SURROUND is defined' {
    run test -n "${(P)ZPWR_SURROUND+x}"
    assert $state equals 0
}

@test 'ZPWR_TABSTOP is defined' {
    run test -n "${(P)ZPWR_TABSTOP+x}"
    assert $state equals 0
}

@test 'ZPWR_TABSTOP_ALIASES is defined' {
    run test -n "${(P)ZPWR_TABSTOP_ALIASES+x}"
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_MAC is defined' {
    run test -n "${(P)ZPWR_TMUX_PREFIX_MAC+x}"
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_LINUX is defined' {
    run test -n "${(P)ZPWR_TMUX_PREFIX_LINUX+x}"
    assert $state equals 0
}

@test 'ZPWR_TMUX_HISTORY_LIMIT is defined' {
    run test -n "${(P)ZPWR_TMUX_HISTORY_LIMIT+x}"
    assert $state equals 0
}

@test 'ZPWR_TRACE is defined' {
    run test -n "${(P)ZPWR_TRACE+x}"
    assert $state equals 0
}

@test 'ZPWR_VIM_TEMPLATES is defined' {
    run test -n "${(P)ZPWR_VIM_TEMPLATES+x}"
    assert $state equals 0
}

@test 'ZPWR_BINDKEY_VI is defined' {
    run test -n "${(P)ZPWR_BINDKEY_VI+x}"
    assert $state equals 0
}

@test 'ZPWR_ZINIT_COMPINIT_DELAY is defined' {
    run test -n "${(P)ZPWR_ZINIT_COMPINIT_DELAY+x}"
    assert $state equals 0
}

@test 'ZPWR_ZDHARMA is defined' {
    run test -n "${(P)ZPWR_ZDHARMA+x}"
    assert $state equals 0
}

@test 'ZPWR_THUMBS_REGEX is defined' {
    run test -n "${(P)ZPWR_THUMBS_REGEX+x}"
    assert $state equals 0
}

@test 'ZPWR_TTY is defined' {
    run test -n "${(P)ZPWR_TTY+x}"
    assert $state equals 0
}
