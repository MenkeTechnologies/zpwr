#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test all ZPWR env variables comprehensive
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_AUTO_ATTACH is set' {
    run test -n "$ZPWR_AUTO_ATTACH"
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE is set' {
    run test -n "$ZPWR_AUTO_COMPLETE"
    assert $state equals 0
}

@test 'ZPWR_AUTO_COMPLETE_DELAY is set' {
    run test -n "$ZPWR_AUTO_COMPLETE_DELAY"
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_RM is set' {
    run test -n "$ZPWR_AUTO_LS_RM"
    assert $state equals 0
}

@test 'ZPWR_AUTO_LS_CD is set' {
    run test -n "$ZPWR_AUTO_LS_CD"
    assert $state equals 0
}

@test 'ZPWR_AUTO_SELECT is set' {
    run test -n "$ZPWR_AUTO_SELECT"
    assert $state equals 0
}

@test 'ZPWR_BANNER_CLEARLIST is set' {
    run test -n "$ZPWR_BANNER_CLEARLIST"
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_DARWIN is set' {
    run test -n "$ZPWR_BANNER_DESKTOP_DARWIN"
    assert $state equals 0
}

@test 'ZPWR_BANNER_DESKTOP_LINUX is set' {
    run test -n "$ZPWR_BANNER_DESKTOP_LINUX"
    assert $state equals 0
}

@test 'ZPWR_BANNER_TYPE is set' {
    run test -n "$ZPWR_BANNER_TYPE"
    assert $state equals 0
}

@test 'ZPWR_BAT_THEME is set' {
    run test -n "$ZPWR_BAT_THEME"
    assert $state equals 0
}

@test 'ZPWR_CHAR_LOGO is set' {
    run test -n "$ZPWR_CHAR_LOGO"
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE is set' {
    run test -n "$ZPWR_DESC_PRE"
    assert $state equals 0
}

@test 'ZPWR_DESC_POST is set' {
    run test -n "$ZPWR_DESC_POST"
    assert $state equals 0
}

@test 'ZPWR_DESC_TEXT_COLOR is set' {
    run test -n "$ZPWR_DESC_TEXT_COLOR"
    assert $state equals 0
}

@test 'ZPWR_DESC_PRE_COLOR is set' {
    run test -n "$ZPWR_DESC_PRE_COLOR"
    assert $state equals 0
}

@test 'ZPWR_DESC_POST_COLOR is set' {
    run test -n "$ZPWR_DESC_POST_COLOR"
    assert $state equals 0
}

@test 'ZPWR_COLORS is set' {
    run test -n "$ZPWR_COLORS"
    assert $state equals 0
}

@test 'ZPWR_COLORS_SECTIONS is set' {
    run test -n "$ZPWR_COLORS_SECTIONS"
    assert $state equals 0
}

@test 'ZPWR_COLORS_VERBS is set' {
    run test -n "$ZPWR_COLORS_VERBS"
    assert $state equals 0
}

@test 'ZPWR_COLOR_BLUE is set' {
    run test -n "$ZPWR_COLOR_BLUE"
    assert $state equals 0
}

@test 'ZPWR_COLOR_RED is set' {
    run test -n "$ZPWR_COLOR_RED"
    assert $state equals 0
}

@test 'ZPWR_COLOR_RESET is set' {
    run test -n "$ZPWR_COLOR_RESET"
    assert $state equals 0
}

@test 'ZPWR_COMMIT_STYLE is set' {
    run test -n "$ZPWR_COMMIT_STYLE"
    assert $state equals 0
}

@test 'ZPWR_NAMED_COLORS is set' {
    skip 'value contains zsh glob patterns incompatible with zunit eval'
}

@test 'ZPWR_COMMON_ZSTYLE_OPTS is set' {
    skip 'value contains zsh glob patterns incompatible with zunit eval'
}

@test 'ZPWR_SUDO_CMD is set' {
    run test -n "$ZPWR_SUDO_CMD"
    assert $state equals 0
}

@test 'ZPWR_FULL_SUDO is set' {
    run test -n "$ZPWR_FULL_SUDO"
    assert $state equals 0
}

@test 'ZPWR_COMPLETION_DIR is set' {
    run test -n "$ZPWR_COMPLETION_DIR"
    assert $state equals 0
}

@test 'ZPWR_CORRECT is set' {
    run test -n "$ZPWR_CORRECT"
    assert $state equals 0
}

@test 'ZPWR_CORRECT_EXPAND is set' {
    run test -n "$ZPWR_CORRECT_EXPAND"
    assert $state equals 0
}

@test 'ZPWR_DEBUG is set' {
    run test -n "$ZPWR_DEBUG"
    assert $state equals 0
}

@test 'ZPWR_DEFAULT_OMZ_THEME is set' {
    run test -n "$ZPWR_DEFAULT_OMZ_THEME"
    assert $state equals 0
}

@test 'ZPWR_DELIMITER_CHAR is set' {
    run test -n "$ZPWR_DELIMITER_CHAR"
    assert $state equals 0
}

@test 'ZPWR_VIM is set' {
    run test -n "$ZPWR_VIM"
    assert $state equals 0
}

@test 'ZPWR_EDITOR_TO_VIM is set' {
    run test -n "$ZPWR_EDITOR_TO_VIM"
    assert $state equals 0
}

@test 'ZPWR_EMACS is set' {
    run test -n "$ZPWR_EMACS"
    assert $state equals 0
}

@test 'ZPWR_EMACS_CLIENT is set' {
    run test -n "$ZPWR_EMACS_CLIENT"
    assert $state equals 0
}

@test 'ZPWR_EXA_EXTENDED is set' {
    run test -n "$ZPWR_EXA_EXTENDED"
    assert $state equals 0
}

@test 'ZPWR_EXPAND is set' {
    run test -n "$ZPWR_EXPAND"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_SECOND_POSITION is set' {
    run test -n "$ZPWR_EXPAND_SECOND_POSITION"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_NATIVE is set' {
    run test -n "$ZPWR_EXPAND_NATIVE"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC is set' {
    run test -n "$ZPWR_EXPAND_PRE_EXEC"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_NATIVE is set' {
    run test -n "$ZPWR_EXPAND_PRE_EXEC_NATIVE"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION is set' {
    run test -n "$ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_DOUBLE is set' {
    run test -n "$ZPWR_EXPAND_QUOTE_DOUBLE"
    assert $state equals 0
}

@test 'ZPWR_EXPAND_QUOTE_SINGLE is set' {
    run test -n "$ZPWR_EXPAND_QUOTE_SINGLE"
    assert $state equals 0
}

@test 'ZPWR_FZF is set' {
    run test -n "$ZPWR_FZF"
    assert $state equals 0
}

@test 'ZPWR_FD is set' {
    run test -n "$ZPWR_FD"
    assert $state equals 0
}

@test 'ZPWR_FZF_LOGO is set' {
    run test -n "$ZPWR_FZF_LOGO"
    assert $state equals 0
}

@test 'ZPWR_GITHUB_ACCOUNT is set' {
    run test -n "$ZPWR_GITHUB_ACCOUNT"
    assert $state equals 0
}

@test 'ZPWR_GLOBAL_ALIAS_PREFIX is set' {
    run test -n "$ZPWR_GLOBAL_ALIAS_PREFIX"
    assert $state equals 0
}

@test 'ZPWR_INTERACTIVE_MENU_SELECT is set' {
    run test -n "$ZPWR_INTERACTIVE_MENU_SELECT"
    assert $state equals 0
}

@test 'ZPWR_KEYTIMEOUT is set' {
    run test -n "$ZPWR_KEYTIMEOUT"
    assert $state equals 0
}

@test 'ZPWR_LEARN is set' {
    run test -n "$ZPWR_LEARN"
    assert $state equals 0
}

@test 'ZPWR_LOG_UNDER_COLOR is set' {
    run test -n "$ZPWR_LOG_UNDER_COLOR"
    assert $state equals 0
}

@test 'ZPWR_LOG_QUOTE_COLOR is set' {
    run test -n "$ZPWR_LOG_QUOTE_COLOR"
    assert $state equals 0
}

@test 'ZPWR_LOG_DATE_COLOR is set' {
    run test -n "$ZPWR_LOG_DATE_COLOR"
    assert $state equals 0
}

@test 'ZPWR_LOG_MSG_COLOR is set' {
    run test -n "$ZPWR_LOG_MSG_COLOR"
    assert $state equals 0
}

@test 'ZPWR_MAP_C_V_VIM_NORMAL is set' {
    run test -n "$ZPWR_MAP_C_V_VIM_NORMAL"
    assert $state equals 0
}

@test 'ZPWR_MARKER_COLOR is set' {
    run test -n "$ZPWR_MARKER_COLOR"
    assert $state equals 0
}

@test 'ZPWR_PYGMENTIZE_COLOR is set' {
    run test -n "$ZPWR_PYGMENTIZE_COLOR"
    assert $state equals 0
}

@test 'ZPWR_COLORIZER is set' {
    run test -n "$ZPWR_COLORIZER"
    assert $state equals 0
}

@test 'ZPWR_OS_TYPE is set' {
    run test -n "$ZPWR_OS_TYPE"
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_MANAGER is set' {
    run test -n "$ZPWR_PLUGIN_MANAGER"
    assert $state equals 0
}

@test 'ZPWR_PROFILING is set' {
    run test -n "$ZPWR_PROFILING"
    assert $state equals 0
}

@test 'ZPWR_PROMPT is set' {
    run test -n "$ZPWR_PROMPT"
    assert $state equals 0
}

@test 'ZPWR_PSSH_TIMEOUT is set' {
    run test -n "$ZPWR_PSSH_TIMEOUT"
    assert $state equals 0
}

@test 'ZPWR_GIT_COLOR_PREFIX is set' {
    run test -n "$ZPWR_GIT_COLOR_PREFIX"
    assert $state equals 0
}

@test 'ZPWR_QUOTE_START_CHAR is set' {
    run test -n "$ZPWR_QUOTE_START_CHAR"
    assert $state equals 0
}

@test 'ZPWR_QUOTE_END_CHAR is set' {
    run test -n "$ZPWR_QUOTE_END_CHAR"
    assert $state equals 0
}

@test 'ZPWR_REPO_NAME is set' {
    run test -n "$ZPWR_REPO_NAME"
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_FULL is set' {
    run test -n "$ZPWR_SEND_KEYS_FULL"
    assert $state equals 0
}

@test 'ZPWR_LOOK_TIME is set' {
    run test -n "$ZPWR_LOOK_TIME"
    assert $state equals 0
}

@test 'ZPWR_SEND_KEYS_PANE is set' {
    run test -n "$ZPWR_SEND_KEYS_PANE"
    assert $state equals 0
}

@test 'ZPWR_SURROUND is set' {
    run test -n "$ZPWR_SURROUND"
    assert $state equals 0
}

@test 'ZPWR_TABSTOP is set' {
    run test -n "$ZPWR_TABSTOP"
    assert $state equals 0
}

@test 'ZPWR_TABSTOP_ALIASES is set' {
    run test -n "$ZPWR_TABSTOP_ALIASES"
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_MAC is set' {
    run test -n "$ZPWR_TMUX_PREFIX_MAC"
    assert $state equals 0
}

@test 'ZPWR_TMUX_PREFIX_LINUX is set' {
    run test -n "$ZPWR_TMUX_PREFIX_LINUX"
    assert $state equals 0
}

@test 'ZPWR_TMUX_HISTORY_LIMIT is set' {
    run test -n "$ZPWR_TMUX_HISTORY_LIMIT"
    assert $state equals 0
}

@test 'ZPWR_TRACE is set' {
    run test -n "$ZPWR_TRACE"
    assert $state equals 0
}

@test 'ZPWR_VIM_TEMPLATES is set' {
    run test -n "$ZPWR_VIM_TEMPLATES"
    assert $state equals 0
}

@test 'ZPWR_BINDKEY_VI is set' {
    run test -n "$ZPWR_BINDKEY_VI"
    assert $state equals 0
}

@test 'ZPWR_ZINIT_COMPINIT_DELAY is set' {
    run test -n "$ZPWR_ZINIT_COMPINIT_DELAY"
    assert $state equals 0
}

@test 'ZPWR_ZDHARMA is set' {
    run test -n "$ZPWR_ZDHARMA"
    assert $state equals 0
}

@test 'ZPWR is set' {
    run test -n "$ZPWR"
    assert $state equals 0
}

@test 'ZPWR is a dir' {
    run test -d "$ZPWR"
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_MANAGER_HOME is set' {
    run test -n "$ZPWR_PLUGIN_MANAGER_HOME"
    assert $state equals 0
}

@test 'ZPWR_FZF_DIR is set' {
    run test -n "$ZPWR_FZF_DIR"
    assert $state equals 0
}

@test 'ZPWR_LOCAL is set' {
    run test -n "$ZPWR_LOCAL"
    assert $state equals 0
}

@test 'ZPWR_LOCAL is a dir' {
    run test -d "$ZPWR_LOCAL"
    assert $state equals 0
}

@test 'ZSH_CACHE_DIR is set' {
    run test -n "$ZSH_CACHE_DIR"
    assert $state equals 0
}

@test 'ZPWR_ALIAS_FILE is set' {
    run test -n "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

@test 'ZPWR_ALIAS_FILE is a file' {
    run test -f "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD is set' {
    run test -n "$ZPWR_AUTOLOAD"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD is a dir' {
    run test -d "$ZPWR_AUTOLOAD"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_COMMON is set' {
    run test -n "$ZPWR_AUTOLOAD_COMMON"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_COMMON is a dir' {
    run test -d "$ZPWR_AUTOLOAD_COMMON"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_COMPS is set' {
    run test -n "$ZPWR_AUTOLOAD_COMPS"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_COMP_UTILS is set' {
    run test -n "$ZPWR_AUTOLOAD_COMP_UTILS"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_DARWIN is set' {
    run test -n "$ZPWR_AUTOLOAD_DARWIN"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_DARWIN is a dir' {
    run test -d "$ZPWR_AUTOLOAD_DARWIN"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_FZF is set' {
    run test -n "$ZPWR_AUTOLOAD_FZF"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_FZF is a dir' {
    run test -d "$ZPWR_AUTOLOAD_FZF"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_LINUX is set' {
    run test -n "$ZPWR_AUTOLOAD_LINUX"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_LINUX is a dir' {
    run test -d "$ZPWR_AUTOLOAD_LINUX"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD_SYSTEMCTL is set' {
    run test -n "$ZPWR_AUTOLOAD_SYSTEMCTL"
    assert $state equals 0
}

@test 'ZPWR_COMPS is set' {
    run test -n "$ZPWR_COMPS"
    assert $state equals 0
}

@test 'ZPWR_COMPS is a dir' {
    run test -d "$ZPWR_COMPS"
    assert $state equals 0
}

@test 'ZPWR_CROSS_OS_CMD is set' {
    run test -n "$ZPWR_CROSS_OS_CMD"
    assert $state equals 0
}

@test 'ZPWR_CROSS_OS_EXE is set' {
    run test -n "$ZPWR_CROSS_OS_EXE"
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_DIR is set' {
    run test -n "$ZPWR_PLUGIN_DIR"
    assert $state equals 0
}

@test 'ZPWR_HIDDEN_DIR is set' {
    run test -n "$ZPWR_HIDDEN_DIR"
    assert $state equals 0
}

@test 'ZPWR_TOKEN_PRE is set' {
    run test -n "$ZPWR_TOKEN_PRE"
    assert $state equals 0
}

@test 'ZPWR_TOKEN_POST is set' {
    run test -n "$ZPWR_TOKEN_POST"
    assert $state equals 0
}

@test 'ZPWR_TEST is set' {
    run test -n "$ZPWR_TEST"
    assert $state equals 0
}

@test 'ZPWR_TEST is a dir' {
    run test -d "$ZPWR_TEST"
    assert $state equals 0
}

@test 'ZPWR_INSTALL is set' {
    run test -n "$ZPWR_INSTALL"
    assert $state equals 0
}

@test 'ZPWR_INSTALL is a dir' {
    run test -d "$ZPWR_INSTALL"
    assert $state equals 0
}

@test 'ZPWR_TMUXRC is set' {
    run test -n "$ZPWR_TMUXRC"
    assert $state equals 0
}

@test 'ZPWR_TMUXRC is a file' {
    run test -f "$ZPWR_TMUXRC"
    assert $state equals 0
}

@test 'ZPWR_VIMRC is set' {
    run test -n "$ZPWR_VIMRC"
    assert $state equals 0
}

@test 'ZPWR_VIMRC is a file' {
    run test -f "$ZPWR_VIMRC"
    assert $state equals 0
}

@test 'ZPWR_IDEAVIMRC is set' {
    run test -n "$ZPWR_IDEAVIMRC"
    assert $state equals 0
}

@test 'ZPWR_IDEAVIMRC is a file' {
    run test -f "$ZPWR_IDEAVIMRC"
    assert $state equals 0
}

@test 'ZPWR_TMUX is set' {
    run test -n "$ZPWR_TMUX"
    assert $state equals 0
}

@test 'ZPWR_TMUX is a dir' {
    run test -d "$ZPWR_TMUX"
    assert $state equals 0
}

@test 'ZPWR_TMUX_LOCAL is set' {
    run test -n "$ZPWR_TMUX_LOCAL"
    assert $state equals 0
}

@test 'ZPWR_LOCAL_TEMP is set' {
    run test -n "$ZPWR_LOCAL_TEMP"
    assert $state equals 0
}

@test 'ZPWR_LOCK_FILE is set' {
    run test -n "$ZPWR_LOCK_FILE"
    assert $state equals 0
}

@test 'ZPWR_LOCAL_ENV is set' {
    run test -n "$ZPWR_LOCAL_ENV"
    assert $state equals 0
}

@test 'ZPWR_PROMPT_FILE is set' {
    run test -n "$ZPWR_PROMPT_FILE"
    assert $state equals 0
}

@test 'ZPWR_PROMPT_FILE is a file' {
    run test -f "$ZPWR_PROMPT_FILE"
    assert $state equals 0
}

@test 'ZPWR_SCRIPTS is set' {
    run test -n "$ZPWR_SCRIPTS"
    assert $state equals 0
}

@test 'ZPWR_SCRIPTS is a dir' {
    run test -d "$ZPWR_SCRIPTS"
    assert $state equals 0
}

@test 'ZPWR_SCRIPTS_MAC is set' {
    run test -n "$ZPWR_SCRIPTS_MAC"
    assert $state equals 0
}

@test 'ZPWR_SCRIPTS_MAC is a dir' {
    run test -d "$ZPWR_SCRIPTS_MAC"
    assert $state equals 0
}

@test 'ZPWR_VERBS_FILE is set' {
    run test -n "$ZPWR_VERBS_FILE"
    assert $state equals 0
}

@test 'ZPWR_VERBS_FILE is a file' {
    run test -f "$ZPWR_VERBS_FILE"
    assert $state equals 0
}

@test 'ZPWR_LIB is set' {
    run test -n "$ZPWR_LIB"
    assert $state equals 0
}

@test 'ZPWR_LIB is a file' {
    run test -f "$ZPWR_LIB"
    assert $state equals 0
}

@test 'ZPWR_LIB_INIT is set' {
    run test -n "$ZPWR_LIB_INIT"
    assert $state equals 0
}

@test 'ZPWR_LIB_INIT is a file' {
    run test -f "$ZPWR_LIB_INIT"
    assert $state equals 0
}

@test 'ZPWR_FZF_CLEARLIST is set' {
    run test -n "$ZPWR_FZF_CLEARLIST"
    assert $state equals 0
}

@test 'ZPWR_NVIMINFO is set' {
    run test -n "$ZPWR_NVIMINFO"
    assert $state equals 0
}

@test 'ZPWR_ALACRITTY_CFG is set' {
    run test -n "$ZPWR_ALACRITTY_CFG"
    assert $state equals 0
}

@test 'ZPWR_BANNER_COMMAND is set' {
    run test -n "$ZPWR_BANNER_COMMAND"
    assert $state equals 0
}

@test 'ZPWR_BANNER_SCRIPT is set' {
    run test -n "$ZPWR_BANNER_SCRIPT"
    assert $state equals 0
}

@test 'ZPWR_BANNER_SCRIPT is a file' {
    run test -f "$ZPWR_BANNER_SCRIPT"
    assert $state equals 0
}

@test 'ZPWR_ALL_GIT_DIRS is set' {
    run test -n "$ZPWR_ALL_GIT_DIRS"
    assert $state equals 0
}

@test 'ZPWR_ALL_GIT_DIRS_CLEAN is set' {
    run test -n "$ZPWR_ALL_GIT_DIRS_CLEAN"
    assert $state equals 0
}

@test 'ZPWR_ALL_GIT_DIRS_DIRTY is set' {
    run test -n "$ZPWR_ALL_GIT_DIRS_DIRTY"
    assert $state equals 0
}

@test 'ZPWR_LOGFILE is set' {
    run test -n "$ZPWR_LOGFILE"
    assert $state equals 0
}

@test 'ZPWR_ENV_KEY_FILE is set' {
    run test -n "$ZPWR_ENV_KEY_FILE"
    assert $state equals 0
}

@test 'ZPWR_ENV_VALUE_FILE is set' {
    run test -n "$ZPWR_ENV_VALUE_FILE"
    assert $state equals 0
}

@test 'ZPWR_TEMPFILE is set' {
    run test -n "$ZPWR_TEMPFILE"
    assert $state equals 0
}

@test 'ZPWR_TEMPFILE1 is set' {
    run test -n "$ZPWR_TEMPFILE1"
    assert $state equals 0
}

@test 'ZPWR_TEMPFILE2 is set' {
    run test -n "$ZPWR_TEMPFILE2"
    assert $state equals 0
}

@test 'ZPWR_TEMPFILE3 is set' {
    run test -n "$ZPWR_TEMPFILE3"
    assert $state equals 0
}

@test 'ZPWR_TEMPFILE4 is set' {
    run test -n "$ZPWR_TEMPFILE4"
    assert $state equals 0
}

@test 'ZPWR_COMPSYS_CACHE is set' {
    run test -n "$ZPWR_COMPSYS_CACHE"
    assert $state equals 0
}

@test 'ZPWR_FORKED_DIR is set' {
    run test -n "$ZPWR_FORKED_DIR"
    assert $state equals 0
}

@test 'ZPWR_D is set' {
    run test -n "$ZPWR_D"
    assert $state equals 0
}

@test 'ZPWR_DOC is set' {
    run test -n "$ZPWR_DOC"
    assert $state equals 0
}

@test 'ZPWR_DL is set' {
    run test -n "$ZPWR_DL"
    assert $state equals 0
}

@test 'ZPWR_VIM_KEYBINDINGS is set' {
    run test -n "$ZPWR_VIM_KEYBINDINGS"
    assert $state equals 0
}

@test 'ZPWR_ALL_KEYBINDINGS is set' {
    run test -n "$ZPWR_ALL_KEYBINDINGS"
    assert $state equals 0
}

@test 'ZPWR_GITHUB_URL is set' {
    run test -n "$ZPWR_GITHUB_URL"
    assert $state equals 0
}
