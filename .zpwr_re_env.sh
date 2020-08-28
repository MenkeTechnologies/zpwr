#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Aug 28 16:10:06 EDT 2020
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

#{{{                    MARK:env vars to re eval after sourcing tokens
#**************************************************************
# the base dir for zpwr configs
export ZPWR="$HOME/.zpwr"
# the path to a lock file (semaphore) for zpwr
export ZPWR_LOCK_FILE="$ZPWR_LOCAL/.lock"
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
# command for all fzf clearlist in preview pane
export ZPWR_FZF_CLEARLIST="$ZPWR_SCRIPTS/clearList.sh -- \$file | fold -s -w 80"
# when ZPWR_USE_NEOVIM=true this the file used to find most recent files opened in neovim
export ZPWR_NVIMINFO="$ZPWR_LOCAL/.nviminfo"
# emacs recent files
export ZPWR_RECENTF="$HOME/.emacs.d/.cache/recentf"
# alternate banner to ponysay
export ZPWR_DEFAULT_BANNER="bash $ZPWR_SCRIPTS_MAC/figletRandomFontOnce.sh $(hostname)"
# zpwr banner file location
export ZPWR_BANNER_SCRIPT="$ZPWR_SCRIPTS/about.sh"
# list of git dirs
export ZPWR_ALL_GIT_DIRS="$ZPWR_LOCAL/zpwrGitDirs.txt"
# log file
export ZPWR_LOGFILE="$ZPWR_LOCAL/zpwrLog.txt"
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
# history file
export HISTFILE="$HOME/.$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT-history"
# the path for vim keybindings cache
export ZPWR_VIM_KEYBINDINGS="$ZPWR_LOCAL/zpwrVimKeybindings.txt"
# the path for all keybindings cache
export ZPWR_ALL_KEYBINDINGS="$ZPWR_LOCAL/zpwrAllKeybindings.txt"
export GITHUB_ACCOUNT="$ZPWR_GITHUB_ACCOUNT"
export ZPWR_GITHUB_URL="https://github.com/$ZPWR_GITHUB_ACCOUNT"
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
#}}}***********************************************************

