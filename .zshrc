    #...     ..      ..                                    ..      
  #x*8888x.:*8888: -"888:                            < .z@8"`      
 #X   48888X `8888H  8888                 u.    u.    !@88E        
#X8x.  8888X  8888X  !888>       .u     x@88k u@88c.  '888E   u    
#X8888 X8888  88888   "*8%-   ud8888.  ^"8888""8888"   888E u@8NL  
#'*888!X8888> X8888  xH8>   :888'8888.   8888  888R    888E`"88*"  
  #`?8 `8888  X888X X888>   d888 '88%"   8888  888R    888E .dN.   
  #-^  '888"  X888  8888>   8888.+"      8888  888R    888E~8888   
   #dx '88~x. !88~  8888>   8888L        8888  888R    888E '888&  
 #.8888Xf.888x:!    X888X.: '8888c. .+  "*88*" 8888"   888E  9888. 
#:""888":~"888"     `888*"   "88888%      ""   'Y"   '"888*" 4888" 
    #"~'    "~        ""       "YP'                     ""    ""   
                                                                  
                                                                  
                                                                  
               #.....                                           
            #.H8888888h.  ~-.                         .uef^"    
            #888888888888x  `>                      :d88E       
     #.u    X~     `?888888hx~      .u          .   `888E       
  #ud8888.  '      x8.^"*88*"    ud8888.   .udR88N   888E .z8k  
#:888'8888.  `-:- X8888x       :888'8888. <888'888k  888E~?888L 
#d888 '88%"       488888>      d888 '88%" 9888 'Y"   888E  888E 
#8888.+"        .. `"88*       8888.+"    9888       888E  888E 
#8888L        x88888nX"      . 8888L      9888       888E  888E 
#'8888c. .+  !"*8888888n..  :  '8888c. .+ ?8888u../  888E  888E 
 #"88888%   '    "*88888888*    "88888%    "8888P'  m888N= 888> 
   #"YP'            ^"***"`       "YP'       "P'     `Y"   888  
                                                         #J88"  
                                                         #@%    
                                                       #:"      
                                #..                            .    
                          #x .d88"                            @88>  
   #u.    u.          u.    5888R          u.                 %8P   
 #x@88k u@88c.  ...ue888b   '888R    ...ue888b       uL        .    
#^"8888""8888"  888R Y888r   888R    888R Y888r  .ue888Nc..  .@88u  
  #8888  888R   888R I888>   888R    888R I888> d88E`"888E` ''888E` 
  #8888  888R   888R I888>   888R    888R I888> 888E  888E    888E  
  #8888  888R   888R I888>   888R    888R I888> 888E  888E    888E  
  #8888  888R  u8888cJ888    888R   u8888cJ888  888E  888E    888E  
 #"*88*" 8888"  "*888*P"    .888B .  "*888*P"   888& .888E    888&  
   #""   'Y"      'Y"       ^*888%     'Y"      *888" 888&    R888" 
                             #"%                 `"   "888E    ""   
                                               #.dWi   `88E         
                                               #4888~  J8%          
                                                #^"===*"`           
              #.x+=:.   
             #z`    ^%  
                #.   <k 
     #.u       .@8Ned8" 
  #ud8888.   .@^%8888"  
#:888'8888. x88:  `)8b. 
#d888 '88%" 8888N=*8888 
#8888.+"     %8"    R88 
#8888L        @8Wou 9%  
#'8888c. .+ .888888P`   
 #"88888%   `   ^"F     
   #"YP'                

#
# https://github.com/MenkeTechnologies
# 

#{{{                    MARK:Exports
#**************************************************************
export LC_ALL="en_US.UTF-8"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Global Environment Variables for MenkeTechnologies
MYPROMPT=POWERLEVEL
EXPAND_SECOND_POSITION=true
SURROUND=true
CUSTOM_COLORS=true
TMUX_AUTO_ATTACH=true
start=$(date +%s)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

[[ -f "$HOME/.tokens.sh" ]] && source "$HOME/.tokens.sh"

if [[ $MYPROMPT == POWERLEVEL ]]; then
    if test -s "$HOME/.powerlevel9kconfig.sh";then
        source "$HOME/.powerlevel9kconfig.sh"
    else
        ZSH_THEME=simonoff
    fi
else
    [[ ! -z $MYPROMPT ]] && ZSH_THEME=$MYPROMPT || ZSH_THEME=simonoff
fi

ZSH_DISABLE_COMPFIX=true
#colors for common commands
test -s "$HOME/grc.zsh" && source "$HOME/grc.zsh"

export SHELL="$(which zsh)"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#DISABLE_AUTO_UPDATE="true"

DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# UNCOMMENT THE FOLLOWING LINE IF YOU WANT TO DISABLE MARKING UNTRACKED FILES
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(zsh-expand zsh-surround zsh-nginx zsh-more-completions \
    fzf-zsh zsh-completions zsh-sed-sub zsh-git-acp \
    zsh-syntax-highlighting zsh-autosuggestions \
    history-substring-search ruby gem rake rails yarn ng \
    coffee node npm perl cpanm git github gradle ant mvn \
    scala lein spring django pip pyenv python go man nmap \
    postgres redis-cli colorize sudo z rsync docker \
    docker-compose sublime kubectl \
    vundle rust cargo meteor gulp grunt glassfish tig fd \
    zsh-very-colorful-manuals)

PARENT_PROCESS="$(command ps -ef | awk "\$2 == $PPID{print \$8}")"

if [[ "$(uname)" == "Darwin" ]];then
    plugins+=(zsh-xcode-completions brew osx pod)
    #determine if this terminal was started in IDE
    echo "$PARENT_PROCESS" | command egrep -iq 'login|tmux|vim' \
        && plugins+=(tmux)
elif [[ "$(uname)" == "Linux" ]];then
    echo "$PARENT_PROCESS" | command egrep -iq 'login|tmux|vim' \
        && plugins+=(tmux)
    plugins+=(systemd)
    distroName="$(command grep "^ID=" /etc/os-release | cut -d= -f2 | tr -d \" | head -n 1)"

    case $distroName in
        (debian|raspbian|kali|parrot|zorin)
            plugins+=(debian)
            ;;
        (ubuntu|linuxmint|elementary)
            plugins+=(ubuntu)
            ;;
        (centos|rhel)
            plugins+=(yum dnf)
            ;;
        (*suse*)
            plugins+=(suse)
            ;;
        (fedora)
            plugins+=(yum fedora dnf)
            ;;
        (*) :
            ;;
    esac

else
    #unix
    :
fi
#}}}***********************************************************

#{{{                    MARK:Sourcing
#**************************************************************
autoload -Uz compinit

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#has all my aliases and functions
_alias_file="$HOME/.shell_aliases_functions.sh"
test -s "$_alias_file" && source "$_alias_file"
alias -r > "$HOME/.common_aliases"

test -z $MYBANNER && export MYBANNER=default
export DEFAULT_BANNER="bash $SCRIPTS/macOnly/figletRandomFontOnce.sh $(hostname)"

#}}}***********************************************************

#{{{                    MARK:Global Vars for Global Aliases
#**************************************************************
test -z $__GLOBAL_ALIAS_PREFIX && export __GLOBAL_ALIAS_PREFIX=j
test -z $__TS && export __TS=__________
#}}}***********************************************************

#{{{                    MARK:Custom Fxns
#**************************************************************

sub (){
    zle .kill-whole-line
    BUFFER="suc"
    zle .accept-line

}

lastWordDouble(){
    mywords=("${(z)BUFFER}")
    if [[ $BUFFER[-1] == " " ]]; then
        BUFFER="$BUFFER"$mywords[-1]
        CURSOR=$#BUFFER
    else
        BUFFER="$BUFFER "$mywords[-1]
        CURSOR=$#BUFFER
    fi
}

zle -N lastWordDouble

updater (){
    zle .kill-whole-line
    #bash -l options for creating login shell to run script
    #avoiding issues with rvm which only runs on login shell
    BUFFER="( cat $SCRIPTS/updater.sh |  bash -l 2>&1 | tee -a $LOGFILE | perl -pe 's@\\e\[.*m@\n@g' | mutt -s \"Log from `date`\" $EMAIL 2>$LOGFILE &)"
    zle .accept-line
}



tutsUpdate() {
    commitMessage="$BUFFER"
    if [[ ! -z "$commitMessage" ]]; then
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
    echo "$(command ps -ef)" | command  grep -q 'ssh ' && {
        if [[ "$BUFFER" != "" ]]; then
            print -sr "$BUFFER"
            local __NEW_BUFFER="exe \"$BUFFER\""
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
        echo "$(command ps -ef)" | command grep -q 'tmux ' && {
            BUFFER=tmm
        } || BUFFER=tmm_full
        zle .accept-line
    }
}

dbz() {
    zle .kill-whole-line
    BUFFER=db
    zle .accept-line
}

__COUNTER=0

changeQuotes(){

    if (( $__COUNTER % 8 == 0 )); then
        __OLDBUFFER="${BUFFER}"
        BUFFER=${BUFFER//\"/\'}
    elif (( $__COUNTER % 8 == 1 )); then
        if [[ "$(print -r "$__OLDBUFFER" \
            | tr -d "'\"\`" )" \
            != "$(print -r "$BUFFER" | tr -d "'" )" ]]; then
            __COUNTER=0
            return 1
        fi
        BUFFER=${BUFFER//\'/\"}
    elif (( $__COUNTER % 8 == 2 )); then
        if [[ "$(print -r "$__OLDBUFFER" | tr -d \
            "'\"\`" )" != \
            "$(print -r "$BUFFER" | tr -d "\"" )" ]]; then
            __COUNTER=0
            return 1
        fi
        BUFFER=${BUFFER//\"/\`}
    elif (( $__COUNTER % 8 == 3 )); then
        if [[ \
            "$(print -r "$__OLDBUFFER" | tr -d "'\"\`" )" \
            != "$(print -r "$BUFFER" | tr -d "\`" )" ]]; \
        then
            __COUNTER=0
            return 1
        fi
        _SEMI_OLDBUFFER="$BUFFER"
        BUFFER="\"${BUFFER}\""
    elif (( $__COUNTER % 8 == 4 )); then
        if [[ "$(print -r "$_SEMI_OLDBUFFER" \
            | tr -d "'\"\`" )" != \
            "$(print -r "$BUFFER" | tr -d "\`\"" )" ]]; then
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
        if [[ "$_SEMI_OLDBUFFER" != \
            "$(print -r "${BUFFER:2:-1}" )" ]]; then
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
        if [[ "${_SEMI_OLDBUFFER}" != \
            "${BUFFER:3:-2}" ]]; then
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
    BUFFER="$(print -r "$BUFFER" | tr "\"'" "'\"" )"
}


clipboard(){
    [[ -z "$BUFFER" ]] && return 1

    [[ "$(uname)" == Darwin ]] && {
        print -sr "$BUFFER"
        print -rn "$BUFFER" | pbcopy
        echo
        print -n "\x1b[0;34mCopied \x1b[1m\""
        print -rn "$BUFFER"
        print  "\"\x1b[0;34m to System Clipboard!"
        echo
        zle .redisplay
    }  || {
        type xclip &> /dev/null && {
        print -sr "$BUFFER"
        print -n "$BUFFER" | xclip -selection c -i
        echo
        print -n "\x1b[0;34mCopied \x1b[1m\""
        print -nr "$BUFFER"
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

runner() {

    if [[ ! -z "$BUFFER" ]]; then
        tutsUpdate
    else
        zle .kill-whole-line
        BUFFER=ge
        zle .accept-line
    fi
}

updater() {
    zle .kill-whole-line
    BUFFER=u8
    zle .accept-line
}

getrcWidget(){
    zle .kill-whole-line
    BUFFER="getrc"
    zle .accept-line
}

intoFzf(){
    LBUFFER="$LBUFFER |& fzf -m --border --ansi"
    zle .accept-line
}

lsoffzf(){
    LBUFFER="$LBUFFER$(sudo lsof -i | sed -n '2,$p' | fzf -m | awk '{print $2}' | uniq | tr '[:space:]' ' ')"
}

fzvim(){
    command grep '^>' ~/.viminfo | cut -c3- | \
        perl -lne '$f=$_;$_=~s/~/$ENV{HOME}/;print $f if -f' | \
        fzf -m -e --no-sort --border --prompt='-->>> ' \
        --preview 'file="$(eval echo {})"; [[ -f "$file" ]] && '"$COLORIZER"' "$file" '"$COLORIZER_NL"' 2>/dev/null || stat "$file" | fold -80 | head -500' | \
            perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
}
vimFzf(){
    zle .kill-whole-line
    BUFFER="vim $(fzvim)"
    mywords=(${(z)BUFFER})
    if (( $#mywords == 1 )); then
        zle .kill-whole-line
    else
        firstdir=${mywords[2]:h}
        #logg "words='$mywords[2]'=>'$firstdir'"
        #:h takes aways last "
        BUFFER="cd $firstdir\"; $BUFFER; ll"
        zle .accept-line
    fi
}
vimFzfSudo(){
    zle .kill-whole-line
    LBUFFER="sudo vim $(fzvim)"
    mywords=("${(z)BUFFER}")
    if (( $#mywords == 2 )); then
        zle .kill-whole-line
    else
        firstdir=${mywords[3]:h}
        #logg "words='$mywords[2]'=>'$firstdir'"
        #:h takes aways last "
        BUFFER="cd $firstdir\"; $BUFFER; ll"
        zle .accept-line
    fi
}

intoFzfAg(){
    mywords=("${(z)BUFFER}")

    if echo ${mywords[1]} | command grep -q vim; then
        BUFFER="$BUFFER $(fz vim)"
    else
        BUFFER="$BUFFER $(fz)"
    fi

    BUFFER=${BUFFER:s@  @ @}

    CURSOR=$#BUFFER
}
clearLine() {
    LBUFFER=
}

deleteLastWord(){
    mywords=(${(z)BUFFER})
    if (( $#mywords > 1  )); then
        BUFFER=${mywords[1,-2]}" "
    else
        BUFFER=
    fi
}

zle -N updater
zle -N runner
zle -N intoFzf
zle -N intoFzfAg
zle -N vimFzf
zle -N vimFzfSudo
zle -N getrcWidget
zle -N clearLine
zle -N deleteLastWord
zle -N lsoffzf


#vim mode is default
bindkey -v

bindkey -M viins "^U" clearLine
bindkey -M vicmd "^U" clearLine

bindkey -M vicmd "^W" deleteLastWord

bindkey -M viins "\e^O" runner
bindkey -M vicmd "\e^O" runner

bindkey -M viins "\e^P" updater
bindkey -M vicmd "\e^P" updater


bindkey -M viins '^r' redo
bindkey -M vicmd '^r' redo
bindkey -M viins '^z' undo
bindkey -M vicmd '^z' undo

bindkey -M viins '^O' edit-command-line
bindkey -M vicmd '^O' edit-command-line

bindkey -M viins '^F^F' fzf-file-widget
bindkey -M vicmd '^F^F' fzf-file-widget

bindkey -M viins '^F^D' intoFzf
bindkey -M vicmd '^F^D' intoFzf

bindkey -M viins '^F^H' lsoffzf
bindkey -M vicmd '^F^H' lsoffzf

bindkey -M viins '^F^G' intoFzfAg
bindkey -M vicmd '^F^G' intoFzfAg

bindkey -M viins '^V^S' vimFzfSudo
bindkey -M vicmd '^V^S' vimFzfSudo

bindkey -M viins '^V^V' vimFzf
bindkey -M vicmd '^V^V' vimFzf

bindkey -M viins '^Q' lastWordDouble
bindkey -M vicmd '^Q' lastWordDouble

bindkey -M viins '^V^Z' fzf-history-widget
bindkey -M vicmd '^V^Z' fzf-history-widget

bindkey -M viins '^V^F' fzf-cd-widget
bindkey -M vicmd '^V^F' fzf-cd-widget
#completion trigger plus tab, defaults to ~~
export FZF_COMPLETION_TRIGGER=';'

zle -N changeQuotes
zle -N alternateQuotes
zle -N clipboard

bindkey -M viins '^Y' changeQuotes
bindkey -M vicmd '^Y' changeQuotes

#unbind for later use
bindkey -M viins -r '^V'
bindkey -M vicmd -r '^V'

#unbind for later use
bindkey -M viins -r '^F'
bindkey -M vicmd -r '^F'

bindkey -M viins '^F^L' list-choices
bindkey -M vicmd '^F^L' list-choices

bindkey -M viins '^K' alternateQuotes
bindkey -M vicmd '^K' alternateQuotes

bindkey -M viins '\e^D' capitalize-word
bindkey -M vicmd '\e^D' capitalize-word

bindkey -M viins '\e^L' down-case-word
bindkey -M vicmd '\e^L' down-case-word

bindkey -M viins '\e^U' up-case-word
bindkey -M vicmd '\e^U' up-case-word

bindkey -M viins '\e[5~' clipboard
bindkey -M viins '^B' clipboard
bindkey -M vicmd '^B' clipboard
#shift tab
bindkey -M viins '\e[Z' clipboard

zle -N updater
zle -N sub
zle -N dbz
zle -N sshRegain
zle -N tutsUpdate
zle -N subLine

bindkey '\e[1;2D' sub
bindkey '\e^f' sub

#bound to escape spacebar
bindkey -M vicmd '\e ' sshRegain
bindkey -M viins '\e ' sshRegain

#F1 key
bindkey '\eOP' updater
#F2 key
bindkey '\eOQ' sub

#F3 key
bindkey '\eOR' getrcWidget

#determine if this terminal was started in IDE
[[ "$(uname)" == Darwin ]] && {
    echo "$PARENT_PROCESS" | command egrep -q 'login|tmux' && {
        #Ctrl plus arrow keys
        bindkey '\e[1;5A' gitfunc
        bindkey '\e[1;5B' updater
        bindkey '\e[1;5C' tutsUpdate
        bindkey '\e[1;5D' dbz
    } || {
        bindkey '\e[5A' gitfunc
        bindkey '\e[5B' updater
        bindkey '\e[5C' tutsUpdate
        bindkey '\e[5D' dbz
    }
}


bindkey '^N' sudo-command-line
bindkey -M viins '\e^T' transpose-words
bindkey -M vicmd '\e^T' transpose-words
bindkey -M viins '^T' transpose-chars
bindkey -M vicmd '^T' transpose-chars

bindkey -M viins '^A' beginning-of-line
bindkey -M vicmd '^A' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M vicmd '^E' end-of-line

# env var to show dots does not work with vim mode
bindkey '^I' expand-or-complete-with-dots

#Filter stderr through shell scripts
#having this setting messes with tmux resurrect so will enable it on individual basis
#exec 2> >("$SCRIPTS"/redText.sh)

my-accept-line () {

    __WILL_CLEAR=false

    #do we want to clear the screen and run ls after we exec the current line?
    local commandsThatModifyFiles regex mywords line

    commandsThatModifyFiles=(unlink rm srm to md touch chown chmod rmdir mv cp chflags chgrp ln mkdir nz git\ reset git\ clone gcl dot_clean)

    for command in ${commandsThatModifyFiles[@]}; do
        regex="^sudo $command .*\$|^$command .*\$"
        echo "$BUFFER" | command grep -q -E "$regex" && {
            __WILL_CLEAR=true
        }
    done
    mywords=("${(z)BUFFER}")

    if [[ ${mywords[1]} == 'sudo' ]]; then
        cmd=${mywords[2]}

        #sudo =iftop fails so remove =
        cmd=${cmd#=}
        out="$(alias -- $cmd)"
        echo "$out" | command grep -q -E "grc" && {
            cmdlet="$(eval echo "${out#*=}")"
            print -srn "$BUFFER"
            BUFFER="sudo $cmdlet $mywords[3,$]"
            echo
            eval "$BUFFER"
            BUFFER=""
            zle .accept-line
            return 0
        }
    fi

    [[ -z "$__GLOBAL_ALIAS_PREFIX" ]] && {
        [[ -z "$BUFFER" ]] && zle .accept-line && return 0
        if [[ ! -z $(alias -g $mywords[1]) ]];then
            aliases="$(cat $HOME/.common_aliases)"
            line="$(print -r $aliases | grep "^$mywords[1]=.*")"
            line="$(print -r $line | awk -F= '{print $2}')"
            if [[ -z $line ]];then
                #fxn
                BUFFER="\\$mywords"
            else
                #non global alias
                print "$line" | fgrep "'" && \
                    BUFFER="${line:1:-1} $mywords[2,$]" || \
                    BUFFER="$line $mywords[2,$]"
            fi
        fi
    }

set +x
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
            # to prevent __WILL_CLEAR staying true when
            # called from zle widgets and not from
            # pressing enter key
            __WILL_CLEAR=false
        fi
    }
    [[ ! -z "$TMUX" ]] && [[ -f ~/.display.txt ]] && \
        export DISPLAY=$(cat ~/.display.txt) \
        || echo $DISPLAY > ~/.display.txt
    #leaky simonoff theme so reset ANSI escape sequences
    printf "\x1b[0m"
    #lose normal mode
    if [[ $MYPROMPT != POWERLEVEL ]]; then
        RPROMPT="%B%F{blue}$$ %b%F{blue}$-"
    fi
}

[[ ! -z "$TMUX" ]] && [[ -f ~/.display.txt ]] && \
    export DISPLAY=$(cat ~/.display.txt) || \
    echo $DISPLAY > ~/.display.txt

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
    PARENT_PROCESS="$(command ps -ef | awk "\$2 == $PPID{print}" \
    | tr -s ' ' | cut -d ' ' -f9-)"
    echo "$PARENT_PROCESS" | command egrep -q 'login|tmux' && {
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

    if [[ "$distroName" == raspbian ]]; then
        #bindkey -M menuselect '\eOA' vi-backward-word
        #bindkey -M menuselect '\eOB' vi-forward-word
        #bindkey -M menuselect '\eOD' vi-beginning-of-line
        #bindkey -M menuselect '\eOC' vi-end-of-line
        :
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

expandAliasAccept(){
    zle _expand_alias
    zle expand-history
    zle expand-word
    zle .accept-line
}

zle -N expandAliasAccept

bindkey -M menuselect '^M' .accept-line
bindkey -M menuselect '^@' accept-line
bindkey -M menuselect '^S' reverse-menu-complete

autoload -U select-bracketed select-quoted
zle -N select-bracketed
zle -N select-quoted

# bind vim text objects on command line, depends on zsh having visual and operator pendings modes in zle
#
version="$(zsh --version | awk '{print $2}' | awk -F. '{print $1 "." $2}')"

if (( $version > 5.2 )); then
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
fi

EOLorNextTabStop(){
    lenToFirstTS=${#BUFFER%%$__TS*}
    if (( $lenToFirstTS < ${#BUFFER} )); then
        CURSOR=$lenToFirstTS
        RBUFFER=${RBUFFER:$#__TS}
    else
        if [[ $BUFFER[-1] = ";" ]]; then
            BUFFER+=" "
        fi
        CURSOR=$#BUFFER
        zle vi-insert
    fi

}

zle -N EOLorNextTabStop

bindkey -M vicmd '^G' what-cursor-position
bindkey -M viins '^G' what-cursor-position
bindkey -M viins '^[^M' self-insert-unmeta
bindkey -M viins '^P' EOLorNextTabStop
bindkey -M vicmd '^P' EOLorNextTabStop
bindkey -M vicmd G end-of-buffer-or-history

# RPROMPT shows vim modes (insert vs normal)
if [[ $MYPROMPT != POWERLEVEL ]]; then
    zle-keymap-select() {
        RPROMPT="%B%F{blue}$$ %b%F{blue}$-"
        [[ $KEYMAP = vicmd ]] && RPROMPT="%B%F{red}-<<%b%F{blue}NORMAL%B%F{red}>>- %B%F{blue}$RPROMPT"
        () { return $__prompt_status }
        zle reset-prompt
    }
fi

zle -N zle-keymap-select

autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

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
setopt no_bad_pattern

#globs sorted numerically
setopt numeric_glob_sort

#global substitution is case insensitive
setopt nocaseglob

# filename completion after =
setopt magic_equal_subst

#auto select first item of menu completion
setopt menu_complete

#array expandsion include prefix
setopt rc_expand_param

#display octal and hex like C
setopt cbases

#any failing command in pipeline fails entire pipeline
setopt pipefail 2>/dev/null

# increase max size for directory stack
export DIRSTACKSIZE=20
#}}}***********************************************************

#{{{                    MARK:AutoCompletions
#**************************************************************

zcompdate=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
date=$(date +'%j')

if ((date >= (zcompdate + 7) ));then
# avoid insecure warning message with -u
# reload comps if file is stale for 1 week
    logg 'regenerating ~/.zcompdump'
    compinit -u
    zcompile $ZSH_COMPDUMP
else
# use .zcompdump
    compinit -C -u
    if [[ ${+_comps[z]} == 0 ]]; then
        logg 'regenerating ~/.zcompdump due to failed compinit'
        compinit -u
    else
        logg 'using cached ~/.zcompdump'
    fi
fi
# allow scrolling pager through completion list
zmodload -i zsh/complist

#dont include pwd after ../
zstyle ':completion:*' ignore-parents parent pwd

# remove slash if argument is a directory
zstyle ':completion:*' squeeze-slashes true
# Enable completion caching, use rehash to clear
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

if [[ $CUSTOM_COLORS == true ]]; then
    # Make the list prompt friendly
    zstyle ':completion:*' list-prompt \
        $'\e[1;31m-<<\e[0;34m%SAt %s\e[44;32m%M%p\e[0;34m%S, Hit TAB for more, or the characters to insert%s\e[0;1;31m>>-\e[0m'

    # Make the selection prompt friendly when there are a lot of choices
    zstyle ':completion:*' select-prompt \
        $'\e[1;31m-<<\e[0;34m%SScrolling active: current selection at %s\e[37;44m%p\e[0;1;31m>>-\e[0m'

    # Add simple colors to kill
    zstyle ':completion:*:*:kill:*:processes' list-colors \
        '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
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
fi
zstyle ':completion:*' auto-description 'Specify: %d'

# list of completers to use
zstyle ':completion:*' completer _expand _complete _ignored _approximate _correct
zstyle ':completion:*' menu select=1 _complete _ignored _approximate _correct
# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
# formatting and messages, blue text with red punctuation
# zstyle ':completion:*' verbose yes
# command descriptions
zstyle ':completion:*' extra-verbose yes

# don't complete duplicates for these commands
zstyle ':completion::*:(git-add|git-rm|less|rm|vi|vim|v):*' ignore-line true

#insert unambiguous for correct completer
zstyle ':completion:*:correct:*' insert-unambiguous true

# 0 -- vanilla completion (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion (abc => A-big-Car)
# 3 -- full flex completion (abc => ABraCadabra)
zstyle ':completion:*' matcher-list '' \
    'm:{a-z\-}={A-Z\_}' 'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' 'r:|?=** m:{a-z\-}={A-Z\_}'

#parse out host aliases and hostnames from ssh config
if [[ -r "$HOME/.ssh/config" ]]; then
    h=(${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
    h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Hostname *}#Hostname }:#*[*?]*})
fi

if (( $#h > 0 )); then
    zstyle ':completion:*:ssh:*' hosts $h
    zstyle ':completion:*:slogin:*' hosts $h
fi

#do not ascii sort for z completion
zstyle ':completion:*:z:*' sort false

if [[ $CUSTOM_COLORS == true ]]; then

    zstyle ':completion:*' list-colors 'ma=37;1;4;44'
    #main option for menu selection colors
    zstyle ':completion:*:builtins' list-colors '=(#b)(*)=1;30=1;37;4;43'
    zstyle ':completion:*:executables' list-colors '=(#b)(*)=1;30=1;37;44'
    zstyle ':completion:*:parameters' list-colors '=(#b)(*)=1;30=37;43'
    zstyle ':completion:*:reserved-words' list-colors '=(#b)(*)=1;30=1;4;37;45'
    zstyle ':completion:*:functions' list-colors '=(#b)(*)=1;30=1;37;41'
    zstyle ':completion:*:aliases' list-colors '=(#b)(*)=1;30=34;42;4'
    zstyle ':completion:*:suffix-aliases' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:global-aliases' list-colors '=(#b)(*)=1;30=1;34;43;4'
    zstyle ':completion:*:users' list-colors '=(#b)(*)=1;30=1;37;42'
    zstyle ':completion:*:hosts' list-colors '=(#b)(*)=1;30=1;37;43'

    #separate colors for sections of manual pages
    zstyle ':completion:*:manuals.1' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:manuals.2' list-colors '=(#b)(*)=1;30=1;37;42'
    zstyle ':completion:*:manuals.3' list-colors '=(#b)(*)=1;30=1;37;43'
    zstyle ':completion:*:manuals.4' list-colors '=(#b)(*)=1;30=37;46'
    zstyle ':completion:*:manuals.5' list-colors '=(#b)(*)=1;30=1;34;43;4'
    zstyle ':completion:*:manuals.6' list-colors '=(#b)(*)=1;30=1;37;41'
    zstyle ':completion:*:manuals.7' list-colors '=(#b)(*)=1;30=34;42;4'
    zstyle ':completion:*:manuals.8' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:manuals.9' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:manuals.n' list-colors '=(#b)(*)=1;30=1;4;37;45'
    zstyle ':completion:*:manuals.0p' list-colors '=(#b)(*)=1;30=37;46'
    zstyle ':completion:*:manuals.1p' list-colors '=(#b)(*)=1;30=37;46'
    zstyle ':completion:*:manuals.3p' list-colors '=(#b)(*)=1;30=37;46'

    zstyle ':completion:*:zdir' list-colors '=(#b)(*)=1;30=1;36;44'
    if [[ "$(uname)" == Darwin ]]; then
        #homebrew tags
        zstyle ':completion::complete:brew-cask:argument-rest:list' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:formulae' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:common-commands' list-colors '=(#b)(*)=1;30=1;37;45'
        zstyle ':completion:*:all-commands' list-colors '=(#b)(*)=1;30=1;37;42'
    fi

    #zstyle ':completion:*:*:commands' list-colors '=(#b)([a-zA-Z]#)([0-9_.-]#)([a-zA-Z]#)*=0;34=1;37;45=0;34=1;37;45'
    zstyle ':completion:*:*:commands' list-colors '=(#b)(*)=1;37;45'
    #zstyle ':completion:*:*:kill:*' list-colors '=(#b) #([0-9]#)*( *[a-z])*=34=31=33'
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

    zstyle ':completion:*:*:*:*:options' list-colors '=(#b)([-<)(>]##)[ ]#([a-zA-Z0-9_.,?@#-]##) #([<)(>]#) #([a-zA-Z0-9+?.,@3-]#)*=1;32=1;31=34=1;31=34'
fi
zstyle ':completion:*:killall:*' command 'ps -o command'

# use tag names as menu select separators
zstyle ':completion:*' group-name ''

# divide man pages by sections
zstyle ':completion:*:manuals' separate-sections true

# Ignore completion functions for commands you don't have
zstyle ':completion:*:functions' ignored-patterns '_*'

# ignore .. as completion option
zstyle ':completion:*' ignored-patterns '*..'
zstyle ':completion:*' ignored-patterns '*.'

#}}}***********************************************************

#{{{                    MARK:Global Aliases
#**************************************************************
globalAliasesInit(){
    alias -g ${__GLOBAL_ALIAS_PREFIX}a="|& command egrep -v '\bag\b' |& \\ag --color -i"
    alias -g ${__GLOBAL_ALIAS_PREFIX}ap="| awk -F: 'BEGIN {$__TS} {printf \"%s$__TS\\n\", \$1} END {$__TS}'"
    alias -g ${__GLOBAL_ALIAS_PREFIX}b='&>> "$LOGFILE" &; disown %1 && unset __pid && __pid=$! && ps -ef | command grep -v grep | command grep --color=always $__pid; unset __pid;'
    alias -g ${__GLOBAL_ALIAS_PREFIX}bb='&>> "$LOGFILE'"$__TS"'" &; disown %1 && unset __pid && __pid=$! && ps -ef | command grep -v grep | command grep --color=always $__pid; unset __pid;'
    alias -g ${__GLOBAL_ALIAS_PREFIX}c="| cut -d ' ' -f1"
    alias -g ${__GLOBAL_ALIAS_PREFIX}cf2="| sed 's@.*@_\U\l&_@' | boldText.sh | blueText.sh"
    alias -g ${__GLOBAL_ALIAS_PREFIX}e="|& command egrep -v '\begrep\b' |& command egrep --color=always -i"
    alias -g ${__GLOBAL_ALIAS_PREFIX}k="| awk 'BEGIN {$__TS} {printf \"%s$__TS\\n\", \$1} END {$__TS}'"
    alias -g ${__GLOBAL_ALIAS_PREFIX}l='| less -rMN'
    alias -g ${__GLOBAL_ALIAS_PREFIX}lo='"$LOGFILE"'
    alias -g ${__GLOBAL_ALIAS_PREFIX}n="2> /dev/null"
    alias -g ${__GLOBAL_ALIAS_PREFIX}nn="> /dev/null 2>&1"
    alias -g ${__GLOBAL_ALIAS_PREFIX}o='&>> "$LOGFILE"'
    alias -g ${__GLOBAL_ALIAS_PREFIX}oo='&>> "$LOGFILE'"$__TS"'"'
    alias -g ${__GLOBAL_ALIAS_PREFIX}p="| perl -lanE 'say $__TS'"
    alias ${__GLOBAL_ALIAS_PREFIX}pg="perl -e 'print \`$__TS \"\$_\"\`for<*>'"
        alias ${__GLOBAL_ALIAS_PREFIX}pf="perl -e 'print \`$__TS\`for($__TS)'"
    alias -g ${__GLOBAL_ALIAS_PREFIX}r="| sort"
    alias -g ${__GLOBAL_ALIAS_PREFIX}se="| sed -E 's@$__TS@$__TS@g'"
    #default value tabstops
    alias -g ${__GLOBAL_ALIAS_PREFIX}see="| sed -E 's@.*$__TS@$__TS@g'"
    alias -g ${__GLOBAL_ALIAS_PREFIX}seee="| sed -E 's@.$__TS@(&)$__TS@g'"
    alias -g ${__GLOBAL_ALIAS_PREFIX}sp="| sed -n '$__TS,\$p'"
    alias -g ${__GLOBAL_ALIAS_PREFIX}t="| tr '$__TS' '$__TS'"
    alias -g ${__GLOBAL_ALIAS_PREFIX}ta="| tail"
    alias -g ${__GLOBAL_ALIAS_PREFIX}u="| awk '{print \$1}' | uniq -c | sort -rn | head -10"
    alias -g ${__GLOBAL_ALIAS_PREFIX}uu="| awk '{$__TS}' | uniq -c | sort -rn | head -10"
    alias -g ${__GLOBAL_ALIAS_PREFIX}wc='| wc -l'
    alias -g ${__GLOBAL_ALIAS_PREFIX}x='| tr a-z A-Z'
    alias ${__GLOBAL_ALIAS_PREFIX}g="git add . && git commit -m \""$__TS\"""
    alias ${__GLOBAL_ALIAS_PREFIX}gp="git add . && git commit -m \""$__TS\"" && git push"
    alias -g ${__GLOBAL_ALIAS_PREFIX}co="\\x1b[38;5;${__TS}m${__TS}\\x1b[0m"

    alias i='if [[ '$__TS' ]];then
        '$__TS'
    fi'
    alias iee='if [[ '$__TS' ]];then
        '$__TS'
    elif [[ '$__TS' ]];then
        '$__TS'
    else
        '$__TS'
    fi'
    alias ie='if [[ '$__TS' ]];then
        '$__TS'
    else
        '$__TS'
    fi'
    alias wr='while read line;do
        '$__TS'
    done < '$__TS''
    alias wt='while [[ true'$__TS' ]];do
        '$__TS'
    done'
    alias fe='for i in '$__TS';do
        '$__TS'
    done'

    if [[ "$(uname)" == Darwin ]]; then
        alias -g ${__GLOBAL_ALIAS_PREFIX}v='| pbcopy -pboard general'
    else
        alias -g ${__GLOBAL_ALIAS_PREFIX}v='| xclip -selection clipboard'
    fi
}

globalAliasesInit

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
#        print -r; zplug install
#    fi
#fi
#
## Then, source plugins and add commands to $PATH
#zplug load
#

banner(){
    bash "$fig" "$(hostname)" \
    | ponysay -W 100
}
bannerLolcat(){
    bash "$fig" "$(hostname)" \
    | ponysay -W 100 \
    | splitReg.sh -- \
    ---------------------- lolcat
}
noPonyBanner(){
    eval "$DEFAULT_BANNER"
}

revealRecurse(){
    for i in **/*(/); do ( builtin cd $i && reveal 2>/dev/null); done
}

#}}}***********************************************************
#
#{{{                    MARK:Source Tokens
#**************************************************************
[[ -f "$HOME/.tokens.sh" ]] && source "$HOME/.tokens.sh"
#}}}***********************************************************

#{{{                    MARK:Initialize Login
#**************************************************************
#go to desktop if not root
if [[ "$(uname)" = Darwin ]]; then
    if [[ "$UID" != "0" ]]; then
         #builtin cd "$D" && clear
        clear
        fig="$SCRIPTS/macOnly/figletRandomFontOnce.sh"
        type figlet > /dev/null 2>&1 && {
            printf "\e[1m"
            [[ -f "$fig" ]] && {
                if [[ "$MYBANNER" == ponies ]]; then
                    if [[ -f "$SCRIPTS/splitReg.sh" ]];then
                        bannerLolcat
                    else
                        banner
                    fi
                else
                    noPonyBanner
                fi
            }
        }
        printf "\e[0m"
        listNoClear
    else
        #root on unix
        clearList
    fi
else
    if [[ "$UID" != "0" ]]; then
        clear
        if [[ $MYBANNER == ponies ]]; then
            case $distroName in
                (raspbian)
                    builtin cd "$D"
                    type ponysay 1>/dev/null 2>&1 && {
                        bash "$HOME/motd.sh" | ponysay -W 120
                    } || bash "$HOME/motd.sh"
                    ;;
                (ubuntu|debian|kali|linuxmint)
                    builtin cd "$D"
                    figlet -f block "$(whoami)" | ponysay -W 120 \
                        | splitReg.sh -- ------------- lolcat
                    ;;
                (fedora|centos|rhel)
                    builtin cd "$D"
                    figlet -f block "$(whoami)" | ponysay -W 120 \
                        | splitReg.sh -- ------------- lolcat
                    ;;
                (*suse*)
                    builtin cd "$D"
                    figlet -f block "$(whoami)" | ponysay -W 120 \
                        | splitReg.sh -- ------------- lolcat
                    ;;
                (*) :
                    ;;
            esac
        else
            case $distroName in
                (raspbian)
                    builtin cd "$D"
                    bash "$HOME/motd.sh"
                    ;;
                (ubuntu|debian|kali|linuxmint)
                    builtin cd "$D"
                    noPonyBanner
                    ;;
                (fedora|centos|rhel)
                    builtin cd "$D"
                    noPonyBanner
                    ;;
                (*suse*)
                    builtin cd "$D"
                    noPonyBanner
                    ;;
                (*) :
                    ;;
            esac
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
export SAVEHIST=10000000
#change history size in memory
export HISTSIZE=10000000


#set right prompt string during continuation
RPS2='+%N:%i:%^'
export PS3=$'\e[1;34m-->>>> \e[0m'

#if this is a mac or linux
[[ "$(uname)" == "Darwin" ]] && {
    #make these env vars show up in prompt as %~
    if [[ -d "$WCC" ]]; then
        : ~WCC
    fi
    if [[ -d "$SD" ]]; then
        : ~SD
    fi
    if [[ -d "$HOMEBREW_HOME_FORMULAE" ]]; then
        : ~HOMEBREW_HOME_FORMULAE
    fi
} || {
    :
}
if [[ -d "$SCRIPTS" ]]; then
    : ~SCRIPTS
fi
if [[ -d "$ZPWR" ]]; then
    : ~ZPWR
fi

if [[ -d "$D" ]]; then
    : ~D
fi
if [[ -d "$DL" ]]; then
    : ~DL
fi
#}}}***********************************************************

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


256colors(){
    if [[ -z "$1" ]]; then
        for i in {0..255};do
            printf "\x1b[48;5;${i};37m    $i    "
        done
    else
        for i in {0..255};do
            printf "\x1b[38;5;${i}m    $i   $@"
        done
    fi
    printf "\n"
}

#}}}***********************************************************

#{{{                    MARK:FZF
#**************************************************************
#default value for pygmentize theme
export PYGMENTIZE_COLOR="emacs"
export COLORIZER=bat

if [[ $COLORIZER == bat ]]; then
    if exists bat;then
        export BAT_THEME="GitHub"
        export COLORIZER_FZF='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" {}'
        export COLORIZER_FZF_C='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -l c'
        export COLORIZER_FZF_SH='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -l sh'
        export COLORIZER_FZF_YAML='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -l yaml'
        export COLORIZER_FZF_JAVA='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -l java'
        export COLORIZER='bat --paging never --wrap character --color always --style="numbers,grid,changes,header"'
        export COLORIZER_NL=''
    else
        export COLORIZER_FZF="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR {} | cat -n"
        export COLORIZER="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR"
        export COLORIZER_NL=' | cat -n'
    fi
else
    export COLORIZER_FZF="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR {} | cat -n"
    export COLORIZER="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR"
        export COLORIZER_NL=' | cat -n'
fi

fzf_setup(){
    local __COMMON_FZF_ELEMENTS
    __COMMON_FZF_ELEMENTS="--prompt='-->>> '"
    isZsh && ps='$pipestatus[1]' || \
        ps='${PIPESTATUS[0]}'

    alias -g ${__GLOBAL_ALIAS_PREFIX}ff=' "$(fzf --reverse \
        --border '"$__COMMON_FZF_ELEMENTS"' --preview \
        "[[ -f {} ]] && '"$COLORIZER_FZF$__TS"'  \
        2>/dev/null | cat -n || stat -- {} | fold -80 | head -500")"'
    alias -g ${__GLOBAL_ALIAS_PREFIX}f=' "$(fzf --reverse \
        --border '"$__COMMON_FZF_ELEMENTS"' --preview \
        "[[ -f {} ]] && '"$COLORIZER_FZF"' \
        2>/dev/null || stat -- {} | fold -80 | head -500")"'
    #to include dirs files in search
    export FZF_DEFAULT_COMMAND='find * | ag -v ".git/"'
    export FZF_DEFAULT_OPTS="$__COMMON_FZF_ELEMENTS \
            --reverse --border --height 100%"
    local rpm_cmd
    local deb_cmd
    exists rpm && rpm_cmd="rpm -qi" || rpm_cmd="stat"
    exists dpkg && deb_cmd="dpkg -I" || deb_cmd="stat"

    export FZF_CTRL_T_COMMAND='find * | ag -v ".git/"'
    export FZF_CTRL_T_OPTS="$__COMMON_FZF_ELEMENTS \
        --preview \"if [[ -f {} ]]; then \
            if print -r -- {} | command \
            egrep -iq '\.[jw]ar\$';then jar tf {} | $COLORIZER_FZF_JAVA; \
            elif print -r -- {} | \
            command egrep -iq '\.deb\$';then $deb_cmd {} | $COLORIZER_FZF_SH; \
            elif print -r -- {} | \
            command egrep -iq '\.rpm\$';then $rpm_cmd {} | $COLORIZER_FZF_SH; \
            elif print -r -- {} | \
            command egrep -iq '\.(tgz|tar|tar\.gz)\$';then tar tf {} | $COLORIZER_FZF_C; \
            elif print -r -- {} | \
                command egrep -iq '\.(gzip|gz)\$';then gzip -c -d {} | $COLORIZER_FZF_YAML; \
            elif print -r -- {} | \
                command egrep -iq '\.(bzip|bz)\$';then bzip -c -d {} | $COLORIZER_FZF_YAML; \
            elif print -r -- {} | \
                command egrep -iq '\.(bzip2|bz2)\$';then bzip2 -c -d {} | $COLORIZER_FZF_YAML; \
            elif print -r -- {} | \
                command egrep -iq '\.(xzip|xz)\$';then xz -c -d {} | $COLORIZER_FZF_YAML; \
            elif print -r -- {} | \
            command egrep -iq '\.zip\$';then unzip -l -- {} | $COLORIZER_FZF_C;
            else \
        $COLORIZER_FZF 2>/dev/null; rc=$ps;[[ \$rc = 0 ]] || { stat -- {} | fold -80 | head -500; }; fi; else \
        stat {} | fold -80 | head -500; fi\""
    if [[ "$MYBANNER" == ponies ]]; then
        export FZF_COMPLETION_OPTS="$__COMMON_FZF_ELEMENTS \
            --preview  \"if [[ -f {} ]];then \
                if print -r -- {} | command \
                egrep -iq '\.[jw]ar\$';then jar tf {} | $COLORIZER_FZF_JAVA; \
                elif print -r -- {} | \
                command egrep -iq '\.deb\$';then $deb_cmd {} | $COLORIZER_FZF_SH; \
                elif print -r -- {} | \
                command egrep -iq '\.rpm\$';then $rpm_cmd {} | $COLORIZER_FZF_SH; \
                elif print -r -- {} | \
                command egrep -iq '\.(tgz|tar|tar\.gz)\$';then tar tf {} | $COLORIZER_FZF_C; \
                elif print -r -- {} | \
                    command egrep -iq '\.(bzip|bz)\$';then bzip -c -d {} | $COLORIZER_FZF_YAML; \
                elif print -r -- {} | \
                    command egrep -iq '\.(bzip2|bz2)\$';then bzip2 -c -d {} | $COLORIZER_FZF_YAML; \
                elif print -r -- {} | \
                    command egrep -iq '\.(xzip|xz)\$';then xz -c -d {} | $COLORIZER_FZF_YAML; \
                elif print -r -- {} | \
                    command egrep -iq '\.(gzip|gz)\$';then gzip -c -d {} | $COLORIZER_FZF_YAML; \
                elif print -r -- {} | \
                command egrep -iq '\.zip\$';then unzip -l -- {} | $COLORIZER_FZF_C;
                else \
              $COLORIZER_FZF 2>/dev/null; fi; else \
                    [[ -e {} ]] && stat -- {} | fold -80 | \
                    head -500 || {
                        source ~/.shell_aliases_functions.sh
                        {
                            print -r -- {} | command egrep \
                   '\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d' && {
                                whois -- {} | command \
                                egrep -q 'No (match|whois)' \
                                && dig {} || whois -- {}
                            } || {
                                cat ~/.common_aliases | grep -- \
                                {}= || set | command grep -a -- {} \
                                    | command grep -v -- \
                                    ZSH_EXEC || alias \
                                    | command grep -a -- {}\
                                    || { whois -- {} | \
                                    command egrep -q \
                                    'No (match|whois)' && dig {} \
                                    || whois -- {}
                                }
                            }
                        } | cowsay | ponysay
            };
        fi\""
    else
        export FZF_COMPLETION_OPTS="$__COMMON_FZF_ELEMENTS \
            --preview  \"if [[ -f {} ]];then \
                if print -r -- {} | command \
                egrep -iq '\.[jw]ar\$';then jar tf {} | $COLORIZER_FZF_JAVA; \
                elif print -r -- {} | \
                command egrep -iq '\.deb\$';then $deb_cmd {} | $COLORIZER_FZF_SH; \
                elif print -r -- {} | \
                command egrep -iq '\.rpm\$';then $rpm_cmd {} | $COLORIZER_FZF_SH; \
                elif print -r -- {} | \
                command egrep -iq '\.(tgz|tar|tar\.gz)\$';then tar tf {} | $COLORIZER_FZF_C; \
                elif print -r -- {} | \
                    command egrep -iq '\.(bzip|bz)\$';then bzip -c -d {} | $COLORIZER_FZF_YAML; \
                elif print -r -- {} | \
                    command egrep -iq '\.(bzip2|bz2)\$';then bzip2 -c -d {} | $COLORIZER_FZF_YAML; \
                elif print -r -- {} | \
                    command egrep -iq '\.(xzip|xz)\$';then xz -c -d {} | $COLORIZER_FZF_YAML; \
                elif print -r -- {} | \
                    command egrep -iq '\.(gzip|gz)\$';then gzip -c -d {} | $COLORIZER_FZF_YAML; \
                elif print -r -- {} | \
                command egrep -iq '\.zip\$';then unzip -l -- {} | $COLORIZER_FZF_C;
                else \
              $COLORIZER_FZF 2>/dev/null; fi; else \
                    [[ -e {} ]] && stat -- {} | fold -80 | \
                    head -500 || {
                        source ~/.shell_aliases_functions.sh
                        {
                            print -r -- {} | command egrep \
                   '\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d\\.\\d\\d\\d' && {
                                whois -- {} | command \
                                egrep -q 'No (match|whois)' \
                                && dig {} || whois -- {}
                            } || {
                                cat ~/.common_aliases | grep -- \
                                {}= || set | command grep -a -- {} \
                                    | command grep -v -- \
                                    ZSH_EXEC || alias \
                                    | command grep -a -- {}\
                                    || { whois -- {} | \
                                    command egrep -q \
                                    'No (match|whois)' && dig {} \
                                    || whois -- {}
                                }
                            }
                        }
            };
        fi\""
    fi
}

fzf_setup

# killall ;<tab>
_fzf_complete_killall() {
  _fzf_complete '-m' "$@" < <(
    \ps -e -o command
    )
}

# mvim ;<tab>
_fzf_complete_mvim() {
  _fzf_complete '-m' "$@" < <(
     command grep '^>' ~/.viminfo|cut -c3-|sed 's@~@'"$HOME"'@'
    )
}
# vim ;<tab>
_fzf_complete_vim() {
  _fzf_complete '-m' "$@" < <(
     command grep '^>' ~/.viminfo|cut -c3-|sed 's@~@'"$HOME"'@'
    )
}
# echo $;<tab>
_fzf_complete_echo() {
  _fzf_complete '-m' "$@" < <(
      declare -xp | sed 's@=.*@@' | sed 's@.* @@'
    )
}
# alias ;<tab>
_fzf_complete_alias() {
  _fzf_complete '-m' "$@" < <(
      alias | sed 's@=.*@@'
    )
}

test -s "$HOME/.oh-my-zsh/custom/plugins/fzf/shell/completion.zsh" \
    && source "$HOME/.oh-my-zsh/custom/plugins/fzf/shell/completion.zsh"
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
# Solarized Dark color scheme for fzf
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS
    --color fg:-1,bg:-1,hl:$blue,fg+:$base2,bg+:$base02,hl+:$blue
    --color info:$yellow,prompt:$yellow,pointer:$base3,marker:$base3,spinner:$yellow"
#}}}***********************************************************


#{{{                    MARK:Custom Compsys Functions
#**************************************************************
_comps[ftp]=_ftp
_comps[traceroute]=_traceroute
_comps[host]=_host
_comps[passwd]=_passwd
_comps[ksh]=_ksh
_comps[tcsh]=_tcsh
_comps[csh]=_tcsh

_cl(){
    local global_aliases
    _alternative \
        'global-aliases:global alias:compadd -Qk galiases' \
        'suffix-aliases:suffix alias:_suffix_alias_files' \
        'aliases:alias:compadd -Qk aliases' \
        'builtins:builtin command:compadd -Qk builtins' \
        'reserved-words:reserved word:compadd -Qk reswords' \
        'functions:shell function:compadd -Qk functions' \
        'files:filenames:_path_files -g "* .*"' \
        'commands:commands:compadd -Qk commands'
        #need to escape [ for g[ in PATH, compadd -Q does this
}

_f(){
    _alternative \
    'files:directory:_path_files -g "*(-D/)"' \
    'directory-stack:directory stack:_directory_stack' \
}

_c(){
    arguments=('*:files:_path_files -g "*(D^/) *(DF)"')
    _arguments -s $arguments
}


compdef _cl clearList
compdef _f f
compdef _c c

#redefine global zsh completion function called at first parameter
#adding global aliases and files
_command_names(){
    # The option `-e' if given as the first argument says that we should
    # complete only external commands and executable files. This and a
    # `-' as the first argument is then removed from the arguments.

    local args defs ffilt

    zstyle -t ":completion:${curcontext}:commands" rehash && rehash

    zstyle -t ":completion:${curcontext}:functions" prefix-needed && \
    [[ $PREFIX != [_.]* ]] && \
    ffilt='[(I)[^_.]*]'

    defs=(
        'commands:external command:_path_commands'
    )

    [[ -n "$path[(r).]" || $PREFIX = */* ]] &&
        defs+=( 'executables:executable file:_files -g \*\(-\*\)' )

    if [[ "$1" = -e ]]; then
    shift
    else
    [[ "$1" = - ]] && shift

    defs=( "$defs[@]"
        'global-aliases:global alias:compadd -Qk galiases'
        'aliases:alias:compadd -Qk aliases'
        "functions:shell function:compadd -k 'functions$ffilt'"
        'builtins:builtin command:compadd -Qk builtins'
        'suffix-aliases:suffix alias:_suffix_alias_files'
        'reserved-words:reserved word:compadd -Qk reswords'
        'jobs:: _jobs -t'
        'parameters:: _parameters -g "^*(readonly|association)*" -qS= -r "\n\t\- =[+"'
        'parameters:: _parameters -g "*association*~*readonly*" -qS\[ -r "\n\t\- =[+"'
        'files:files:_files'
    )
    fi

    args=( "$@" )

    local -a cmdpath
    if zstyle -a ":completion:${curcontext}" command-path cmdpath &&
        [[ $#cmdpath -gt 0 ]]
    then
        local -a +h path
        local -A +h commands
        path=( $cmdpath )
    fi
    _alternative -O args "$defs[@]"
}

#}}}***********************************************************

#{{{                    MARK:Groovy
#**************************************************************
unset GROOVY_HOME # when set this messes up classpath
#}}}***********************************************************

#{{{                    MARK:Suffix aliases
#**************************************************************
alias -s txt='vim'
#}}}***********************************************************

#{{{                    MARK:SSH Public Key ID
#**************************************************************

if [[ $TMUX_AUTO_ATTACH == true ]]; then
    if [[ "$(uname)" == Linux ]]; then
        [[ -z "$TMUX" ]] && [[ -n $SSH_CONNECTION ]] && {
            mobile=true
            cat ~/.ssh/authorized_keys | command grep "$GITHUB_ACCOUNT" > ~/temp$$

            case $distroName in
                (debian|raspbian|kali|ubuntu)
                    out="$(command grep -a 'Accepted publickey' /var/log/auth.log | tail -1)"
                    key="$(ssh-keygen -l -f ~/temp$$ | awk '{print $2}')"
                    ;;
                (centos|rhel)
                    out="$(tail /var/log/messages)"
                    ;;
                (*suse*)
                    out="$(sudo journalctl -u sshd.service | command grep 'Accepted publickey' | tail -1)"
                    key="$(ssh-keygen -l -f ~/temp$$ | awk '{print $2}' | awk -F: '{print $2}')"
                    ;;
                (fedora)
                    out="$(sudo cat /var/log/secure | command grep 'Accepted publickey' | tail -1)"
                    key="$(ssh-keygen -l -f ~/temp$$ | awk '{print $2}' | awk -F: '{print $2}')"
                    ;;
                (*) :
                    ;;
            esac
            logg "searching for $key in $out"
            echo "$out" | grep -q "$key" && mobile=false

            command rm ~/temp$$
            if [[ $mobile == "false" ]]; then
                logg "not mobile"
                num_con="$(command ps -ef | command grep 'sshd' | command grep pts | command grep -v grep | wc -l)"
                logg "num cons is $num_con"
                if (( $num_con == 1 )); then
                    logg "no tmux clients"
                    {
                        tmux ls && {
                            tmux attach
                            logg "attaching to existing"
                        } || {
                            tmux new-session \; \
                            source-file ~/.tmux/control-window
                            logg "creating new session"
                        }
                    } &> /dev/null
                else
                    tmux attach
                    logg "clients so NO"
                fi
            else
                logg "mobile so NO"
            fi
        }

    fi
fi
#}}}***********************************************************

#{{{                    MARK:Misc
#**************************************************************
alias numcmd='print $#commands'
unalias ag &> /dev/null

#stop delay when entering normal mode
export KEYTIMEOUT=1

learn(){
    if [[ ! -z "$BUFFER" ]]; then
        mywords=("${(z)BUFFER}")
        [[ $mywords[1] == le ]] && return 1
        learning="$(printf '%s' "${BUFFER}" | sed 's@^[[:space:]]*@@;s@[[:space:]]*$@@' | tr '\n' ' '| sed 's@^[[:space:]]*@@;s@[[:space:]]*$@@')"
        BUFFER="le '${learning//'/\''}'"
        zle .accept-line
    else
        return 1
    fi
}

zle -N learn
bindkey -M viins '^J' learn
bindkey -M vicmd '^J' learn

zshrcsearch(){
    if [[ -z "$1" ]]; then
        zsh -ilvx -c false |& less
    else
        zsh -ilvx -c false |& ag --color --numbers -C 5 -i "$@" |& less
    fi
}

export CHEATCOLORS=true

# Example usage: zmv -W '*.pl' '*.perl'
autoload zmv
alias mmv='noglob zmv -W'

if exists jenv;then
    export PATH="$HOME/.jenv/shims:$PATH"
fi

#}}}***********************************************************

exists thefuck && eval $(thefuck --alias)
exists kubectl && source <(kubectl completion zsh)

end=$(date +%s)
logg "zsh startup took $((end - start)) seconds"
