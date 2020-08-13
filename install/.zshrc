    #...     ..      ..                                    ..
  #x*8888x.:*8888: -"888:                            < .z@8"`
 #X   48888X `8888H  8888                 u.    u.    !@88E
#X8x.  8888X  8888X  !888>       .u     x@88k u@88c.  '888E   u
#X8888 X8888  88888   "*8%-   ud8888.  ^"8888""8888"   888E u@8NL
#'*888!X8888> X8888  xH8>   :888'8888.   8888  888R    888E`"88*"
#  `?8 `8888  X888X X888>   d888 '88%"   8888  888R    888E .dN.
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
startTimestamp=$(perl -MTime::HiRes -e 'print Time::HiRes::time')
#}}}***********************************************************

#{{{                    MARK:FPATH AND PATH NO DUPLICATES
#**************************************************************
# duplicates slow down searching and 
# mess up OMZ fpath check if should remove zcompdump
declare -aU fpath
fpath=(${(u)fpath})
declare -aU path
path=(${(u)path})
# FPATH should not be exported
declare +x FPATH
#}}}***********************************************************

#{{{                    MARK:ZPWR Exports
#**************************************************************

export ZPWR="$HOME/.zpwr"
export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"

source "$ZPWR_ENV_FILE" || {
    echo "where is $ZPWR_ENV_FILE" >&2
}

if [[ ! -d "$ZPWR_HIDDEN_DIR_TEMP" ]]; then
    mkdir -p "$ZPWR_HIDDEN_DIR_TEMP"
fi
#}}}***********************************************************

#{{{                    MARK:non ZPWR Exports
#**************************************************************
#map to hold global data between scripts
declare -A ZPWR_VARS
#map to store each zpwr verb, key is the verbname, value is cmd=description
declare -A ZPWR_VERBS
source "$ZPWR_SCRIPTS/zpwr.zsh"

export LC_ALL="en_US.UTF-8"
export ZSH=$HOME/.oh-my-zsh
unalias ag &> /dev/null
#stop delay when entering normal mode
export KEYTIMEOUT=1
export CHEATCOLORS=true
export HISTFILE="$HOME/.$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT-history"

function exists(){

    #alternative is command -v
    type -- "$1" &>/dev/null || return 1 &&
    [[ $(type -- "$1" 2>/dev/null) != *"suffix alias"* ]]
}

export SHELL="$(which zsh)"

#}}}***********************************************************

#{{{                    MARK:OMZ env vars
#**************************************************************
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

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)

ZSH_DISABLE_COMPFIX=true

export MAGIC_ENTER_GIT_COMMAND='clearList; test -n "$(git status --porcelain)" && git status -u .'

export MAGIC_ENTER_OTHER_COMMAND="clearList"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(fzf-tab revolver zunit jhipster-oh-my-zsh-plugin
    fasd-simple gh_reveal zsh-travis
    zsh-z zsh-expand zsh-autopair
    zsh-nginx zsh-more-completions history-search-multi-word
    forgit fzf-zsh zsh-completions zsh-sed-sub
    fast-syntax-highlighting zsh-autosuggestions
    history-substring-search ruby gem rake yarn ng
    coffee node npm perl cpanm git github gradle ant mvn
    scala lein spring django pip pyenv python golang man nmap
    postgres redis-cli colorize sudo rsync docker
    docker-compose
    vundle rust rustup cargo meteor gulp grunt glassfish tig fd
    zsh-very-colorful-manuals zsh-git-acp
    tmux magic-enter zconvey zsh-unique-id zzcomplete zui zbrowse)

source "$HOME/.oh-my-zsh/lib/key-bindings.zsh"
#}}}***********************************************************

#{{{                    MARK:forgit https://github.com/wfxr/forgit
#**************************************************************
forgit_log=fglo
forgit_diff=fgd
forgit_add=fga
forgit_reset_head=fgrh
forgit_ignore=fgi
forgit_restore=fgcf
forgit_clean=fgclean
forgit_stash_show=fgss
#}}}***********************************************************

#{{{                    MARK:grc colorizer
#**************************************************************
#colors for common commands
test -s "$HOME/grc.zsh" && source "$HOME/grc.zsh"
#}}}***********************************************************

#{{{                    MARK:source tokens
#**************************************************************
test -f "$ZPWR_TOKEN_PRE" &&
    source "$ZPWR_TOKEN_PRE" ||
    touch "$ZPWR_TOKEN_PRE"

# command for exa (replaces ls)
if [[ $ZPWR_EXA_EXTENDED == true ]]; then
    export ZPWR_EXA_COMMAND='command exa --git -il -F -H --extended --color-scale -g -a --colour=always'
else
    export ZPWR_EXA_COMMAND='command exa --git -il -F -H --color-scale -g -a --colour=always'
fi
#}}}***********************************************************

#{{{                    MARK:post token
#**************************************************************
if [[ ! -d $ZPWR ]]; then
    mkdir -p $ZPWR
fi

if [[ ! -d $ZPWR_INSTALL ]]; then
    mkdir -p $ZPWR_INSTALL
fi

if [[ ! -d $ZPWR_TMUX_LOCAL ]]; then
    mkdir -p $ZPWR_TMUX_LOCAL
fi

if [[ ! -d $ZPWR_LOCAL ]]; then
    mkdir -p $ZPWR_LOCAL
fi

if [[ $ZPWR_PROFILING == true ]]; then
    #profiling startup
    zmodload zsh/zprof
fi

[[ -f "$HOME/.tmux/powerline/bindings/zsh/powerline.zsh" ]] &&
source "$HOME/.tmux/powerline/bindings/zsh/powerline.zsh"

if [[ $ZPWR_PROMPT == POWERLEVEL ]]; then
    if test -s "$ZPWR_PROMPT_FILE";then
        if [[ -d "$HOME/.oh-my-zsh/custom/themes/powerlevel9k" ]]; then
            source "$ZPWR_PROMPT_FILE"
        else
            ZSH_THEME=$ZPWR_DEFAULT_OMZ_THEME
        fi
    else
        ZSH_THEME=$ZPWR_DEFAULT_OMZ_THEME
    fi
else
    test ! -z $ZPWR_PROMPT && ZSH_THEME=$ZPWR_PROMPT || ZSH_THEME=$ZPWR_DEFAULT_OMZ_THEME
fi

# fish like menu select search
zmodload -i zsh/complist
setopt menucomplete
#}}}***********************************************************

#{{{                    MARK:OMZ Plugins
#**************************************************************

# OMZ does not add nested comp dirs to fpath so do it here, assume src

if [[ $ZPWR_DEBUG == true ]]; then
    echo "______pre fpath size '$#fpath'" and '$fpath'"'_____ = ""'$fpath'" >> $ZPWR_LOGFILE
fi

for plug in ${plugins[@]}; do
    if [[ -d "$ZSH/custom/plugins/$plug" ]]; then
        #null glob - no error
        for dir in "$ZSH/custom/plugins/$plug/"*src(N); do
            if [[ -d "$dir" ]]; then
                if [[ -z ${fpath[(r)$dir]} ]];then
                    if [[ $dir = *override* ]]; then
                        fpath=($dir $fpath)
                    else
                        fpath=($fpath $dir)
                    fi
                    #echo "add $dir to $fpath" >> "$ZPWR_LOGFILE"
                fi
            fi
        done
    fi
done


exists subl && plugins+=(sublime)

exists rails && plugins+=(rails)

exists kubectl && plugins+=(zsh-kubectl-aliases zsh-kubectl-completion)

exists bat && export BAT_THEME="$ZPWR_BAT_THEME"

if [[ $ZPWR_LEARN != false ]]; then
    plugins+=(zsh-learn)
fi

ZPWR_PARENT_PROCESS="$(command ps -p $PPID | perl -lane '$"=" ";print "@F[3..$#F]" if m{^\s*\d+.*}')"

if [[ "$ZPWR_OS_TYPE" == "darwin" ]];then
    plugins+=(zsh-xcode-completions brew osx pod)
    #determine if this terminal was started in IDE
    #echo "$ZPWR_PARENT_PROCESS" | command grep -iq -E 'login|tmux|vim|alacritty' &&
        #plugins+=(tmux)
elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then
    #echo "$ZPWR_PARENT_PROCESS" | command grep -iq -E 'login|tmux|vim|alacritty' &&
        #plugins+=(tmux)
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
        (arch|manjaro*)
            plugins+=(archlinux)
            ;;
        (*suse*)
            plugins+=(suse)
            ;;
        (fedora)
            plugins+=(yum dnf)
            ;;
        (*) :
            ;;
    esac

else
    #unix
    :
fi
#}}}***********************************************************

#{{{                    MARK:zdharma configs pre OMZ
#**************************************************************
zstyle ":plugin:zconvey" output_method "feeder"
zstyle ":plugin:zconvey" greeting "none"
zstyle ":plugin:zconvey" ls_after_rename "0"
zstyle ":plugin:zconvey" use_zsystem_flock "1"
alias za=zc-all
alias zid=zc-id
alias zls=zc-ls
alias zla=zc-logo-all
alias zn=zc-bg-notify
#}}}***********************************************************

#{{{                    MARK:Sourcing OMZ and alias file
#**************************************************************
autoload -Uz compinit

export ZSH_COMPDUMP="$HOME/.zcompdump-$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT"

if [[ $ZPWR_DEBUG == true ]]; then
    echo "pre: $fpath" >> "$ZPWR_LOGFILE"
fi


source $ZSH/oh-my-zsh.sh


if [[ $ZPWR_DEBUG == true ]]; then
    echo "\npost: $fpath" >> "$ZPWR_LOGFILE"
fi
# You may need to manually set your language environment
#has all aliases and functions common to bourne like shells
_alias_file="$ZPWR/.shell_aliases_functions.sh"
test -s "$_alias_file" && source "$_alias_file"
alias -r > "$ZPWR_LOCAL/.common_aliases"
#}}}***********************************************************
#
#{{{                    MARK:zdharma postconfig
#**************************************************************
path+=($ZCONVEY_REPO_DIR/cmds)
#}}}***********************************************************

#{{{                    MARK:Custom Fxns
#**************************************************************
function sub (){

    zle .kill-whole-line
    BUFFER="suc"
    zle .accept-line
}

function emacsAllEdit(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    BUFFER="$(fzvimAll)"
    if [[ -z "$BUFFER" ]]; then
        return
    fi
    BUFFER="$ZPWR_EMACS_CLIENT $BUFFER"
    loggDebug "builtin cd $ZPWR"
    eval "builtin cd $ZPWR"

    BUFFER="$BUFFER; clearList; isGitDir && git diff HEAD"
    loggDebug "$BUFFER"
    print -s -- "$BUFFER"
    eval "$BUFFER"
}

function emacsScriptEdit(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    BUFFER="$(fzvimScript)"
    if [[ -z "$BUFFER" ]]; then
        return
    fi
    BUFFER="$ZPWR_EMACS_CLIENT $BUFFER"
    loggDebug "builtin cd $ZPWR_SCRIPTS"
    eval "builtin cd $ZPWR_SCRIPTS"

    BUFFER="$BUFFER; clearList; isGitDir && git diff HEAD"
    loggDebug "$BUFFER"
    print -s -- "$BUFFER"
    eval "$BUFFER"
}

function vimAllEdit(){

    BUFFER="$(fzvimAll)"
    if [[ -z "$BUFFER" ]]; then
        return
    fi
    BUFFER="$EDITOR $BUFFER"
    loggDebug "builtin cd $ZPWR"
    eval "builtin cd $ZPWR"

    BUFFER="$BUFFER; clearList; isGitDir && git diff HEAD"
    loggDebug "$BUFFER"
    print -s -- "$BUFFER"
    eval "$BUFFER"
}

function vimScriptEdit(){

    BUFFER="$(fzvimScript)"
    if [[ -z "$BUFFER" ]]; then
        return
    fi
    BUFFER="$EDITOR $BUFFER"
    loggDebug "builtin cd $ZPWR_SCRIPTS"
    eval "builtin cd $ZPWR_SCRIPTS"

    BUFFER="$BUFFER; clearList; isGitDir && git diff HEAD"
    loggDebug "$BUFFER"
    print -s -- "$BUFFER"
    eval "$BUFFER"
}

function sudoEditorRecent(){
    local firstdir editor mywords

    editor="$1"

    BUFFER="$(fzvim $editor)"
    if [[ -z "$BUFFER" ]]; then
        return
    fi
    mywords=(${(z)BUFFER})
    firstdir=${mywords[1]:h}
    BUFFER="sudo $editor $BUFFER"
    loggDebug "builtin cd $firstdir\""
    #:h takes aways last "
    eval "builtin cd $firstdir\""
    loggDebug "$BUFFER; clearList;isGitDir && git diff HEAD"
    print -s -- "$BUFFER; clearList;isGitDir && git diff HEAD"
    eval "$BUFFER; clearList;isGitDir && git diff HEAD"
}

function editorRecent(){
    local firstdir editor mywords

    editor="$1"

    BUFFER="$(fzvim $editor)"
    if [[ -z "$BUFFER" ]]; then
        return
    fi
    mywords=(${(z)BUFFER})
    firstdir=${mywords[1]:h}
    BUFFER="$editor $BUFFER"
    loggDebug "builtin cd $firstdir\""
    #:h takes aways last "
    eval "builtin cd $firstdir\""
    loggDebug "$BUFFER; clearList;isGitDir && git diff HEAD"
    print -s -- "$BUFFER; clearList;isGitDir && git diff HEAD"
    eval "$BUFFER; clearList;isGitDir && git diff HEAD"
}

function sudoEmacsRecent(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    sudoEditorRecent "$ZPWR_EMACS_CLIENT"
}

function emacsRecent(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    editorRecent "$ZPWR_EMACS_CLIENT"
}

function sudoVimRecent(){

    sudoEditorRecent "$EDITOR"
}

function vimRecent(){

    editorRecent "$EDITOR"
}

function scriptCount(){

    command ls \
        "$ZPWR_SCRIPTS/"*.{sh,zsh,pl,py} \
        "$ZPWR_SCRIPTS/macOnly/"*.{sh,zsh,pl,py} |
        wc -l
}

function lastWordDouble(){

    local firstdir editor mywords

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

function updater (){

    zle .kill-whole-line
    #bash -l options for creating login shell to run script
    #avoiding issues with rvm which only runs on login shell
    BUFFER="( cat $ZPWR_SCRIPTS/updater.sh |  bash -l 2>&1 | tee -a $ZPWR_LOGFILE | perl -pe 's@\\e\[.*m@\n@g' | mutt -s \"Log from `date`\" $ZPWR_EMAIL 2>$ZPWR_LOGFILE &)"
    zle .accept-line
}

function tutsUpdate() {

    local commitMessage

    commitMessage="$BUFFER"
    if [[ ! -z "$commitMessage" ]]; then
        if [[ "$commitMessage" =~ ^\ +$ ]]; then
            loggErr "No commit message"
            zle .accept-line
        else
            zle .kill-whole-line
            BUFFER="( tutorialConfigUpdater.sh '$commitMessage' >> \"$ZPWR_LOGFILE\" 2>&1 & )"
            zle .accept-line
        fi
    else
        loggErr "No commit message"
        zle .accept-line
    fi
}

function sshRegain() {

    if echo "$(command ps -ef)" | command  grep -q 'ssh '; then
        if [[ "$BUFFER" != "" ]]; then
            print -sr -- "$BUFFER"
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

function dbz() {

    zle .kill-whole-line
    BUFFER=db
    zle .accept-line
}

ZPWR_COUNTER=0

function changeQuotes(){

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

    ((++ZPWR_COUNTER))
}

function alternateQuotes(){

    BUFFER="$(print -r "$BUFFER" | tr "\"'" "'\"" )"
}


function clipboard(){

    [[ -z "$BUFFER" ]] && return 1

    local clipcmd

    clipcmd=$ZPWR_COPY_CMD

    if [[ -n $clipcmd ]]; then
            print -sr -- "$BUFFER"
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

function runner() {

    if [[ ! -z "$BUFFER" ]]; then
        tutsUpdate
    else
        zle .kill-whole-line
        BUFFER=ge
        zle .accept-line
    fi
}

function updater() {

    zle .kill-whole-line
    BUFFER=u8
    zle .accept-line
}

function getrcWidget(){

    zle .kill-whole-line
    BUFFER="getrc"
    zle .accept-line
}

function intoFzf(){

    LBUFFER="$LBUFFER |& $ZPWR_FZF -m --border --ansi"
    zle .accept-line
}

function lsoffzf(){

    LBUFFER="$LBUFFER$(sudo lsof -i | sed -n '2,$p' | $ZPWR_FZF -m | awk '{print $2}' | uniq | tr '[:space:]' ' ')"
}

# cache autoload +X functions,aliases, builtins,reswords into file
# search with fzf
function clearListFZF(){
    {
        print -l ${(k)functions}
        print -l ${(v)commands}
        print -l ${(k)aliases}
        print -l ${(k)galiases}
        print -l ${(k)builtins}
        print -l ${(k)reswords}
        ls -d *
    } |
    eval "$ZPWR_FZF -m -e --no-sort --border $FZF_CTRL_T_OPTS"
}

function fzvim(){

    local file editor

    editor="$1"

    case $editor in
        nvim|vim)
    nvimThenRecentf | perl -le '@l=reverse<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;print $o if -f $f}if m{^>.(.*)}}' |
    eval "$ZPWR_FZF -m -e --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
            ;;
        *)
    recentfThenNvim | perl -le '@l=reverse<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;print $o if -f $f}if m{^>.(.*)}}' |
    eval "$ZPWR_FZF -m -e --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
            ;;
    esac
}

function fzvimAll(){

    command ls \
    "$ZPWR_INSTALL/"{.zshrc,.tmux.conf,grc.zsh,.vimrc,init.vim,.ideavimrc,.globalrc,.spacemacs} \
    "$ZPWR/"*.{sh,py,zsh,pl} \
    "$ZPWR/"*.md \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/tmux-"* \
    "$ZPWR/"{.minvimrc,.mininit.vim} \
    "$ZPWR_INSTALL/conf."* \
    "$ZPWR_INSTALL/"*.sh \
    "$ZPWR_INSTALL/"*.service \
    "$ZPWR_INSTALL/UltiSnips/"*.snippets \
    "$ZPWR_SCRIPTS/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS_MAC/"*.{sh,py,zsh,pl} |
        perl -lne '@l=<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;$o=~s@$ENV{HOME}@~@;print $o if -f $f}if m{^(.*)}}' |
    eval "$ZPWR_FZF -m -e --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
}
function fzvimScript(){

    command ls \
    "$ZPWR/"*.{sh,py,zsh,pl} \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/"*.{sh,py,zsh,pl} \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS_MAC/"*.{sh,py,zsh,pl} |
        perl -lne '@l=<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;$o=~s@$ENV{HOME}@~@;print $o if -f $f}if m{^(.*)}}' |
    eval "$ZPWR_FZF -m -e --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
}

function vimFzf(){

    local firstdir editor mywords

    zle .kill-whole-line
    BUFFER="$(fzvim vim)"
    mywords=(${(z)BUFFER})
    if (( $#mywords == 0 )); then
        zle .kill-whole-line
    else
        firstdir=${mywords[1]:h}
        loggDebug "words='$mywords[1]'=>'$firstdir'"
        BUFFER="$EDITOR $BUFFER"
        #:h takes aways last "
        BUFFER="builtin cd $firstdir\"; $BUFFER; clearList;isGitDir && git diff HEAD"
        zle .accept-line
    fi
}

function emacsFzf(){

    local firstdir editor mywords

    zle .kill-whole-line
    BUFFER="$(fzvim $ZPWR_EMACS_CLIENT)"
    mywords=(${(z)BUFFER})
    if (( $#mywords == 0 )); then
        zle .kill-whole-line
    else
        firstdir=${mywords[1]:h}
        loggDebug "words='$mywords[1]'=>'$firstdir'"
        BUFFER="$ZPWR_EMACS_CLIENT $BUFFER"
        #:h takes aways last "
        BUFFER="builtin cd $firstdir\"; $BUFFER; clearList;isGitDir && git diff HEAD"
        zle .accept-line
    fi
}

function fzfWordsearchVerbEdit(){

    local firstdir editor file mywords

    editor="$1"
    BUFFER=$(agIntoFzf vim)

    if [[ -n "$BUFFER" ]]; then
        mywords=(${(z)BUFFER})
        firstdir=${mywords[2]:h}
        loggDebug "builtin cd $firstdir\""
        #:h takes aways last "
        BUFFER="builtin cd $firstdir\"; $editor $BUFFER; clearList; isGitDir && git diff HEAD"
        loggDebug "$BUFFER"

    print -zr -- "$BUFFER"
    else
        return
    fi

}

function fzfWordsearchVerb(){

    local firstdir editor file mywords

    editor="$1"
    BUFFER=$(agIntoFzf vim)

    if [[ -z "$BUFFER" ]]; then
        return
    fi
    mywords=(${(z)BUFFER})
    firstdir=${mywords[2]:h}
    loggDebug "builtin cd $firstdir\""
    #:h takes aways last "
    BUFFER="builtin cd $firstdir\"; $editor $BUFFER; clearList; isGitDir && git diff HEAD"
    loggDebug "$BUFFER"

    print -sr -- "$BUFFER"
    eval "$BUFFER"
}

function emacsFzfWordsearchVerbEdit(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    fzfWordsearchVerbEdit "$ZPWR_EMACS_CLIENT"
}

function emacsFzfWordsearchVerb(){
    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    fzfWordsearchVerb "$ZPWR_EMACS_CLIENT"
}

function vimFzfWordsearchVerbEdit(){

    fzfWordsearchVerbEdit "$EDITOR"
}

function vimFzfWordsearchVerb(){
    fzfWordsearchVerb "$EDITOR"
}

function fzfFileSearch(){

    command find -L . -mindepth 1 \
        \( -path '*/\\.*' -o -fstype 'sysfs' \
        -o -fstype 'devfs' -o -fstype 'devtmpfs' \
        -o -fstype 'proc' \) -prune -o -type f -print \
        -o -type l -print 2> /dev/null | cut -c3- |
        eval "$ZPWR_FZF -m --border $FZF_CTRL_T_OPTS" | perl -ne 'chomp $_; print "\"$_\" "'
}

function fzfFilesearchVerbEdit(){

    local editor sel

    editor="$1"
    sel=$(fzfFileSearch)
    if [[ -n "$sel" ]]; then
        BUFFER="$editor $sel"
        print -rz -- "$BUFFER"
    else
        return
    fi
}

function zpwrZstyle() {

    local sel

    sel=$(zstyle -L | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-50%} --min-height 15 --reverse $FZF_DEFAULT_OPTS $FZF_COMPLETION_OPTS --preview 'echo {}' --preview-window down:3:wrap" __fzf_comprun "$cmd" -m)

    if [[ -n "$sel" ]]; then
        BUFFER="$editor $sel"
        print -rz -- "$BUFFER"
    else
        return
    fi
}


function fzfFilesearchVerb(){

    local editor file

    editor="$1"
    file=$(fzfFileSearch)

    if [[ -z "$file" ]]; then
        return
    fi
    print -sr -- "$editor $file; clearList; isGitDir && git diff HEAD"
    eval "$editor $file; clearList; isGitDir && git diff HEAD"
}

function emacsFzfFilesearchVerbEdit(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    fzfFilesearchVerbEdit "$ZPWR_EMACS_CLIENT"
}

function emacsFzfFilesearchVerb(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    fzfFilesearchVerb "$ZPWR_EMACS_CLIENT"

}

function vimFzfFilesearchVerbEdit(){

    fzfFilesearchVerbEdit "$EDITOR"
}

function vimFzfFilesearchVerb(){

    fzfFilesearchVerb "$EDITOR"
}

function fzfDirSearch(){

    command find -L . -mindepth 1 \
        \( -path '*/\\.*' -o -fstype 'sysfs' \
        -o -fstype 'devfs' -o -fstype 'devtmpfs' \
        -o -fstype 'proc' \) -prune -o -type d -print \
        -o -type l -print 2> /dev/null | cut -c3- |
        eval "$ZPWR_FZF --border $FZF_CTRL_T_OPTS"
}

function fzfDirsearchVerb(){

    local dir

    dir=$(fzfDirSearch)

    if [[ -z "$dir" ]]; then
        return
    fi
    print -rs -- "builtin cd \"$dir\" && clearList"
    eval "builtin cd \"$dir\" && clearList"
}

function fzfZList(){

    z -l |& perl -lne 'for (reverse <>){do{($_=$2)=~s@$ENV{HOME}@~@;print} if m{^\s*(\S+)\s+(\S+)\s*$}}' |
    eval "$ZPWR_FZF -e --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~])([^~]*)$@"$ENV{HOME}$2"@;s@\s+@@g;'
}

function fzfZListVerb(){

    local dir

    dir=$(fzfZList)

    if [[ -z "$dir" ]]; then
        return
    fi
    print -sr -- "builtin cd \"$dir\" && clearList"
    eval "builtin cd \"$dir\" && clearList"
}

function fasdFList(){

    fasd -f |& perl -lne 'for (reverse <>){do{($_=$2)=~s@$ENV{HOME}@~@;print} if m{^\s*(\S+)\s+(\S+)\s*$}}' |
    eval "$ZPWR_FZF -m --no-sort --border $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
}

function fm(){

   FZF_MAN_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfMan.sh" "$1")'"
    man "$1" | col -b | eval "$ZPWR_FZF --no-sort -m $FZF_MAN_OPTS"
}

function zFZF(){

    local mywords

    zle .kill-whole-line
    BUFFER="z $(fzfZList)"
    mywords=(${(z)BUFFER})
    if (( $#mywords == 1 )); then
        zle .kill-whole-line
    else
        zle .accept-line
    fi
}

function fasdFZF(){

    local mywords

    BUFFER="$BUFFER $(fasdFList)"
    mywords=(${(z)BUFFER})
    if (( $#mywords == 1 )); then
        :
    else
        zle .accept-line
    fi
}

function fasdFListVerb(){

    local file

    file=$(fasdFList)

    if [[ -z "$file" ]]; then
        return
    fi
    print -sr -- "c $file"
    eval "c $file"
}

function killPSVerbAccept(){

    local sel

    sel="$(command ps -ef | sed 1d | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-50%} --min-height 15 --reverse $FZF_DEFAULT_OPTS $FZF_COMPLETION_OPTS --preview 'echo {}' --preview-window down:3:wrap" __fzf_comprun "$cmd" -m | awk '{print $2}' | uniq | tr '\n' ' ')"
    if [[ -n "$sel" ]]; then
        BUFFER="sudo kill -9 -- $sel"
        print -sr -- "$BUFFER"
        eval "$BUFFER"
    else
        return
    fi
}

function killPSVerbEdit(){

    local sel

    sel="$(command ps -ef | sed 1d | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-50%} --min-height 15 --reverse $FZF_DEFAULT_OPTS $FZF_COMPLETION_OPTS --preview 'echo {}' --preview-window down:3:wrap" __fzf_comprun "$cmd" -m | awk '{print $2}' | uniq | tr '\n' ' ')"
    if [[ -n "$sel" ]]; then
        BUFFER="sudo kill -9 -- $sel"
        print -rz -- "$BUFFER"
    else
        return
    fi
}

function killLsofVerbAccept(){

    local sel

    sel="$(sudo lsof -i | sed 1d | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-50%} --min-height 15 --reverse $FZF_DEFAULT_OPTS $FZF_COMPLETION_OPTS --preview 'echo {}' --preview-window down:3:wrap" __fzf_comprun "$cmd" -m | awk '{print $2}' | uniq | tr '\n' ' ')"
    if [[ -n "$sel" ]]; then
        BUFFER="sudo kill -9 -- $sel"
        print -rs -- "$BUFFER"
        eval "$BUFFER"
    else
        return
    fi
}

function killLsofVerbEdit(){

    local sel

    sel="$(sudo lsof -i | sed 1d | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-50%} --min-height 15 --reverse $FZF_DEFAULT_OPTS $FZF_COMPLETION_OPTS --preview 'echo {}' --preview-window down:3:wrap" __fzf_comprun "$cmd" -m | awk '{print $2}' | uniq | tr '\n' ' ')"
    if [[ -n "$sel" ]]; then
        BUFFER="sudo kill -9 -- $sel"
        print -rz -- "$BUFFER"
    else
        return
    fi
}


function fzfEnvVerbAccept(){

    local num sel

    if [[ ! -s "${ZPWR_ENV}Key.txt" ]]; then
        loggDebug "regenerating keys for $ZPWR_ENV"
        regenSearchEnv
    fi
    if [[ ! -s "${ZPWR_ENV}Value.txt" ]]; then
        loggDebug "regenerating values for $ZPWR_ENV"
        regenSearchEnv
    fi

    sel=$(cat "${ZPWR_ENV}Key.txt" | awk '{print $2}' |
        eval "$ZPWR_FZF -m --border $FZF_ENV_OPTS")

    if [[ -n "$sel" ]]; then
        print -sr -- "$sel"
        eval "$sel"
    else
        return
    fi
}

function fzfEnvVerbEdit(){

    local num sel

    if [[ ! -s "${ZPWR_ENV}Key.txt" ]]; then
        loggDebug "regenerating keys for $ZPWR_ENV"
        regenSearchEnv
    fi
    if [[ ! -s "${ZPWR_ENV}Value.txt" ]]; then
        loggDebug "regenerating values for $ZPWR_ENV"
        regenSearchEnv
    fi

    sel=$(cat "${ZPWR_ENV}Key.txt" | awk '{print $2}' |
        eval "$ZPWR_FZF -m --border $FZF_ENV_OPTS")

    if [[ -n "$sel" ]]; then
        print -zr -- "$sel"
    else
        return
    fi
}

function historyVerbAccept(){

    local num sel
      sel=$(fc -rl 1 | perl -ne 'print if !$seen{($_ =~ s/^\s*[0-9]+\s+//r)}++' |
    FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS -n2..,.. --tiebreak=index --bind=ctrl-r:toggle-sort $FZF_CTRL_R_OPTS +m" $ZPWR_FZF |
    perl -lane 'print "@F[1..$#F]"')

}

function historyVerbEdit(){

    local num sel
      sel=$(fc -rl 1 | perl -ne 'print if !$seen{($_ =~ s/^\s*[0-9]+\s+//r)}++' |
    FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS -n2..,.. --tiebreak=index --bind=ctrl-r:toggle-sort $FZF_CTRL_R_OPTS +m" $ZPWR_FZF |
    perl -lane 'print "@F[1..$#F]"')

    if [[ -n "$sel" ]]; then
        print -zr -- "$sel"
    else
        return
    fi
}

function vimFzfSudo(){

    zle .kill-whole-line
    local firstdir editor mywords

    if [[ $ZPWR_USE_NEOVIM == true ]]; then
        LBUFFER="sudo -E nvim $(fzvim nvim)"
    else
        LBUFFER="sudo -E vim $(fzvim vim)"
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

function intoFzfAg(){

    local firstdir editor mywords

    mywords=("${(z)BUFFER}")

    if echo ${mywords[1]} | command grep -sq vim; then
        BUFFER="$BUFFER $(agIntoFzf vim)"
    else
        BUFFER="$BUFFER $(agIntoFzf)"
    fi

    BUFFER=${BUFFER:s@  @ @}

    CURSOR=$#BUFFER
}

function keySender(){

    local pane mywords

    if (( $ZPWR_SEND_KEYS_PANE != -1 )); then
        #tmux send-keys -t learn:0.0 $1
        for pane in ${(Az)${(s@,@)ZPWR_SEND_KEYS_PANE}}; do
            tmux send-keys -t $pane "C-u" "$BUFFER" #&>/dev/null
        done
    fi
}

function stopSend(){

    ZPWR_SEND_KEYS_PANE=-1
    ZPWR_SEND_KEYS_FULL=false
    command rm $ZPWR_LOCK_FILE &>/dev/null
}

function startSendFull(){

    ZPWR_SEND_KEYS_FULL=true
    startSend "$@"
}

function startSend(){

    if [[ -z "$1" ]]; then
        loggErr "need arg: <pane>"
        return 1
    fi

    local pane mywords pid

    ZPWR_SEND_KEYS_PANE=$1

    if [[ ! -d $ZPWR_LOCAL ]]; then
        mkdir -p $ZPWR_LOCAL
    fi

    echo > $ZPWR_LOCK_FILE

    for pane in ${(Az)${(s@,@)ZPWR_SEND_KEYS_PANE}}; do
        pid=$(tmux list-panes -F '#{pane_index} #{pane_pid}' | perl -lane 'print $F[1] if $F[0] =~ m{'$pane'}')
        echo $pid >> $ZPWR_LOCK_FILE
    done
}

function keyClear(){

    local pane mywords pid

    if (( $ZPWR_SEND_KEYS_PANE >= 0 )); then
        for pane in ${(Az)${(s@,@)ZPWR_SEND_KEYS_PANE}}; do
            tmux send-keys -t $pane "C-u"
        done
    fi
}

function self-insert() {

  zle .self-insert
  keySender $KEYS
}

zle -N self-insert

function clearLine() {

    keyClear
    LBUFFER=
}

function regenZshCompCache(){

    local lines

    prettyPrint "regen zsh compsys cache"
    lines="$(command grep -m 2 "#omz" "$ZSH_COMPDUMP")"

    echo command rm -fv "$ZSH_COMPDUMP"*(DN) "$HOME/.zcompdump"*(DN)
    command rm -fv "$ZSH_COMPDUMP"*(DN) "$HOME/.zcompdump"*(DN)
    compinit -u -d "$ZSH_COMPDUMP"
    echo "$lines" >> "$ZSH_COMPDUMP"
}

function regenSearchEnv(){

    prettyPrint "regenerating all env into ${ZPWR_ENV}{Key,Value}.txt"
    source "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh" "$ZPWR_ENV"
}

function regenMost(){

    regenConfigLinks
    regenZshCompCache
    regenHistory
    regenCtags
    regenGtagsCtags
    regenAllKeybindingsCache
    regenPowerlineLink
    regenSearchEnv
    uncompile
    recompile
}

function regenAll(){

    regenConfigLinks
    regenZshCompCache
    regenHistory
    regenCtags
    regenGtagsCtags
    regenAllKeybindingsCache
    regenPowerlineLink
    regenSearchEnv
    uncompile
    recompile
    regenAllGitRepos regen
}

function deleteLastWord(){

    local mywords

    mywords=(${(z)BUFFER})
    if (( $#mywords > 1  )); then
        BUFFER=${mywords[1,-2]}" "
    else
        BUFFER=
    fi
}


function fzfEnv(){

    local sel

    if [[ ! -s "${ZPWR_ENV}Key.txt" ]]; then
        loggDebug "regenerating keys for $ZPWR_ENV"
        regenSearchEnv
    fi
    if [[ ! -s "${ZPWR_ENV}Value.txt" ]]; then
        loggDebug "regenerating values for $ZPWR_ENV"
        regenSearchEnv
    fi

    sel=$(cat "${ZPWR_ENV}Key.txt" | awk '{print $2}' |
        eval "$ZPWR_FZF -m --border $FZF_ENV_OPTS" | perl -pe 's@\n@ @g')
    BUFFER="$LBUFFER$sel$RBUFFER"
    CURSOR=$(($#LBUFFER + $#sel))

    zle reset-prompt
}


function fzfAllKeybind(){

    if [[ ! -s "$ZPWR_ALL_KEYBINDINGS" ]]; then
        loggDebug "regenerating $ZPWR_ALL_KEYBINDINGS"
        regenAllKeybindingsCache
    fi
    cat "$ZPWR_ALL_KEYBINDINGS" | fzf
}

function fzfVimKeybind(){

    if [[ ! -s "$ZPWR_VIM_KEYBINDINGS" ]]; then
        loggDebug "regenerating $ZPWR_VIM_KEYBINDINGS"
        regenAllKeybindingsCache
    fi
    cat "$ZPWR_VIM_KEYBINDINGS" | fzf
}

function getLocate(){

    eval "locate / 2>/dev/null | $ZPWR_FZF -m $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
}
function getFound(){

    eval "find / 2>/dev/null | $ZPWR_FZF -m $FZF_CTRL_T_OPTS" |
        perl -pe 's@^([~]*)([^~].*)$@$1"$2"@;s@\s+@ @g;'
}

function locateFzfEditNoZLE(){

    local firstArg sel editor

    editor="$1"
    sel="$(getLocate)"

    firstArg="${${(Az)sel}[1]//\"/}"
    if [[ -d "$firstArg" ]]; then
        BUFFER="cd $firstArg;$editor $sel"
    else
        BUFFER="$editor $sel"
    fi

    if [[ -n "$sel" ]]; then
        print -zr -- "$BUFFER"
    else
        return
    fi
}

function locateFzfNoZLE(){

    local firstArg sel editor

    editor="$1"
    sel="$(getLocate)"

    firstArg="${${(Az)sel}[1]//\"/}"
    if [[ -d "$firstArg" ]]; then
        BUFFER="cd $firstArg;$editor $sel"
    else
        BUFFER="$editor $sel"
    fi

    if [[ -n "$sel" ]]; then
        print -sr -- "$BUFFER"
        eval "$BUFFER"
    else
        return
    fi
}

function locateFzfEditNoZLEC(){

    locateFzfEditNoZLE "c"
}

function locateFzfNoZLEC(){

    locateFzfNoZLE "c"
}

function locateFzfEditNoZLEVim(){

    locateFzfEditNoZLE "$EDITOR"
}

function locateFzfNoZLEVim(){

    locateFzfNoZLE "$EDITOR"
}

function locateFzfEditNoZLEEmacs(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    locateFzfEditNoZLE "$ZPWR_EMACS_CLIENT"
}

function locateFzfNoZLEEmacs(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    locateFzfNoZLE "$ZPWR_EMACS_CLIENT"
}

function findFzfEditNoZLE(){

    local firstArg sel editor

    editor="$1"
    sel="$(getFound)"

    firstArg="${${(Az)sel}[1]//\"/}"
    if [[ -d "$firstArg" ]]; then
        BUFFER="cd $firstArg;$editor $sel"
    else
        BUFFER="$editor $sel"
    fi

    if [[ -n "$sel" ]]; then
        print -zr -- "$BUFFER"
    else
        return
    fi
}

function findFzfNoZLE(){

    local firstArg sel editor

    editor="$1"
    sel="$(getFound)"

    firstArg="${${(Az)sel}[1]//\"/}"
    if [[ -d "$firstArg" ]]; then
        BUFFER="cd $firstArg;$editor $sel"
    else
        BUFFER="$editor $sel"
    fi

    if [[ -n "$sel" ]]; then
        print -sr -- "$BUFFER"
        eval "$BUFFER"
    else
        return
    fi
}

function findFzfEditNoZLEC(){

    findFzfEditNoZLE "c"
}

function findFzfNoZLEC(){

    findFzfNoZLE "c"
}

function findFzfEditNoZLEVim(){

    findFzfEditNoZLE "$EDITOR"
}

function findFzfNoZLEVim(){

    findFzfNoZLE "$EDITOR"
}

function findFzfEditNoZLEEmacs(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    findFzfEditNoZLE "$ZPWR_EMACS_CLIENT"
}

function findFzfNoZLEEmacs(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    findFzfNoZLE "$ZPWR_EMACS_CLIENT"
}

function locateFzfEdit(){

    local firstArg sel firstdir mywords

    mywords=(${(z)BUFFER})
    if (( $#mywords == 0 )); then
        sel="$(getFound)"

        if [[ -z "$sel" ]]; then
            zle .kill-whole-line 2>/dev/null
            return 0
        fi
        firstArg="${${(Az)sel}[1]//\"/}"
        if [[ -d "$firstArg" ]]; then
            BUFFER="builtin cd \"$firstArg\"; $EDITOR $sel; clearList; isGitDir && git diff HEAD; "
        else
            firstdir=${firstArg:h}
            BUFFER="builtin cd \"$firstdir\"; $EDITOR $sel; clearList; isGitDir && git diff HEAD; "
        fi
        zle .accept-line
    else
        sel="$(getFound)"

        if [[ ! -z "$sel" ]]; then
            #trim and squeeze
            BUFFER=$(print -r -- "$BUFFER $sel" | awk '{$1=$1};1')
            CURSOR="$#BUFFER"
            zle reset-prompt
        else
            zle reset-prompt
        fi
    fi
}

function locateFzf(){

    local firstArg sel firstdir mywords

    mywords=(${(z)BUFFER})
    if (( $#mywords == 0 )); then
        sel="$(getFound)"

        if [[ -z "$sel" ]]; then
            zle .kill-whole-line 2>/dev/null
            return 0
        fi
        firstArg="${${(Az)sel}[1]//\"/}"
        if [[ -d "$firstArg" ]]; then
            BUFFER="builtin cd \"$firstArg\"; $EDITOR $sel; clearList; isGitDir && git diff HEAD; "
        else
            firstdir=${firstArg:h}
            BUFFER="builtin cd \"$firstdir\"; $EDITOR $sel; clearList; isGitDir && git diff HEAD; "
        fi
        zle .accept-line
    else
        sel="$(getFound)"

        if [[ ! -z "$sel" ]]; then
            BUFFER=$(print -r -- "$BUFFER $sel" | awk '{$1=$1};1')
            CURSOR="$#BUFFER"
            zle .accept-line 2>/dev/null
        else
            zle reset-prompt
        fi
    fi
}

function cca() {

    local firstArg sel firstdir

    firstArg="${${(Az)@}[1]//\"/}"
    firstdir=${firstArg:h}
    BUFFER="builtin cd \"$firstdir\"; c ""$@""; clearList; isGitDir && git diff HEAD; "
    logg "$BUFFER"
    eval "$BUFFER"
}

function cv() {

    local firstArg sel firstdir

    firstArg="${${(Az)@}[1]//\"/}"
    firstdir=${firstArg:h}
    BUFFER="builtin cd \"$firstdir\"; $EDITOR ""$@""; clearList; isGitDir && git diff HEAD; "
    logg "$BUFFER"
    eval "$BUFFER"
}

function ce() {

    local firstArg sel firstdir

    firstArg="${${(Az)@}[1]//\"/}"
    firstdir=${firstArg:h}
    BUFFER="builtin cd \"$firstdir\"; $ZPWR_EMACS_CLIENT ""$@""; clearList; isGitDir && git diff HEAD; "
    logg "$BUFFER"
    eval "$BUFFER"
}

function fzfCommits(){

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

function asVar(){

    region_highlight=("P0 20 fg=blue,bg=red")
    BUFFER="=\"\$($BUFFER)\""
    CURSOR=0
}

function interceptSurround(){

    #surround
    exists autopair-insert && autopair-insert
    keySender
}

function interceptDelete(){

    #deleteMatching
    exists autopair-delete && autopair-delete
    keySender
}

function zpwrVerbsWidgetAccept(){

    zle .kill-whole-line
    BUFFER="$(zpwrVerbs)"
    loggDebug "$BUFFER"
    zle .accept-line
}

function zpwrVerbsWidget(){

    zle .kill-whole-line
    BUFFER="$(zpwrVerbs)"
    loggDebug "$BUFFER"
    CURSOR=$#BUFFER
    zle vi-insert
}

zle -N fzfCommits
zle -N updater
zle -N runner
zle -N intoFzf
zle -N intoFzfAg
zle -N emacsFzf
zle -N vimFzf
zle -N vimFzfSudo
zle -N getrcWidget
zle -N clearLine
zle -N deleteLastWord
zle -N lsoffzf
zle -N fzfVimKeybind
zle -N fzfAllKeybind
zle -N locateFzf
zle -N locateFzfEdit
zle -N fzfEnv
zle -N fasdFZF
zle -N interceptDelete
zle -N interceptSurround
zle -N asVar
zle -N zpwrVerbsWidget
zle -N zpwrVerbsWidgetAccept

#vim mode for zle
bindkey -v

bindkey -M viins "^?" interceptDelete
bindkey -M viins '"' interceptSurround
bindkey -M viins "'" interceptSurround
bindkey -M viins '`' interceptSurround
bindkey -M viins "(" interceptSurround
bindkey -M viins "[" interceptSurround
bindkey -M viins "{" interceptSurround

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

bindkey -M viins '^F^V' edit-command-line
bindkey -M vicmd '^F^V' edit-command-line

bindkey -M viins '^O' fzf-tab-complete
bindkey -M vicmd '^O' fzf-tab-complete

bindkey -M viins '^F^F' fzf-file-widget
bindkey -M vicmd '^F^F' fzf-file-widget

bindkey -M viins '^F^D' intoFzf
bindkey -M vicmd '^F^D' intoFzf

bindkey -M viins '^F^H' lsoffzf
bindkey -M vicmd '^F^H' lsoffzf

bindkey -M viins '^F^J' zpwrVerbsWidgetAccept
bindkey -M vicmd '^F^J' zpwrVerbsWidgetAccept

bindkey -M viins '^F^M' zzcomplete
bindkey -M vicmd '^F^M' zzcomplete

bindkey -M viins '^F^N' zpwrVerbsWidget
bindkey -M vicmd '^F^N' zpwrVerbsWidget

bindkey -M viins '^F^G' intoFzfAg
bindkey -M vicmd '^F^G' intoFzfAg

bindkey -M viins '^F^R' asVar
bindkey -M vicmd '^F^R' asVar

bindkey -M viins '^V//' locateFzf
bindkey -M vicmd '^V//' locateFzf

bindkey -M viins '^V/.' locateFzfEdit
bindkey -M vicmd '^V/.' locateFzfEdit

bindkey -M viins '^V.' fzfAllKeybind
bindkey -M vicmd '^V.' fzfAllKeybind

bindkey -M viins '^Vk' fzfVimKeybind
bindkey -M viins '^Vk' fzfVimKeybind

bindkey -M viins '^V,' fzfEnv
bindkey -M vicmd '^V,' fzfEnv

bindkey -M viins '^V^N' vimFzfSudo
bindkey -M vicmd '^V^N' vimFzfSudo

exists history-search-multi-word && {
    bindkey -M viins '^V^R' history-search-multi-word
    bindkey -M vicmd '^V^R' history-search-multi-word
}

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

bindkey -M viins '^V^K' emacsFzf
bindkey -M vicmd '^V^K' emacsFzf

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

bindkey -M viins '^F^K' alternateQuotes
bindkey -M vicmd '^F^K' alternateQuotes

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
    if [[ "$ZPWR_PARENT_PROCESS" == *(login|tmux)* ]]; then
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

bindkey '^X^R' _read_comp
bindkey '^X?' _complete_debug
bindkey '^XC' _correct_filename
bindkey '^Xa' _expand_alias
bindkey '^Xc' _correct_word
bindkey '^Xd' _list_expansions
bindkey '^Xe' _expand_word
bindkey '^Xh' _complete_help
bindkey '^Xm' _most_recent_file
bindkey '^Xn' _next_tags
bindkey '^Xt' _complete_tag
bindkey '^X~' _bash_list-choices
bindkey '^[,' _history-complete-newer
bindkey '^[/' _history-complete-older
bindkey '^[~' _bash_complete-word

#Filter stderr through shell scripts
#having this setting messes with tmux resurrect so will enable it on individual basis
#exec 2> >("$ZPWR_SCRIPTS"/redText.sh)
#
zpwrExpandAliases() {
  unset 'functions[_expand-aliases]'
  functions[_expand-aliases]=$BUFFER
  (($+functions[_expand-aliases])) &&
    echo ${functions[_expand-aliases]#$'\t'}
}

function my-accept-line () {

    local pane commandsThatModifyFiles regex mywords line command cmd out aliases

    if ! [[ $(zpwrExpandAliases $BUFFER) = zc* ]]; then
        ZPWR_CONVEY_NAME="TTY:${TTY} PID:${$} CMD:$BUFFER PWD:${PWD} DATE:$(date)"
        zc-rename $ZPWR_CONVEY_NAME &>/dev/null
        ZPWR_CONVEY_LAST_CMD=$BUFFER
    else
        if [[ -z $ZPWR_CONVEY_LAST_CMD ]]; then
            ZPWR_CONVEY_LAST_CMD="-zsh $-"
        fi

        ZPWR_CONVEY_NAME="TTY:${TTY} PID:${$} CMD: $ZPWR_CONVEY_LAST_CMD PWD:${PWD} DATE:$(date)"
        zc-rename $ZPWR_CONVEY_NAME &>/dev/null
    fi

    ZPWR_WILL_CLEAR=false
    if [[ $ZPWR_SEND_KEYS_FULL == false ]]; then
        keyClear
    else
        if ! [[ $BUFFER == *stopSend* ]]; then
            for pane in ${(Az)${(s@,@)ZPWR_SEND_KEYS_PANE}}; do
                tmux send-keys -t $pane "C-m"
            done
        else
            for pane in ${(Az)${(s@,@)ZPWR_SEND_KEYS_PANE}}; do
                tmux send-keys -t $pane "C-u"
            done
        fi
    fi

    #do we want to clear the screen and run ls after we exec the current line?

    commandsThatModifyFiles=(unlink rm srm to md touch chown chmod rmdir mv cp chflags chgrp ln mkdir nz git\ reset git\ clone gcl dot_clean)

    for command in ${commandsThatModifyFiles[@]}; do
        regex="^sudo $command .*\$|^$command .*\$"
        if [[ "$BUFFER" =~ $regex ]]; then
            ZPWR_WILL_CLEAR=true
        fi
    done
    mywords=("${(z)BUFFER}")

    if [[ ${mywords[1]} == 'sudo' ]]; then
        cmd=${mywords[2]}

        #sudo =iftop fails so remove =
        cmd=${cmd#=}
        out="$(alias -- $cmd)"
        if [[ "$out" == *grc* ]]; then
            cmdlet="$(eval echo "${out#*=}")"
            print -srn -- "$BUFFER"
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
            aliases="$(cat $ZPWR_LOCAL/.common_aliases)"
            line="$(print -r $aliases | perl -ne 'print $1 if m{\Q'$mywords[1]'\E=(.*)}')"
            if [[ -z $line ]];then
                #fxn
                BUFFER="\\$mywords"
            else
                #non global alias
                print "$line" | grep -F "'" && \
                    BUFFER="${line:1:-1} $mywords[2,$]" ||
                    BUFFER="$line $mywords[2,$]"
            fi
        fi
    fi

    set +x
    zle .accept-line
    #leaky $ZPWR_DEFAULT_OMZ_THEME theme so reset ANSI escape sequences
    printf "\x1b[0m"
}

zle -N accept-line my-accept-line

function precmd(){

    (( $? == 0)) && {
        if [[ "$ZPWR_WILL_CLEAR" == true ]]; then
            if [[ $ZPWR_RM_AUTO_LS == true ]]; then
                clear
                listNoClear
            fi
            # to prevent ZPWR_WILL_CLEAR staying true when
            # called from zle widgets and not from
            # pressing enter key
            ZPWR_WILL_CLEAR=false
        fi
    }
    if [[ ! -z "$TMUX" ]] && [[ -f $ZPWR_LOCAL/.display.txt ]]; then
        #export DISPLAY=$(cat $ZPWR_LOCAL/.display.txt) ||
        :
    else
        :
        #echo $DISPLAY > $ZPWR_LOCAL/.display.txt
    fi
    #leaky $ZPWR_DEFAULT_OMZ_THEME theme so reset ANSI escape sequences
    printf "\x1b[0m"
    #lose normal mode
    if [[ $ZPWR_PROMPT != POWERLEVEL ]]; then
        RPROMPT="%B%F{blue}$$ %b%F{blue}$-"
    fi
}

if [[ ! -z "$TMUX" ]] && [[ -f $ZPWR_LOCAL/.display.txt ]]; then
    #export DISPLAY=$(cat $ZPWR_LOCAL/.display.txt) ||
    :
    else
        :
        #echo $DISPLAY > $ZPWR_LOCAL/.display.txt
    fi

function rationalize-dot (){

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

#bbind shift tab to reverse menucomplete, opposite of tab
bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey -M menuselect '^d' accept-and-menu-complete
bindkey -M menuselect '^f' accept-and-infer-next-history

if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    if echo "$ZPWR_PARENT_PROCESS" | command grep -q -E 'login|tmux'; then
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

# like helm

if [[ $ZPWR_INTERATIVE_MENU_SELECT == true ]]; then
    bindkey -M menuselect '^I' vi-forward-char
    bindkey -M menuselect '^?' undo
    bindkey -M menuselect '.' self-insert
else
    :
fi

bindkey -M menuselect '|' history-incremental-search-forward

bindkey -M menuselect '^J' down-history
bindkey -M menuselect '^K' up-history

bindkey -M menuselect '^P' vi-backward-word
bindkey -M menuselect '^N' vi-forward-word

bindkey -M menuselect '^H' vi-backward-char
bindkey -M menuselect '^L' vi-forward-char
#search through options
bindkey -M menuselect '?' history-incremental-search-backward

#for interactive menuselect
bindkey -M menuselect '^V' vi-insert

function expandAliasAccept(){
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

function EOLorNextTabStop(){

    local lenToFirstTS

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
if [[ $ZPWR_PROMPT != POWERLEVEL ]]; then
    function zle-keymap-select() {
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
# allow '' escape
setopt rcquotes

# Allow comments even in interactive shells (especially for Muness)
setopt interactive_comments

# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt auto_cd

# if argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory
setopt cdablevarS

# don't push multiple copies of the same directory onto the directory stack
setopt pushd_ignore_dups

# treat #, ~, and ^ as part of patterns for filename generation
setopt extended_glob

# Allow multiple terminal sessions to all append to one zsh command history
setopt append_history

# save timestamp of command and duration
setopt extended_history

# Add comamnds as they are typed, don't wait until shell exit
setopt inc_append_history

# when trimming history, lose oldest duplicates first
setopt hist_expire_dups_first

# Do not write events to history that are duplicates of previous events
setopt hist_ignore_dups

# do not execute, just expand history
setopt hist_verify

# remove command line from history list when first character on the line is a space
setopt hist_ignore_space

# When searching history don't display results already cycled through twice
setopt hist_find_no_dups

# Remove extra blanks from each command line being added to history
setopt hist_reduce_blanks

# do not execute, just expand history
unsetopt hist_verify
# imports new commands and appends typed commands to history
setopt share_history

# When completing from the middle of a word, move the cursor to the end of the word
setopt always_to_end

# show completion menu on successive tab press. needs unsetop menu_complete to work
#setopt auto_menu

# any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt auto_name_dirs

# Allow completion from within a word/phrase
setopt complete_in_word

# spelling correction for commands
#setopt correct

# spelling correction for arguments
#setopt correct_all

# Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt prompt_subst

# only show the rprompt on the current prompt
setopt transient_rprompt

# perform implicit tees or cats when multiple redirections are attempted
setopt multios

#dot files included in regular globs
setopt glob_dots

# no glob in all globs then error
setopt csh_null_glob

setopt no_list_beep

# > file creates file
# NOT compatible with $(<<EOF) used in comp caches
setopt no_sh_null_cmd

# allow unquoted globs to pass through
setopt no_bad_pattern

#globs sorted numerically
setopt numeric_glob_sort

#global substitution is case insensitive
setopt nocaseglob

# filename completion after =
setopt magic_equal_subst

if [[ $ZPWR_AUTO_SELECT == true ]]; then
    #auto select first item of menu completion
    setopt menu_complete
fi

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
function addOMZAttrib() {
    zcompdump_metadata="#omz revision: $(builtin cd -q "$ZSH"; git rev-parse HEAD 2>/dev/null)\n#omz fpath: $fpath"
    echo "\n$zcompdump_metadata" | tee -a "$ZSH_COMPDUMP" &>/dev/null
}

local recachedCompsys lines
recachedCompsys=false
# reload compsys cache if file is stale for 1 week
for dump in ~/.zcompdump*(N.mh+168); do
    logg "regenerating stale '$dump' older than 1 week"
    lines="$(command grep -m 2 "#omz" "$ZSH_COMPDUMP")"
    rm "$ZSH_COMPDUMP"
    # avoid insecure warning message with -u
    compinit -u -d "$ZSH_COMPDUMP"
    echo "$lines" >> "$ZSH_COMPDUMP"
    zcompile $ZSH_COMPDUMP
    recachedCompsys=true
    break
done

if ! (( $+_comps[z] )); then
    #compsys completion for z was not found when it should have been
    logg "regenerating '$ZSH_COMPDUMP' due to failed cached compinit for z"
    logg "_comps size: '$#_comps' fpath: '$fpath' fpath length '$#fpath'"
    lines="$(command grep -m 2 "#omz" "$ZSH_COMPDUMP")"
    rm "$ZSH_COMPDUMP"
    compinit -u -d "$ZSH_COMPDUMP"
    echo "$lines" >> "$ZSH_COMPDUMP"
    #zcompile $ZSH_COMPDUMP
else
    logg "found '${_comps[z]}' for z so used cached '$ZSH_COMPDUMP'"
    logg "_comps size: '$#_comps' fpath length: '$#fpath' path length: '$#path'"
fi

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

# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

#using tag name as group name so ordering the groups by tag name here
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

if [[ $ZPWR_COLORS == true ]]; then

    zstyle ':completion:*' list-colors 'ma=37;1;4;44'
    #main option for menu selection colors
    zstyle ':completion:*:builtins' list-colors '=(#b)(*)=1;30=1;37;4;43'
    zstyle ':completion:*:executables' list-colors '=(#b)(*)=1;30=1;37;44'
    zstyle ':completion:*:parameters' list-colors '=(#b)(*)=1;30=1;32;45'
    zstyle ':completion:*:reserved-words' list-colors '=(#b)(*)=1;30=1;4;37;45'
    zstyle ':completion:*:functions' list-colors '=(#b)(*)=1;30=1;37;41'
    zstyle ':completion:*:aliases' list-colors '=(#b)(*)=1;30=34;42;4'
    zstyle ':completion:*:suffix-aliases' list-colors '=(#b)(*)=1;30=1;34;41;4'
    zstyle ':completion:*:global-aliases' list-colors '=(#b)(*)=1;30=1;34;43;4'
    zstyle ':completion:*:users' list-colors '=(#b)(*)=1;30=1;37;42'
    zstyle ':completion:*:hosts' list-colors '=(#b)(*)=1;30=1;37;43'
    zstyle ':completion:*:global-aliases' list-colors '=(#b)(*)=1;30=1;34;43;4'

    #git commit colors
    zstyle ':completion:*:*:commits' list-colors '=(#b)(*)='$ZPWR_COMMIT_STYLE
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

    zstyle ':completion:*:zdir' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:fasd' list-colors '=(#b)(*)=1;30=1;37;42'
    zstyle ':completion:*:fasd-file' list-colors '=(#b)(*)=1;30=1;33;45'
    zstyle ':completion:*:*:*:*:vtags' list-colors '=(#b)(*)=1;37;45'

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        #homebrew tags
        zstyle ':completion::complete:brew-cask:argument-rest:list' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:formulae' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:*:brew-cask:*:list' list-colors '=(#b)(*)=1;30=1;36;44'
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
    zstyle ':completion:*' list-separator "$ZPWR_CHAR_LOGO"
    COMMON_ZSTYLE_OPTS='reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)(*)==37;45=37;43=34}:${(s.:.)LS_COLORS}")'

    zstyle -e ':completion:*:local-directories' list-colors "$COMMON_ZSTYLE_OPTS"
    zstyle -e ':completion:*:*:f:*:*' list-colors "$COMMON_ZSTYLE_OPTS"
    zstyle -e ':completion:*:globbed-files' list-colors "$COMMON_ZSTYLE_OPTS"
    zstyle -e ':completion:*:argument-rest:*' list-colors "$COMMON_ZSTYLE_OPTS"
    zstyle -e ':completion:*:all-files' list-colors "$COMMON_ZSTYLE_OPTS"
    zstyle -e ':completion:*:files' list-colors "$COMMON_ZSTYLE_OPTS"
    zstyle -e ':completion:*:directories' list-colors "$COMMON_ZSTYLE_OPTS"
    zstyle -e ':completion:*:named-directories' list-colors "$COMMON_ZSTYLE_OPTS"

    zstyle ':completion:*:*:*:*:options' list-colors '=(#b)([-<)(>]##)[ ]#([a-zA-Z0-9_.,:?@#-]##)[ ]#([<)(>]#)[ ]#([a-zA-Z0-9+?.,()@3-]#)*=1;32=1;31=34=1;31=34'
fi
zstyle ':completion:*:killall:*' command 'ps -o command'

# use tag names as menu select separators
zstyle ':completion:*' group-name ''

# divide man pages by sections
zstyle ':completion:*:manuals' separate-sections true

# Ignore compsys completion functions
#zstyle ':completion:*:functions' ignored-patterns '_*'

# ignore .. as completion option
zstyle ':completion:*' ignored-patterns '*..'
zstyle ':completion:*' ignored-patterns '*.'

#}}}***********************************************************

#{{{                    MARK:Global Aliases
#**************************************************************
function globalAliasesInit(){

    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}a="|& command grep -v -E '\bag\b' |& \\ag --color -i --"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}ap="| awk -F: 'BEGIN {$ZPWR_TABSTOP} {printf \"%s$ZPWR_TABSTOP\\n\", \$1} END {$ZPWR_TABSTOP}'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}b='&>> "$ZPWR_LOGFILE" &; disown %1 && unset __pid && __pid=$! && ps -ef | command grep -v grep | command grep --color=always $__pid; unset __pid;'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}bb='&>> "$ZPWR_LOGFILE'"$ZPWR_TABSTOP"'" &; disown %1 && unset __pid && __pid=$! && ps -ef | command grep -v grep | command grep --color=always $__pid; unset __pid;'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}c="| cut -d ' ' -f1"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}cf2="| sed 's@.*@_\U\l&_@' | boldText.sh | blueText.sh"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}e="|& command grep -v -E '\bgrep\b' |& command grep --color=always -i -E --"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}k="| awk 'BEGIN {$ZPWR_TABSTOP} {printf \"%s$ZPWR_TABSTOP\\n\", \$1} END {$ZPWR_TABSTOP}'"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}l='| less -rMN'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}lo='"$ZPWR_LOGFILE"'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}n="2> /dev/null"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}nn="> /dev/null 2>&1"
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}o='&>> "$ZPWR_LOGFILE"'
    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}oo='&>> "$ZPWR_LOGFILE'"$ZPWR_TABSTOP"'"'
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


    alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}v="| ${=ZPWR_COPY_CMD}"
}

globalAliasesInit
#}}}***********************************************************

#{{{                    MARK:Regular Aliases
#**************************************************************
alias gacp='git add . && git commit -m "'$ZPWR_TABSTOP'" && git push'
alias gac='git add . && git commit -m "'$ZPWR_TABSTOP'"'

exists zf || alias zf="$ZPWR_REPO_NAME fordir 'isGitDir && { $ZPWR_TABSTOP; }' *"
exists zfg || alias zfg="$ZPWR_REPO_NAME fordir 'isGitDir && { gffa; bk; gla; zp gitclearcache; }' *"

exists zfgw || alias zfgw="$ZPWR_REPO_NAME fordir 'zpwrWipedBranch=$ZPWR_TABSTOP; isGitDir && { gco \$zpwrWipedBranch; gffa; git clean -dff && git reset --hard origin/\$zpwrWipedBranch && git clean -dff ; gla; zp gitclearcache; }' *"

exists zfgmw || alias zfgmw="$ZPWR_REPO_NAME fordir 'isGitDir && { gco master; gffa; git clean -dff && git reset --hard origin/master && git clean -dff ; gla; zp gitclearcache; }' *"

exists zfgdw || alias zfgdw="$ZPWR_REPO_NAME fordir 'isGitDir && { gco development; gffa; git clean -dff && git reset --hard origin/development && git clean -dff ; gla; zp gitclearcache; }' *"

exists zfgm || alias zfgm="$ZPWR_REPO_NAME fordir 'isGitDir && { gco master; gffa; bk; gla; zp gitclearcache; }' *"

exists zfgd || alias zfgd="$ZPWR_REPO_NAME fordir 'isGitDir && { gco development; gffa; bk; gla; zp gitclearcache; }' *"

exists zff || alias zff="$ZPWR_REPO_NAME fordir 'isGitDir && { $ZPWR_TABSTOP; }' \$(cat $ZPWR_ALL_GIT_DIRS)"

exists zfff || alias zfff="$ZPWR_REPO_NAME fordir 'isGitDir && { gfa;bk;gla;zp gitclearcache; }' \$(cat $ZPWR_ALL_GIT_DIRS)"

exists zffw || alias zffw="$ZPWR_REPO_NAME fordir 'isGitDir && { gfa;git reset origin/\$(git_current_branch) --hard ;gla;zp gitclearcache; }' \$(cat $ZPWR_ALL_GIT_DIRS)"

exists zu8 || alias zu8='zpwr updateall'
exists zua || alias zua='zpwr updateall; zpwr regen'

function tabNum() {
    echo "${ZPWR_TABSTOP}$1${ZPWR_TABSTOP}${ZPWR_TABSTOP}"
}

function zm() {

    if [[ -n "$1" ]]; then
        z "$1"
        prettyPrint "z $1 => cd $(z -e $1)"
    fi

    ${=ZPWR_REPO_NAME} fordir 'isGitDir && { gco master; gffa; git clean -dff && git reset --hard origin/master && git clean -dff ; gla; zp gitclearcache; }' *
}

function zd() {

    if [[ -n "$1" ]]; then
        z "$1"
        prettyPrint "z $1 => cd $(z -e $1)"
    fi

    ${=ZPWR_REPO_NAME} fordir 'isGitDir && { gco development; gffa; git clean -dff && git reset --hard origin/development && git clean -dff ; gla; zp gitclearcache; }' *
}

function tabNumCmd() {

    local num args

    num=$1
    shift
    args="$@"
    echo "${ZPWR_TABSTOP}$num$args${ZPWR_TABSTOP}${ZPWR_TABSTOP}"
}

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

alias ieee='if [[ '$ZPWR_TABSTOP' ]];then
    '$ZPWR_TABSTOP'
elif [[ '$ZPWR_TABSTOP' ]];then
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

alias wt='while true'$ZPWR_TABSTOP';do
    '$ZPWR_TABSTOP'
done'

alias fkv='for k v in ${(kv)'$ZPWR_TABSTOP'[@]};do
    '$ZPWR_TABSTOP'
done'

alias fe='for i in '$ZPWR_TABSTOP';do
    '$ZPWR_TABSTOP'
done'

alias gta="git tag -fam \"$ZPWR_TABSTOP\" $ZPWR_TABSTOP && git push -f origin --tags"

alias fori="for (( i = 0; i < $ZPWR_TABSTOP; ++i )); do
    $ZPWR_TABSTOP
done"

alias lg="logg $(tabNumCmd 1 tr a-zA-Z)=$(tabNumCmd 1 tr a-zA-Z)"

alias dry="git merge-tree \$(git merge-base FETCH_HEAD master$ZPWR_TABSTOP) master$ZPWR_TABSTOP FETCH_HEAD | less"

alias gsc="git difftool -y -x 'printf \"\\x1b[1;4m\$REMOTE\\x1b[0m\\x0a\";sdiff --expand-tabs -w '\$COLUMNS $ZPWR_TABSTOP | stdinSdiffColorizer.pl 80"

if [[ -d "$ZPWR_INSTALL" ]]; then
    exists zi || alias zi="cd $ZPWR_INSTALL"
fi

if [[ -d "$ZPWR_SCRIPTS" ]]; then
    exists zs || alias zs="cd $ZPWR_SCRIPTS"
fi

if [[ -d "$ZPWR_SCRIPTS_MAC" ]]; then
    exists zsm || alias zsm="cd $ZPWR_SCRIPTS_MAC"
fi

if [[ -d "$ZPWR" ]]; then
    exists zh || alias zh="cd $ZPWR"
fi

if [[ -d "$ZPWR_TMUX" ]]; then
    exists ztm || alias ztm="cd $ZPWR_TMUX"
fi

if [[ -d "$ZPWR_TMUX" ]]; then
    exists zt || alias zt="cd $ZPWR_TEST"
fi

if [[ -d "$ZPWR_TMUX_LOCAL" ]]; then
    exists ztl || alias ztl="cd $ZPWR_TMUX_LOCAL"
fi

if [[ -d "$ZPWR_HIDDEN_DIR_TEMP" ]]; then
    exists zlt || alias zlt="cd $ZPWR_HIDDEN_DIR_TEMP"
fi

if [[ -d "$ZPWR_LOCAL/installer" ]]; then
    exists zli || alias zli="cd $ZPWR_LOCAL/installer"
fi

if [[ -d "$ZPWR_LOCAL" ]]; then
    exists zl || alias zl="cd $ZPWR_LOCAL"
    exists zlr || alias zlr="cd $ZPWR_LOCAL/rcBackups"
fi

if [[ -d "$ZSH/custom/plugins" ]]; then
    exists zpl || alias zpl="cd $ZSH/custom/plugins"
fi

alias numcmd='print $#commands'
#}}}***********************************************************

#{{{                    MARK:zplug
#**************************************************************
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
#}}}***********************************************************

#{{{                    MARK:Initialize Login
#**************************************************************
function banner(){

    bash "$ZPWR_SCRIPTS/macOnly/figletRandomFontOnce.sh" "$(hostname)" |
    ponysay -W 100
}
function bannerLolcat(){
    bash "$ZPWR_SCRIPTS/macOnly/figletRandomFontOnce.sh" "$(hostname)" |
    ponysay -W 100 |
    splitReg.sh -- \
    ---------------------- lolcat
}

function noPonyBanner(){

    eval "$ZPWR_DEFAULT_BANNER"
}

#go to desktop if not root
if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    if [[ "$UID" != "0" ]]; then
         #builtin cd "$D" && clear
        clear
        if type figlet > /dev/null 2>&1; then
            printf "\e[1m"
            if [[ -f "$ZPWR_SCRIPTS/macOnly/figletRandomFontOnce.sh" ]]; then
                if [[ "$ZPWR_INTRO_BANNER" == ponies ]]; then
                    if [[ -f "$ZPWR_SCRIPTS/splitReg.sh" ]];then
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
        if [[ $ZPWR_INTRO_BANNER == ponies ]]; then
            case $distroName in
                (raspbian)
                    test -d "$D" && builtin cd "$D"
                    if type ponysay 1>/dev/null 2>&1; then
                        bash "$ZPWR_SCRIPTS/motd.sh" | ponysay -W 120
                    else
                        bash "$ZPWR_SCRIPTS/motd.sh"
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
                (*suse*|arch|manjaro*)
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
                    bash "$ZPWR_SCRIPTS/motd.sh"
                    ;;
                (ubuntu|debian|kali|linuxmint|parrot)
                    test -d "$D" && builtin cd "$D"
                    noPonyBanner
                    ;;
                (fedora|centos|rhel)
                    test -d "$D" && builtin cd "$D"
                    noPonyBanner
                    ;;
                (*suse*|arch|manjaro*)
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

#set right prompt string during continuation
RPS2='+%N:%i:%^'
# zsh xtrace prompt
export PROMPT4=$'\e[34m%x\t%0N\t%i\t%_\e[0m\t'
#change OMZ history size in memory
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE
#change OMZ history file size

#}}}***********************************************************

#{{{                    MARK:ENV VARS IN ZSH PROMPT %~
#**************************************************************
#if this is a mac or linux
if [[ "$ZPWR_OS_TYPE" == "darwin" ]];then
    if [[ -d "$HOMEBREW_HOME_FORMULAE" ]]; then
        : ~HOMEBREW_HOME_FORMULAE
    fi
fi

if [[ -d "$ZSH" ]]; then
    #oh-my-zsh sets this
    : ~ZSH
fi

if [[ -d "$FORKED_DIR" ]]; then
    : ~FORKED_DIR
fi

if [[ -d "$ZPWR_SCRIPTS" ]]; then
    : ~ZPWR_SCRIPTS
fi

if [[ -d "$ZPWR_HIDDEN_DIR_TEMP" ]]; then
    #shorten to prevail over absolute path in print -p %~
    #must be <= .zpwr/temp
    hash -d ZPWR_TEMP="$ZPWR_HIDDEN_DIR_TEMP"
fi

if [[ -d "$ZPWR_LOCAL" ]]; then
    #shorten to prevail over absolute path in print -p %~
    #must be <= .zpwr
    hash -d ZPWR="$ZPWR_LOCAL"
fi

if [[ -d "$ZPWR_LOCAL" ]]; then
    hash -d ZPWR_LOCAL="$ZPWR_LOCAL"
fi
if [[ -d "$ZPWR_TMUX" ]]; then
    hash -d ZPWR_TMUX="$ZPWR_TMUX"
fi

if [[ -d "$ZPWR" ]]; then
    hash -d ZPWR="$ZPWR"
fi

if [[ -d "$PYSCRIPTS" ]]; then
    : ~PYSCRIPTS
fi

if [[ -d "$PYEXECUTABLES" ]]; then
    : ~PYEXECUTABLES
fi

if [[ -d "$TMUX_HOME" ]]; then
    #shorten to prevail over absolute path in print -p %~
    #must be <= .tmux
    hash -d TMUXH="$TMUX_HOME"
fi

if [[ -d "$ZPWR_DOC" ]]; then
    : ~ZPWR_DOC
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

if [[ -d "$ZPWR_D" ]]; then
    : ~ZPWR_D
fi

if [[ -d "$ZPWR_DL" ]]; then
    : ~ZPWR_DL
fi
#}}}***********************************************************

#{{{                    MARK:OPAM env
#**************************************************************
source "$HOME/.opam/opam-init/init.zsh" &> /dev/null
#}}}***********************************************************

#{{{                    MARK:ColorTest
#**************************************************************
#print 2d array of colors
function colortest(){

    local backgroundColor

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


function 256colors(){

    local i

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


export ZPWR_COMMON_FZF_ELEM
ZPWR_COMMON_FZF_ELEM="--prompt='$ZPWR_FZF_LOGO ' --bind=ctrl-n:page-down,ctrl-p:page-up"

#to include dirs files in search
export FZF_DEFAULT_COMMAND='find * | ag -v ".git/"'
export FZF_DEFAULT_OPTS="$ZPWR_COMMON_FZF_ELEM --reverse --border --height 100%"
local rpm_cmd
local deb_cmd
exists rpm && rpm_cmd="rpm -qi" || rpm_cmd="stat"
exists dpkg && deb_cmd="dpkg -I" || deb_cmd="stat"

export FZF_CTRL_T_COMMAND='find . | ag -v ".git/"'
export FZF_CTRL_T_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh")'"
export FZF_CTRL_T_OPTS_2="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh")'"
export FZF_ENV_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfEnv.sh")'"

export FZF_AG_OPTS="$ZPWR_COMMON_FZF_ELEM -m --delimiter : --nth 3.. --reverse --border --ansi --preview '$(bash "$ZPWR_SCRIPTS/fzfAgOpts.sh")'"

export FZF_GTAGS_OPTS="$ZPWR_COMMON_FZF_ELEM -m --delimiter ' ' --nth 1 --reverse --border --ansi --preview '$(bash "$ZPWR_SCRIPTS/fzfGtagsOpts.sh")'"

export FZF_ENV_OPTS_VERBS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfEnvVerbs.sh")'"

export FZF_SEARCH_GIT_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh")'"

if [[ "$ZPWR_INTRO_BANNER" == ponies ]]; then
    export FZF_COMPLETION_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh")'"
else
    export FZF_COMPLETION_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfPreviewOpts.sh")'"
fi

alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}ff=' "$($ZPWR_FZF '"$ZPWR_COMMON_FZF_ELEM"' --preview "[[ -f {} ]] && '"$COLORIZER_FZF$ZPWR_TABSTOP"'  2>/dev/null | cat -n || stat -- {} | fold -80 | head -500")"'
alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}f=" \$($ZPWR_FZF $FZF_CTRL_T_OPTS)"
alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}z=" | $ZPWR_FZF $FZF_CTRL_T_OPTS "

# killall ;<tab>
function _fzf_complete_killall() {

  _fzf_complete '-m' "$@" < <(
    command ps -e -o command | sed -n '2,$p'
    )
}

# mvim ;<tab>
function _fzf_complete_mvim() {

  _fzf_complete '-m' "$@" < <(
    perl -lne 'do{($_=$1)=~s@$ENV{HOME}@~@;print}if m{^>.(.*)}' ~/.viminfo
    )
}

# vim ;<tab>
function _fzf_complete_vim() {

  _fzf_complete '-m' "$@" < <(
        ZPWR_USE_NEOVIM=false catNvimOrVimInfo | perl -le '@l=reverse<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;print $o if -f $f}if m{^>.(.*)}}'
    )
}

# emacsclient ;<tab>
function _fzf_complete_emacsclient() {

  _fzf_complete '-m' "$@" < <(
        recentfThenNvim | perl -le '@l=reverse<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;print $o if -f $f}if m{^>.(.*)}}'
    )
}

# emacs ;<tab>
function _fzf_complete_emacs() {

  _fzf_complete '-m' "$@" < <(
        recentfThenNvim | perl -le '@l=reverse<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;print $o if -f $f}if m{^>.(.*)}}'
    )
}

# nvim ;<tab>
function _fzf_complete_nvim() {

  _fzf_complete '-m' "$@" < <(
        ZPWR_USE_NEOVIM=true catNvimOrVimInfo | perl -le '@l=reverse<>;@u=do{my %seen;grep{!$seen{$_}++}@l};for(@u){do{$o=$1;($f=$1)=~s@~@$ENV{HOME}@;print $o if -f $f}if m{^>.(.*)}}'
    )
}

# printf ;<tab>
function _fzf_complete_printf() {

  _fzf_complete '-m' "$@" < <(
      declare -xp | perl -pe '$_=~s@export\s(.*)(=.*)@$1@'
    )
}

function _fzf_complete_printf_post() {

    perl -pe '$_="\$$_" if ! m{^\$.*}'
}

# echo $;<tab>
function _fzf_complete_echo() {

  _fzf_complete '-m' "$@" < <(
      declare -x | perl -ne 'print "$1\n" if m{^([^=]+)=(\S+)}'
    )
}

function _fzf_complete_echo_post() {

    perl -pe '$_="\$$_" if ! m{^\$.*}'
}

# alias ;<tab>
function _fzf_complete_alias() {

  _fzf_complete '-m' "$@" < <(
      alias | sed 's@=.*@@'
    )
}

# c ;<tab>
function _fzf_complete_c() {

  FZF_COMPLETION_OPTS=$FZF_CTRL_T_OPTS _fzf_complete '-m' "$@" < <(
    find . -type f |& perl -lpe '$_=~s@$ENV{HOME}@~@'
    )
}

# f ;<tab>
function _fzf_complete_f() {

  FZF_COMPLETION_OPTS=$FZF_CTRL_T_OPTS _fzf_complete '--ansi' "$@" < <(
  find . -type d |& perl -lpe '$_=~s@$ENV{HOME}@~@'
    )
}

# z ;<tab>
function _fzf_complete_z() {

  FZF_COMPLETION_OPTS=$FZF_CTRL_T_OPTS _fzf_complete '--ansi' "$@" < <(
    z -l |& perl -lne 'for (reverse <>){do{($_=$1)=~s@$ENV{HOME}@~@;print} if m{\d+\.*\d+\s*(.*)}}'
    )
}

# r ;<tab>
function _fzf_complete_r() {

    local dir
  FZF_COMPLETION_OPTS=$FZF_CTRL_T_OPTS_2 _fzf_complete '--ansi' "$@" < <(
  dirname $(pwd) |
    perl -e '$s=<>;chomp $s;$c=1;print "$c $s\n";exit if $s eq "/";while( ($s=substr($s,0,rindex($s, "/"))) ne ""){print ++$c." $s\n"};print ++$c." /"'
    )
}

function _fzf_complete_r_post() {

    cut -d ' ' -f1
}

# clearList ;<tab>
function _fzf_complete_clearList() {

    FZF_COMPLETION_OPTS=$FZF_ENV_OPTS _fzf_complete '-m' "$@" < <(
        cat "${ZPWR_ENV}Key.txt" | awk '{print $2}'
    )
}

#git diff ;<tab>
#git diff SHA-1 ;<tab>
function _fzf_complete_git() {

    if ! isGitDir; then
        return 1
    fi

    local lastWord
    lastWord=${${(Az)@}[-1]}

    if git cat-file -t -- $lastWord &>/dev/null; then
        export FZF_GIT_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfGitOpts.sh" $lastWord)'"
    else
        export FZF_GIT_OPTS="$ZPWR_COMMON_FZF_ELEM --preview '$(bash "$ZPWR_SCRIPTS/fzfGitOpts.sh" HEAD)'"
    fi
    FZF_COMPLETION_OPTS="$FZF_GIT_OPTS" \
        _fzf_complete "-m $FZF_DRACULA --ansi" "$@" < <(
        printf "\x1b[${ZPWR_COMMIT_STYLE}m"
        git log --format='%h %s'
        git for-each-ref | perl -lane '$_=substr($F[0],0,7)." $F[2]";print if ! m{^\s*$}'
        printf "\x1b[0m"
    )
}
function _fzf_complete_git_post() {

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

function _cl(){

    local global_aliases

    _alternative \
        'global-aliases:global alias:compadd -Qk galiases' \
        'suffix-aliases:suffix alias:_suffix_alias_files' \
        'aliases:alias:compadd -Qk aliases' \
        'builtins:builtin command:compadd -Qk builtins' \
        'reserved-words:reserved word:compadd -Qk reswords' \
        'functions:shell function:compadd -Qk functions' \
        'parameters:parameters:_parameters' \
        'files:filenames:_path_files -g "* .*"' \
        'commands:commands:compadd -Qk commands'
        #need to escape [ for g[ in PATH, compadd -Q does this
}

function _p(){

    _alternative \
    'process-names:processes:_pgrep' \
    'processes:pids:_pids'
}

local zcmd
exists zshz && zcmd=zshz || zcmd=_z

function _f(){

    local cmd ret
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

function _c(){

    local ret

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

function _ssd(){

    local arguments

    arguments=('*:systemd running services:('"$(systemctl list-units -at service | perl -lane '$_=~s@[\xe2\x97\x8f]@@g;do{$_=~s@\s*(\S+).*@$1@;print} if /service/ and/running/')"')')
    _arguments -s $arguments
}

function _ssu(){

    local arguments

    arguments=('*:systemd non running services:('"$(systemctl list-units -at service | perl -lane '$_=~s@[\xe2\x97\x8f]@@g;do{$_=~s@\s*(\S+).*@$1@;print} if /service/ and!/running/')"')')
    _arguments -s $arguments
}

declare -a subcommands_ary
for k v in ${(kv)ZPWR_VERBS[@]};do
    subcommands_ary+=("$k:$v")
done

function _zpwr(){

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
                _describe -t commands "zpwr verb" subcommands_ary
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

function _tmux_pane_words() {

  local expl i
  local -a w

  # Based on vim-tmuxcomplete's splitwords function.
  # https://github.com/wellle/tmux-complete.vim/blob/master/sh/tmuxcomplete
  _tmux_capture_pane() {
      tmux capture-pane -J -p -S -100 $@ |
      col -b |
      tr -s '[:space:]' '\n' |
      sed 's@\^C\S*@ @g;s@:.*$@@' |
      # remove surrounding non-word characters
      command grep -v -E '(\.\.+|^[0-9.]+[a-zA-Z]+$|^[0-9]*$|^MmKkGgBbqv\.]+$|^[rwxRWXsSdDcCBbPp\.-]+$)' |
      command grep -o -E "[-a-zA-Z0-9.:]+"
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
function _complete_plus_last_command_args() {

    _wanted last-line expl 'last args' compadd -Qa last_command_array
}

function _complete_clipboard(){

    local clipboard_str
    clipboard_str="$(${=ZPWR_PASTE_CMD} 2>/dev/null)"

    if [[ -n "$clipboard_str" ]]; then
    clipboard_array=(${(u)=clipboard_str} ${clipboard_str} "\"${clipboard_str}\"" "'${clipboard_str}'")
    _wanted last-clip expl 'clipboard args' compadd -Qa clipboard_array
    fi
}

function _megacomplete(){

    local -a whitelist_tmux_completion
    whitelist_tmux_completion=(ping ping6 nslookup nmap dig digs host mtr traceroute tracepath whois torsocks proxychains nc netcat curl wget http)


    local -a last_command_array
    local expl cmd ret i continueRegex
    continueRegex='^(\-.*|sudo|env)$'
    i=1
    cmd=${(Q)words[i]}

    while [[ $cmd =~ $continueRegex ]]; do
        cmd=${(Q)words[$((++i))]}
    done

    \_complete && ret=0 || ret=1

    if [[ -n "$TMUX_PANE" ]]; then
        if (( $whitelist_tmux_completion[(I)$cmd] )); then
            _tmux_pane_words
        fi
    fi

    if (( $CURRENT == 1 )); then
        _complete_hist
    fi

    if (( $#words >= 2 )) && [[ $words[-1] == [^[:space:]]## ]]; then
        num=$((HISTCMD-1))
        last_command=$history[$num]
        last_command_array=(${(u)=last_command} ${last_command} "\"${last_command}\"" "( ${last_command}; )" "{ ${last_command}; }" "\$(${last_command})" "\"\$(${last_command})"\" "'${last_command}'")
        if (( $#last_command_array > 0 && ret == 1 )); then
            _complete_plus_last_command_args
        fi

        if (( ret == 1)); then
            _complete_clipboard
        fi
    fi

    return $ret
}

function _r(){

    rdirs=($(dirname $(pwd) | perl -e '$s=<>;chomp $s;$c=1;print "$c:".quotemeta($s)." ";exit if $s eq "/";while( ($s=substr($s,0,rindex($s, "/"))) ne ""){print ++$c.":".quotemeta($s)." "};print ++$c.":/"'))

    _describe -t zdir 'rdirs' rdirs
}

# list of completers to use
zstyle ':completion:*' completer _expand _ignored _megacomplete _approximate _correct
#zstyle ':completion:*:*:*:*:functions' ignored-patterns

compdef _cl clearList
compdef _git-clone gcl
compdef _f f
compdef _c c
compdef _p p
compdef _r r
compdef _ssd ssd
compdef _ssu ssu
compdef _zpwr zpwr zp
compdef _man fm
compdef _tmux _zsh_tmux_plugin_run

if [[ $ZPWR_LEARN != false ]]; then
    compdef _se se see seee redo rsql re searchl searchle searchlee redosql
    # to allow reverse numeric sort and numeric sort
    # as opposed to lexicographic sort
    zstyle ':completion:*:*:(se|see|seee|redo|rsql|re|searchl|searchle|searchlee|z|r):*:*' sort false
fi

exists _kubectl && compdef _kubectl kubectl
exists _express && compdef _express express

#redefine global zsh completion function called at first parameter
#adding global aliases and files
function _command_names(){

    # The option `-e' if given as the first argument says that we should
    # complete only external commands and executable files. This and a
    # `-' as the first argument is then removed from the arguments.

    local args defs ffilt aliasesAry galiasesAry k v

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

    declare -a aliasesAry
    for k v in ${(kv)aliases}; do
        aliasesAry+=($k:"${(q)v}")
    done
    declare -a galiasesAry
    for k v in ${(kv)galiases}; do
        galiasesAry+=($k:"${(q)v}")
    done

    defs=( "$defs[@]"
        'global-aliases:global alias:(('$galiasesAry'))'
        'aliases:alias:(('$aliasesAry'))'
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

function _parameters() {

    # function_body
    local expl pattern tmp pfilt i maxLen ary
    local -a fakes faked
    if compset -P '*:'; then
        _history_modifiers p
        return
    fi

    pattern=(-g \*)
    zparseopts -D -K -E g:=pattern

    fakes=()
    faked=()
    if zstyle -a ":completion:${curcontext}:" fake-parameters tmp; then
    for i in "$tmp[@]"; do
        if [[ "$i" = *:* ]]; then
        faked=( "$faked[@]" "$i" )
        else
        fakes=( "$fakes[@]" "$i" )
        fi
    done
    fi

    zstyle -t ":completion:${curcontext}:parameters" prefix-needed &&
    [[ $PREFIX != [_.]* ]] && \
    pfilt='[^_.]'

    declare -a ary
    maxLen=50
    for i in "${(@M)${(@k)parameters[(R)${pattern[2]}~*local*]}:#${~pfilt}*}"; do
        ary+=($i:"${${(P)i}:0:100}")
    done

    for i in "$fakes[@]"; do
        ary+=($i:"${(P)i:0:100}")
    done

    for i in "${(@)${(@M)faked:#${~pattern[2]}}%%:*}"; do
        ary+=($i:"${(P)i:0:100}")
    done

    _describe -t parameters parameter ary

}

if [[ $ZPWR_INTERATIVE_MENU_SELECT == true ]]; then
    zstyle ':completion:*:*:*:*:*' menu select=0 interactive
else
    zstyle ':completion:*:*:*:*:*' menu select=0
fi
#}}}***********************************************************

#{{{                    MARK:Zpwr verbs
#**************************************************************
autoload -Uz zrecompile

function uncompile(){

    emulate -L zsh
    setopt nullglob

    local dir files sudoFiles file

    files=(
        "$HOME/.zshrc"*
        "$HOME/.zlogout"*
        "$HOME/.zlogin"*
        "$HOME/grc.zsh"
        "$ZSH/oh-my-zsh.sh"
        "$ZSH_COMPDUMP"
        "$ZPWR/.shell_aliases_functions.sh"
        "$ZPWR/.powerlevel9kconfig.sh"
        "$ZPWR_LOCAL/.tokens.sh"
        "$ZPWR_LOCAL/.tokens-post.sh"
        "$ZPWR_ENV_FILE"
        "$ZPWR_SCRIPTS/zpwr.zsh"
        "$ZPWR_SCRIPTS/lib.sh"
        "$ZPWR_SCRIPTS/crossOSCommands.sh"
    )

    sudoFiles=(
        /etc/profile*
        /etc/zprofile*
        /etc/zshrc*
        /etc/zsh/z*
        /etc/profile.env*
    )

    prettyPrint "deleting all compiled configs"

    for file in ${files[@]}; do
        file=${file%*.zwc*}
        if [[ -f "$file.zwc" ]]; then
            echo rm -f "$file.zwc"
            rm -f "$file.zwc"
        elif [[ -f "$file.zwc.old" ]]; then
            echo rm -f "$file.zwc.old"
            rm -f "$file.zwc.old"
        fi
    done

    for file in ${sudoFiles[@]}; do
        file=${file%*.zwc*}
        if [[ -f "$file.zwc" ]]; then
            echo sudo rm "$file".zwc
            sudo rm "$file".zwc
        elif [[ -f "$file.zwc.old" ]]; then
            echo sudo rm "$file.zwc.old"
            sudo rm "$file.zwc.old"
        fi
    done

	for dir in $fpath; do
		if test -d $dir;then
            if [[ -f "$dir.zwc" ]]; then
                echo rm -rf "$dir.zwc"
                rm -rf "$dir.zwc" 2>/dev/null ||
                sudo rm -rf "$dir.zwc"
            fi
        fi
	done
}

function recompile(){

    emulate -L zsh
    setopt nullglob

    local dir files sudoFiles file

    files=(
        "$HOME/.zshrc"*
        "$HOME/.zlogout"*
        "$HOME/.zlogin"*
        "$HOME/grc.zsh"
        "$ZSH/oh-my-zsh.sh"
        "$ZSH_COMPDUMP"
        "$ZPWR/.shell_aliases_functions.sh"
        "$ZPWR/.powerlevel9kconfig.sh"
        "$ZPWR_LOCAL/.tokens.sh"
        "$ZPWR_LOCAL/.tokens-post.sh"
        "$ZPWR_ENV_FILE"
        "$ZPWR_SCRIPTS/zpwr.zsh"
        "$ZPWR_SCRIPTS/lib.sh"
        "$ZPWR_SCRIPTS/crossOSCommands.sh"
    )

    sudoFiles=(
        /etc/profile*
        /etc/zprofile*
        /etc/zshrc*
        /etc/zsh/z*
        /etc/profile.env*
        )

    prettyPrint "recompiling all configs to .zwc for speed"

    for file in ${files[@]}; do
        if [[ -f "$file" ]]; then
            zrecompile -p "$file"
        fi
    done
    for file in ${sudoFiles[@]}; do
        if [[ -f "$file" ]]; then
            sudo zsh -c "autoload zrecompile; zrecompile -p $file"
        fi
    done

	for dir in $fpath; do
		if test -d $dir;then
            files=( $dir/*(N) )
            if (($#files)); then
                zrecompile -p $dir.zwc $files 2> /dev/null ||
                sudo zsh -c "autoload zrecompile; zrecompile -p $dir.zwc $files"
            fi
        fi
	done
}

function zshrcsearch(){

    if [[ -z "$1" ]]; then
        zsh -ilvx -c false &> $ZPWR_TEMPFILE4
        less $ZPWR_TEMPFILE4
    else
        zsh -ilvx -c false &> $ZPWR_TEMPFILE4
        ag --color --numbers -C 5 -i -- "$@" $ZPWR_TEMPFILE4 | less
    fi
}

function zpwrLineCount(){

    if [[ -z "$2" ]]; then
        loggErr "usage zpwrLineCount <cmd> <search>"
        return 1
    fi

    eval "$1" | command grep -i -E "$2" | wc -l | tr -d ' '

}

function zpwrEnvCounts(){

    prettyPrint "ENV COUNTS"
    echo "Commands: ${#commands}"
    echo "Functions: ${#functions}"
    echo "Completions: ${#_comps}"
    echo "Functions (not completions): "$(( $#functions - $#_comps ))
    echo "Builtins: ${#builtins}"
    echo "Reserved words: ${#reswords}"
    echo "Parameters: ${#parameters}"
    echo "Environment Variables: "${#parameters[(R)scalar-export]}
    echo "Local Parameters: "${#parameters[(R)^scalar-export]}
    echo "Aliases: ${#aliases}"
    echo "Global Aliases: ${#galiases}"
    echo "Git Aliases: "${#aliases[(R)*git*]}
    echo "Cd Aliases: "${#aliases[(R)*cd*]}
    echo "Suffix Aliases: ${#saliases}"
    prettyPrint "ZPWR COUNTS"
    echo "ZPWR functions: "${#functions[(I)(#i)*zpwr*]}
    echo "ZPWR aliases: "${#aliases[(R)(#i)*zpwr*]}
    echo "ZPWR verbs: ${#ZPWR_VERBS}"
    echo "ZPWR environment variables: " ${#${(M)${(k)parameters[(R)scalar-export]}%ZPWR*}}
}

function zarg(){

    if [[ -z "$2" ]]; then
        loggErr "need two args, escaped glob and cmd with {}"
        return 1
    fi

    local first

    first="$1"
    shift

    echo eval "zargs -i{} -- '$first' -- '$*'"
    eval "zargs -i{} -- $first -- $*"
}

if exists jenv;then
    export PATH="$HOME/.jenv/shims:$PATH"
fi

function zpwrAllUpdates(){
    (

    builtin cd "$ZPWR" &&
        git pull &&
        {
            if [[ -f "$ZPWR_BANNER_SCRIPT" ]]; then
                bash "$ZPWR_BANNER_SCRIPT"
            fi
        } &&
        linkConf
    )
   zpwr updatedeps
   zpwr regen
   zpwr update
}

function zpwrForAllGitDirs(){

    if [[ -z "$1" ]]; then
        loggErr "zpwrForGitDir <cmd>"
        return 1
    fi

    if [[ ! -s "$ZPWR_ALL_GIT_DIRS" ]]; then
        prettyPrint "must regen $ZPWR_ALL_GIT_DIRS first."
        regenAllGitRepos regen
    fi

    ${=ZPWR_REPO_NAME} fordir $1 \
        $(cat $ZPWR_ALL_GIT_DIRS)
}

function zpwrUpdateAllGitDirs(){

    if [[ ! -s "$ZPWR_ALL_GIT_DIRS" ]]; then
        prettyPrint "must regen $ZPWR_ALL_GIT_DIRS because empty."
        regenAllGitRepos regen
    fi

    ${=ZPWR_REPO_NAME} fordir \
    'git fetch --all --prune;git clean -dff && git reset --hard HEAD && git clean -dff;git pull --all;zp gitclearcache' \
        $(cat $ZPWR_ALL_GIT_DIRS)
}

function zpwrVerbs(){

    if [[ ! -s "${ZPWR_ENV}Key.txt" ]]; then
        logg "regenerating keys for $ZPWR_ENV"
        regenSearchEnv
    fi
    if [[ ! -s "${ZPWR_ENV}Value.txt" ]]; then
        logg "regenerating values for $ZPWR_ENV"
        regenSearchEnv
    fi

    local len sep k v i width
    sep=" "
    width=25
    for k in ${(ko)ZPWR_VERBS[@]};do
        len=$#k
        printf $k
        spaces=$(( width - len ))
        for (( i = 0; i < $spaces; ++i )); do
           printf $sep
        done
        printf "${ZPWR_VERBS[$k]}\n"
    done |
        eval "$ZPWR_FZF -m --preview-window=down:25 --border $FZF_ENV_OPTS_VERBS" |
        perl -e '@a=<>;$c=$#a;for (@a){print "zpwr $1"if m{^(\S+)\s+};print ";" if $c--;print " "}'
}

function numZpwrVerbs(){

    #the size of hashmap
    echo $#ZPWR_VERBS
}

function zpwrEnvVars(){

    env | command grep -i "^$ZPWR_REPO_NAME" | fzf
}

function gtagsIntoFzf(){

    #gtags referenced to $HOME
    (
        builtin cd "$HOME"
        global -x '.*' |
        eval "$ZPWR_FZF $FZF_GTAGS_OPTS" |
    perl -pe 's@^(\S*?)\s+(\d+)\s+(\S*)\s+.*@+$2 "'"$HOME/"'$3"@;s@\n@ @g'
    )
}

function getGtagsEdit(){

    local firstdir editor file mywords

    editor="$1"
    BUFFER=$(gtagsIntoFzf)

    if [[ -n "$BUFFER" ]]; then
        mywords=(${(z)BUFFER})
        firstdir=${mywords[2]:h}
        loggDebug "builtin cd $firstdir\""
        #:h takes aways last "
        BUFFER="builtin cd $firstdir\"; $editor $BUFFER; clearList; isGitDir && git diff HEAD"
        loggDebug "$BUFFER"
        print -zr -- "$BUFFER"
    else
        return
    fi

}

function getGtags(){

    local firstdir editor file mywords

    editor="$1"
    BUFFER=$(gtagsIntoFzf)

    if [[ -z "$BUFFER" ]]; then
        return
    fi
    mywords=(${(z)BUFFER})
    firstdir=${mywords[2]:h}
    loggDebug "builtin cd $firstdir\""
    #:h takes aways last "
    BUFFER="builtin cd $firstdir\"; $editor $BUFFER; clearList; isGitDir && git diff HEAD"
    loggDebug "$BUFFER"

    print -sr -- "$BUFFER"
    eval "$BUFFER"
}


function emacsZpwrGtags(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    getGtags "$ZPWR_EMACS_CLIENT"
}

function vimZpwrGtags(){

    getGtags "$EDITOR"
}

function emacsZpwrGtagsEdit(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    getGtagsEdit "$ZPWR_EMACS_CLIENT"
}

function vimZpwrGtagsEdit(){

    getGtagsEdit "$EDITOR"
}

function emacsZpwrCtags(){

    if ! exists emacs; then
        logErr "emacs must exist"
        return 1
    fi

    cat "$ZPWR_SCRIPTS/tags" | fzf
}

function vimZpwrCtags(){

    cat "$ZPWR_SCRIPTS/tags" | fzf
}

function revealRecurse(){

    for i in **/*(/); do
        ( builtin cd $i && reveal 2>/dev/null; )
    done
}

function evalTester(){

    echo eval fordir ${(q)*}
}

function regenHistory() {

    prettyPrint "Regen $HISTFILE"
    (
        builtin cd "$HOME"
        command mv "$HISTFILE" .zsh_history_bad
        command strings .zsh_history_bad > "$HISTFILE"
        builtin fc -R ."$HISTFILE"
        command rm -rf .zsh_history_bad
    )
}

function zpwrBackupHistfile(){

    prettyPrint "Save backup of $HISTFILE"
    (
        builtin cd "$HOME"
        builtin fc -W "$HISTFILE"
        bash "$ZPWR_SCRIPTS/backupConfig.sh"
    )
}

function zpwrRestoreHistfile(){

    prettyPrint "Restore backup of $HISTFILE"
    (
        builtin cd "$HOME"
        command rm "$HISTFILE"
        prettyPrint command cp $ZPWR_LOCAL/rcBackups/.$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT-history*(.DOL[1]) "$HISTFILE"
        command cp $ZPWR_LOCAL/rcBackups/.$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT-history*(.DOL[1]) "$HISTFILE"
        builtin fc -R "$HISTFILE"
    )
}
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
                command grep "$ZPWR_GITHUB_ACCOUNT" > "$ZPWR_TEMPFILE"

            case $distroName in
                (debian|raspbian|kali|ubuntu|parrot)
                    out="$(sudo env grep -a 'Accepted publickey for' /var/log/auth.log* | command grep -av sudo | tail -1)"
                    key="$(ssh-keygen -l -f "$ZPWR_TEMPFILE" | awk '{print $2}')"
                    ;;
                (centos|rhel)
                    out="$(tail /var/log/messages)"
                    ;;
                (*suse*|arch|manjaro*)
                    out="$(sudo journalctl -u sshd.service | command grep 'Accepted publickey' | tail -1)"
                    key="$(ssh-keygen -l -f "$ZPWR_TEMPFILE" | awk '{print $2}' | awk -F: '{print $2}')"
                    ;;
                (fedora)
                    out="$(sudo cat /var/log/secure | command grep -a 'Accepted publickey' | tail -1)"
                    key="$(ssh-keygen -l -f "$ZPWR_TEMPFILE" | awk '{print $2}' | awk -F: '{print $2}')"
                    ;;
                (*) :
                    ;;
            esac
            logg "searching for $key in $out"
            [[ "$out" == *"$key"* ]] && mobile=false

            command rm "$ZPWR_TEMPFILE"
            if [[ $mobile == "false" ]]; then
                logg "found $key so desktop"
                num_con="$(command ps -ef |command grep -a 'sshd' | command grep -a pts | command grep -av grep | wc -l)"
                logg "num connections: $num_con"
                if (( $num_con == 1 )); then
                    logg "no tmux clients"
                    {
                        out="$(tmux ls 2>&1)"
                        ret=$?
                        logg "tmux ls = ret: $ret, out: $out"
                        if [[ $ret == 0 ]]; then
                            logg "attaching to existing"
                            logg command tmux attach
                            command tmux attach
                            ret=$?
                            logg "tmux attach = ret: $ret"
                        else
                            logg "creating new session"
                            logg tmux new-session \; \
                            source-file "$ZPWR_TMUX/control-window"
                            tmux new-session \; \
                            source-file "$ZPWR_TMUX/control-window"
                        fi
                    } &> /dev/null
                else
                    logg "clients so NO"
                    logg command tmux attach
                    command tmux attach
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

if exists zunit; then
    alias tru="( builtin cd $ZPWR && zunit --verbose $ZPWR/tests/*.zsh )"
fi

# Example usage: zmv -W '*.pl' '*.perl'
autoload zmv
alias mmv='noglob zmv -W'

exists thefuck && eval $(thefuck --alias)

#force alias z to zshz not zypper on suse
alias z="$zcmd 2>&1"
autoload zargs
###}}}***********************************************************

#{{{                    MARK:Groovy
#**************************************************************
unset GROOVY_HOME # when set this messes up classpath

# override plugin def
function magic-enter () {

  # If commands are not already set, use the defaults
  [ -z "$MAGIC_ENTER_GIT_COMMAND" ] && MAGIC_ENTER_GIT_COMMAND="git status -u ."
  [ -z "$MAGIC_ENTER_OTHER_COMMAND" ] && MAGIC_ENTER_OTHER_COMMAND="ls -lh ."

  if [[ -z $BUFFER ]]; then
    echo ""
    if git rev-parse --is-inside-work-tree &>/dev/null; then
      eval "$MAGIC_ENTER_GIT_COMMAND"
    else
      eval "$MAGIC_ENTER_OTHER_COMMAND"
    fi
    # add extra NL to see last file
    echo

    zle redisplay
  else
    zle accept-line
  fi
}
#}}}***********************************************************

#{{{                    MARK:FPATH AND PATH REMOVE DUPLICATES
#**************************************************************
# duplicates slow down searching and
# mess up OMZ fpath check if should remove zcompdump
fpath=(${(u)fpath})
path=(${(u)path})
#}}}***********************************************************

#{{{                    MARK:zdharma post init
#**************************************************************
ZPWR_CONVEY_NAME="TTY:${TTY} PID:${$} PWD:${PWD} DATE:$(date)"
zc-rename $ZPWR_CONVEY_NAME &>/dev/null
#}}}***********************************************************

#{{{                    MARK:Finish
#**************************************************************
#source .tokens.sh to override with user functions
test -f "$ZPWR_TOKEN_POST" &&
    source "$ZPWR_TOKEN_POST" ||
    touch "$ZPWR_TOKEN_POST"

endTimestamp=$(perl -MTime::HiRes -e 'print Time::HiRes::time')
startupTimeMs=$(printf "%.3f" $((endTimestamp - startTimestamp)))
logg "zsh startup took $startupTimeMs seconds"

if [[ $ZPWR_PROFILING == true ]]; then
    zprof
fi
#}}}***********************************************************
