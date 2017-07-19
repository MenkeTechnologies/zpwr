# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="rkj-repos"

#if this is a mac
if [[ "$(uname)" == "Darwin" ]]; then
    source "$HOME/.powerlevel9kconfig.sh"
else
    #must be linux
    export RPROMPT="%{%B%}`tty` `echo $$`"

fi

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf-zsh zsh-completions zsh-autosuggestions rvm perl osx node brews cpanm git mvn pip python scala)

source $ZSH/oh-my-zsh.sh

source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#has all my aliases and functioms
source ~/.shell_aliases_functions.sh

#get rid of mercurial prompt
hg_prompt_info(){}
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

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

function _sub {
    zle kill-whole-line
    BUFFER="suc"
    zle .accept-line

}
function _updater {
    zle kill-whole-line
    BUFFER="( cat $SCRIPTS/updater.sh | escapeRemove | bash 2>&1 | tee $LOGFILE | mutt -s \"Log from `date`\" jamenk@email.wm.edu 2>$LOGFILE &)"
    zle .accept-line
}

function _gitfunc {
    gitCommitAndPush "$BUFFER"
    zle kill-whole-line
    zle .accept-line
}

function _tutsUpdate() {
    commit="$BUFFER"
    zle kill-whole-line
    BUFFER="( tutorialConfigUpdater.sh '$commit' > ~/updaterlog.txt 2>&1 & )"
    zle .accept-line
}

zle -N _gitfunc
zle -N _updater
zle -N _sub
zle -N _tutsUpdate

bindkey '\eg' _sub
bindkey '\ex' _updater
bindkey '^S' _gitfunc
bindkey '\ed' _tutsUpdate

#Filter stderr through shell scripts
exec 2> >("$SCRIPTS"/redText.sh)


my-accept-line () {

WILL_CLEAR=false

#do we want to clear the screen and run ls after we exec the current line?
#
commandsThatModifyFiles=(rm touch chown chmod rmdir mv cp chflags chgrp ln mkdir git\ reset git\ clone gcl dot_clean)

for command in ${commandsThatModifyFiles[@]}; do
    regex="^sudo $command .*\$|^$command .*\$"
    if [[ "$BUFFER" =~ $regex ]]; then
        WILL_CLEAR=true
    fi
done

zle .accept-line 
}
zle -N accept-line my-accept-line

preexec(){
    if [[ $WILL_CLEAR == true ]]; then
        clear
    fi
}
precmd(){
    if [[ $? == 0 ]]; then
        if [[ "$WILL_CLEAR" == true ]]; then
            listNoClear
        fi
    fi
    #exec 2> >(blueUpperText.sh)
}



function rationalize-dot {
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
setopt hist_ignore_space # remove command line from history list when first character on the line is a space
setopt hist_find_no_dups # When searching history don't display results already cycled through twice
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history
setopt hist_verify # don't execute, just expand history
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

# }}}

# Auto Completion {{{
# avoid insecure warnign message with -u
autoload -U compinit && compinit -u
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
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
# formatting and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name 


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
alias -g L='|less'
alias -g nul="> /dev/null 2>&1"

#allow for awesome z command
source "$HOME/z.sh"
#

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
#

export GOPATH="$HOME/go"
if [ -f $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash ]; then
    source $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash
fi
#go to desktop if not root
if [[ "$UID" != "0" ]]; then
    cd $D
else
    clearList
fi

export LC_CTYPE="en_US.UTF-8"

#imgcat and other special features from iTerm's shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
