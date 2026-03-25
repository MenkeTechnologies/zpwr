#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 24 00:00:00 EST 2026
##### Purpose: zsh script to test additional ZPWR env vars
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_AUTO_ATTACH' {
    run test -n "$ZPWR_AUTO_ATTACH"
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE' {
    run test -n "$ZPWR_AUTO_COMPLETE"
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE_DELAY' {
    run test -n "$ZPWR_AUTO_COMPLETE_DELAY"
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_RM' {
    run test -n "$ZPWR_AUTO_LS_RM"
    assert $state equals 0
}

@test 'ZPWR_BANNER_CLEARLIST' {
    run test -n "$ZPWR_BANNER_CLEARLIST"
    assert $state equals 0
}

@test 'ZPWR_BANNER_TYPE' {
    run test -n "$ZPWR_BANNER_TYPE"
    assert $state equals 0
}

@test 'ZPWR_BAT_THEME' {
    run test -n "$ZPWR_BAT_THEME"
    assert $state equals 0
}

@test 'ZPWR_BINDKEY_VI' {
    run test -n "$ZPWR_BINDKEY_VI"
    assert $state equals 0
}

@test 'ZPWR_CHAR_LOGO' {
    run test -n "$ZPWR_CHAR_LOGO"
    assert $state equals 0
}

@test 'ZPWR_COMMON_ZSTYLE_OPTS' {
    skip 'value contains zsh glob patterns incompatible with zunit eval'
}

@test 'ZPWR_DEFAULT_OMZ_THEME' {
    run test -n "$ZPWR_DEFAULT_OMZ_THEME"
    assert $state equals 0
}

@test 'ZPWR_DELIMITER_CHAR' {
    run test -n "$ZPWR_DELIMITER_CHAR"
    assert $state equals 0
}

@test 'ZPWR_DESC_TEXT_COLOR' {
    run test -n "$ZPWR_DESC_TEXT_COLOR"
    assert $state equals 0
}

@test 'ZPWR_DIRS_CLEAN' {
    run test -n "$ZPWR_DIRS_CLEAN"
    assert $state equals 0
}

@test 'ZPWR_EDITOR_TO_VIM' {
    run test -n "$ZPWR_EDITOR_TO_VIM"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC' {
    run test -n "$ZPWR_EXPAND_PRE_EXEC"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_NATIVE' {
    run test -n "$ZPWR_EXPAND_PRE_EXEC_NATIVE"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION' {
    run test -n "$ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_DOUBLE' {
    run test -n "$ZPWR_EXPAND_QUOTE_DOUBLE"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_SINGLE' {
    run test -n "$ZPWR_EXPAND_QUOTE_SINGLE"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_SECOND_POSITION' {
    run test -n "$ZPWR_EXPAND_SECOND_POSITION"
    assert $state equals 0
}

@test 'ZPWR_FD' {
    run test -n "$ZPWR_FD"
    assert $state equals 0
    run printf "$ZPWR_FD"
    assert "$output" contains fd
}

@test 'ZPWR_FILES_CLEAN' {
    run test -n "$ZPWR_FILES_CLEAN"
    assert $state equals 0
}

@test 'ZPWR_INTERACTIVE_MENU_SELECT' {
    run test -n "$ZPWR_INTERACTIVE_MENU_SELECT"
    assert $state equals 0
}

@test 'ZPWR_KEYTIMEOUT' {
    run test -n "$ZPWR_KEYTIMEOUT"
    assert $state equals 0
}

@test 'ZPWR_LOG_DATE_COLOR' {
    run test -n "$ZPWR_LOG_DATE_COLOR"
    assert $state equals 0
}

@test 'ZPWR_LOG_MSG_COLOR' {
    run test -n "$ZPWR_LOG_MSG_COLOR"
    assert $state equals 0
}

@test 'ZPWR_LOG_QUOTE_COLOR' {
    run test -n "$ZPWR_LOG_QUOTE_COLOR"
    assert $state equals 0
}

@test 'ZPWR_LOG_UNDER_COLOR' {
    run test -n "$ZPWR_LOG_UNDER_COLOR"
    assert $state equals 0
}

@test 'ZPWR_LOOK_TIME' {
    run test -n "$ZPWR_LOOK_TIME"
    assert $state equals 0
}

@test 'ZPWR_MAP_C_V_VIM_NORMAL' {
    run test -n "$ZPWR_MAP_C_V_VIM_NORMAL"
    assert $state equals 0
}

@test 'ZPWR_MARKER_COLOR' {
    run test -n "$ZPWR_MARKER_COLOR"
    assert $state equals 0
}

@test 'ZPWR_NAMED_COLORS' {
    skip 'value contains zsh glob patterns incompatible with zunit eval'
}

@test 'ZPWR_PLUGIN_MANAGER' {
    run test -n "$ZPWR_PLUGIN_MANAGER"
    assert $state equals 0
    run printf "$ZPWR_PLUGIN_MANAGER"
    assert "$output" contains zinit
}

@test 'ZPWR_PROCESSED' {
    run zsh -c 'source $ZPWR/env/.zpwr_env.sh; [[ ${(t)ZPWR_PROCESSED} == *assoc* ]]'
    assert $state equals 0
}

@test 'ZPWR_PROFILING' {
    run test -n "$ZPWR_PROFILING"
    assert $state equals 0
}

@test 'ZPWR_PROMPT' {
    run test -n "$ZPWR_PROMPT"
    assert $state equals 0
    run printf "$ZPWR_PROMPT"
    assert "$output" contains powerlevel
}

@test 'ZPWR_PSSH_TIMEOUT' {
    run test -n "$ZPWR_PSSH_TIMEOUT"
    assert $state equals 0
}

@test 'ZPWR_PYGMENTIZE_COLOR' {
    run test -n "$ZPWR_PYGMENTIZE_COLOR"
    assert $state equals 0
}

@test 'ZPWR_QUOTE_END_CHAR' {
    run test -n "$ZPWR_QUOTE_END_CHAR"
    assert $state equals 0
}

@test 'ZPWR_QUOTE_START_CHAR' {
    run test -n "$ZPWR_QUOTE_START_CHAR"
    assert $state equals 0
}

@test 'ZPWR_REMOTE' {
    run test -n "$ZPWR_REMOTE"
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_FULL' {
    run test -n "$ZPWR_SEND_KEYS_FULL"
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_PANE' {
    run test -n "$ZPWR_SEND_KEYS_PANE"
    assert $state equals 0
}

@test 'ZPWR_SUDO_CMD' {
    run test -n "$ZPWR_SUDO_CMD"
    assert $state equals 0
    run printf "$ZPWR_SUDO_CMD"
    assert "$output" contains sudo
}

@test 'ZPWR_SURROUND' {
    run test -n "$ZPWR_SURROUND"
    assert $state equals 0
}

@test 'ZPWR_TABSTOP' {
    run test -n "$ZPWR_TABSTOP"
    assert $state equals 0
}

@test 'ZPWR_TABSTOP_ALIASES' {
    run test -n "$ZPWR_TABSTOP_ALIASES"
    assert $state equals 0
}

@test 'ZPWR_THUMBS_REGEX' {
    run test -n "$ZPWR_THUMBS_REGEX"
    assert $state equals 0
}

@test 'ZPWR_TMUX_HISTORY_LIMIT' {
    run test -n "$ZPWR_TMUX_HISTORY_LIMIT"
    assert $state equals 0
    run echo "$ZPWR_TMUX_HISTORY_LIMIT"
    assert "$output" is_greater_than 1000
}

@test 'ZPWR_TMUX_PREFIX_LINUX' {
    run test -n "$ZPWR_TMUX_PREFIX_LINUX"
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_MAC' {
    run test -n "$ZPWR_TMUX_PREFIX_MAC"
    assert $state equals 0
}

@test 'ZPWR_TTY' {
    run test -n "$ZPWR_TTY"
    assert $state equals 0
}

@test 'ZPWR_VIM_TEMPLATES' {
    run test -n "$ZPWR_VIM_TEMPLATES"
    assert $state equals 0
}

@test 'ZPWR_ZDHARMA' {
    run test -n "$ZPWR_ZDHARMA"
    assert $state equals 0
    run printf "$ZPWR_ZDHARMA"
    assert "$output" contains zdharma
}

@test 'ZPWR_ZINIT_COMPINIT_DELAY' {
    run test -n "$ZPWR_ZINIT_COMPINIT_DELAY"
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_DARWIN' {
    run test -n "$ZPWR_BANNER_DESKTOP_DARWIN"
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_LINUX' {
    run test -n "$ZPWR_BANNER_DESKTOP_LINUX"
    assert $state equals 0
}
