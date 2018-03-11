#{{{                    MARK:Exports
#**************************************************************
export LC_ALL="en_US.UTF-8"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="simonoff"

#colors for common commands
[[ -f "$HOME/grc.zsh" ]] && source "$HOME/grc.zsh"

export SHELL="$(which zsh)"

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
# COPLETION_WAITING_DOTS="TRUE"IN
# DU

# UNCOMMENT THE FOLLOWING LINE IF YOU WANT TO DISABLE MARKING UNTRACKED FILES
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

#get rid of mercurial prompt
hg_prompt_info(){}
# User configuration

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


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

#}}}***********************************************************

#{{{                    MARK:Plugins
#**************************************************************
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf-zsh zsh-more-completions zsh-completions zsh-syntax-highlighting zsh-autosuggestions history-substring-search ruby gem rake rails yarn ng coffee node npm perl cpanm git github gradle ant mvn scala lein spring django pip pyenv python go man nmap postgres redis-cli colorize sudo z rsync docker tmux sublime vundle rust cargo meteor gulp grunt glassfish)

[[ "$(uname)" == "Darwin" ]] && {
    plugins+=(zsh-xcode-completions brew osx pod)
} || {
    #linux
    plugins+=(systemd)
    distroName="$(grep '^ID=' /etc/os-release | cut -d= -f2 | tr -d \")"

    case $distroName in
        (debian|raspbian|kali) 
            plugins+=(debian)
            ;;
        (ubuntu) 
            plugins+=(ubuntu)
            ;;
        (centos|rhel) 
            plugins+=(yum dnf)
            ;;
        (opensuse) 
            plugins+=(suse z)
            ;;
        (fedora) 
            plugins+=(yum fedora dnf)
            ;;
        (*) :
            ;;
    esac
}
#}}}***********************************************************

#{{{                    MARK:Sourcing
#**************************************************************
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#has all my aliases and functions

source ~/.shell_aliases_functions.sh
alias -r > "$HOME/.common_aliases"

#}}}***********************************************************

#{{{                    MARK:Custom Fxns
#**************************************************************

sub (){
    zle .kill-whole-line
    BUFFER="suc"
    zle .accept-line

}
updater (){
    zle .kill-whole-line
    #bash -l options for creating login shell to run script
    #avoiding issues with rvm which only runs on login shell
    BUFFER="( cat $SCRIPTS/updater.sh |  bash -l 2>&1 | tee -a $LOGFILE | perl -pne 's/\\e\[.*m/\n/g' | mutt -s \"Log from `date`\" jamenk@me.com 2>$LOGFILE &)"
    zle .accept-line
}

gitfunc () {
    emulate -LR zsh

    git status &> /dev/null || {
        printf "\x1b[0;1;31m"
        print -sr "$BUFFER"
        echo
        printf "NOT GIT DIR: $(pwd -P)\n" >&2
        printf "\x1b[0m"
        zle .kill-whole-line
        zle .accept-line-and-down-history
        return 0
    }
    #leaky simonoff theme so reset ANSI escape sequences
    printf "\x1b[0;34m"

gitCommitAndPush "$BUFFER" && {
        print -sr "$BUFFER"
        zle .kill-whole-line
        printf "\x1b[0m"	
        zle .redisplay
    } || {
        printf "\x1b[0;1;31m"
        print -sr "$BUFFER"
        echo
        printf "BLACKLISTED: $(pwd -P)\n" >&2
        BUFFER=""
        printf "\x1b[0m"	
        zle .accept-line
    }
}

tutsUpdate() {
    commitMessage="$BUFFER"
    if [[ "$commitMessage" ]]; then
        if [[ "$commitMessage" =~ ^\ +$ ]]; then
            printf "No commit message\n" >&2
            zle .accept-line
        else
            zle .kill-whole-line
            BUFFER="( tutorialConfigUpdater.sh '$commitMessage' >> \"$LOGFILE\" 2>&1 & )"
            zle .accept-line
        fi
    else
        printf "No commit message\n" >&2
        zle .accept-line
    fi
}

sshRegain() {
    echo "$(ps -ef)" |  grep -q 'ssh ' && {
        if [[ "$BUFFER" != "" ]]; then
            print -sr "$BUFFER"
            __NEW_BUFFER="exe \"$BUFFER\""
            echo
            eval "$__NEW_BUFFER"
            BUFFER=""
            zle .accept-line
            return 0
        else
            return 1
        fi
        } || {
            zle .kill-whole-line
            echo "$(ps -ef)" | grep -q 'tmux ' && {
                BUFFER=tmm
            } || {
                BUFFER=tmm_full
            }
            zle .accept-line
        }
}

dbz() {
    zle .kill-whole-line
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
__COUNTER=0

changeQuotes(){

    if (( $__COUNTER % 8 == 0 )); then
        __OLDBUFFER="${BUFFER}"
        BUFFER=${BUFFER//\"/\'}
    elif (( $__COUNTER % 8 == 1 )); then
        if [[ "$(echo "$__OLDBUFFER" | tr -d "'\"\`" )" != "$(echo "$BUFFER" | tr -d "'" )" ]]; then
            __COUNTER=0
            return 1
        fi
        BUFFER=${BUFFER//\'/\"}
    elif (( $__COUNTER % 8 == 2 )); then
        if [[ "$(echo "$__OLDBUFFER" | tr -d "'\"\`" )" != "$(echo "$BUFFER" | tr -d "\"" )" ]]; then
            __COUNTER=0
            return 1
        fi
        BUFFER=${BUFFER//\"/\`}
    elif (( $__COUNTER % 8 == 3 )); then
        if [[ "$(echo "$__OLDBUFFER" | tr -d "'\"\`" )" != "$(echo "$BUFFER" | tr -d "\`" )" ]]; then
            __COUNTER=0
            return 1
        fi
        _SEMI_OLDBUFFER="$BUFFER"
        BUFFER="\"${BUFFER}\""
    elif (( $__COUNTER % 8 == 4 )); then
        if [[ "$(echo "$_SEMI_OLDBUFFER" | tr -d "'\"\`" )" != "$(echo "$BUFFER" | tr -d "\`\"" )" ]]; then
            __COUNTER=0
            return 1
        fi
        #semi has no quotes
        _SEMI_OLDBUFFER=${_SEMI_OLDBUFFER//\`/}
        BUFFER="\$(${_SEMI_OLDBUFFER})"
    elif (( $__COUNTER % 8 == 5 )); then
        #only diff should be $()
        if (( ${#BUFFER} < 4 )); then
            __COUNTER=0
            return 1
            #statements
        fi
        if [[ "$_SEMI_OLDBUFFER" != "$(echo "${BUFFER:2:-1}" )" ]]; then
            __COUNTER=0
            return 1
        fi
        BUFFER="\"${BUFFER}\""
    elif (( $__COUNTER % 8 == 6 )); then
        if (( ${#BUFFER} < 6 )); then
            __COUNTER=0
            return 1
            #statements
        fi
        if [[ "${_SEMI_OLDBUFFER}" != "${BUFFER:3:-2}" ]]; then
            __COUNTER=0
            return 1
        fi
        # back to no quotes
        BUFFER="$_SEMI_OLDBUFFER"
    else
        if [[ "${_SEMI_OLDBUFFER}" != "${BUFFER}" ]]; then
            __COUNTER=0
            return 1
        fi
        #back to original
        BUFFER="${__OLDBUFFER}"
    fi

    let __COUNTER++
}

alternateQuotes(){
    BUFFER="$(echo "$BUFFER" | tr "\"'" "'\"" )"
}

basicSedSub(){
    emulate -LR zsh
    echo "$BUFFER" | egrep -q '\w+' || {
        printf "\x1b[1;31m"
        zle -R  "Extended Regex Sed Substitution: Empty buffer." && read -k 1
        printf "\x1b[0m"
        return 1
    }

    printf "\x1b[1;34m"
    zle -R "Extended Regex Sed Substitution (original>replaced) (@ not allowed in either string):"
    printf "\x1b[1;44;37m"
    local SEDARG=""
    local key=""
    read -k key
    local -r start=$key
    while (( (#key)!=(##\n) && (#key)!=(##\r) )) ; do

        if (( (#key)==(##\>) ));then
            printf "\x1b[0;4;1;34m"
        else
            printf "\x1b[1;44;37m"
            echo "$SEDARG" | grep -q '>' && printf "\x1b[0;1;37;45m"
        fi

        if (( (#key)==(##^?) || (#key)==(##^h) ));then
            SEDARG=${SEDARG[1,-2]}
            printf "\x1b[0m"
        elif (( (#key)==(##^U) ));then
            SEDARG=""
            printf "\x1b[0m"
        else
            if (( (#key)!=(##@) ));then
                SEDARG="${SEDARG}$key"
            fi
        fi


        zle -R "Extended Regex Sed Substitution (original>replaced) (@ not allowed in either string): $SEDARG"
        read -k key || return 1
    done	
    echo "$SEDARG" | grep -q "@" && { 
        printf "\x1b[0;1;31m"
    zle -R "No '@' allowed! That is the sed delimiter!" && read -k key
    printf "\x1b[0m"
    return 1
}

    echo "$SEDARG" | grep -q ">" || {
        printf "\x1b[0;1;31m"
        zle -R  "Needed '>' for separation of original regex string and substitution!" && read -k 1
        printf "\x1b[0m"
        return 1
    }

    orig="$(echo $SEDARG | awk -F'>' '{print $1}')"
    replace="$(echo $SEDARG | awk -F'>' '{print $2}')"
    SEDARG="s@$orig@$replace@g"

    echo "$BUFFER" | egrep -q "$orig" || {
        printf "\x1b[0;1;31m"
        zle -R  "No Match." && read -k 1
        printf "\x1b[0m"
        return 1
    }

    BUFFER="$(echo $BUFFER | sed -E "$SEDARG")"
    printf "\x1b[0m"
}

clipboard(){
    [[ "$(uname)" == Darwin ]] && {
        print -sr "$BUFFER"
        print -n "$BUFFER" | pbcopy
        echo
        print -n "\x1b[0;34mCopied \x1b[1m\""
        print -n "$BUFFER"
        print  "\"\x1b[0;34m to System Clipboard!"
        echo
        zle .redisplay
    }  || {
        type xclip &> /dev/null && {
        print -sr "$BUFFER"
        print -n "$BUFFER" | xclip -selection c -i
        echo
        print -n "\x1b[0;34mCopied \x1b[1m\""
        print -nR "$BUFFER"
        print  "\"\x1b[0;34m to System Clipboard!"
        echo
        zle .redisplay
        } || { 
            echo
            printf  "\x1b[0;34mNO \x1b[1m\"XCLIP\"\x1b[0;34m Found!\n"
            echo
            zle .redisplay
        }
    }
}

#automatically add closing punct

surround(){
    next=$((CURSOR+1))

    char=${BUFFER[$CURSOR]}
    nextChar=${BUFFER[$next]}
    echo char is $char >> $LOGFILE
    echo nextChar is $nextChar >> $LOGFILE

    count=$(echo "$BUFFER" | fgrep -o "$KEYS" | wc -l)

    #TODO = only if next char is space or end of line then insert quotes
    case "$nextChar" in
        [a-zA-Z0-9]*) 
            BUFFER="$LBUFFER$KEYS$RBUFFER"
            zle .vi-forward-char
            return 0
            ;;
       *)
               ;;
    esac


    case "$KEYS" in
        '"')
            if (( $count % 2 == 1 )); then
                    BUFFER="$LBUFFER$KEYS$RBUFFER"
                    echo odd Char is $count >> $LOGFILE
                    zle .vi-forward-char
                    return 0
            fi
            BUFFER="$LBUFFER\"\"$RBUFFER"
            ;;
        '`')
            if (( $count % 2 == 1 )); then
                    BUFFER="$LBUFFER$KEYS$RBUFFER"
                    echo odd Char is $count >> $LOGFILE
                    zle .vi-forward-char
                    return 0
            fi
            BUFFER="$LBUFFER\`\`$RBUFFER"
            ;;
        "'")
            if (( $count % 2 == 1 )); then
                    BUFFER="$LBUFFER$KEYS$RBUFFER"
                    echo odd Char is $count >> $LOGFILE
                    zle .vi-forward-char
                    return 0
            fi
            BUFFER="$LBUFFER''$RBUFFER"
            ;;
        '{')
        BUFFER="$LBUFFER{}$RBUFFER"
            ;;
        "[")
        BUFFER="$LBUFFER"'[]'"$RBUFFER"
            ;;
        "(")
        BUFFER="$LBUFFER()$RBUFFER"
            ;;
    *) 
        ;;
    esac
    zle .vi-forward-char
}


#delete the next matching closing punct
deleteMatching(){
    next=$((CURSOR+1))

    char=${BUFFER[$CURSOR]}
    nextChar=${BUFFER[$next]}
    #echo char is $char >> $LOGFILE
    #echo nextChar is $nextChar >> $LOGFILE

    case "$char" in
        '"')
            if [[ "$nextChar" == "$char" ]]; then
                BUFFER="$LBUFFER${RBUFFER/$char/}"
            fi
            ;;
        '`')
            if [[ "$nextChar" == "$char" ]]; then
                BUFFER="$LBUFFER${RBUFFER/$char/}"
            fi
            ;;
        "'")
            if [[ "$nextChar" == "$char" ]]; then
                BUFFER="$LBUFFER${RBUFFER/$char/}"
            fi
            ;;
        '{')
            if [[ "$nextChar" == "}" ]]; then
                BUFFER="$LBUFFER${RBUFFER/\}/}"
            fi
            ;;
        "[")
            if [[ "$nextChar" == "]" ]]; then
                BUFFER="$LBUFFER${RBUFFER/\]/}"
            fi
            ;;
        "(")
            if [[ "$nextChar" == ")" ]]; then
              BUFFER="$LBUFFER${RBUFFER/)/}"
            fi
            ;;
        *) 
            ;;
    esac

    zle .vi-backward-delete-char

}

zle -N surround
zle -N deleteMatching

#vim  mode
bindkey -v

bindkey -M viins '"' surround
bindkey -M viins "'" surround
bindkey -M viins '`' surround
bindkey -M viins "(" surround
bindkey -M viins "[" surround
bindkey -M viins "{" surround
bindkey -M viins "^?" deleteMatching

bindkey -M viins '^r' redo
bindkey -M vicmd '^r' redo
bindkey -M viins '^z' undo
bindkey -M vicmd '^z' undo

zle -N basicSedSub
bindkey -M viins '^P' basicSedSub
bindkey -M vicmd '^P' basicSedSub
bindkey -M viins '^O' edit-command-line
bindkey -M vicmd '^O' edit-command-line

bindkey -M viins '^F' fzf-file-widget
bindkey -M vicmd '^F' fzf-file-widget

bindkey -M viins '^N' fzf-history-widget
bindkey -M vicmd '^N' fzf-history-widget

bindkey -M viins '^H' fzf-cd-widget
bindkey -M vicmd '^H' fzf-cd-widget

zle -N changeQuotes
zle -N alternateQuotes
zle -N clipboard

bindkey -M viins '^K' changeQuotes
bindkey -M vicmd '^K' changeQuotes

bindkey -M viins '\e^K' alternateQuotes
bindkey -M vicmd '\e^K' alternateQuotes

bindkey -M viins '\e^D' capitalize-word
bindkey -M vicmd '\e^D' capitalize-word

bindkey -M viins '\e^L' down-case-word
bindkey -M vicmd '\e^L' down-case-word

bindkey -M viins '\e^U' up-case-word
bindkey -M vicmd '\e^U' up-case-word

bindkey -M viins '\e[5~' clipboard
bindkey -M viins '^B' clipboard
bindkey -M vicmd '^B' clipboard

zle -N expand-aliases

bindkey '\e^E' expand-aliases

zle -N gitfunc
zle -N updater
zle -N sub
zle -N dbz
zle -N sshRegain
zle -N tutsUpdate
zle -N subLine

bindkey '\e[1;2D' sub
#press both escape and control f then oo
bindkey '\e^f' sub
#bound to control spacebar
bindkey -M vicmd '\e ' sshRegain
bindkey -M viins '\e ' sshRegain

#F1 key
bindkey '\eOP' updater
#F2 key
bindkey '\eOQ' sub

[[ "$(uname)" == Darwin ]] && {
    #Ctrl plus arrow keys
    bindkey '\e[1;5A' gitfunc
    bindkey '\e[1;5B' updater
    bindkey '\e[1;5C' tutsUpdate
    bindkey '\e[1;5D' dbz
}

bindkey '^S' gitfunc
bindkey '^Q' sudo-command-line
bindkey -M viins '\e^T' transpose-words
bindkey -M vicmd '\e^T' transpose-words
bindkey -M viins '^T' transpose-chars
bindkey -M vicmd '^T' transpose-chars

bindkey -M viins '^A' beginning-of-line 
bindkey -M viins '^E' end-of-line
#Filter stderr through shell scripts
#having this setting messes with tmux resurrect so will enable it on individual basis
#exec 2> >("$SCRIPTS"/redText.sh)

my-accept-line () {

    __WILL_CLEAR=false

    #do we want to clear the screen and run ls after we exec the current line?
    commandsThatModifyFiles=(unlink rm to md touch chown chmod rmdir mv cp chflags chgrp ln mkdir nz git\ reset git\ clone gcl dot_clean)

    for command in ${commandsThatModifyFiles[@]}; do
        regex="^sudo $command .*\$|^$command .*\$"
        print "$BUFFER" | egrep -q "$regex" && {
            __WILL_CLEAR=true
        }
    done

    [[ -z "$__GLOBAL_ALIAS_PREFIX" ]] && {
    
        [[ -z "$BUFFER" ]] && zle .accept-line && return 0

        mywords=("${(z)BUFFER}")

        if [[ ! -z $(alias -g $mywords[1]) ]];then
            line="$(cat $HOME/.common_aliases | grep "^$mywords[1]=.*" | awk -F= '{print $2}')"
            if [[ -z $line ]];then
                #fxn
                BUFFER="\\$mywords"
            else
                #non global alias
                print "$line" | fgrep "'" && BUFFER="${line:1:-1} $mywords[2,$]" || BUFFER="$line $mywords[2,$]"
            fi
        fi
    
    }

    zle .accept-line 
    #leaky simonoff theme so reset ANSI escape sequences
    printf "\x1b[0m"
}

zle -N accept-line my-accept-line

precmd(){
    (( $? == 0)) && {
        if [[ "$__WILL_CLEAR" == true ]]; then
            clear
            listNoClear
            # to prevent __WILL_CLEAR staying true when called from zle widgets and not from pressing enter key
            __WILL_CLEAR=false
        fi
    }
    #leaky simonoff theme so reset ANSI escape sequences
    printf "\x1b[0m"
    #lose normal mode
    RPROMPT="%B%F{blue}$$ %b%F{blue}$-"
}

rationalize-dot (){
    if [[ $LBUFFER = *.. ]]; then
        LBUFFER+=/..
    else
        LBUFFER+=.
    fi
}


zle -N rationalize-dot
zle -N downTen
bindkey -M viins . rationalize-dot

bindkey -M listscroll q send-break
bindkey -M listscroll f complete-word

bindkey -M menuselect '^d' accept-and-menu-complete
bindkey -M menuselect '^f' accept-and-infer-next-history 

[[ "$(uname)" == Darwin ]] && {
    PARENT_PROCESS="$(ps -ef | awk "\$2 == $PPID{print \$8}")"
    echo "$PARENT_PROCESS" | egrep -q 'login|tmux' && {
        bindkey -M menuselect '\e[1;5A' vi-backward-word
        bindkey -M menuselect '\e[1;5B' vi-forward-word
        bindkey -M menuselect '\e[1;5D' vi-beginning-of-line
        bindkey -M menuselect '\e[1;5C' vi-end-of-line
    } || {
        bindkey -M menuselect '\e[5A' vi-backward-word
        bindkey -M menuselect '\e[5B' vi-forward-word
        bindkey -M menuselect '\e[5D' vi-beginning-of-line
        bindkey -M menuselect '\e[5C' vi-end-of-line
    }
} || {
    distro="$(grep "^ID=" /etc/os-release | cut -d= -f2 | tr -d \" | head -n 1)"

    if [[ "$distro" == raspbian ]]; then
        :
        #bindkey -M menuselect '\eOA' vi-backward-word
        #bindkey -M menuselect '\eOB' vi-forward-word
        #bindkey -M menuselect '\eOD' vi-beginning-of-line
        #bindkey -M menuselect '\eOC' vi-end-of-line
    else
        bindkey -M menuselect '\e[1;5A' vi-backward-word
        bindkey -M menuselect '\e[1;5B' vi-forward-word
        bindkey -M menuselect '\e[1;5D' vi-beginning-of-line
        bindkey -M menuselect '\e[1;5C' vi-end-of-line
    fi
}

#bind function arrow keys in menuselect mode
bindkey -M menuselect '\e[5~' vi-backward-word
bindkey -M menuselect '\e[6~' vi-forward-word
bindkey -M menuselect '\e[1~' vi-beginning-of-line
bindkey -M menuselect '\e[4~' vi-end-of-line
#just like in vimrc
bindkey -M menuselect '^K' vi-backward-word
bindkey -M menuselect '^J' vi-forward-word
bindkey -M menuselect '^H' vi-beginning-of-line
bindkey -M menuselect '^L' vi-end-of-line
#search through options
bindkey -M menuselect '/' history-incremental-search-forward
bindkey -M menuselect '?' history-incremental-search-backward
bindkey -M menuselect '^M' .accept-line

autoload -U select-bracketed select-quoted
zle -N select-bracketed
zle -N select-quoted

# bind vim text objects on command line, depends on zsh having visual and operator pendings modes in zle
for km in viopp visual; do
    bindkey -M $km -- '-' vi-up-line-or-history

    for c in ${(s..):-'()[]{}<>bB'}; do
        bindkey -M $km i$c select-bracketed
        bindkey -M $km a$c select-bracketed
    done

    for c in "${(s..):-\'\"\`\|,./:;-=+@}"; do
        bindkey -M $km i$c select-quoted
        bindkey -M $km a$c select-quoted
    done

done

bindkey -M vicmd '^G' what-cursor-position
bindkey -M viins '^G' what-cursor-position

# RPROMPT shows vim modes (insert vs normal)
zle-keymap-select() {
    RPROMPT="%B%F{blue}$$ %b%F{blue}$-"
    [[ $KEYMAP = vicmd ]] && RPROMPT="%B%F{red}-<<%b%F{blue}NORMAL%B%F{red}>>- %B%F{blue}$RPROMPT"
    () { return $__prompt_status }
    zle reset-prompt
}

zle -N zle-keymap-select

#}}}***********************************************************

#{{{                    MARK:Setopt Options
#**************************************************************
setopt rcquotes # allow '' escape
setopt interactive_comments # Allow comments even in interactive shells (especially for Muness)

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
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word
#setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt complete_in_word # Allow completion from within a word/phrase
#setopt correct # spelling correction for commands

#setopt correct_all # spelling correction for arguments

setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt transient_rprompt # only show the rprompt on the current prompt

setopt multios # perform implicit tees or cats when multiple redirections are attempted

#dot files included in regular globs
setopt glob_dots

# no glob in all globs then error
setopt csh_null_glob

setopt no_list_beep

# > file creates file
setopt sh_null_cmd

# allow unquoted globs to pass through
setopt no_badp_attern

#globs sorted numerically
setopt numeric_glob_sort

# filename completion after =
setopt magic_equal_subst

#auto select first item of menu completion
setopt menu_complete

#array expandsion include prefix
setopt rc_expand_param

#display octal and hex like C
setopt cbases
#}}}***********************************************************

#{{{                    MARK:AutoCompletions
#**************************************************************
# avoid insecure warning message with -u
autoload -U compinit && compinit u
# allow scrolling pager through completion list
zmodload -i zsh/complist

# Enable completion caching, use rehash to clear
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST
# Fallback to built in ls colors, menu active to white text on blue background

# Make the list prompt friendly
zstyle ':completion:*' list-prompt \
    $'\e[1;31m-<<\e[0;34m%SAt %s\e[44;32m%M%p\e[0;34m%S, Hit TAB for more, or the characters to insert%s\e[0;1;31m>>-\e[0m'

# Make the selection prompt friendly when there are a lot of choices
zstyle ':completion:*' select-prompt \
    $'\e[1;31m-<<\e[0;34m%SScrolling active: current selection at %s\e[37;44m%p\e[0;1;31m>>-\e[0m'


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
zstyle ':completion:*' format \
    $'\e[1;31m-<<\e[0;34m%d\e[1;31m>>-\e[0m'

zstyle ':completion:*:descriptions' format \
    $'\e[1;31m-<<\e[0;34m%d\e[1;31m>>-\e[0m'

zstyle ':completion:*:corrections' format \
    $'\e[1;31m-<<\e[0;34m%d (errors: %e)\e[1;31m>>-\e[0m'

zstyle ':completion:*:messages' format \
    $'\e[1;31m-<<\e[0;34m%d\e[1;31m>>-\e[0m'

zstyle ':completion:*:explanations' format \
    $'\e[1;31m-<<\e[0;34m%d\e[1;31m>>-\e[0m'

zstyle ':completion:*:warnings' format \
    $'\e[1;31m-<<\e[0;34mNo Matches for %d\e[1;31m>>-\e[0m'
zstyle ':completion:*' auto-description 'Specify: %d'

# don't complete duplicates for these commands
zstyle ':completion::*:(git-add|git-rm|less|rm|vi|vim|v):*' ignore-line true

zstyle ':complete:*' ignore-parents parent pwd

# 0 -- vanilla completion (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion (abc => A-big-Car)
# 3 -- full flex completion (abc => ABraCadabra)
zstyle ':completion:*' matcher-list '' \
    'm:{a-z\-}={A-Z\_}' \
    'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
    'r:|?=** m:{a-z\-}={A-Z\_}'

if [[ -r "$HOME/.ssh/config" ]]; then
    h=(${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
    h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Hostname *}#Hostname }:#*[*?]*})
fi

if (( $#h > 0 )); then
    zstyle ':completion:*:ssh:*' hosts $h
    zstyle ':completion:*:slogin:*' hosts $h
fi

zstyle ':completion:*' list-colors 'ma=37;1;4;44'

#main option for menu selection colors
zstyle ':completion:*:builtins' list-colors '=(#b)(*)=1;30=1;37;4;43'
zstyle ':completion:*:executables' list-colors '=(#b)(*)=1;30=1;37;44'
zstyle ':completion:*:parameters' list-colors '=(#b)(*)=1;30=37;43'
zstyle ':completion:*:reserved-words' list-colors '=(#b)(*)=1;30=1;4;37;45'
zstyle ':completion:*:functions' list-colors '=(#b)(*)=1;30=1;37;41'
zstyle ':completion:*:aliases' list-colors '=(#b)(*)=1;30=1;37;42;4'
zstyle ':completion:*:users' list-colors '=(#b)(*)=1;30=1;37;42'
zstyle ':completion:*:hosts' list-colors '=(#b)(*)=1;30=1;37;43'
#zstyle ':completion:*:*:commands' list-colors '=(#b)([a-zA-Z]#)([0-9_.-]#)([a-zA-Z]#)*=0;34=1;37;45=0;34=1;37;45'
zstyle ':completion:*:*:commands' list-colors '=(#b)(*)=1;37;45'
#zstyle ':completion:*:*:kill:*' list-colors '=(#b) #([0-9]#)*( *[a-z])*=34=31=33'
#
zstyle ':completion:*' list-separator '<<)(>>'
COMMON_ZSTYLE_OPTS='reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)(*)==37;45=37;43=34}:${(s.:.)LS_COLORS}")'

zstyle -e ':completion:*:local-directories' list-colors "$COMMON_ZSTYLE_OPTS"
zstyle -e ':completion:*:*:f:*:*' list-colors "$COMMON_ZSTYLE_OPTS"
zstyle -e ':completion:*:globbed-files' list-colors "$COMMON_ZSTYLE_OPTS"
zstyle -e ':completion:*:argument-rest:*' list-colors "$COMMON_ZSTYLE_OPTS"
zstyle -e ':completion:*:all-files' list-colors "$COMMON_ZSTYLE_OPTS"
zstyle -e ':completion:*:files' list-colors "$COMMON_ZSTYLE_OPTS"
zstyle -e ':completion:*:directories' list-colors "$COMMON_ZSTYLE_OPTS"
zstyle -e ':completion:*:named-directories' list-colors "$COMMON_ZSTYLE_OPTS"

zstyle ':completion:*:*:*:*:options' list-colors '=(#b)([-<)(>]##)[ ]#([a-zA-Z0-9_.,?@#-]##) #([<)(>]#) #([a-zA-Z0-9+?.,@3-]#)*=1;30=1;31=34=1;31=34'

zstyle ':completion:*' group-name ''

zstyle ':completion:*:manuals' separate-sections true

#}}}***********************************************************

#{{{                    MARK:Global Aliases
#**************************************************************
__GLOBAL_ALIAS_PREFIX=j
alias -g ${__GLOBAL_ALIAS_PREFIX}l='| less -MN'
alias -g ${__GLOBAL_ALIAS_PREFIX}lo='"$LOGFILE"'
alias -g ${__GLOBAL_ALIAS_PREFIX}x='| tr a-z A-Z'
alias -g ${__GLOBAL_ALIAS_PREFIX}b='&>> "$LOGFILE" &; disown %1; ps -ef | grep -v grep | grep $!'
alias -g ${__GLOBAL_ALIAS_PREFIX}k="| awk 'BEGIN {} {printf \"%s\\n\", \$1} END {}'"
alias -g ${__GLOBAL_ALIAS_PREFIX}ap="| awk -F: 'BEGIN {} {printf \"%s\\n\", \$1} END {}'"
alias -g ${__GLOBAL_ALIAS_PREFIX}s="| sed -E 's@@@g'"
alias -g ${__GLOBAL_ALIAS_PREFIX}t="| tr '' "
alias -g ${__GLOBAL_ALIAS_PREFIX}ta="| tail" 
alias -g ${__GLOBAL_ALIAS_PREFIX}w='| wc -l'
alias -g ${__GLOBAL_ALIAS_PREFIX}n="> /dev/null 2>&1"
alias -g ${__GLOBAL_ALIAS_PREFIX}o='&>> "$LOGFILE"'
alias -g ${__GLOBAL_ALIAS_PREFIX}ne="2> /dev/null"
alias -g ${__GLOBAL_ALIAS_PREFIX}g='git add . && git commit -m "" && git push'
alias -g ${__GLOBAL_ALIAS_PREFIX}e='|& fgrep -v "grep" |& egrep -i'
alias -g ${__GLOBAL_ALIAS_PREFIX}p="| perl -lanE 'say'"
alias -g ${__GLOBAL_ALIAS_PREFIX}c="| cut -d ' ' -f1"
alias -g ${__GLOBAL_ALIAS_PREFIX}r="| sort"
alias -g ${__GLOBAL_ALIAS_PREFIX}u="| awk '{print \$1}' | uniq -c | sort -rn | head -10"

if [[ "$(uname)" == Darwin ]]; then
    alias -g ${__GLOBAL_ALIAS_PREFIX}v='| pbcopy -pboard general'
    alias ge="exe 'z src;gl;getrc;nz'"
else
    alias -g ${__GLOBAL_ALIAS_PREFIX}v='| xclip -selection clipboard'
fi


declare -A __CORRECT_WORDS
__CORRECT_WORDS[and]="adn nad"
__CORRECT_WORDS[the]="teh hte eht eth"
__CORRECT_WORDS[this]="tihs"
__CORRECT_WORDS[they]="tehy ethy"
__CORRECT_WORDS[back]="abck bak"
__CORRECT_WORDS[that]="taht"
__CORRECT_WORDS[than]="tahn"
__CORRECT_WORDS[then]="tehn"
__CORRECT_WORDS[to]="ot"
__CORRECT_WORDS[why]="hwy wyh"
__CORRECT_WORDS[inside]="insdie inisde isnide sindie"
__CORRECT_WORDS[just]="jsut jutsi just"
__CORRECT_WORDS[here]="ehre"
__CORRECT_WORDS[not]="not"
__CORRECT_WORDS[store]="sotre"


supernatural-space() {
	    #statements
    __TEMP_BUFFER="$(echo $LBUFFER | tr -d "()[]{}\$,%'\"" )"
    mywords=("${(z)__TEMP_BUFFER}")
    finished=false

    for key in ${(k)__CORRECT_WORDS[@]}; do
        badWords=("${(z)__CORRECT_WORDS[$key]}")
        for misspelling in $badWords[@];do

            #echo "Does $misspelling matches $mywords[-1]?" >> $LOGFILE
            #echo "words: $mywords" >> $LOGFILE

            if [[ $mywords[-1] == $misspelling ]]; then
                #echo  >> $LOGFILE
            #echo "$misspelling matches $mywords[-1]!" >> $LOGFILE
                #echo  >> $LOGFILE
                LBUFFER="$(print -R "$LBUFFER" | sed -E "s@\\b$misspelling\\b@$key@g")"
                finished=true
                break
            fi
        done
        if [[ $finished == true ]]; then
            break
        fi
    done

    alias $LBUFFER | egrep -q '(grc|_z|cd|cat)' || {
            #if [[ $LBUFFER =~ ' [a-z][a-z]?$' ]];then
    [[ -z $RBUFFER ]] && [[ -z $(alias -g $LBUFFER) ]] && zle _expand_alias
            #fi
    }
     zle expand-history
     zle self-insert
}

terminate-space(){
[[ -z $RBUFFER ]] && zle magic-space || { zle end-of-line; zle magic-space}


}

zle -N supernatural-space
zle -N terminate-space

bindkey -M viins " " supernatural-space
bindkey -M viins "^@" terminate-space
bindkey -M isearch '^A' beginning-of-line

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
#

#}}}***********************************************************

#{{{                    MARK:Initialize Login
#**************************************************************
#go to desktop if not root
if [[ "$(uname)" = Darwin ]]; then
    if [[ "$UID" != "0" ]]; then
         #builtin cd "$D" && clear
        clear
        type figlet > /dev/null 2>&1 && {
            printf "\e[1m"
            [[ -f "$SCRIPTS/macOnly/figletRandomFontOnce.sh" ]] && {
                [[ -f "$SCRIPTS/splitReg.sh" ]] && {
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
        #root on unix
        clearList
    fi
else
    if [[ "$UID" != "0" ]]; then
        if [[ "$distroName" == raspbian ]]; then
            builtin cd "$D"
            type ponysay 1>/dev/null 2>&1 && {
                bash "$HOME/motd.sh" | ponysay -W 120 
            } || bash "$HOME/motd.sh"
        elif [[ "$distro" == opensuse ]];then
            builtin cd "$D"
            figlet -f block "$(whoami)" | ponysay -W 120 | splitReg.sh -- ------------- lolcat
        elif [[ "$distro" == fedora ]];then
            builtin cd "$D"
            figlet -f block "$(whoami)" | ponysay -W 120 | splitReg.sh -- ------------- lolcat
        fi
    listNoClear
    else
        #root on linux
        clearList
    fi
fi

#standard error colorization
#color2

#change history file size
export SAVEHIST=50000
#change history size
export HISTSIZE=50000

#set right prompt string during continuation 
RPS2='+%N:%i:%^'
export PS3=$'\e[1;34m-->>>> \e[0m'

#if this is a mac or linux
[[ "$(uname)" == "Darwin" ]] && {
    source "$HOME/.powerlevel9kconfig.sh"
    #make this environ vars show up in prompt %~
    : ~WCC
    : ~HOMEBREW_HOME_FORMULAE
} || {
    :
}
#shell to recognize env variables in prompt %~
: ~SCRIPTS
: ~D
: ~DL
#}}}***********************************************************
#
#{{{                    MARK:OPAM env
#**************************************************************
source "$HOME/.opam/opam-init/init.zsh" &> /dev/null
#}}}***********************************************************

#{{{                    MARK:ColorTest
#**************************************************************
#print 2d array of colors
colortest(){
    for backgroundColor in ${(ko)bg}; do
        print -n "$bg[$backgroundColor]"
        printf '%s%-8s' $fg[black] black
        printf '%s%-8s' $fg[red] red
        printf '%s%-8s' $fg[green] green
        printf '%s%-8s' $fg[yellow] yellow
        printf '%s%-8s' $fg[blue] blue
        printf '%s%-8s' $fg[magenta] magenta
        printf '%s%-8s' $fg[cyan] cyan
        printf '%s%-8s' $fg[white] white
        print $reset_color
        print -n "$bg[$backgroundColor]"
        printf "\x1b[1m"
        printf '%s%-8s' $fg[black] black
        printf '%s%-8s' $fg[red] red
        printf '%s%-8s' $fg[green] green
        printf '%s%-8s' $fg[yellow] yellow
        printf '%s%-8s' $fg[blue] blue
        printf '%s%-8s' $fg[magenta] magenta
        printf '%s%-8s' $fg[cyan] cyan
        printf '%s%-8s' $fg[white] white
        print $reset_color
        printf "%40s\n" "on $backgroundColor"
    done
}

#}}}***********************************************************

#{{{                    MARK:FZF
#**************************************************************
ROUGIFY_THEME="github"
__COMMON_FZF_ELEMENTS="--prompt='-->>> '"
alias -g ${__GLOBAL_ALIAS_PREFIX}f=' "$(fzf --reverse --border '"$__COMMON_FZF_ELEMENTS"' --preview "[[ -f {} ]] && rougify -t $ROUGIFY_THEME {} 2>/dev/null || stat {} | fold -80 | head -500")"'

#to include dirs files in search
export FZF_DEFAULT_COMMAND='find * | ag -v ".git/"'
export FZF_DEFAULT_OPTS="$__COMMON_FZF_ELEMENTS --reverse --border --height 100%" 
export FZF_CTRL_T_OPTS="$__COMMON_FZF_ELEMENTS --preview \"[[ -f {} ]] && rougify -t $ROUGIFY_THEME {} 2>/dev/null || stat {} | fold -80 | head -500\""

#completion trigger plus tab, defaults to ~~
export FZF_COMPLETION_OPTS="$__COMMON_FZF_ELEMENTS --preview  \"[[ -f {} ]] &&
    rougify -t $ROUGIFY_THEME {} 2>/dev/null || {
        [[ -e {} ]] && {
            stat {} | fold -80 | head -500
        } || {
            source ~/.shell_aliases_functions.sh
        { 
            echo {} | egrep '(\d{1,3}\.){3}\d{1,3}' && {
                whois {}
            } || {
                cat ~/.common_aliases | grep {}= || set | grep {} | grep -v ZSH_EXEC || alias | grep {} ||  whois {}
            }
            
         } | cowsay | ponysay
   }
}\""

export FZF_COMPLETION_TRIGGER=';'

_fzf_complete_echo() {
  _fzf_complete '-m' "$@" < <(
      declare -xp | sed 's/=.*//' | sed 's/.* //'
    )
}

_fzf_complete_alias() {
  _fzf_complete '+m' "$@" < <(
      alias | sed 's/=.*//'
        )
}

[[ -f "$HOME/.oh-my-zsh/custom/plugins/fzf/shell/completion.zsh" ]] && source "$HOME/.oh-my-zsh/custom/plugins/fzf/shell/completion.zsh" 

local base03="234"
local base02="235"
local base01="240"
local base00="241"
local base0="244"
local base1="245"
local base2="254"
local base3="230"
local yellow="136"
local orange="166"
local red="160"
local magenta="125"
local violet="61"
local blue="33"
local cyan="37"
local green="64"

# Comment and uncomment below for the light theme.

# Solarized Dark color scheme for fzf
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS
    --color fg:-1,bg:-1,hl:$blue,fg+:$base2,bg+:$base02,hl+:$blue
    --color info:$yellow,prompt:$yellow,pointer:$base3,marker:$base3,spinner:$yellow
  "
#}}}***********************************************************

#{{{                    MARK:override default FTP completion
#**************************************************************
_comps[ftp]=_ftp
_comps[passwd]=_passwd
_comps[ksh]=_ksh
_comps[tcsh]=_tcsh
_comps[csh]=_tcsh
#}}}***********************************************************

#{{{                    MARK:Groovy
#**************************************************************
unset GROOVY_HOME # when set this messes up classpath
#}}}***********************************************************
#{{{                    MARK:Suffix aliases
#**************************************************************
alias -s txt='vim'

alias numcmd='print -rlo -- $commands | wc -l'

export KEYTIMEOUT=1
#}}}***********************************************************
#
#
#
#
#
