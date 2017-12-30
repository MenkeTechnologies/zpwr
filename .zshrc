export LC_ALL="en_US.UTF-8"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="simonoff"

#if this is a mac or linux
[[ "$(uname)" == "Darwin" ]] && source \
    "$HOME/.powerlevel9kconfig.sh" \
    || export RPROMPT="%{%B%}`tty` `echo $$ $-`"

#colors for common commands
[[ -f "$HOME/grc.zsh" ]] && source "$HOME/grc.zsh"

export SHELL="/usr/local/bin/zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf-zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions tmux sublime ng ruby yarn github gem npm rvm perl osx node brews cpanm git gradle pip python scala man nmap postgres colorize django ruby spring sudo)

source $ZSH/oh-my-zsh.sh



#get rid of mercurial prompt
hg_prompt_info(){}
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#has all my aliases and functioms
source ~/.shell_aliases_functions.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
#  alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd

source "$HOME/.oh-my-zsh/lib/key-bindings.zsh"

bindkey -v
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

#{{{                    MARK:Custom Fxns
#**************************************************************

_sub (){
    zle kill-whole-line
    BUFFER="suc"
    zle .accept-line

}
_updater (){
    zle kill-whole-line
    #bash -l options for creating login shell to run script
    #avoiding issues with rvm which only runs on login shell
    BUFFER="( cat $SCRIPTS/updater.sh |  bash -l 2>&1 | tee -a $LOGFILE | perl -pne 's/\\e\[.*m/\n/g' | mutt -s \"Log from `date`\" jamenk@me.com 2>$LOGFILE &)"
    zle .accept-line
}

_gitfunc () {
    gitCommitAndPush "$BUFFER"
    zle kill-whole-line
    zle .accept-line
}

_tutsUpdate() {
    commitMessage="$BUFFER"
    if [[ "$commitMessage" ]]; then
        if [[ "$commitMessage" =~ ^\ +$ ]]; then
            printf "No commit message\n" >&2
            zle .accept-line
        else
            zle kill-whole-line
            BUFFER="( tutorialConfigUpdater.sh '$commitMessage' >> \"$LOGFILE\" 2>&1 & )"
            zle .accept-line
        fi
    else
        printf "No commit message\n" >&2
        zle .accept-line
    fi
}

_tmm() {
    zle kill-whole-line
    BUFFER=tmm
    zle .accept-line
}

_db() {
    zle kill-whole-line
    BUFFER=db
    zle .accept-line
}

expand-aliases() {
unset 'functions[_expand-aliases]'
functions[_expand-aliases]=$BUFFER
(($+functions[_expand-aliases])) &&
    BUFFER=${functions[_expand-aliases]#$'\t'} &&
    CURSOR=$#BUFFER
}

zle -N expand-aliases

bindkey '\e^E' expand-aliases

zle -N _gitfunc
zle -N _updater
zle -N _sub
zle -N _db
zle -N _tmm
zle -N _tutsUpdate

bindkey '\e[1;5D' _db
bindkey '\e[1;2D' _sub
#press both escape and control f then oo
bindkey '\e^f' _sub
bindkey '^@' _tmm

bindkey '\e[1;5B' _updater
#F1 key
bindkey '\eOP' _updater
#F2 key
bindkey '\eOQ' _sub
bindkey '\e[1;5A' _gitfunc
bindkey '^S' _gitfunc
bindkey '\e[1;5C' _tutsUpdate
bindkey '```' sudo-command-line
bindkey '^T' transpose-words

#Filter stderr through shell scripts
#having this setting messes with tmux resurrect so will enable it on individual basis
#exec 2> >("$SCRIPTS"/redText.sh)

my-accept-line () {

WILL_CLEAR=false

#do we want to clear the screen and run ls after we exec the current line?
#
commandsThatModifyFiles=(rm to md touch chown chmod rmdir mv cp chflags chgrp ln mkdir git\ reset git\ clone gcl dot_clean)

for command in ${commandsThatModifyFiles[@]}; do
    regex="^sudo $command .*\$|^$command .*\$"
    if [[ "$BUFFER" =~ $regex ]]; then
        WILL_CLEAR=true
    fi
done

zle .accept-line 
}
zle -N accept-line my-accept-line

precmd(){
    if [[ $? == 0 ]]; then
        if [[ "$WILL_CLEAR" == true ]]; then
            clear
            listNoClear
        fi
    fi
    #exec 2> >(blueUpperText.sh)
}

rationalize-dot (){
    if [[ $LBUFFER = *.. ]]; then
        LBUFFER+=/..
    else
        LBUFFER+=.
    fi
}
zle -N rationalize-dot
bindkey . rationalize-dot

#}}}***********************************************************

# Set Options {{{
# ===== Basics
setopt rcquotes # allow '' escape
setopt interactive_comments # Allow comments even in interactive shells (especially for Muness)

# ===== Changing Directories
setopt auto_cd # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt cdablevarS # if argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory
setopt pushd_ignore_dups # don't push multiple copies of the same directory onto the directory stack
# ===== Expansion and Globbing
setopt extended_glob # treat #, ~, and ^ as part of patterns for filename generation
# ===== History
setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration
setopt inc_append_history # Add comamnds as they are typed, don't wait until shell exit
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first

setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_verify # do not execute, just expand history
setopt hist_ignore_space # remove command line from history list when first character on the line is a space
setopt hist_find_no_dups # When searching history don't display results already cycled through twice
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history
unsetopt hist_verify # do not execute, just expand history
setopt share_history # imports new commands and appends typed commands to history
# ===== Completion
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word
#setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt complete_in_word # Allow completion from within a word/phrase
#unsetopt menu_complete # do not autoselect the first completion entry
# ===== Correction
#setopt correct # spelling correction for commands
#setopt correctall # spelling correction for arguments
# ===== Prompt
setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt transient_rprompt # only show the rprompt on the current prompt

# ===== Scripts and Functions
setopt multios # perform implicit tees or cats when multiple redirections are attempted

setopt globdots

setopt CSH_NULL_GLOB
#select first options on tab
#setopt menucomplete

setopt nolistbeep

# > file creates files
setopt shnullcmd

# allow unquoted globs to pass through
setopt nobadpattern

setopt numericglobsort

setopt magicequalsubst

# }}}

# Auto Completion {{{
# avoid insecure warning message with -u
autoload -U compinit && compinit u
zmodload -i zsh/complist

# Enable completion caching, use rehash to clear
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST
# Fallback to built in ls colors
zstyle ':completion:*' list-colors ''

# Make the list prompt friendly
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
# Make the selection prompt friendly when there are a lot of choices
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
# Add simple colors to kill
zstyle ':completion:*:*:kill:*:processes' list-colors \
    '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
# formatting and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format \
    $'\e[1;31m-<<\e[0;34m%d\e[1;31m>>-\e[0m'

zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'

# 0 -- vanilla completion (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion (abc => A-big-Car)
# 3 -- full flex completion (abc => ABraCadabra)
zstyle ':completion:*' matcher-list '' \
    'm:{a-z\-}={A-Z\_}' \
    'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
    'r:|?=** m:{a-z\-}={A-Z\_}'

#}}}

#global aliases
alias -g L='|less -MN'
alias -g nul="> /dev/null 2>&1"
alias -g nerr="2> /dev/null"

#allow for awesome z command
source "$HOME/z.sh"

#export ZPLUG_HOME=/usr/local/opt/zplug
#source $ZPLUG_HOME/init.zsh
#
#zplug "changyuheng/fz", defer:1
#zplug "rupa/z", use:z.sh
#
## Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi
#
## Then, source plugins and add commands to $PATH
#zplug load

#go to desktop if not root
if [[ "$(uname)" = Darwin ]]; then
    if [[ "$UID" != "0" ]]; then
        # builtin cd "$D" && clear
        type figlet > /dev/null 2>&1 && {
            printf "\e[1m"
        [[ -f "$SCRIPTS/macOnly/figletRandomFontOnce.sh" ]] && {
            [[ -f "$SCRIPTS/macOnly/splitReg.sh" ]] && {
            bash "$SCRIPTS/macOnly/figletRandomFontOnce.sh" \
            "$(hostname)" | ponysay -W 100 | splitReg.sh -- ---------------------- lolcat
    } || {
        bash "$SCRIPTS/macOnly/figletRandomFontOnce.sh" \
        "$(hostname)" | ponysay -W 100
}
                }
            }
            printf "\e[0m"
            # type screenfetch > /dev/null 2>&1 && screenfetch 2> /dev/null
            listNoClear
        else
            clearList
        fi
    else
        distro="$(cat /etc/os-release | grep "^NAME" | cut -d= -f2 | tr -d \")"

        if [[ "$UID" != "0" ]]; then
            builtin cd "$D"
            if [[ "$distro" =~ Raspbian* ]]; then
                type ponysay 1>/dev/null 2>&1 && {
                    bash "$HOME/motd.sh" | ponysay -W 120 
            } || bash "$HOME/motd.sh"
        fi
        listNoClear
    else
        clearList
    fi
fi


#std error colorization
color2

#homebrew conflicts with /usr/bin/perl
#unset PERL5LIB
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
h=()
if [[ -r ~/.ssh/config ]]; then
    h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
    h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Hostname *}#Hostname }:#*[*?]*})
fi
if [[ $#h -gt 0 ]]; then
    zstyle ':completion:*:ssh:*' hosts $h
    zstyle ':completion:*:slogin:*' hosts $h
fi

zstyle ':completion:*:options' list-colors '=(#b)(--#)([a-zA-Z0-9-]#)*=1;32=1;33=34'

#zstyle ':completion:*:*:kill:*' list-colors '=(#b) #([0-9]#)*( *[a-z])*=34=31=33'

zstyle ':completion:*' group-name ''

#change history file size
export SAVEHIST=50000
#change history size
export HISTSIZE=50000

#shell to recognize env variables in prompt
: ~WCC
: ~SCRIPTS

#set right prompt string during continuation 
RPS2='+%N:%i:%^'

zstyle ':completion:*:manuals' separate-sections true

