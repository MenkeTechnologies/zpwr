#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Jun  2 11:16:35 EDT 2020
##### Purpose: bash/zsh script to hold env vars
##### Notes:
#}}}***********************************************************

#{{{                    MARK:Env Variables
#**************************************************************
# Global Environment Variables for ZPWR by MenkeTechnologies
# More Environment Variables in ~/.zpwr/env/.shell_aliases_functions.sh near top of file
# override in ~/.zpwr/local/.tokens.sh, ~/.zpwr/local is git ignored
# see README.md
# linux OS SSH auto attach to tmux sessions
export ZPWR_AUTO_ATTACH=true
# list completion choices automatically
export ZPWR_AUTO_COMPLETE=false
# delay before listing completion choices automatically
export ZPWR_AUTO_COMPLETE_DELAY=3.0
# run ls after rm and other modifying commands such as touch automatically
export ZPWR_AUTO_LS_RM=true
# run ls after cd automatically
export ZPWR_AUTO_LS_CD=true
# auto select first item of menuselect
export ZPWR_AUTO_SELECT=true
# clear and ls before and after banner
export ZPWR_BANNER_CLEARLIST=true
# cd to Desktop after banner Darwin
export ZPWR_BANNER_DESKTOP_DARWIN=false
# cd to Desktop after banner Linux
export ZPWR_BANNER_DESKTOP_LINUX=true
# ponysay banner when shell startup finishes
export ZPWR_INTRO_BANNER=ponies
# bat (syntax highlighting) theme
export ZPWR_BAT_THEME='GitHub'
# this the description separator in compsys option completions (ls -<tab>)
# and the separator for function se() between row number and learning
export ZPWR_CHAR_LOGO='<<)(>>'
# group description leading chars
export ZPWR_DESC_PRE='-<<'
# group description trailing chars
export ZPWR_DESC_POST='>>-'
# group description text color ANSI codes
export ZPWR_DESC_TEXT_COLOR='34'
# group description leading chars color ANSI codes
export ZPWR_DESC_PRE_COLOR='1;31'
# group description trailing chars color ANSI codes
export ZPWR_DESC_POST_COLOR='1;31'
# output is more colorful
export ZPWR_COLORS=true
# colored section headers
export ZPWR_COLORS_SECTIONS=true
# zpwr <tab> is more colorful
export ZPWR_COLORS_VERBS=true
# common colors ANSI codes
export ZPWR_COLOR_BLUE="\x1b[37;44m"
export ZPWR_COLOR_RED="\x1b[31m"
export ZPWR_COLOR_RESET="\x1b[0m"
# ANSI styling codes for git commits
export ZPWR_COMMIT_STYLE='1;37;45'
# named compsys colors zsh pattern and ANSI codes
export ZPWR_NAMED_COLORS='=(#b)(*)=1;37;46'
# file prefix compsys colors
export ZPWR_COMMON_ZSTYLE_OPTS='reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)(*)==37;45=37;43=34}:${(s.:.)LS_COLORS}")'
# sudo prefix to add when you get permission denied
export ZPWR_SUDO_CMD='sudo -E'
# sudo for aliases and expansion
export ZPWR_FULL_SUDO='\builtin command sudo -E env PATH="$PATH"'
# the repo name for more zsh compsys completions
export ZPWR_COMPLETION_DIR='zsh-more-completions'
# spelling correction in zsh-expand plugin
export ZPWR_CORRECT=true
# aliases expand after spelling correction
export ZPWR_CORRECT_EXPAND=true
# turns on debugging logs using zpwrLogDebug function
export ZPWR_DEBUG=false
# default OMZ theme if Powerlevel 10k not used
export ZPWR_DEFAULT_OMZ_THEME=simonoff
# for alternating pretty printer
export ZPWR_DELIMITER_CHAR='%'
# the default vim command
export ZPWR_VIM='nvim'
# the emacs command
export ZPWR_EMACS='command emacs -nw'
# the emacs client command
export ZPWR_EMACS_CLIENT='emacsclient -c -nw -a ""'
# exa command invoked from zpwrClearList shows extended attributes
export ZPWR_EXA_EXTENDED=true
# enable all expansion
export ZPWR_EXPAND=true
# aliases expand in second position after sudo
export ZPWR_EXPAND_SECOND_POSITION=true
# expand globs, history etc with zle expand-word
export ZPWR_EXPAND_NATIVE=true
# aliases expand before command line is accepted
export ZPWR_EXPAND_PRE_EXEC=true
# globs etc expand before command line is accepted
export ZPWR_EXPAND_PRE_EXEC_NATIVE=false
# second pos expand before command line is accepted
export ZPWR_EXPAND_PRE_EXEC_SECOND_POSITION=true
# expand inside "
export ZPWR_EXPAND_QUOTE_DOUBLE=true
# expand inside '
export ZPWR_EXPAND_QUOTE_SINGLE=false
# command for all fzf
export ZPWR_FZF='fzf --ansi'
# prompt for all fzf
export ZPWR_FZF_LOGO='<<)ZPWR(>>'
# GH username
export ZPWR_GITHUB_ACCOUNT='MenkeTechnologies'
# the char that prefixes global aliases like je<space>
export ZPWR_GLOBAL_ALIAS_PREFIX=j
# whether to search interactively in menuselect
export ZPWR_INTERACTIVE_MENU_SELECT=true
# timeout for keybindings
export ZPWR_KEYTIMEOUT=10
# whether to include all the zpwr learning functions
export ZPWR_LEARN=true
# zpwrLogColor function underscore color ANSI codes
export ZPWR_LOG_UNDER_COLOR='\x1b[0;34m'
# zpwrLogColor function quote color
export ZPWR_LOG_QUOTE_COLOR='\x1b[0;35m'
# zpwrLogColor function timestamp color
export ZPWR_LOG_DATE_COLOR='\x1b[0;32;44m'
# zpwrLogColor function message color
export ZPWR_LOG_MSG_COLOR='\x1b[0;37;45m'
# when true vim normal mode C-V mapped to exec current file in right tmux pane
export ZPWR_MAP_C_V_VIM_NORMAL=false
# the marker found color in bat output into fzf from ag search ANSI codes
export ZPWR_MARKER_COLOR='0;1;4;37;44m'
# default value for pygmentize theme
export ZPWR_PYGMENTIZE_COLOR="emacs"
# zpwr colorizer = bat or pygmentize
export ZPWR_COLORIZER=bat
# zsh options set in precmd fn before prompt
export ZPWR_OPTS=
# the OS of the host
export ZPWR_OS_TYPE="$(uname -s | tr A-Z a-z)"
# plugin framework
export ZPWR_PLUGIN_MANAGER=zinit
# global python version
export ZPWR_PYTHON='python3.10'
# use mac vim over vim on darwin
export ZPWR_PREFER_MVIM=true
# uses the zprof function to profile startup
export ZPWR_PROFILING=false
# set to POWERLEVEL to use the powerlevel10k prompt
export ZPWR_PROMPT=powerlevel10k
# pssh timeout
export ZPWR_PSSH_TIMEOUT=0
# git colored output cmd prefix
export ZPWR_GIT_COLOR_PREFIX="git -c color.status=always -c color.ui=always --no-pager"
# char to separate log messages
export ZPWR_QUOTE_START_CHAR='<<('
# char to separate log messages
export ZPWR_QUOTE_END_CHAR=')>>'
# maybe z4ze
export ZPWR_REPO_NAME='zpwr'
# when true sends every char to synced panes
# when false does not send enter and Control to synced panes
export ZPWR_SEND_KEYS_FULL=false
# how long to sleep after display of counts in zpwr display of all
export ZPWR_LOOK_TIME=5
# set to comma separated list of pane numbers
# to activate sending to numbered tmux panes
export ZPWR_SEND_KEYS_PANE=-1
# typing leading quote, paren, bracket inserts trailing after caret
export ZPWR_SURROUND=true
# the string that marks a tabstop when expanding aliases
export ZPWR_TABSTOP=__________
# include tabstop aliases
export ZPWR_TABSTOP_ALIASES=true
# the tmux prefix on mac
export ZPWR_TMUX_PREFIX_MAC='C-a'
# the tmux prefix on linux
export ZPWR_TMUX_PREFIX_LINUX='C-b'
# the tmux copy mode history limit
export ZPWR_TMUX_HISTORY_LIMIT=30000
# turns on set -x in critical regions
export ZPWR_TRACE=false
# add header template to certain filetypes in vim
export ZPWR_VIM_TEMPLATES=true
# use bindkey -v
export ZPWR_BINDKEY_VI=true
# use nvim not vim
export ZPWR_USE_NEOVIM=true
# delay between shell start and compinit
export ZPWR_ZINIT_COMPINIT_DELAY=0
# username for zdharma
export ZPWR_ZDHARMA="zdharma-continuum"
# regex for tmux thumbs
export ZPWR_THUMBS_REGEX='^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$
((?:[a-z0-9]+(?:-[a-z0-9]+)*\.)+[a-z]{2,})(?::.*)?'
# store tty for faster prompt
export ZPWR_TTY=$(tty)

# set to false if this file is sourced during remote execution with no ZPWR env
test -z "$ZPWR_REMOTE" && export ZPWR_REMOTE=false

function zpwrIsZsh(){

    test -n "$ZSH_VERSION"
}

if [[ "$ZPWR_REMOTE" != true ]]; then

    test -z "$ZPWR_RE_ENV_FILE" && export ZPWR_RE_ENV_FILE="$ZPWR/env/.zpwr_re_env.sh"

    source "$ZPWR_RE_ENV_FILE" || {
        echo "could not source ZPWR_RE_ENV_FILE '$ZPWR_RE_ENV_FILE'" >&2
    }

    #{{{                    MARK:source lib file
    #**************************************************************
    source "$ZPWR_LIB" || {
        echo "could not source ZPWR_LIB '$ZPWR_LIB'" >&2
    }
    #}}}***********************************************************

    if zpwrIsZsh; then
        typeset -Tgx ZPWR_DIRS_CLEAN zpwrDirsClean
        typeset -Tgx ZPWR_FILES_CLEAN zpwrFilesClean
        typeset -Ag ZPWR_PROCESSED=()
    fi
fi

# do not want any surprises when relative cd to other dirs
unset CDPATH
#}}}***********************************************************

#{{{                    MARK:NonZPWR
#**************************************************************
# command to run on enter key with empty buffer
export MAGIC_ENTER_OTHER_COMMAND='zpwrClearList'
# command to run on enter key with empty buffer and git dir
export MAGIC_ENTER_GIT_COMMAND='zpwrClearList; test -n "$(git status --porcelain)" && git status -u .'
#}}}***********************************************************
