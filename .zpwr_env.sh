#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Jun  2 11:16:35 EDT 2020
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

#{{{                    MARK:Env Variables
#**************************************************************
# Global Environment Variables for ZPWR by MenkeTechnologies
# More Environment Variables in ~/.zpwr/.shell_aliases_functions.sh near top of file
# override in ~/.zpwr/local/.tokens.sh, ~/.zpwr/local is git ignored
# see README.md
# the base dir for zpwr configs
export ZPWR="$HOME/.zpwr"
# this file
export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
# local file ignored by git
export ZPWR_LOCAL="$ZPWR/local"
export ZPWR_HIDDEN_DIR="$ZPWR/local"
# private tokens file sourced before 
export ZPWR_TOKEN_PRE="$ZPWR_LOCAL/.tokens.sh"
# private tokens file sourced after
export ZPWR_TOKEN_POST="$ZPWR_LOCAL/.tokens-post.sh"
export ZPWR_TEST="$ZPWR/tests"
# zpwr install files
export ZPWR_INSTALL="$ZPWR/install"
# zpwr tmux config files
export ZPWR_TMUX="$ZPWR/.tmux"
# zpwr tmux git ignored files
export ZPWR_TMUX_LOCAL="$ZPWR_TMUX/local"
# the base dir for zpwr temp
export ZPWR_HIDDEN_DIR_TEMP="$ZPWR_LOCAL/.temp"
# the path to a lock file (semaphore) for zpwr
export ZPWR_LOCK_FILE="$ZPWR_LOCAL/.lock"
# set to POWERLEVEL to use the powerlevel9k prompt
export ZPWR_PROMPT=POWERLEVEL
# aliases expand in first position
export ZPWR_EXPAND=true
# aliases expand in second position after sudo
export ZPWR_EXPAND_SECOND_POSITION=true
# expand globs, history etc with zle expand-word
export ZPWR_EXPAND_NATIVE=true
# spelling correction in zsh-expand plugin
export ZPWR_CORRECT=true
# aliases expand after spelling correction
export ZPWR_CORRECT_EXPAND=true
# auto select first item of menuselect
export ZPWR_AUTO_SELECT=true
# typing leading quote, paren, bracket inserts trailing after caret
export ZPWR_SURROUND=true
# output is more colorful
export ZPWR_COLORS=true
# linux OS auto attach to tmux sessions
export ZPWR_AUTO_ATTACH=true
# exa command invoked from clearList shows extended attributes
export ZPWR_EXA_EXTENDED=true
# uses the zprof function to profile startup
export ZPWR_PROFILING=false
# turns on debugging logs using logg function
export ZPWR_DEBUG=false
# turns on set -x
export ZPWR_TRACE=false
# use nvim not vim
export ZPWR_USE_NEOVIM=true
# use mac vim over vim on darwin
export ZPWR_PREFER_MVIM=true
#whether to include all the zpwr learning functions
export ZPWR_LEARN=true
# ANSI styling codes for git commits
export ZPWR_COMMIT_STYLE='1;37;45'
# bat (syntax highlighting) theme
export ZPWR_BAT_THEME="GitHub"
# the char that prefixes global aliases like je<space>
export ZPWR_GLOBAL_ALIAS_PREFIX=j
# the string that marks a tabstop when expanding aliases
# move to next tabstop with ^P
export ZPWR_TABSTOP=__________
# the OS of the host
export ZPWR_OS_TYPE="$(uname -s | tr A-Z a-z)"
# for alternating pretty printer
export ZPWR_DELIMITER_CHAR='%'
export ZPWR_GITHUB_ACCOUNT='MenkeTechnologies'
export GITHUB_ACCOUNT="$ZPWR_GITHUB_ACCOUNT"
export ZPWR_GITHUB_URL="https://github.com/$ZPWR_GITHUB_ACCOUNT"
# maybe z4ze
export ZPWR_REPO_NAME="zpwr"
# the repo name for more zsh compsys completions
export ZPWR_COMPLETION_DIR="zsh-more-completions"
# the path for vim keybindings cache
export ZPWR_VIM_KEYBINDINGS="$ZPWR_LOCAL/zpwrVimKeybindings.txt"
# the path for all keybindings cache
export ZPWR_ALL_KEYBINDINGS="$ZPWR_LOCAL/zpwrAllKeybindings.txt"
# logg function underscore color
export ZPWR_LOG_UNDER_COLOR='\x1b[0;34m'
# logg function quote color
export ZPWR_LOG_QUOTE_COLOR='\x1b[0;35m'
# logg function timestamp color
export ZPWR_LOG_DATE_COLOR='\x1b[0;32;44m'
# logg function message color
export ZPWR_LOG_MSG_COLOR='\x1b[0;37;45m'
# run ls after rm and other modifying commands such as touch automatically
export ZPWR_RM_AUTO_LS=true
# run ls after cd automatically
export ZPWR_CD_AUTO_LS=true
# cache file for all zpwr env lookups
export ZPWR_ENV="$ZPWR_LOCAL/zpwrEnv"
# forked powerlevel9k config file for PROMPT
export ZPWR_PROMPT_FILE="$ZPWR/.powerlevel9kconfig.sh"
# the location of associated interpreted scripts
export ZPWR_SCRIPTS="$ZPWR/scripts"
# the location of macOS only associated interpreted scripts
export ZPWR_SCRIPTS_MAC="$ZPWR_SCRIPTS/macOnly"
# the location of zpwr lib file
export ZPWR_LIB="$ZPWR_SCRIPTS/lib.sh"
# the tmux prefix on mac
export ZPWR_TMUX_PREFIX_MAC='C-a'
# the tmux prefix on linux
export ZPWR_TMUX_PREFIX_LINUX='C-b'
# this the description separator in compsys option completions (ls -<tab>)
# and the separator for function se() between row number and learning
export ZPWR_CHAR_LOGO="<<)(>>"
# char to separate log messages
export ZPWR_QUOTE_START_CHAR="<<("
# char to separate log messages
export ZPWR_QUOTE_END_CHAR=")>>"
# prompt for all fzf
export ZPWR_FZF_LOGO="<<)ZPWR(>>"
# command for all fzf
export ZPWR_FZF="fzf"
# command for all fzf clearlist in preview pane
export ZPWR_FZF_CLEARLIST="$ZPWR_SCRIPTS/clearList.sh -- \$file | fold -s -w 80"
# set to comma separated list of pane numbers
# to activate sending to numbered tmux panes
export ZPWR_SEND_KEYS_PANE=-1
# when true sends every char to synced panes
# when false does not send enter and Control to synced panes
export ZPWR_SEND_KEYS_FULL=false
# when ZPWR_USE_NEOVIM=true this the file used to find most recent files opened in neovim
export ZPWR_NVIMINFO="$ZPWR_LOCAL/.nviminfo"
# emacs recent files
export ZPWR_RECENTF="$HOME/.emacs.d/.cache/recentf"
# when true vim normal mode C-V mapped to exec current file in right tmux pane
export ZPWR_MAP_C_V_VIM_NORMAL=false
# ponysay banner when shell startup finishes
export ZPWR_INTRO_BANNER=ponies
# alternate banner to ponysay
export ZPWR_DEFAULT_BANNER="bash $ZPWR_SCRIPTS_MAC/figletRandomFontOnce.sh $(hostname)"
# zpwr banner file location
export ZPWR_BANNER_SCRIPT="$ZPWR_SCRIPTS/about.sh"
# the emacs command
export ZPWR_EMACS='command emacs -nw'
# the emacs client command
export ZPWR_EMACS_CLIENT='emacsclient -c -nw -a ""'
# the marker found color in bat output into fzf from ag search
export ZPWR_MARKER_COLOR="0;1;4;37;44m"
# whether to search interactively in menuselect
export ZPWR_INTERACTIVE_MENU_SELECT=true
# list of git dirs
export ZPWR_ALL_GIT_DIRS="$ZPWR_LOCAL/zpwrGitDirs.txt"
# log file
export ZPWR_LOGFILE="$ZPWR_LOCAL/zpwrLog.txt"
# default OMZ theme if Powerlevel 9k not used
export ZPWR_DEFAULT_OMZ_THEME=simonoff
# cache of env keys
export ZPWR_ENV_KEY_FILE="${ZPWR_ENV}Key.txt"
# cache of env values
export ZPWR_ENV_VALUE_FILE="${ZPWR_ENV}Value.txt"
# temp files
export ZPWR_TEMPFILE="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-$USER"
export ZPWR_TEMPFILE1="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-1$USER"
export ZPWR_TEMPFILE2="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-2$USER"
export ZPWR_TEMPFILE3="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-3$USER"
export ZPWR_TEMPFILE4="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-4$USER"
# SQL temp files for use with learning collection
export ZPWR_TEMPFILE_SQL="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-2$USER.sql"
# remove all files in these dirs, modify this in your tokens file
# common dirs
export ZPWR_D="$HOME/Desktop"
export ZPWR_DOC="$HOME/Documents"
export ZPWR_DL="$HOME/Downloads"
# common colors
export ZPWR_BLUE="\x1b[37;44m"
export ZPWR_RED="\x1b[31m"
export ZPWR_RESET="\x1b[0m"
#}}}***********************************************************

#{{{                    MARK:NonZPWR
#**************************************************************
# history file
export HISTFILE="$HOME/.$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT-history"
# command to run on enter key with empty buffer
export MAGIC_ENTER_OTHER_COMMAND="clearList"
# command to run on enter key with empty buffer and git dir
export MAGIC_ENTER_GIT_COMMAND='clearList; test -n "$(git status --porcelain)" && git status -u .'
#}}}***********************************************************

#{{{                    MARK:source lib file
#**************************************************************
# do not want any surprises when relative cd to other dirs
unset CDPATH

source "$ZPWR_LIB" || {
    echo "where is $ZPWR_LIB" >&2
    return 1
}
#}}}***********************************************************

if isZsh; then
    declare -T ZPWR_DIRS_CLEAN zpwrDirsClean
fi

export ZPWR_DIRS_CLEAN
#}}}***********************************************************

