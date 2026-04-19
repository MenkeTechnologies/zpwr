#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 24 00:00:00 EST 2026
##### Purpose: zsh script to test remaining ZPWR env vars
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Paths and directories from re_env
#--------------------------------------------------------------
@test 'ZPWR_ALIAS_FILE is set' {
    run test -n "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

@test 'ZPWR_ALIAS_FILE is a file' {
    run test -f "$ZPWR_ALIAS_FILE"
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

@test 'ZPWR_ALL_KEYBINDINGS is set' {
    run test -n "$ZPWR_ALL_KEYBINDINGS"
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

@test 'ZPWR_CROSS_OS_EXE is set' {
    run test -n "$ZPWR_CROSS_OS_EXE"
    assert $state equals 0
}

@test 'ZPWR_DL is set' {
    run test -n "$ZPWR_DL"
    assert $state equals 0
}

@test 'ZPWR_DOC is set' {
    run test -n "$ZPWR_DOC"
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

@test 'ZPWR_FIFO is set' {
    run test -n "$ZPWR_FIFO"
    assert $state equals 0
}

@test 'ZPWR_HIDDEN_DIR is set' {
    run test -n "$ZPWR_HIDDEN_DIR"
    assert $state equals 0
}

@test 'ZPWR_IDEAVIMRC is set' {
    run test -n "$ZPWR_IDEAVIMRC"
    assert $state equals 0
}

@test 'ZPWR_NVIMINFO is set' {
    run test -n "$ZPWR_NVIMINFO"
    assert $state equals 0
}

@test 'ZPWR_OPTS is set' {
    run test -v ZPWR_OPTS
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_DIR is set' {
    run test -n "$ZPWR_PLUGIN_DIR"
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_MANAGER_HOME is set' {
    run test -n "$ZPWR_PLUGIN_MANAGER_HOME"
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

@test 'ZPWR_RECENTF is set' {
    run test -n "$ZPWR_RECENTF"
    assert $state equals 0
}

@test 'ZPWR_SOCKET is set' {
    run test -n "$ZPWR_SOCKET"
    assert $state equals 0
}

@test 'ZPWR_TEMPFILE is set' {
    run test -n "$ZPWR_TEMPFILE"
    assert $state equals 0
}

@test 'ZPWR_TEMPFILE_PROCESSED is set' {
    run test -n "$ZPWR_TEMPFILE_PROCESSED"
    assert $state equals 0
}

@test 'ZPWR_TEMPFILE_SQL is set' {
    run test -n "$ZPWR_TEMPFILE_SQL"
    assert $state equals 0
}

@test 'ZPWR_TMUX_CAPTURE is set' {
    run test -n "$ZPWR_TMUX_CAPTURE"
    assert $state equals 0
}

@test 'ZPWR_TMUXRC is set' {
    run test -n "$ZPWR_TMUXRC"
    assert $state equals 0
}

@test 'ZPWR_VARS is set' {
    run test -n "$ZPWR_VARS"
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

@test 'ZPWR_VIM_KEYBINDINGS is set' {
    run test -n "$ZPWR_VIM_KEYBINDINGS"
    assert $state equals 0
}

@test 'ZPWR_ZINIT_FZF is set' {
    run test -n "$ZPWR_ZINIT_FZF"
    assert $state equals 0
}

@test 'ZPWR_ALACRITTY_CFG is set' {
    run test -n "$ZPWR_ALACRITTY_CFG"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_OPTS content checks
#--------------------------------------------------------------
@test 'ZPWR_OPTS is a scalar' {
    run zsh -c 'source $ZPWR/env/.zpwr_env.sh; source $ZPWR/env/.zpwr_re_env.sh; [[ ${(t)ZPWR_OPTS} == *scalar* ]]'
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_ALIAS_FILE content
#--------------------------------------------------------------
@test 'ZPWR_ALIAS_FILE bash syntax check' {
    run bash -n "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

@test 'ZPWR_ALIAS_FILE zsh syntax check' {
    run zsh -n "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

#--------------------------------------------------------------
# Cross-OS script checks
#--------------------------------------------------------------
@test 'ZPWR_CROSS_OS_CMD bash syntax check' {
    run bash -n "$ZPWR_CROSS_OS_CMD"
    assert $state equals 0
}

@test 'ZPWR_CROSS_OS_CMD zsh syntax check' {
    run zsh -n "$ZPWR_CROSS_OS_CMD"
    assert $state equals 0
}

#--------------------------------------------------------------
# Banner script checks
#--------------------------------------------------------------
@test 'ZPWR_BANNER_SCRIPT bash syntax check' {
    run bash -n "$ZPWR_BANNER_SCRIPT"
    assert $state equals 0
}

@test 'ZPWR_BANNER_SCRIPT zsh syntax check' {
    run zsh -n "$ZPWR_BANNER_SCRIPT"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VIMRC
#--------------------------------------------------------------
@test 'ZPWR_VIMRC is set' {
    run test -n "$ZPWR_VIMRC"
    assert $state equals 0
}

@test 'ZPWR_VIMRC is a file' {
    run test -f "$ZPWR_VIMRC"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_TMUXRC
#--------------------------------------------------------------
@test 'ZPWR_TMUXRC is a file' {
    run test -f "$ZPWR_TMUXRC"
    assert $state equals 0
}

#--------------------------------------------------------------
# Env var type checks
#--------------------------------------------------------------
@test 'ZPWR_DEBUG is true or false' {
    run printf "$ZPWR_DEBUG"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_TRACE is true or false' {
    run printf "$ZPWR_TRACE"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_PROFILING is true or false' {
    run printf "$ZPWR_PROFILING"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_EXPAND is true or false' {
    run printf "$ZPWR_EXPAND"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_CORRECT is true or false' {
    run printf "$ZPWR_CORRECT"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_BINDKEY_VI is true or false' {
    run printf "$ZPWR_BINDKEY_VI"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_AUTO_ATTACH is true or false' {
    run printf "$ZPWR_AUTO_ATTACH"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_AUTO_COMPLETE is true or false' {
    run printf "$ZPWR_AUTO_COMPLETE"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_EXA_EXTENDED is true or false' {
    run printf "$ZPWR_EXA_EXTENDED"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

@test 'ZPWR_REMOTE is true or false' {
    run printf "$ZPWR_REMOTE"
    [[ "$output" == true || "$output" == false ]]
    assert $? equals 0
}

#--------------------------------------------------------------
# Numeric env var range checks
#--------------------------------------------------------------
@test 'ZPWR_AUTO_COMPLETE_DELAY is a positive number' {
    run echo "$ZPWR_AUTO_COMPLETE_DELAY"
    assert "$output" is_greater_than 0
}

@test 'ZPWR_KEYTIMEOUT is a positive number' {
    run echo "$ZPWR_KEYTIMEOUT"
    assert "$output" is_greater_than 0
}

@test 'ZPWR_TABSTOP is set' {
    run test -n "$ZPWR_TABSTOP"
    assert $state equals 0
}

@test 'ZPWR_LOOK_TIME is a positive number' {
    run echo "$ZPWR_LOOK_TIME"
    assert "$output" is_greater_than 0
}

@test 'ZPWR_PSSH_TIMEOUT is a non-negative number' {
    run echo "$ZPWR_PSSH_TIMEOUT"
    assert "$output" is_greater_than -1
}

@test 'ZPWR_ZINIT_COMPINIT_DELAY is a non-negative number' {
    run echo "$ZPWR_ZINIT_COMPINIT_DELAY"
    assert "$output" is_greater_than -1
}

#--------------------------------------------------------------
# Content checks for specific env vars
#--------------------------------------------------------------
@test 'ZPWR_SUDO_CMD contains sudo' {
    run printf "$ZPWR_SUDO_CMD"
    assert "$output" contains sudo
}

@test 'ZPWR_PLUGIN_MANAGER contains zinit' {
    run printf "$ZPWR_PLUGIN_MANAGER"
    assert "$output" contains zinit
}

@test 'ZPWR_PROMPT contains powerlevel' {
    run printf "$ZPWR_PROMPT"
    assert "$output" contains powerlevel
}

@test 'ZPWR_REPO_NAME is zpwr' {
    assert $ZPWR_REPO_NAME equals zpwr
}

@test 'ZPWR_VIM contains vim' {
    run printf "$ZPWR_VIM"
    assert "$output" contains vim
}

@test 'ZPWR_EMACS contains emacs' {
    run printf "$ZPWR_EMACS"
    assert "$output" contains emacs
}

@test 'ZPWR_FD contains fd' {
    run printf "$ZPWR_FD"
    assert "$output" contains fd
}

@test 'ZPWR_FZF contains fzf' {
    run printf "$ZPWR_FZF"
    assert "$output" contains fzf
}

@test 'ZPWR_EXA_COMMAND contains eza' {
    run printf "$ZPWR_EXA_COMMAND"
    assert "$output" contains eza
}

@test 'ZPWR_ZDHARMA contains zdharma' {
    run printf "$ZPWR_ZDHARMA"
    assert "$output" contains zdharma
}

@test 'ZPWR_FULL_SUDO contains sudo' {
    run printf "$ZPWR_FULL_SUDO"
    assert "$output" contains sudo
}

@test 'ZPWR_OS_TYPE is darwin or linux' {
    run printf "$ZPWR_OS_TYPE"
    [[ "$output" == darwin || "$output" == linux ]]
    assert $? equals 0
}
