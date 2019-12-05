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

#{{{                    MARK:start timestamp
#**************************************************************
startTimestamp=$(date +%s)
#}}}***********************************************************

#{{{                    MARK:Exports
#**************************************************************
# Global Environment Variables for ZPWR by MenkeTechnologies
# More Environment Variables in ~/.shell_aliases_functions.sh at top
# see README.md
export MYPROMPT=POWERLEVEL
export ZPWR_EXPAND=true
export ZPWR_EXPAND_SECOND_POSITION=true
export ZPWR_SURROUND=true
export ZPWR_COLORS=true
export ZPWR_AUTO_ATTACH=true
export ZPWR_EXA_EXTENDED=true
export ZPWR_PROFILING=false
export ZPWR_DEBUG=false
export ZPWR_TRACE=false
export USE_NEOVIM=true
export ZPWR_LEARN=true
export ZPWR_COMMIT_COLOR='37;45'

# non zpwr env vars
export LC_ALL="en_US.UTF-8"
export ZSH=$HOME/.oh-my-zsh

if [[ $ZPWR_PROFILING == true ]]; then
    #profiling startup
    zmodload zsh/zprof
fi

[[ -f "$HOME/.tokens.sh" ]] && source "$HOME/.tokens.sh"

[[ -f "$HOME/.tmux/powerline/bindings/zsh/powerline.zsh" ]] &&
source "$HOME/.tmux/powerline/bindings/zsh/powerline.zsh"

if [[ $MYPROMPT == POWERLEVEL ]]; then
    if test -s "$HOME/.powerlevel9kconfig.sh";then
        source "$HOME/.powerlevel9kconfig.sh"
    else
        ZSH_THEME=simonoff
    fi
else
    test ! -z $MYPROMPT && ZSH_THEME=$MYPROMPT || ZSH_THEME=simonoff
fi


ZSH_DISABLE_COMPFIX=true

#colors for common commands
test -s "$HOME/grc.zsh" && source "$HOME/grc.zsh"

export SHELL="$(which zsh)"
export ZPWR_OS_TYPE="$(uname -s | perl -pe '$_=lc')"

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
export ARCHFLAGS="-arch x86_64"

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
plugins=(fasd-simple gh_reveal zsh-z zsh-expand zsh-surround \
    zsh-nginx zsh-more-completions \
    fzf-zsh zsh-completions zsh-sed-sub zsh-git-acp \
    zsh-syntax-highlighting zsh-autosuggestions \
    history-substring-search ruby gem rake rails yarn ng \
    coffee node npm perl cpanm git github gradle ant mvn \
    scala lein spring django pip pyenv python go man nmap \
    postgres redis-cli colorize sudo rsync docker \
    docker-compose sublime kubectl \
    vundle rust cargo meteor gulp grunt glassfish tig fd \
    zsh-very-colorful-manuals)

PARENT_PROCESS="$(command ps -p $PPID | perl -lane '$"=" ";print "@F[3..$#F]" if m{^\s*\d+.*}')"

if [[ "$ZPWR_OS_TYPE" == "darwin" ]];then
    plugins+=(zsh-xcode-completions brew osx pod)
    #determine if this terminal was started in IDE
    echo "$PARENT_PROCESS" | command egrep -iq 'login|tmux|vim' &&
        plugins+=(tmux)
elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then
    echo "$PARENT_PROCESS" | command egrep -iq 'login|tmux|vim' &&
        plugins+=(tmux)
    plugins+=(systemd)
    distroName=$(perl -lne 'do{($_=$1)=~s@"@@g;print;exit0}if m{^ID=(.*)}' /etc/os-release)

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

#has all aliases and functions common to bourne like shells
_alias_file="$HOME/.shell_aliases_functions.sh"
test -s "$_alias_file" && source "$_alias_file"
alias -r > "$HOME/.common_aliases"

test -z $ZPWR_BANNER && export ZPWR_BANNER=default
exists bat && export BAT_THEME="OneHalfLight"

export ZPWR_DEFAULT_BANNER="bash $SCRIPTS/macOnly/figletRandomFontOnce.sh $(hostname)"

#}}}***********************************************************

#{{{                    MARK:Global Vars for Global Aliases
#**************************************************************
test -z $ZPWR_GLOBAL_ALIAS_PREFIX && export ZPWR_GLOBAL_ALIAS_PREFIX=j
test -z $ZPWR_TABSTOP && export ZPWR_TABSTOP=__________
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
    if echo "$(command ps -ef)" | command  grep -q 'ssh '; then
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
    else
        zle .kill-whole-line
        if echo "$(command ps -ef)" | command grep -q 'tmux '; then
            BUFFER=tmm
        else
            BUFFER=tmm_full
        fi
        zle .accept-line
    fi
}

dbz() {
    zle .kill-whole-line
    BUFFER=db
    zle .accept-line
}

ZPWR_COUNTER=0

changeQuotes(){

    if (( $ZPWR_COUNTER % 8 == 0 )); then
        __OLDBUFFER="${BUFFER}"
        BUFFER=${BUFFER//\"/\'}
    elif (( $ZPWR_COUNTER % 8 == 1 )); then
        if [[ "$(print -r "$__OLDBUFFER" | tr -d "'\"\`" )" \
            != "$(print -r "$BUFFER" | tr -d "'" )" ]]; then
            ZPWR_COUNTER=0
            return 1
        fi
        BUFFER=${BUFFER//\'/\"}
    elif (( $ZPWR_COUNTER % 8 == 2 )); then
        if [[ "$(print -r "$__OLDBUFFER" | tr -d "'\"\`" )" != \
            "$(print -r "$BUFFER" | tr -d "\"" )" ]]; then
            ZPWR_COUNTER=0
            return 1
        fi
        BUFFER=${BUFFER//\"/\`}
    elif (( $ZPWR_COUNTER % 8 == 3 )); then
        if [[ \
            "$(print -r "$__OLDBUFFER" | tr -d "'\"\`" )" \
            != "$(print -r "$BUFFER" | tr -d "\`" )" ]]; then ZPWR_COUNTER=0
            return 1
        fi
        _SEMI_OLDBUFFER="$BUFFER"
        BUFFER="\"${BUFFER}\""
    elif (( $ZPWR_COUNTER % 8 == 4 )); then
        if [[ "$(print -r "$_SEMI_OLDBUFFER" | tr -d "'\"\`" )" != \
            "$(print -r "$BUFFER" | tr -d "\`\"" )" ]]; then
            ZPWR_COUNTER=0
            return 1
        fi
        #semi has no quotes
        _SEMI_OLDBUFFER=${_SEMI_OLDBUFFER//\`/}
        BUFFER="\$(${_SEMI_OLDBUFFER})"
    elif (( $ZPWR_COUNTER % 8 == 5 )); then
        #only diff should be $()
        if (( ${#BUFFER} < 4 )); then
            ZPWR_COUNTER=0
            return 1
            #statements
        fi
        if [[ "$_SEMI_OLDBUFFER" != \
            "$(print -r "${BUFFER:2:-1}" )" ]]; then
            ZPWR_COUNTER=0
            return 1
        fi
        BUFFER="\"${BUFFER}\""
    elif (( $ZPWR_COUNTER % 8 == 6 )); then
        if (( ${#BUFFER} < 6 )); then
            ZPWR_COUNTER=0
            return 1
            #statements
        fi
        if [[ "${_SEMI_OLDBUFFER}" != \
            "${BUFFER:3:-2}" ]]; then
            ZPWR_COUNTER=0
            return 1
        fi
        # back to no quotes
        BUFFER="$_SEMI_OLDBUFFER"
    else
        if [[ "${_SEMI_OLDBUFFER}" != "${BUFFER}" ]]; then
            ZPWR_COUNTER=0
            return 1
        fi
        #back to original
        BUFFER="${__OLDBUFFER}"
    fi

    ((ZPWR_COUNTER++))
}

alternateQuotes(){
    BUFFER="$(print -r "$BUFFER" | tr "\"'" "'\"" )"
}


clipboard(){
    [[ -z "$BUFFER" ]] && return 1

    clipcmd=$COPY_CMD
    if [[ -n $clipcmd ]]; then
            print -sr "$BUFFER"
            print -rn "$BUFFER" | ${=clipcmd}
            echo
            print -n "\x1b[0;34mCopied \x1b[1m\""
            print -rn "$BUFFER"
            print  "\"\x1b[0;34m to System Clipboard!"
            echo
            zle .redisplay
    else
        echo
        printf "\x1b[0;34mNO \x1b[1m\"XCLIP\"\x1b[0;34m Found!\n"
        echo
        zle .redisplay
    fi
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


# cache autoload +X functions,aliases, builtins,reswords into file
# search with fzf
clearListFZF(){
    {
        print -l ${(k)functions}
        print -l ${(v)commands}
        print -l ${(k)aliases}
        print -l ${(k)galiases}
        print -l ${(k)builtins}
        print -l ${(k)reswords}
        ls -d *
    } | \
    eval "fzf -m -e --no-sort --border $FZF_CTRL_T_OPTS"
}

fzvim(){
    local file
    if [[ $USE_NEOVIM == true ]]; then
        file="$HOME/.nviminfo"
        test -e "$file" || touch "$file"
        perl -le '@l=reverse<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;print $o if -f $f}if m{^>.(.*)}}' "$file" | \
    eval "fzf -m -e --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
    else
        file="$HOME/.viminfo"
    perl -lne 'do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;print $o if -f $f}if m{^>.(.*)}' "$file" | \
    eval "fzf -m -e --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
    fi
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
        BUFFER="cd $firstdir\"; $BUFFER; clearList"
        zle .accept-line
    fi
}

fzfZList(){
    z -l |& perl -lne 'for (reverse <>){do{($_=$2)=~s@$ENV{HOME}@~@;print} if m{^\s*(\S+)\s+(\S+)\s*$}}' |
    eval "fzf -e --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~])([^~]*)$@"$ENV{HOME}$2"@;s@\s+@@g;'
}

fasdFList(){
    fasd -f |& perl -lne 'for (reverse <>){do{($_=$2)=~s@$ENV{HOME}@~@;print} if m{^\s*(\S+)\s+(\S+)\s*$}}' |
    eval "fzf -m --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
}

fm(){
   FZF_MAN_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$SCRIPTS/fzfMan.sh" "$1")'"
    man "$1" | col -b | eval "fzf --no-sort -m $FZF_MAN_OPTS"
}

zFZF(){
    zle .kill-whole-line
    BUFFER="z $(fzfZList)"
    mywords=(${(z)BUFFER})
    if (( $#mywords == 1 )); then
        zle .kill-whole-line
    else
        zle .accept-line
    fi
}

fasdFZF(){
    BUFFER="$BUFFER $(fasdFList)"
    mywords=(${(z)BUFFER})
    if (( $#mywords == 1 )); then
        :
    else
        zle .accept-line
    fi
}
vimFzfSudo(){
    zle .kill-whole-line

    if [[ $USE_NEOVIM == true ]]; then
        LBUFFER="sudo -E nvim $(fzvim)"
    else
        LBUFFER="sudo -E vim $(fzvim)"
    fi
    mywords=("${(z)BUFFER}")
    if (( $#mywords == 3 )); then
        zle .kill-whole-line
    else
        firstdir=${mywords[4]:h}
        #logg "words='$mywords[4]'=>'$firstdir'"
        #:h takes aways last "
        BUFFER="cd $firstdir\"; $BUFFER; clearList"
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

regenZshCompCache(){
    prettyPrint "regen zsh compsys cache"
    rm -f "$HOME/.zcompdump"*
    compinit -u
}

export ALL_ENV="$HOME/allEnv"

regenSearchEnv(){
    prettyPrint "regenerating all env into ${ALL_ENV}{Key,Value}.txt"
    source "$SCRIPTS/zshRegenSearchableEnv.zsh" "$ALL_ENV"
}

regenAll(){
    regenZshCompCache
    regenAllKeybindingsCache
    regenPowerlineLink
    regenSearchEnv
}

deleteLastWord(){
    mywords=(${(z)BUFFER})
    if (( $#mywords > 1  )); then
        BUFFER=${mywords[1,-2]}" "
    else
        BUFFER=
    fi
}


fzfEnv(){
    if [[ ! -s "${ALL_ENV}Key.txt" ]]; then
        logg "regenerating keys for $ALL_ENV"
        regenSearchEnv
    fi
    if [[ ! -s "${ALL_ENV}Value.txt" ]]; then
        logg "regenerating values for $ALL_ENV"
        regenSearchEnv
    fi

    cat "${ALL_ENV}Key.txt" | awk '{print $2}' |
    eval "fzf -m --border $FZF_ENV_OPTS"
}


fzfAllKeybind(){
    if [[ ! -s "$ALL_KEYBINDINGS" ]]; then
        logg "regenerating $ALL_KEYBINDINGS"
        regenAllKeybindingsCache
    fi
    cat "$ALL_KEYBINDINGS" | fzf
}

fzfVimKeybind(){
    if [[ ! -s "$VIM_KEYBINDINGS" ]]; then
        logg "regenerating $VIM_KEYBINDINGS"
        regenAllKeybindingsCache
    fi
    cat "$VIM_KEYBINDINGS" | fzf
}

getFound(){
    eval "find / 2>/dev/null | fzf -m $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
}

locateFzf(){
    local found firstArg
    mywords=(${(z)BUFFER})
    if (( $#mywords == 0 )); then
        found="$(getFound)"

        if [[ -z "$found" ]]; then
            zle .kill-whole-line
            return 0
        fi
        firstArg="${${(Az)found}[1]//\"/}"
        if [[ -d "$firstArg" ]]; then
            BUFFER="cd $firstArg; c $found"
        else
            BUFFER="c $found"
        fi
        zle .accept-line
    else
        found="$(getFound)"

        if [[ ! -z "$found" ]]; then
            BUFFER="$BUFFER $found"
            zle .accept-line
            return 0
        fi
        return 0
    fi
}

commit(){
    vim -v -c Commits!
}

fzfCommits(){
    BUFFER=""
    zle .kill-whole-line
    if isGitDir; then
        BUFFER="vim -v -c Commits! -c quitall"
        zle .accept-line
    else
        zle .kill-whole-line
        zle .accept-line
        return 1
    fi
}

zle -N fzfCommits
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
zle -N fzfVimKeybind
zle -N fzfAllKeybind
zle -N locateFzf
zle -N fzfEnv
zle -N fasdFZF

#vim mode for zle
bindkey -v

bindkey -M viins "^Vc" fzfCommits
bindkey -M vicmd "^Vc" fzfCommits

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

bindkey -M viins '^V/' locateFzf
bindkey -M vicmd '^V/' locateFzf

bindkey -M viins '^V.' fzfAllKeybind
bindkey -M vicmd '^V.' fzfAllKeybind

bindkey -M viins '^Vk' fzfVimKeybind
bindkey -M viins '^Vk' fzfVimKeybind

bindkey -M viins '^V,' fzfEnv
bindkey -M vicmd '^V,' fzfEnv

bindkey -M viins '^V^N' vimFzfSudo
bindkey -M vicmd '^V^N' vimFzfSudo

exists fasd && {
    bindkey -M viins '^V^F' fasdFZF
    bindkey -M vicmd '^V^F' fasdFZF
}

exists z && {
    zle -N zFZF
    bindkey -M viins '^V^S' zFZF
    bindkey -M vicmd '^V^S' zFZF
}

bindkey -M viins '^V^V' vimFzf
bindkey -M vicmd '^V^V' vimFzf

bindkey -M viins '^Q' lastWordDouble
bindkey -M vicmd '^Q' lastWordDouble

bindkey -M viins '^V^Z' fzf-history-widget
bindkey -M vicmd '^V^Z' fzf-history-widget

bindkey -M viins '^V^G' fzf-cd-widget
bindkey -M vicmd '^V^G' fzf-cd-widget

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
if [[ "$ZPWR_OS_TYPE" == darwin ]];then
    if echo "$PARENT_PROCESS" | command egrep -q 'login|tmux'; then
        #Ctrl plus arrow keys
        bindkey '\e[1;5A' gitfunc
        bindkey '\e[1;5B' updater
        bindkey '\e[1;5C' tutsUpdate
        bindkey '\e[1;5D' dbz
    else
        bindkey '\e[5A' gitfunc
        bindkey '\e[5B' updater
        bindkey '\e[5C' tutsUpdate
        bindkey '\e[5D' dbz
    fi
fi


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

    ZPWR_WILL_CLEAR=false

    #do we want to clear the screen and run ls after we exec the current line?
    local commandsThatModifyFiles regex mywords line

    commandsThatModifyFiles=(unlink rm srm to md touch chown chmod rmdir mv cp chflags chgrp ln mkdir nz git\ reset git\ clone gcl dot_clean)

    for command in ${commandsThatModifyFiles[@]}; do
        regex="^sudo $command .*\$|^$command .*\$"
        if echo "$BUFFER" | command grep -q -E "$regex"; then
            ZPWR_WILL_CLEAR=true
        fi
    done
    mywords=("${(z)BUFFER}")

    if [[ ${mywords[1]} == 'sudo' ]]; then
        cmd=${mywords[2]}

        #sudo =iftop fails so remove =
        cmd=${cmd#=}
        out="$(alias -- $cmd)"
        if echo "$out" | command grep -q -E "grc"; then
            cmdlet="$(eval echo "${out#*=}")"
            print -srn "$BUFFER"
            BUFFER="sudo $cmdlet $mywords[3,$]"
            echo
            eval "$BUFFER"
            BUFFER=""
            zle .accept-line
            return 0
        fi
    fi

    if [[ -z "$ZPWR_GLOBAL_ALIAS_PREFIX" ]]; then
        [[ -z "$BUFFER" ]] && zle .accept-line && return 0
        if [[ ! -z $(alias -g $mywords[1]) ]];then
            aliases="$(cat $HOME/.common_aliases)"
            line="$(print -r $aliases | perl -ne 'print $1 if m{\Q'$mywords[1]'\E=(.*)}')"
            if [[ -z $line ]];then
                #fxn
                BUFFER="\\$mywords"
            else
                #non global alias
                print "$line" | fgrep "'" && \
                    BUFFER="${line:1:-1} $mywords[2,$]" ||
                    BUFFER="$line $mywords[2,$]"
            fi
        fi
    fi

set +x
    zle .accept-line
    #leaky simonoff theme so reset ANSI escape sequences
    printf "\x1b[0m"
}

zle -N accept-line my-accept-line

precmd(){
    (( $? == 0)) && {
        if [[ "$ZPWR_WILL_CLEAR" == true ]]; then
            clear
            listNoClear
            # to prevent ZPWR_WILL_CLEAR staying true when
            # called from zle widgets and not from
            # pressing enter key
            ZPWR_WILL_CLEAR=false
        fi
    }
    if [[ ! -z "$TMUX" ]] && [[ -f ~/.display.txt ]]; then
        #export DISPLAY=$(cat ~/.display.txt) ||
        :
    else
        :
        #echo $DISPLAY > ~/.display.txt
    fi
    #leaky simonoff theme so reset ANSI escape sequences
    printf "\x1b[0m"
    #lose normal mode
    if [[ $MYPROMPT != POWERLEVEL ]]; then
        RPROMPT="%B%F{blue}$$ %b%F{blue}$-"
    fi
}

if [[ ! -z "$TMUX" ]] && [[ -f ~/.display.txt ]]; then
    #export DISPLAY=$(cat ~/.display.txt) ||
    :
    else
        :
        #echo $DISPLAY > ~/.display.txt
    fi

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

if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    if echo "$PARENT_PROCESS" | command egrep -q 'login|tmux'; then
        bindkey -M menuselect '\e[1;5A' vi-backward-word
        bindkey -M menuselect '\e[1;5B' vi-forward-word
        bindkey -M menuselect '\e[1;5D' vi-beginning-of-line
        bindkey -M menuselect '\e[1;5C' vi-end-of-line
    else
        bindkey -M menuselect '\e[5A' vi-backward-word
        bindkey -M menuselect '\e[5B' vi-forward-word
        bindkey -M menuselect '\e[5D' vi-beginning-of-line
        bindkey -M menuselect '\e[5C' vi-end-of-line
    fi
else
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
fi

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
    lenToFirstTS=${#BUFFER%%$ZPWR_TABSTOP*}
    if (( $lenToFirstTS < ${#BUFFER} )); then
        CURSOR=$lenToFirstTS
        RBUFFER=${RBUFFER:$#ZPWR_TABSTOP}
    else
        if [[ $BUFFER[-1] = ";" ]]; then
            BUFFER+=" "
        else
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

#search PATH for zsh <script>
setopt pathscript

#more compact menu completion
setopt list_packed

# increase max size for directory stack
export DIRSTACKSIZE=20
#}}}***********************************************************

#{{{                    MARK:Completions
#**************************************************************

# reload comps if file is stale for 1 week
regencp=false
for dump in ~/.zcompdump(N.mh+168); do
    logg "regenerating stale $dump"
    # avoid insecure warning message with -u
    compinit -u
    zcompile $ZSH_COMPDUMP
    regencp=true
    break
done

if [[ $regencp = false ]]; then
    # use ~/.zcompdump
    compinit -C -u
fi

if [[ ${+_comps[z]} == 0 ]]; then
    logg 'regenerating ~/.zcompdump due to failed compinit'
    compinit -u
else
    logg 'using cached ~/.zcompdump'
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

#separate files and dirs in _files completion
#zstyle ':completion:*' file-patterns '%p(^-/):globbed-files' '^(-/):directories' '*:all-files'

if [[ $ZPWR_COLORS == true ]]; then
    # Make the list prompt friendly
    zstyle ':completion:*' list-prompt \
        $'\e[1;31m-<<\e[0;34m%SAt %s\e[44;32m%M%p\e[0;34m%S, Hit TAB for more, or the characters to insert%s\e[0;1;31m>>-\e[0m'

    # Make the selection prompt friendly when there are a lot of choices
    zstyle ':completion:*' select-prompt \
        $'\e[1;31m-<<\e[0;34m%SScrolling active: current selection at %s\e[37;44m%p\e[0;1;31m>>-\e[0m'

    # Add simple colors to kill
    zstyle ':completion:*:*:kill:*:processes' list-colors \
        '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

    # formatting and messages, blue text with red punctuation
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

zstyle ':completion:*' menu select=1 _complete _ignored _approximate _correct
# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*' group-order commands aliases global-aliases suffix-aliases functions builtins reserved-words parameters options argument-rest globbed-files files local-directories hosts commits heads commit-tags heads-local heads-remote recent-branches tags commit-objects remote-branch-names-noprefix fasd-file fasd zdir tmux contexts last-ten

zstyle ':completion:*:*:z:*:*' group-order zdir options argument-rest globbed-files files fasd-file fasd last-ten

# show command descriptions if available
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

if [[ $ZPWR_COLORS == true ]]; then

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
    zstyle ':completion:*:global-aliases' list-colors '=(#b)(*)=1;30=1;34;43;4'

    #git commit colors
    zstyle ':completion:*:*:commits' list-colors '=(#b)(*)=1;'$ZPWR_COMMIT_COLOR
    zstyle ':completion:*:heads' list-colors '=(#b)(*)=1;30=34;42;4'
    zstyle ':completion:*:commit-tags' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:cached-files' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:files' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:blobs' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:blob-objects' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:trees' list-colors '=(#b)(*)=1;30=1;34;41;4'

    zstyle ':completion:*:tags' list-colors '=(#b)(*)=1;30=1;34;41;4'

    zstyle ':completion:*:heads-local' list-colors '=(#b)(*)=1;30=1;34;43;4'
    zstyle ':completion:*:heads-remote' list-colors '=(#b)(*)=1;30=1;37;46'
    zstyle ':completion:*:modified-files' list-colors '=(#b)(*)=1;30=1;37;42'
    zstyle ':completion:*:revisions' list-colors '=(#b)(*)=1;30=1;37;42'
    zstyle ':completion:*:recent-branches' list-colors '=(#b)(*)=1;30=1;37;44'
    zstyle ':completion:*:remote-branch-names-noprefix' list-colors '=(#b)(*)=1;30=1;33;46'
    zstyle ':completion:*:blobs-and-trees-in-treeish' list-colors '=(#b)(*)=1;30=1;34;43'
    zstyle ':completion:*:commit-objects' list-colors '=(#b)(*)=1;30=1;37;43'
    zstyle ':completion:*:*(git|git-checkout):*:files' list-colors '=(#b)(*)=1;30=1;32;43'
    zstyle ':completion:*:prefixes' list-colors '=(#b)(*)=1;30=1;37;43'

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

    #pgrep and kill
    zstyle ':completion:*:processes' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:processes-names' list-colors '=(#b)(*)=1;30=1;37;43'
    zstyle ':completion:*:pname' list-colors '=(#b)(*)=1;30=1;37;43'

   #separate colors for git commans types
    zstyle ':completion:*:main-porcelain-commands' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:user-commands' list-colors '=(#b)(*)=1;30=1;37;42'
    zstyle ':completion:*:third-party-commands' list-colors '=(#b)(*)=1;30=1;37;43'
    zstyle ':completion:*:ancillary-manipulator-commands' list-colors '=(#b)(*)=1;30=37;46'
    zstyle ':completion:*:ancillary-interrogator-commands' list-colors '=(#b)(*)=1;30=1;34;43;4'
    zstyle ':completion:*:interaction-commands' list-colors '=(#b)(*)=1;30=1;37;41'
    zstyle ':completion:*:plumbing-manipulator-commands' list-colors '=(#b)(*)=1;30=34;42;4'
    zstyle ':completion:*:plumbing-interrogator-commands' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:plumbing-sync-commands' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:plumbing-sync-helper-commands' list-colors '=(#b)(*)=1;30=1;4;37;45'
    zstyle ':completion:*:plumbing-internal-helper-commands' list-colors '=(#b)(*)=1;30=37;46'

    zstyle ':completion:*:zdir' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:fasd' list-colors '=(#b)(*)=1;30=1;37;42'
    zstyle ':completion:*:fasd-file' list-colors '=(#b)(*)=1;30=1;33;45'
    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        #homebrew tags
        zstyle ':completion::complete:brew-cask:argument-rest:list' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:formulae' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:common-commands' list-colors '=(#b)(*)=1;30=1;37;45'
        zstyle ':completion:*:all-commands' list-colors '=(#b)(*)=1;30=1;37;42'
    fi

    #zstyle ':completion:*:*:commands' list-colors '=(#b)([a-zA-Z]#)([0-9_.-]#)([a-zA-Z]#)*=0;34=1;37;45=0;34=1;37;45'
    zstyle ':completion:*:*:commands' list-colors '=(#b)(*)=1;37;45'

    zstyle ':completion:*:*:tmux' list-colors '=(#b)(*)=1;37;45'
    zstyle ':completion:*:*:last-ten' list-colors '=(#b)(*)=1;33;45'
    zstyle ':completion:*:*:last-line' list-colors '=(#b)(*)=1;37;44'
    zstyle ':completion:*:*:last-clip' list-colors '=(#b)(*)=1;37;45'
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

    zstyle ':completion:*:*:*:*:options' list-colors '=(#b)([-<)(>]##)[ ]#([a-zA-Z0-9_.,:?@#-]##) #([<)(>]#) #([a-zA-Z0-9+?.,@3-]#)*=1;32=1;31=34=1;31=34'
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
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}a="|& command egrep -v '\bag\b' |& \\ag --color -i"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}ap="| awk -F: 'BEGIN {$ZPWR_TABSTOP} {printf \"%s$ZPWR_TABSTOP\\n\", \$1} END {$ZPWR_TABSTOP}'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}b='&>> "$LOGFILE" &; disown %1 && unset __pid && __pid=$! && ps -ef | command grep -v grep | command grep --color=always $__pid; unset __pid;'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}bb='&>> "$LOGFILE'"$ZPWR_TABSTOP"'" &; disown %1 && unset __pid && __pid=$! && ps -ef | command grep -v grep | command grep --color=always $__pid; unset __pid;'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}c="| cut -d ' ' -f1"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}cf2="| sed 's@.*@_\U\l&_@' | boldText.sh | blueText.sh"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}e="|& command egrep -v '\begrep\b' |& command egrep --color=always -i"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}k="| awk 'BEGIN {$ZPWR_TABSTOP} {printf \"%s$ZPWR_TABSTOP\\n\", \$1} END {$ZPWR_TABSTOP}'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}l='| less -rMN'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}lo='"$LOGFILE"'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}n="2> /dev/null"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}nn="> /dev/null 2>&1"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}o='&>> "$LOGFILE"'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}oo='&>> "$LOGFILE'"$ZPWR_TABSTOP"'"'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}p="| perl -lanE 'say $ZPWR_TABSTOP'"
    alias ${ZPWR_GLOBAL_ALIAS_PREFIX}pg="perl -e 'print \`$ZPWR_TABSTOP \"\$_\"\`for<*>'"
        alias ${ZPWR_GLOBAL_ALIAS_PREFIX}pf="perl -e 'print \`$ZPWR_TABSTOP\`for($ZPWR_TABSTOP)'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}r="| sort"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}se="| sed -E 's@$ZPWR_TABSTOP@$ZPWR_TABSTOP@g'"
    #default value tabstops
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}see="| sed -E 's@.*$ZPWR_TABSTOP@$ZPWR_TABSTOP@g'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}seee="| sed -E 's@.$ZPWR_TABSTOP@(&)$ZPWR_TABSTOP@g'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}sp="| sed -n '$ZPWR_TABSTOP,\$p'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}t="| tr '$ZPWR_TABSTOP' '$ZPWR_TABSTOP'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}ta="| tail"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}u="| awk '{print \$1}' | uniq -c | sort -rn | head -10"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}uu="| awk '{$ZPWR_TABSTOP}' | uniq -c | sort -rn | head -10"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}wc='| wc -l'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}x='| tr a-z A-Z'
    alias ${ZPWR_GLOBAL_ALIAS_PREFIX}g="git add . && git commit -m \""$ZPWR_TABSTOP\"""
    alias ${ZPWR_GLOBAL_ALIAS_PREFIX}gp="git add . && git commit -m \""$ZPWR_TABSTOP\"" && git push"
    alias ${ZPWR_GLOBAL_ALIAS_PREFIX}grp="git reset --soft $ZPWR_TABSTOP && git add . && git commit -m \""$ZPWR_TABSTOP\"" && git push -f origin $ZPWR_TABSTOP"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}co="\\x1b[38;5;${ZPWR_TABSTOP}m${ZPWR_TABSTOP}\\x1b[0m"

    alias i='if [[ '$ZPWR_TABSTOP' ]];then
        '$ZPWR_TABSTOP'
    fi'
    alias iee='if [[ '$ZPWR_TABSTOP' ]];then
        '$ZPWR_TABSTOP'
    elif [[ '$ZPWR_TABSTOP' ]];then
        '$ZPWR_TABSTOP'
    else
        '$ZPWR_TABSTOP'
    fi'
    alias ie='if [[ '$ZPWR_TABSTOP' ]];then
        '$ZPWR_TABSTOP'
    else
        '$ZPWR_TABSTOP'
    fi'
    alias wr='while read line;do
        '$ZPWR_TABSTOP'
    done < '$ZPWR_TABSTOP''
    alias wt='while [[ true'$ZPWR_TABSTOP' ]];do
        '$ZPWR_TABSTOP'
    done'
    alias fe='for i in '$ZPWR_TABSTOP';do
        '$ZPWR_TABSTOP'
    done'

    alias fori="for (( i = 0; i < $ZPWR_TABSTOP; i++ )); do
        $ZPWR_TABSTOP
    done"

    alias dry="git merge-tree \$(git merge-base FETCH_HEAD master$ZPWR_TABSTOP) master$ZPWR_TABSTOP FETCH_HEAD | less"

    alias gsc="git difftool -y -x 'printf \"\\x1b[1;4m\$REMOTE\\x1b[0m\\x0a\";sdiff --expand-tabs -w '\$COLUMNS $ZPWR_TABSTOP | stdinSdiffColorizer.pl 80"



    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}v='| pbcopy -pboard general'
    else
        alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}v='| xclip -selection clipboard'
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
    bash "$fig" "$(hostname)" |
    ponysay -W 100
}
bannerLolcat(){
    bash "$fig" "$(hostname)" |
    ponysay -W 100 |
    splitReg.sh -- \
    ---------------------- lolcat
}
noPonyBanner(){
    eval "$ZPWR_DEFAULT_BANNER"
}

revealRecurse(){
    for i in **/*(/); do
        ( builtin cd $i && reveal 2>/dev/null; )
    done
}

#}}}***********************************************************
#
#{{{                    MARK:Source Tokens
#**************************************************************
test -f "$HOME/.tokens.sh" && source "$HOME/.tokens.sh"
#}}}***********************************************************

#{{{                    MARK:Initialize Login
#**************************************************************
#go to desktop if not root
if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    if [[ "$UID" != "0" ]]; then
         #builtin cd "$D" && clear
        clear
        fig="$SCRIPTS/macOnly/figletRandomFontOnce.sh"
        if type figlet > /dev/null 2>&1; then
            printf "\e[1m"
            if [[ -f "$fig" ]]; then
                if [[ "$ZPWR_BANNER" == ponies ]]; then
                    if [[ -f "$SCRIPTS/splitReg.sh" ]];then
                        bannerLolcat
                    else
                        banner
                    fi
                else
                    noPonyBanner
                fi
            fi
        fi
        printf "\e[0m"
        listNoClear
    else
        #root on unix
        clearList
    fi
else
    if [[ "$UID" != "0" ]]; then
        clear
        if [[ $ZPWR_BANNER == ponies ]]; then
            case $distroName in
                (raspbian)
                    test -d "$D" && builtin cd "$D"
                    if type ponysay 1>/dev/null 2>&1; then
                        bash "$HOME/motd.sh" | ponysay -W 120
                    else
                        bash "$HOME/motd.sh"
                    fi
                    ;;
                (ubuntu|debian|kali|linuxmint|parrot)
                    test -d "$D" && builtin cd "$D"
                    figlet -f block "$(whoami)" | ponysay -W 120 |
                        splitReg.sh -- ------------- lolcat
                    ;;
                (fedora|centos|rhel)
                    test -d "$D" && builtin cd "$D"
                    figlet -f block "$(whoami)" | ponysay -W 120 |
                        splitReg.sh -- ------------- lolcat
                    ;;
                (*suse*)
                    test -d "$D" && builtin cd "$D"
                    figlet -f block "$(whoami)" | ponysay -W 120 |
                        splitReg.sh -- ------------- lolcat
                    ;;
                (*) :
                    ;;
            esac
        else
            case $distroName in
                (raspbian)
                    test -d "$D" && builtin cd "$D"
                    bash "$HOME/motd.sh"
                    ;;
                (ubuntu|debian|kali|linuxmint|parrot)
                    test -d "$D" && builtin cd "$D"
                    noPonyBanner
                    ;;
                (fedora|centos|rhel)
                    test -d "$D" && builtin cd "$D"
                    noPonyBanner
                    ;;
                (*suse*)
                    test -d "$D" && builtin cd "$D"
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

#stderr colorization filter
#color2

#change history file size
export SAVEHIST=10000000
#change history size in memory
export HISTSIZE=10000000

#set right prompt string during continuation
RPS2='+%N:%i:%^'
export PS3=$'\e[1;34m-->>>> \e[0m'

#}}}***********************************************************

#{{{                    MARK:ENV VARS IN ZSH PROMPT %~
#**************************************************************
#if this is a mac or linux
if [[ "$ZPWR_OS_TYPE" == "darwin" ]];then
    if [[ -d "$WCC" ]]; then
        : ~WCC
    fi
    if [[ -d "$SD" ]]; then
        : ~SD
    fi
    if [[ -d "$HOMEBREW_HOME_FORMULAE" ]]; then
        : ~HOMEBREW_HOME_FORMULAE
    fi
fi

if [[ -d "$FORKED_DIR" ]]; then
    : ~FORKED_DIR
fi

if [[ -d "$SCRIPTS" ]]; then
    : ~SCRIPTS
fi

if [[ -d "$ZPWR" ]]; then
    : ~ZPWR
fi

if [[ -d "$PYSCRIPTS" ]]; then
    : ~PYSCRIPTS
fi

if [[ -d "$PYEXECUTABLES" ]]; then
    : ~PYEXECUTABLES
fi

if [[ -d "$TMUX_HOME" ]]; then
    : ~TMUX_HOME
fi

if [[ -d "$DOC" ]]; then
    : ~DOC
fi

if [[ -d "$HOMEBREW_HOME_FORMULAE" ]]; then
    : ~HOMEBREW_HOME_FORMULAE
fi

if [[ -d "$YARN_HOME" ]]; then
    : ~YARN_HOME
fi

if [[ -d "$PERL5LIB" ]]; then
    : ~PERL5LIB
fi

if [[ -d "$NODE_HOME" ]]; then
    : ~NODE_HOME
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
export ZPWR_COLORIZER=bat

if [[ $ZPWR_COLORIZER == bat ]]; then
    if exists bat;then
        export COLORIZER_FZF='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" {}'
        export COLORIZER_FZF_FILE_TEXT='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -l ASP "$file"'
        export COLORIZER_FZF_FILE_DEFAULT='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -l ASP "$file"'
        export COLORIZER_FZF_FILE='bat --paging never --wrap character --color always --style="numbers,grid,changes,header" "$file"'
        export ZPWR_COLORIZER='bat --paging never --wrap character --color always --style="numbers,grid,changes,header"'
        export COLORIZER_NL=''
    else
        export COLORIZER_FZF="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR {} | cat -n"
        export COLORIZER_FZF_FILE="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR \"\$file\" | cat -n"
        export ZPWR_COLORIZER="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR"
        export COLORIZER_NL=' | cat -n'
    fi
else
    export COLORIZER_FZF="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR {} | cat -n"
    export COLORIZER_FZF_FILE="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR \"\$file\" | cat -n"
    export ZPWR_COLORIZER="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR"
    export COLORIZER_NL=' | cat -n'
fi

export COLORIZER_FZF_C="$ZPWR_COLORIZER -l c"
export COLORIZER_FZF_SH="$ZPWR_COLORIZER  -l sh"
export COLORIZER_FZF_YAML="$ZPWR_COLORIZER -l yaml"
export COLORIZER_FZF_JAVA="$ZPWR_COLORIZER -l java"
export FZF_DRACULA="--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7"
export FZF_JELLY="--color fg:-1,bg:-1,hl:230,fg+:3,bg+:233,hl+:229
--color info:150,prompt:110,spinner:150,pointer:167,marker:174"


fzf_setup(){
    export ZPWR_COMMON_FZF_ELEM
    ZPWR_COMMON_FZF_ELEM="--prompt='-->>> '"

    #to include dirs files in search
    export FZF_DEFAULT_COMMAND='find * | ag -v ".git/"'
    export FZF_DEFAULT_OPTS="$ZPWR_COMMON_FZF_ELEM --reverse --border --height 100%"
    local rpm_cmd
    local deb_cmd
    exists rpm && rpm_cmd="rpm -qi" || rpm_cmd="stat"
    exists dpkg && deb_cmd="dpkg -I" || deb_cmd="stat"

    export FZF_CTRL_T_COMMAND='find . | ag -v ".git/"'
    export FZF_CTRL_T_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$SCRIPTS/fzfPreviewOptsCtrlT.sh")'"
    export FZF_ENV_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$SCRIPTS/fzfEnv.sh")'"

    if [[ "$ZPWR_BANNER" == ponies ]]; then
        export FZF_COMPLETION_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$SCRIPTS/fzfPreviewOptsPony.sh")'"
    else
        export FZF_COMPLETION_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$SCRIPTS/fzfPreviewOpts.sh")'"
    fi

    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}ff=' "$(fzf '"$ZPWR_COMMON_FZF_ELEM"' --preview "[[ -f {} ]] && '"$COLORIZER_FZF$ZPWR_TABSTOP"'  2>/dev/null | cat -n || stat -- {} | fold -80 | head -500")"'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}f=" \$(fzf $FZF_CTRL_T_OPTS)"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}z=" | fzf $FZF_CTRL_T_OPTS "
}

fzf_setup

# killall ;<tab>
_fzf_complete_killall() {
  _fzf_complete '-m' "$@" < <(
    command ps -e -o command | sed -n '2,$p'
    )
}

# mvim ;<tab>
_fzf_complete_mvim() {
  _fzf_complete '-m' "$@" < <(
    perl -lne 'do{($_=$1)=~s@$ENV{HOME}@~@;print}if m{^>.(.*)}' ~/.viminfo
    )
}
# vim ;<tab>
_fzf_complete_vim() {
  _fzf_complete '-m' "$@" < <(
    perl -lne 'do{($_=$1)=~s@$ENV{HOME}@~@;print}if m{^>.(.*)}' ~/.viminfo
    )
}
# echo $;<tab>
_fzf_complete_echo() {
  _fzf_complete '-m' "$@" < <(
      declare -xp | perl -pe '$_=~s@export\s(.*)(=.*)@$1@'
    )
}
# alias ;<tab>
_fzf_complete_alias() {
  _fzf_complete '-m' "$@" < <(
      alias | sed 's@=.*@@'
    )
}
# z ;<tab>
_fzf_complete_z() {
  _fzf_complete '--ansi' "$@" < <(
    z -l |& perl -lne 'for (reverse <>){do{($_=$1)=~s@$ENV{HOME}@~@;print} if m{\d+\.*\d+\s*(.*)}}'
    )
}

# clearList ;<tab>
_fzf_complete_clearList() {
    FZF_COMPLETION_OPTS=$FZF_ENV_OPTS _fzf_complete '-m' "$@" < <(
        cat "${ALL_ENV}Key.txt" | awk '{print $2}'
    ) 
}

#git diff ;<tab>
#git diff SHA-1 ;<tab>
_fzf_complete_git() {

    if ! isGitDir; then
        return 1
    fi
    local last
    last=${${(Az)@}[-1]}
    logg $last
    if git cat-file -t -- $last &>/dev/null; then
        export FZF_GIT_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$SCRIPTS/fzfGitOpts.sh" $last)'"
    else
        export FZF_GIT_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$SCRIPTS/fzfGitOpts.sh" HEAD)'"
    fi
    FZF_COMPLETION_OPTS="$FZF_GIT_OPTS" _fzf_complete "-m $FZF_DRACULA --ansi" "$@" < <(
        printf "\x1b[${ZPWR_COMMIT_COLOR}m"
        git log --format='%h %s'
        git for-each-ref | perl -lane '$_=substr($F[0],0,7)." $F[2]";print if ! m{^\s*$}'
        printf "\x1b[0m"
    ) 
}
_fzf_complete_git_post() {
    cut -d ' ' -f1
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

_p(){
    _alternative \
    'process-names:processes:_pgrep' \
    'processes:pids:_pids'
}

local zcmd
exists zshz && zcmd=zshz || zcmd=_z

_f(){
    local cmd
    if exists fasd;then
        _alternative 'files:directory:_path_files -g "*(-D/)"' &&
            ret=0 || ret=1

        if [[ $ret == 1 ]] && (( $#words > 1 )); then
            _alternative \
            'zdir:z ranked directories:(('"$($zcmd -l |& perl -e '@l=reverse<>;do{print "$2\\:".quotemeta($1)." " if m{^\s*(\S+)\s+(\S+)\s*$}}for@l')"'))' \
            'fasd-file:fasd ranked directories:(('"$(fasd -d |& perl -e '@l=reverse<>;do{print "$2\\:".quotemeta($1)." " if/^\s*(\S+)\s+(\S+)\s*$/}for@l')"'))' \
            'directory-stack:directory stack:_directory_stack'
        fi
    else
        _alternative 'files:directory:_path_files -g "*(-D/)"' &&
            ret=0 || ret=1
        if [[ $ret == 1 ]] && (( $#words > 1 )); then
            _alternative \
            'zdir:z ranked directories:(('"$($zcmd -l |& perl -e '@l=reverse<>;do{print "$2\\:".quotemeta($1)." " if m{^\s*(\S+)\s+(\S+)\s*$}}for@l')"'))' \
            'directory-stack:directory stack:_directory_stack'
        fi
    fi

}

_c(){
    if exists fasd;then
        _alternative 'files:files:_path_files -g "*(D^/) *(DF)"' &&
        ret=0 || ret=1
        if [[ $ret == 1 ]] && (( $#words > 1 )); then
            _alternative \
            'zdir:z ranked directories:(('"$($zcmd -l |& perl -e '@l=reverse<>;do{print "$2\\:".quotemeta($1)." " if m{^\s*(\S+)\s+(\S+)\s*$}}for@l')"'))' \
            'fasd-file:fasd ranked files:(('"$(fasd -f |& perl -e '@l=reverse<>;do{print "$2\\:".quotemeta($1)." " if/^\s*(\S+)\s+(\S+)\s*$/}for@l')"'))' \
            'fasd:fasd ranked directories:(('"$(fasd -d |& perl -e '@l=reverse<>;do{print "$2\\:".quotemeta($1)." " if/^\s*(\S+)\s+(\S+)\s*$/}for@l')"'))'
        fi
    else
        _alternative 'files:files:_path_files -g "*(D^/) *(DF)"' &&
        ret=0 || ret=1
        if [[ $ret == 1 ]] && (( $#words > 1 )); then
            _alternative \
            'zdir:z ranked directories:(('"$($zcmd -l |& perl -e '@l=reverse<>;do{print "$2\\:".quotemeta($1)." " if m{^\s*(\S+)\s+(\S+)\s*$}}for@l')"'))'
        fi
    fi
}

_ssd(){
    arguments=('*:systemd running services:('"$(systemctl list-units -at service | perl -lane '$_=~s@[\xe2\x97\x8f]@@g;do{$_=~s@\s*(\S+).*@$1@;print} if /service/ and/running/')"')')
    _arguments -s $arguments
}
_ssu(){
    arguments=('*:systemd non running services:('"$(systemctl list-units -at service | perl -lane '$_=~s@[\xe2\x97\x8f]@@g;do{$_=~s@\s*(\S+).*@$1@;print} if /service/ and!/running/')"')')
    _arguments -s $arguments
}

    declare -A learn_ary
    declare -a learn_keys
    declare -a learn_values
_se(){
    eval "learn_ary=( $(echo "select learning from $SCHEMA_NAME.$TABLE_NAME order by dateAdded" | mysql | perl -e '@a=();$c=0;do{chomp;push(@ary,++$c." $c:".quotemeta($_))}for<>;$c=0;do{print "$_ " if $c++ < 1000}for reverse @ary') )"

    #reverse numeric sort
    learn_keys=(${(Onk)learn_ary})
    #reverse numeric sort
    learn_values=(${(Onv)learn_ary})
    _describe -t zdir 'my learning' learn_values learn_keys
}

#to allow reverse numeric sort
zstyle ':completion:*:*:(se|redo|rsql):*:*' sort false

subcommands_ary=($(cat "$SCRIPTS/zpwr.zsh" | perl -ne 'print "$1\\:\"$2\" " if m{^\s*([a-zA-z]+)\s*\).*#(.*)$}'))
subcommands_str="commands:sub commands:((${subcommands_ary[@]}))"

_zpwr(){
  local arguments
  arguments=(
  '--help[show this help message and exit]: :->noargs'
  '--shell[enter shell repl]: :->noargs'
  '1:zpwr subcommand:->verb'
    '*::args to zpwr:->args'
)

_arguments -s -C : $arguments && return 0

if [[ CURRENT -ge 1 ]]; then
    case $state in
        noargs)
             _message "nothing to complete"
             ;;
        verb)
        _alternative "$subcommands_str"
            ;;
        args)
            case $words[1] in
                info | clearlist)
                _cl
                    ;;
                *)
                _alternative \
                'files:files:_files' \
                'directory-stack:directory stack:_directory_stack'
                    ;;
            esac
        ;;

    esac

    return
fi

}

_tmux_pane_words() {
  local expl
  local -a w

  # Based on vim-tmuxcomplete's splitwords function.
  # https://github.com/wellle/tmux-complete.vim/blob/master/sh/tmuxcomplete
  _tmux_capture_pane() {
    tmux capture-pane -J -p -S -100 $@ |
        col -b |
      # Remove "^C".
      sed 's@\^C\S*@ @g' |
      # copy lines and split words
      sed 'p;s@^a-zA-Z0-9_]@ @g' |
      # split on spaces
      tr -s '[:space:]' '\n' |
      # remove surrounding non-word characters
      command grep -o -E "[a-zA-Z0-9.]+[a-zA-Z_0-9.-]{2}[a-zA-Z0-9.-]+" |
          command grep -v -E '(\.\.+|^[0-9MmKkGgBbqv\.]+$|^[rwxRWXsSdDcCBbPp\.-]+$)'
  }
  # Capture current pane first.
  w=( ${(u)=$(_tmux_capture_pane)} )

  for i in $(tmux list-panes -F '#D'); do
    # Skip current pane (handled before).
    [[ "$TMUX_PANE" = "$i" ]] && continue
    w+=( ${(u)=$(_tmux_capture_pane -t $i)} )
  done
  _wanted tmux expl 'words from all tmux panes' compadd -a w
}

declare -a last_ten
function _complete_hist(){
    last_ten=( ${(f)"$(fc -l 200 | perl -lane 'print "@F[1..$#F]"')"} )
    _wanted last-ten expl 'last commands' compadd -Qa last_ten
}
_complete_plus_last_command_args() {
    _wanted last-line expl 'last args' compadd -Qa last_command_array
}

_complete_clipboard(){

    local clipboard_str
    if [[ -n $PASTE_CMD ]]; then
        clipboard_str="$(${=PASTE_CMD} 2>/dev/null)"
    else
        case "$ZPWR_OS_TYPE" in
            darwin*)
                clipboard_str="$(pbpaste)"
                ;;
            linux*)
                if [[ "$(uname -r)" != *icrosoft* ]];then
                    clipboard_str="$(xclip -o -sel clip 2>/dev/null)"
                else
                    clipboard_str="$(powershell.exe -c 'Get-Clipboard')"
                fi
                ;;
            cygwin*)
                    clipboard_str="$(powershell.exe -c 'Get-Clipboard')"
                ;;
            msys*)
                    clipboard_str="$(powershell.exe -c 'Get-Clipboard')"
                ;;
            *)
                clipboard_str="$(xclip -o -sel clip 2>/dev/null)"
                ;;
        esac
    fi

    if [[ -n "$clipboard_str" ]]; then
    clipboard_array=(${(u)=clipboard_str} ${clipboard_str} "\"${clipboard_str}\"" "'${clipboard_str}'")
    _wanted last-clip expl 'clipboard args' compadd -Qa clipboard_array
    fi
}

local -A whitelist_tmux_completion
whitelist_tmux_completion=(ping 1 dig 2 digs 3 host 4 mtr 5 traceroute 6)

_megacomplete(){
    local -a last_command_array
    local expl cmd ret
    cmd=$words[1]

    \_complete && ret=0 || ret=1

    if [[ -n "$TMUX_PANE" ]]; then
        if (( $+whitelist_tmux_completion[$cmd] )); then
            _tmux_pane_words
        fi
    fi

    if (( $CURRENT == 1 )); then
        _complete_hist
    fi

    if (( $#words >= 2 )) && echo $words[-1] | perl -ne 'exit 1 if ! m{\S}'; then
        num=$((HISTCMD-1))
        last_command=$history[$num]
        last_command_array=(${(u)=last_command} ${last_command} "\"${last_command}\"" "( ${last_command}; )" "{ ${last_command}; }" "\$(${last_command})" "\"\$(${last_command})"\" "'${last_command}'")
        if (( $#last_command_array > 0 )); then
            _complete_plus_last_command_args
        fi

        _complete_clipboard
    fi

    return $ret
}

# list of completers to use
zstyle ':completion:*' completer _expand _ignored _megacomplete _approximate _correct
zstyle ':completion:*:*:clearList:*:functions' ignored-patterns



compdef _se se redo rsql
compdef _cl clearList
compdef _f f
compdef _c c
compdef _p p
compdef _ssd ssd
compdef _ssu ssu
compdef _zpwr zpwr
compdef _man fm

#redefine global zsh completion function called at first parameter
#adding global aliases and files
_command_names(){
    # The option `-e' if given as the first argument says that we should
    # complete only external commands and executable files. This and a
    # `-' as the first argument is then removed from the arguments.

    local args defs ffilt

    zstyle -t ":completion:${curcontext}:commands" rehash && rehash

    zstyle -t ":completion:${curcontext}:functions" prefix-needed &&
    [[ $PREFIX != [_.]* ]] &&
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


#{{{                    MARK:Auto attach tmux
#**************************************************************
if [[ $ZPWR_AUTO_ATTACH == true ]]; then
    if [[ "$(uname)" == Linux ]]; then
        if [[ -z "$TMUX" ]] && [[ -n $SSH_CONNECTION ]]; then
            mobile=true
            cat ~/.ssh/authorized_keys |
                command grep "$GITHUB_ACCOUNT" > "$TEMPFILE"

            case $distroName in
                (debian|raspbian|kali|ubuntu|parrot)
                    out="$(sudo \grep -a 'Accepted publickey for' /var/log/auth.log* | grep -v sudo | tail -1)"
                    key="$(ssh-keygen -l -f "$TEMPFILE" | awk '{print $2}')"
                    ;;
                (centos|rhel)
                    out="$(tail /var/log/messages)"
                    ;;
                (*suse*)
                    out="$(sudo journalctl -u sshd.service | command grep 'Accepted publickey' | tail -1)"
                    key="$(ssh-keygen -l -f "$TEMPFILE" | awk '{print $2}' | awk -F: '{print $2}')"
                    ;;
                (fedora)
                    out="$(sudo cat /var/log/secure | command grep 'Accepted publickey' | tail -1)"
                    key="$(ssh-keygen -l -f "$TEMPFILE" | awk '{print $2}' | awk -F: '{print $2}')"
                    ;;
                (*) :
                    ;;
            esac
            logg "searching for $key in $out"
            echo "$out" | grep -q "$key" && mobile=false

            command rm "$TEMPFILE"
            if [[ $mobile == "false" ]]; then
                logg "not mobile"
                num_con="$(command ps -ef |command grep 'sshd' | command grep pts | command grep -v grep | wc -l)"
                logg "num cons is $num_con"
                if (( $num_con == 1 )); then
                    logg "no tmux clients"
                    {
                        if tmux ls; then
                            tmux attach
                            logg "attaching to existing"
                        else
                            tmux new-session \; \
                            source-file ~/.tmux/control-window
                            logg "creating new session"
                        fi
                    } &> /dev/null
                else
                    command tmux attach
                    logg "clients so NO"
                fi
            else
                logg "mobile so NO"
            fi
        fi

    fi
fi
#}}}***********************************************************

#{{{                    MARK:Misc
#**************************************************************

recompile(){
    prettyPrint "recompiling all configs to .zwc for speed"
    local dir
	autoload -U zrecompile
	[ -f ~/.zshrc ] && zrecompile -p ~/.zshrc
	[ -f ~/.zlogout ] && zrecompile -p ~/.zlogout
	[ -f ~/.zlogin ] && zrecompile -p ~/.zlogin
	[ -f ~/.zcompdump ] && zrecompile -p ~/.zcompdump
	[ -f /etc/profile ] && zrecompile -p /etc/profile
	[ -f /etc/profile.env ] && zrecompile -p /etc/profile.env

	for dir in $fpath; do
		[[ -d $dir ]] && zrecompile -p $dir.zwc $dir/*
	done
}


alias numcmd='print $#commands'
unalias ag &> /dev/null

#stop delay when entering normal mode
export KEYTIMEOUT=1

if [[ $ZPWR_LEARN != false ]]; then
    learn(){
        if [[ ! -z "$BUFFER" ]]; then
            mywords=("${(z)BUFFER}")
            [[ "${mywords[1]}" == le ]] && return 1

        learning="$(print "$BUFFER" | perl -pe 's@\x0a@\x20@' | perl -pe 's@^\x20+|\x20+$@@g;s@\x20+@\x20@g')"

            BUFFER="le '${learning//'/\''}'"
            zle .accept-line
        else
            return 1
        fi
    }

    rsql(){
        printf ""> "$TEMPFILESQL"
        for num in $@; do
            id=$(echo "select id from $SCHEMA_NAME.$TABLE_NAME order by dateAdded" | mysql | perl -ne "print if \$. == $num")
            item=$(echo "select learning from $SCHEMA_NAME.$TABLE_NAME where id=$id" | mysql 2>> $LOGFILE | tail -n 1)
            item=${item//\'/\\\'}

            echo "update $SCHEMA_NAME.$TABLE_NAME set learning = '$item' where id=$id"
        done >> "$TEMPFILESQL"

        vim "$TEMPFILESQL"
        cat "$TEMPFILESQL" | mysql
        command rm "$TEMPFILESQL"
    }
    redo(){
        echo > "$TEMPFILE"
        for num in $@; do
            id=$(echo "select id from $SCHEMA_NAME.$TABLE_NAME order by dateAdded" | mysql | perl -ne "print if \$. == $num")
            item=$(echo "select learning from $SCHEMA_NAME.$TABLE_NAME where id=$id" | mysql 2>> $LOGFILE | tail -n 1)
            item=${item//\'/\\\'\'}

            echo "echo 'update $SCHEMA_NAME.$TABLE_NAME set learning = ""''"$item"''"" where id=$id' | mysql"
        done >> "$TEMPFILE"

        print -rz "$(cat "$TEMPFILE")"
        command rm "$TEMPFILE"
    }


    zle -N learn
    bindkey -M viins '^J' learn
    bindkey -M vicmd '^J' learn

fi

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
autoload zargs

function zarg(){
    if [[ -z "$2" ]]; then
        echo need two args, escaped glob and cmd with {}
    fi
    first="$1"
    shift

    echo eval "zargs -i{} -- '$first' -- '$*'"
    eval "zargs -i{} -- $first -- $*"
}

if exists jenv;then
    export PATH="$HOME/.jenv/shims:$PATH"
fi

exists thefuck && eval $(thefuck --alias)
exists kubectl && source <(kubectl completion zsh)


endTimestamp=$(date +%s)
logg "zsh startup took $((endTimestamp - startTimestamp)) seconds"
if [[ $ZPWR_PROFILING == true ]]; then
    zprof
fi

#}}}***********************************************************
