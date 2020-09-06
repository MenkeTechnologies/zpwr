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

#{{{                    MARK:ZPWR source env file which sources lib
#**************************************************************
test -z $ZPWR && export ZPWR="$HOME/.zpwr"
export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
export ZPWR_RE_ENV_FILE="$ZPWR/.zpwr_re_env.sh"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"

source "$ZPWR_ENV_FILE" || {
    echo "where is ZPWR_ENV_FILE '$ZPWR_ENV_FILE'" >&2
    return 1
}

if [[ ! -d "$ZPWR_HIDDEN_DIR_TEMP" ]]; then
    mkdir -p "$ZPWR_HIDDEN_DIR_TEMP"
fi

if [[ $ZPWR_PLUGIN_MANAGER == zinit ]]; then
    if [[ ! -d $ZPWR_PLUGIN_MANAGER_HOME ]]; then
        prettyPrintBox "Installing zinit"
        mkdir "$ZPWR_PLUGIN_MANAGER_HOME"
        git clone https://github.com/zdharma/zinit.git "$ZPWR_PLUGIN_MANAGER_HOME/bin"
    fi
fi

# map to hold global data between scripts
declare -A ZPWR_VARS
# map to store each zpwr verb, key is the verbname, value is cmd=description
declare -A ZPWR_VERBS
# get zpwr verbs
source "$ZPWR_SCRIPTS/zpwr.zsh"
#}}}***********************************************************

#{{{                    MARK:non ZPWR Exports
#**************************************************************
export LC_ALL="en_US.UTF-8"
unalias ag &> /dev/null
#stop delay when entering normal mode
export KEYTIMEOUT=1
export CHEATCOLORS=true

export SHELL="$(which zsh)"

# stderr colorization filter
# color2

# set right prompt string during continuation
RPS2='+%N:%i:%^'
#}}}***********************************************************

#{{{                    MARK:OMZ env vars
#**************************************************************
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)

ZSH_DISABLE_COMPFIX=true

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
#}}}***********************************************************

#{{{                    MARK:OMZ plugins
#**************************************************************

ZPWR_GH_PLUGINS=(
    MenkeTechnologies/fasd-simple
    wfxr/forgit
    MenkeTechnologies/fzf
    MenkeTechnologies/fzf-tab
    MenkeTechnologies/gh_reveal
    zdharma/history-search-multi-word
    MenkeTechnologies/jhipster-oh-my-zsh-plugin
    MenkeTechnologies/revolver
    zdharma/zbrowse
    zdharma/zconvey
    hlissner/zsh-autopair
    zsh-users/zsh-autosuggestions
    MenkeTechnologies/zsh-better-npm-completion
    zsh-users/zsh-completions
    zsh-users/zsh-history-substring-search
    MenkeTechnologies/zsh-cpan-completion
    akarzim/zsh-docker-aliases
    MenkeTechnologies/zsh-expand
    MenkeTechnologies/zsh-gem-completion
    MenkeTechnologies/zsh-git-acp
    MenkeTechnologies/zsh-more-completions
    MenkeTechnologies/zsh-nginx
    MenkeTechnologies/zsh-pip-description-completion
    MenkeTechnologies/zsh-sed-sub
    zdharma/fast-syntax-highlighting
    zdharma/zsh-tig-plugin
    MenkeTechnologies/zsh-travis
    zdharma/zsh-unique-id
    MenkeTechnologies/zsh-very-colorful-manuals
    MenkeTechnologies/zsh-xcode-completions
    MenkeTechnologies/zsh-z
    MenkeTechnologies/powerlevel9k
    zdharma/zui
    MenkeTechnologies/zunit
    zdharma/zzcomplete
)

ZPWR_OMZ_PLUGINS=(
    ruby
    rake
    yarn
    ng
    coffee
    node
    npm
    perl
    git
    github
    ant
    mvn
    django
    python
    golang
    man
    nmap
    postgres
    colorize
    sudo
    rsync
    vundle
    meteor
    gulp
    grunt
    glassfish
    tig
    tmux
    magic-enter
    gradle
)

ZPWR_OMZ_COMPS=(
    scala
    lein
    spring
    redis-cli
    rust
    cargo
    rustup
    fd
)


if exists docker; then
    ZPWR_OMZ_COMPS+=(docker)
    ZPWR_GH_PLUGINS+=(akarzim/zsh-docker-aliases)
fi

if exists docker-compose; then
    ZPWR_OMZ_PLUGINS+=(docker-compose)
fi

exists kubectl && ZPWR_GH_PLUGINS+=(MenkeTechnologies/kubectl-aliases nnao45/zsh-kubectl-completion)

exists systemctl && ZPWR_OMZ_PLUGINS+=(systemd)
exists subl && ZPWR_OMZ_PLUGINS+=(sublime)

exists rails && ZPWR_OMZ_PLUGINS+=(rails)

if [[ $ZPWR_LEARN != false ]]; then
    ZPWR_GH_PLUGINS+=(MenkeTechnologies/zsh-learn)
fi

#}}}***********************************************************

#{{{                    MARK:forgit https://github.com/wfxr/forgit
#**************************************************************
export FORGIT_NO_ALIASES=true
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
# colors for common commands
test -s "$HOME/grc.zsh" && source "$HOME/grc.zsh"
#}}}***********************************************************

#{{{                    MARK:source tokens pre OMZ
#**************************************************************
if test -f "$ZPWR_TOKEN_PRE"; then
    if ! source "$ZPWR_TOKEN_PRE"; then
        loggErr "could not source ZPWR_TOKEN_PRE '$ZPWR_TOKEN_PRE'"
    fi
else
    touch "$ZPWR_TOKEN_PRE"
fi

source "$ZPWR_RE_ENV_FILE" || {
    echo "where is ZPWR_RE_ENV_FILE$ZPWR_RE_ENV_FILE" >&2
}

# command for exa (replaces ls)
if [[ $ZPWR_EXA_EXTENDED == true ]]; then
    export ZPWR_EXA_COMMAND='command exa --git -il -F -H --extended --color-scale -g -a --colour=always'
else
    export ZPWR_EXA_COMMAND='command exa --git -il -F -H --color-scale -g -a --colour=always'
fi
#}}}***********************************************************

#{{{                    MARK:post first token
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
    # profiling startup
    zmodload zsh/zprof
fi

[[ -f "$HOME/.tmux/powerline/bindings/zsh/powerline.zsh" ]] &&
source "$HOME/.tmux/powerline/bindings/zsh/powerline.zsh"

if [[ $ZPWR_PROMPT == POWERLEVEL ]]; then
    if test -s "$ZPWR_PROMPT_FILE";then
        if [[ $ZPWR_PLUGIN_MANAGER == oh-my-zsh ]]; then
            if [[ -d "$HOME/.oh-my-zsh/custom/themes/powerlevel9k" ]]; then
                source "$ZPWR_PROMPT_FILE"
            else
                ZSH_THEME=$ZPWR_DEFAULT_OMZ_THEME
            fi
        else
            source "$ZPWR_PROMPT_FILE"
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

#{{{                    MARK:OMZ conditional Plugins
#**************************************************************

if [[ $ZPWR_DEBUG == true ]]; then
    echo "______pre fpath size '$#fpath'" and '$fpath'"'_____ = ""'$fpath'" >> $ZPWR_LOGFILE
fi

# add ZPWR autoload dirs to fpath
fpath=($ZPWR_AUTOLOAD_LINUX $ZPWR_AUTOLOAD_DARWIN $ZPWR_AUTOLOAD_SYSTEMCTL $ZPWR_AUTOLOAD_COMMON $ZPWR_COMPS $fpath)

exists bat && export BAT_THEME="$ZPWR_BAT_THEME"

ZPWR_PARENT_PROCESS="$(command ps -p $PPID | perl -lane '$"=" ";print "@F[3..$#F]" if m{^\s*\d+.*}')"
#}}}***********************************************************
#
#{{{                    MARK:autoload
#**************************************************************
autoload -z $ZPWR_AUTOLOAD/common/*(.:t)
autoload -Uz zrecompile zm zargs

if [[ "$ZPWR_OS_TYPE" == "darwin" ]];then
    plugins+=(zsh-xcode-completions brew osx pod)
    autoload -z $ZPWR_AUTOLOAD_DARWIN/*(.:t)
    # determine if this terminal was started in IDE
    #[[ "$ZPWR_PARENT_PROCESS" == *(#i)(login|tmux|vim|alacritty)* ]] && plugins+=(tmux)
elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then

    autoload -z $ZPWR_AUTOLOAD_LINUX/*(.:t)
    zpwrLinuxPlugins
else
    # unix
    autoload -z $ZPWR_AUTOLOAD_LINUX/*(.:t)
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

# compsys cache file
export ZSH_COMPDUMP="$HOME/.zcompdump-$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT"

function expand-or-complete-with-dots() {
    print -Pn "%F{red}…%f"
    zle expand-or-complete
    zle redisplay
}

zle -N expand-or-complete-with-dots

bindkey -M vicmd '^I' expand-or-complete-with-dots
bindkey -M viins '^I' expand-or-complete-with-dots

if [[ $ZPWR_DEBUG == true ]]; then
    echo "pre: $fpath" >> "$ZPWR_LOGFILE"
fi

# prevent zinit from putting system fpath after zinit completions

source "$HOME/.zinit/bin/zinit.zsh"

for p in $ZPWR_GH_PLUGINS; do
    zinit load $p
done

for p in $ZPWR_OMZ_COMPS; do
    zinit ice svn for OMZ::plugins/$p pick=null
done
for p in $ZPWR_OMZ_PLUGINS; do
    zinit ice svn for OMZ::plugins/$p pick=null
    zinit snippet OMZ::plugins/$p 2>/dev/null
done

if [[ $ZSH_DISABLE_COMPFIX != true ]]; then
  # Load only from secure directories
  compinit -i -C -d "${ZSH_COMPDUMP}"
else
  # If the user wants it, load from all found directories
  compinit -u -C -d "${ZSH_COMPDUMP}"
fi

if [[ $ZPWR_DEBUG == true ]]; then
    echo "\npost: $fpath" >> "$ZPWR_LOGFILE"
fi
# You may need to manually set your language environment
# has all aliases and functions common to bourne like shells
_alias_file="$ZPWR/.shell_aliases_functions.sh"
test -s "$_alias_file" && source "$_alias_file"
alias -r > "$ZPWR_LOCAL/.common_aliases"
#}}}***********************************************************

#{{{                    MARK:Override OMZ config
#**************************************************************
local recachedCompsys lines
recachedCompsys=false
# reload compsys cache if file is stale for 1 week

for dump in ~/.zcompdump*(N.mh+168); do
    zpwrStaleZcompdump
    break
done

if ! (( $+_comps[z] )); then
    zpwrRetryZcompdump
else
    loggDebug "found '${_comps[z]}' for z so used cached '$ZSH_COMPDUMP'"
    loggDebug "_comps size: '$#_comps' fpath length: '$#fpath' path length: '$#path'"
fi

# change OMZ history size in memory
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE
# change OMZ history file size
function magic-enter () {

  # If commands are not already set, use the defaults
    test -z "$MAGIC_ENTER_GIT_COMMAND" && MAGIC_ENTER_GIT_COMMAND="git status -u ."
    test -z "$MAGIC_ENTER_OTHER_COMMAND" && MAGIC_ENTER_OTHER_COMMAND="ls -lh ."

    if [[ -z $BUFFER ]]; then
        echo
        if isGitDir; then
            eval "$MAGIC_ENTER_GIT_COMMAND"
        else
            eval "$MAGIC_ENTER_OTHER_COMMAND"
        fi
        # add extra NL to see last file
        echo
        zle .redisplay
    else
        # use custom accept line
        zle accept-line
    fi
}
#}}}***********************************************************

#{{{                    MARK:zdharma post init
#**************************************************************
path+=($ZCONVEY_REPO_DIR/cmds)
ZPWR_CONVEY_NAME="TTY:${TTY} PID:${$} PWD:${PWD} DATE:$(date)"
zc-rename $ZPWR_CONVEY_NAME &>/dev/null
#}}}***********************************************************

#{{{                    MARK:Zpwr verbs
#**************************************************************
if exists jenv;then
    export PATH="$HOME/.jenv/shims:$PATH"
fi
#}}}***********************************************************

#{{{                    MARK:ZLE bindkey
#**************************************************************

autoload -Uz select-bracketed select-quoted bracketed-paste-magic
zle -N select-bracketed
zle -N select-quoted
zle -N zle-keymap-select
zle -N bracketed-paste bracketed-paste-magic
zle -N expandAliasAccept
zle -N rationalize-dot
zle -N downTen
zle -N self-insert
zle -N lastWordDouble
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
zle -N zpwrVimAllWidget
zle -N zpwrVimAllWidgetAccept
zle -N zpwrVerbsWidget
zle -N zpwrVerbsWidgetAccept
zle -N updater
zle -N up8widget
zle -N sub
zle -N dbz
zle -N sshRegain
zle -N tutsUpdate
zle -N subLine
zle -N changeQuotes
zle -N alternateQuotes
zle -N clipboard
zle -N EOLorNextTabStop

#vim mode for zle
bindkey -v

bindkey -M vicmd '^G' what-cursor-position
bindkey -M viins '^G' what-cursor-position
bindkey -M viins '^[^M' self-insert-unmeta
bindkey -M viins '^P' EOLorNextTabStop
bindkey -M vicmd '^P' EOLorNextTabStop
bindkey -M vicmd G end-of-buffer-or-history

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

bindkey -M viins "\e^P" up8widget
bindkey -M vicmd "\e^P" up8widget

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

bindkey -M viins '^V^V' zpwrVimAllWidgetAccept
bindkey -M vicmd '^V^V' zpwrVimAllWidgetAccept

bindkey -M viins '^Vm' zpwrVimAllWidget
bindkey -M vicmd '^Vm' zpwrVimAllWidget

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

bindkey -M viins '^V ' vimFzf
bindkey -M vicmd '^V ' vimFzf

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

bindkey '\e[1;2D' sub
bindkey '\e^f' sub

#bound to escape spacebar
bindkey -M vicmd '\e ' sshRegain
bindkey -M viins '\e ' sshRegain

#F1 key
bindkey '\eOP' up8widget
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


if [[ ! -z "$TMUX" ]] && [[ -f $ZPWR_LOCAL/.display.txt ]]; then
    #export DISPLAY=$(cat $ZPWR_LOCAL/.display.txt) ||
    :
else
    :
    #echo $DISPLAY > $ZPWR_LOCAL/.display.txt
fi

bindkey -M viins . rationalize-dot

bindkey -M listscroll q send-break
bindkey -M listscroll f complete-word

# bind shift tab to reverse menucomplete, opposite of tab
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

# bind function arrow keys in menuselect mode
bindkey -M menuselect '\e[5~' vi-backward-word
bindkey -M menuselect '\e[6~' vi-forward-word
bindkey -M menuselect '\e[1~' vi-beginning-of-line
bindkey -M menuselect '\e[4~' vi-end-of-line

# incremental fuzzy filter on keypress like emacs helm and fzf

if [[ $ZPWR_INTERACTIVE_MENU_SELECT == true ]]; then
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
# search through options
bindkey -M menuselect '?' history-incremental-search-backward

# for interactive menuselect
bindkey -M menuselect '^V' vi-insert


bindkey -M menuselect '^M' .accept-line
bindkey -M menuselect '^@' accept-line
bindkey -M menuselect '^S' reverse-menu-complete

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

if exists history-substring-search-down history-substring-search-up; then

    if [[ -n "$terminfo[kcuu1]" ]]; then
        bindkey -M viins "$terminfo[kcuu1]" history-substring-search-up
        bindkey -M viins '^[[A' history-substring-search-up
    fi
    if [[ -n "$terminfo[kcud1]" ]]; then
        bindkey -M viins "$terminfo[kcud1]" history-substring-search-down
        bindkey -M viins '^[[B' history-substring-search-down
    fi

fi
#}}}***********************************************************

#{{{                    MARK:ZLE hooks
#**************************************************************
#Filter stderr through shell scripts
#having this setting messes with tmux resurrect so will enable it on individual basis
#exec 2> >("$ZPWR_SCRIPTS"/redText.sh)

function my-accept-line () {

    local pane commandsThatModifyFiles regex mywords line command cmd out aliases

    if ! [[ $(zpwrExpandAliases $BUFFER 2>/dev/null) = zc* ]]; then
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
        regex="^sudo[ ]+[-]*[[:alpha:]]*[ ]*(env)?[ ]+$command .*\$|^$command .*\$"
        if [[ "$BUFFER" =~ $regex ]]; then
            ZPWR_WILL_CLEAR=true
        fi
    done
    mywords=("${(z)BUFFER}")

    if [[ ${mywords[1]} == 'sudo' ]]; then
        cmd=${mywords[2]}

        # sudo =iftop fails so remove =
        cmd=${cmd#=}
        out="$(alias -- $cmd)"
        if [[ "$out" == *grc* ]]; then
            cmdlet="$(eval echo "${out#*=}")"
            print -srn -- "$BUFFER"
            BUFFER="sudo -E $cmdlet $mywords[3,$]"
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
                # function
                BUFFER="\\$mywords"
            else
                # non global alias
                print "$line" | grep -F "'" && \
                    BUFFER="${line:1:-1} $mywords[2,$]" ||
                    BUFFER="$line $mywords[2,$]"
            fi
        fi
    fi

    set +x
    zle .accept-line
    # leaky $ZPWR_DEFAULT_OMZ_THEME theme so reset ANSI escape sequences
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
    # leaky $ZPWR_DEFAULT_OMZ_THEME theme so reset ANSI escape sequences
    printf "\x1b[0m"
    #lose normal mode
    if [[ $ZPWR_PROMPT != POWERLEVEL ]]; then
        RPROMPT="%B%F{blue}$$ %b%F{blue}$-"
    fi
}

# RPROMPT shows vim modes (insert vs normal)
if [[ $ZPWR_PROMPT != POWERLEVEL ]]; then
    function zle-keymap-select() {
        RPROMPT="%B%F{blue}$$ %b%F{blue}$-"
        [[ $KEYMAP = vicmd ]] && RPROMPT="%B%F{red}-<<%b%F{blue}NORMAL%B%F{red}>>- %B%F{blue}$RPROMPT"
        () { return $__prompt_status }
        zle reset-prompt
    }
fi
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

# dot files included in regular globs
setopt glob_dots

# no glob in all globs then error
setopt csh_null_glob

setopt no_list_beep

# > file creates file
# NOT compatible with $(<<EOF) used in comp caches
setopt no_sh_null_cmd

# allow unquoted globs to pass through
setopt no_bad_pattern

# globs sorted numerically
setopt numeric_glob_sort

# global substitution is case insensitive
setopt nocaseglob

# filename completion after =
setopt magic_equal_subst

if [[ $ZPWR_AUTO_SELECT == true ]]; then
    #auto select first item of menu completion
    setopt menu_complete
fi

#array expandsion include prefix
setopt rc_expand_param

# display octal and hex like C
setopt cbases

# any failing command in pipeline fails entire pipeline
setopt pipefail 2>/dev/null

# search PATH for zsh <script>
setopt pathscript

# more compact menu completion
setopt list_packed

# increase max size for directory stack
export DIRSTACKSIZE=20

# so we can bind ^S and ^Q
setopt no_flow_control
stty stop undef
stty start undef
#}}}***********************************************************

#{{{                    MARK:Completions
#**************************************************************


# do not include pwd after ../
zstyle ':completion:*' ignore-parents parent pwd

# remove slash if argument is a directory
zstyle ':completion:*' squeeze-slashes true
# Enable completion caching, use rehash to clear
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

# separate files and dirs in _files completion
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

# using tag name as group name so ordering the groups by tag name here
zstyle ':completion:*' group-order commands aliases global-aliases suffix-aliases functions builtins reserved-words parameters options argument-rest globbed-files files local-directories hosts commits heads commit-tags heads-local heads-remote recent-branches tags commit-objects remote-branch-names-noprefix fasd-file fasd zdir tmux contexts last-ten

zstyle ':completion:*:*:(z|zshz|zm|zd|zg):*:*' group-order zdir options argument-rest globbed-files files fasd-file fasd last-ten

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

# parse out host aliases and hostnames from ssh config
if [[ -r "$HOME/.ssh/config" ]]; then
    h=(${${${(@M)${(f)"$(< ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
    h=($h ${${${(@M)${(f)"$(< ~/.ssh/config)"}:#Hostname *}#Hostname }:#*[*?]*})
fi

if (( $#h > 0 )); then
    zstyle ':completion:*:ssh:*' hosts $h
    zstyle ':completion:*:slogin:*' hosts $h
fi

if [[ $ZPWR_COLORS == true ]]; then

    zstyle ':completion:*' list-colors 'ma=37;1;4;44'
    # main option for menu selection colors
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

    # git commit colors
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

     # separate colors for sections of manual pages
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

    zstyle ':completion:*:cpan-module' list-colors '=(#b)(*)=1;30=37;46'
    zstyle ':completion:*:remote-pip' list-colors '=(#b)(*)=1;30=37;46'
    zstyle ':completion:*:remote-gem' list-colors '=(#b)(*)=1;30=37;46'
    # pgrep and kill
    zstyle ':completion:*:processes' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:processes-names' list-colors '=(#b)(*)=1;30=1;37;43'
    zstyle ':completion:*:pname' list-colors '=(#b)(*)=1;30=1;37;43'

   # separate colors for git commans types
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
        # homebrew tags
        zstyle ':completion::complete:brew-cask:argument-rest:list' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:formulae' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:*:brew-cask:*:list' list-colors '=(#b)(*)=1;30=1;36;44'
        zstyle ':completion:*:common-commands' list-colors '=(#b)(*)=1;30=1;37;45'
        zstyle ':completion:*:all-commands' list-colors '=(#b)(*)=1;30=1;37;42'
    fi

    # npm
    zstyle ':completion:*:npm-search' list-colors '=(#b)(*)=1;30=1;36;44'
    zstyle ':completion:*:npm-cache' list-colors '=(#b)(*)=1;30=1;37;46'

    # tmux
    zstyle ':completion:*:*:*:*:attached-sessions' list-colors '=(#b)(*)=1;30=1;37;43'
    zstyle ':completion:*:*:*:*:detached-sessions' list-colors '=(#b)(*)=1;30=1;37;45'

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

# zstyle ':completion:*' ignored-patterns '*..' # BREAKS find -ctime <tab>

# ignore .. as completion option
zstyle ':completion:*:files' ignored-patterns '*..'
zstyle ':completion:*:files' ignored-patterns '*.'
#}}}***********************************************************

#{{{                    MARK:Suffix aliases
#**************************************************************
alias -s txt='vim'
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
exists zua || alias zua='zpwr updateall'

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
    alias zi="cd $ZPWR_INSTALL"
fi

if [[ -d "$ZPWR_SCRIPTS" ]]; then
    alias zs="cd $ZPWR_SCRIPTS"
fi

if [[ -d "$ZPWR_COMPS" ]]; then
    alias zco="cd $ZPWR_COMPS"
fi

if [[ -d "$ZPWR_AUTOLOAD_COMMON" ]]; then
    alias zal="cd $ZPWR_AUTOLOAD_COMMON"
fi

if [[ -d "$ZPWR_SCRIPTS_MAC" ]]; then
    alias zsm="cd $ZPWR_SCRIPTS_MAC"
fi

if [[ -d "$ZPWR" ]]; then
    alias zh="cd $ZPWR"
fi

if [[ -d "$ZPWR_TMUX" ]]; then
    alias ztm="cd $ZPWR_TMUX"
fi

if [[ -d "$ZPWR_TMUX" ]]; then
    alias zt="cd $ZPWR_TEST"
fi

if [[ -d "$ZPWR_TMUX_LOCAL" ]]; then
    alias ztl="cd $ZPWR_TMUX_LOCAL"
fi

if [[ -d "$ZPWR_HIDDEN_DIR_TEMP" ]]; then
    alias zlt="cd $ZPWR_HIDDEN_DIR_TEMP"
fi

if [[ -d "$ZPWR_LOCAL/installer" ]]; then
    alias zli="cd $ZPWR_LOCAL/installer"
fi

if [[ -d "$ZPWR_LOCAL" ]]; then
    alias zl="cd $ZPWR_LOCAL"
    alias zlr="cd $ZPWR_LOCAL/rcBackups"
fi

if [[ -d "$ZPWR_PLUGIN_DIR" ]]; then
    alias zpl="cd $ZPWR_PLUGIN_DIR"
fi

alias numcmd='print $#commands'
#}}}***********************************************************

#{{{                    MARK:ENV VARS IN ZSH PROMPT %~
#**************************************************************
# if this is a mac or linux
if [[ "$ZPWR_OS_TYPE" == "darwin" ]];then
    if [[ -d "$HOMEBREW_HOME_FORMULAE" ]]; then
        : ~HOMEBREW_HOME_FORMULAE
    fi
fi

if [[ -d "$ZSH" ]]; then
    # oh-my-zsh sets this
    : ~ZSH
fi

if [[ -d "$FORKED_DIR" ]]; then
    : ~FORKED_DIR
fi

if [[ -d "$ZPWR_SCRIPTS" ]]; then
    : ~ZPWR_SCRIPTS
fi

if [[ -d "$ZPWR_HIDDEN_DIR_TEMP" ]]; then
    # shorten to prevail over absolute path in print -p %~
    # must be <= .zpwr/temp
    hash -d ZPWR_TEMP="$ZPWR_HIDDEN_DIR_TEMP"
fi

if [[ -d "$ZPWR_LOCAL" ]]; then
    # shorten to prevail over absolute path in print -p %~
    # must be <= .zpwr
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
    # shorten to prevail over absolute path in print -p %~
    # must be <= .tmux
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

#{{{                    MARK:FZF
#**************************************************************
# default value for pygmentize theme
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
        export COLORIZER_FZF_FILE_TEXT="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR \"\$file\" | cat -n"
        export COLORIZER_FZF_FILE_DEFAULT="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR \"\$file\" | cat -n"
        export COLORIZER_FZF_FILE="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR \"\$file\" | cat -n"
        export ZPWR_COLORIZER="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR"
        export COLORIZER_NL=' | cat -n'
    fi
else
    export COLORIZER_FZF="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR {} | cat -n"
    export COLORIZER_FZF_FILE_TEXT="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR \"\$file\" | cat -n"
    export COLORIZER_FZF_FILE_DEFAULT="pygmentize -f terminal256 -g -O style=\$PYGMENTIZE_COLOR \"\$file\" | cat -n"
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

alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}ff='"$($ZPWR_FZF '"$ZPWR_COMMON_FZF_ELEM"' --preview "[[ -f {} ]] && '"$COLORIZER_FZF$ZPWR_TABSTOP"'  2>/dev/null | cat -n || stat -- {} | fold -80 | head -500")"'
alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}f="\$($ZPWR_FZF $FZF_CTRL_T_OPTS)"
alias -g ${ZPWR_GLOBAL_ALIAS_PREFIX}z="| $ZPWR_FZF $FZF_CTRL_T_OPTS "

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

local zcmd
exists zshz && zcmd=zshz || zcmd=_z

declare -a last_ten

# list of completers to use
zstyle ':completion:*' completer _expand _ignored _megacomplete _approximate _correct
# zstyle ':completion:*:*:*:*:functions' ignored-patterns

if [[ $ZPWR_LEARN != false ]]; then
    compdef _se se see seee redo rsql re searchl searchle searchlee redosql
    # to allow reverse numeric sort and numeric sort
    # as opposed to lexicographic sort
    zstyle ':completion:*:*:(se|see|seee|redo|rsql|re|searchl|searchle|searchlee|z|r|zm|zd|zg):*:*' sort false
fi

if [[ $ZPWR_INTERACTIVE_MENU_SELECT == true ]]; then
    zstyle ':completion:*:*:*:*:*' menu select=0 interactive
else
    zstyle ':completion:*:*:*:*:*' menu select=0
fi
#}}}***********************************************************

#{{{                    MARK:ZPWR verbs zstyle
#**************************************************************
zstyle ":completion:*:*:zpwr-gitedittag:*:*:commit-tags" sort false

zstyle ':completion:*:*:(zpwr-z|zpwr-gitzfordir|zpwr-gitzfordirmaster|zpwr-gitzfordirdevelop):*:*' group-order zdir options argument-rest globbed-files files fasd-file fasd last-ten

zstyle ':completion:*:*:(zpwr-z|zpwr-gitzfordir|zpwr-gitzfordirmaster|zpwr-gitzfordirdevelop):*:*' sort false

zstyle ':completion:*:*:(zpwr-se|zpwr-see|zpwr-seee|zpwr-redo|zpwr-rsql|zpwr-re|zpwr-searchl|zpwr-searchle|zpwr-searchlee|zpwr-r):*:*' sort false
#}}}***********************************************************

#{{{                    MARK:ZPWR Compsys Functions
#**************************************************************
declare -a zpwrSubcommandsAry

for k v in ${(kv)ZPWR_VERBS[@]};do
    zpwrSubcommandsAry+=("$k:$v")
done

ZPWR_VARS[zpwrSubcommandsAry]=zpwrSubcommandsAry
#}}}***********************************************************

#{{{                    MARK:Compdefs
#**************************************************************
_comps[ftp]=_ftp
_comps[traceroute]=_traceroute
_comps[host]=_host
_comps[passwd]=_passwd
_comps[ksh]=_ksh
_comps[tcsh]=_tcsh
_comps[csh]=_tcsh

compdef _git-clone gcl
compdef _zcommand zm zd zg
compdef _man fm
compdef _tmux _zsh_tmux_plugin_run
exists _kubectl && compdef _kubectl kubectl
exists _express && compdef _express express
#}}}***********************************************************

#{{{                    MARK:Misc
#**************************************************************

if exists zunit; then
    alias tru="( builtin cd $ZPWR && zunit --verbose $ZPWR/tests/*.zsh )"
fi

# Example usage: zmv -W '*.pl' '*.perl'
alias mmv='noglob zmv -W'

exists thefuck && eval $(thefuck --alias)

# force alias z to zshz not zypper on suse
alias z="$zcmd 2>&1"
###}}}***********************************************************

#{{{                    MARK:Groovy
#**************************************************************
unset GROOVY_HOME # when set this messes up classpath
###}}}***********************************************************

#{{{                    MARK:Initialize Login
#**************************************************************
# go to desktop if not root
if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    zpwrDarwinBanner
else
    zpwrLinuxBanner
fi


#}}}***********************************************************

#{{{                    MARK:Auto attach tmux
#**************************************************************
if [[ $ZPWR_AUTO_ATTACH == true ]]; then

    if [[ "$(uname)" == Linux ]]; then
        zpwrAttachSetup
    fi
fi
#}}}***********************************************************

#{{{                    MARK:FPATH AND PATH REMOVE DUPLICATES
#**************************************************************
# duplicates slow down searching and
# mess up OMZ fpath check if should remove zcompdump
fpath=(${(u)fpath})
path=(${(u)path})
#}}}***********************************************************

#{{{                    MARK:Finish
#**************************************************************
# source .tokens.sh to override with user functions
if test -f "$ZPWR_TOKEN_POST"; then
    if ! source "$ZPWR_TOKEN_POST"; then
        loggErr "could not source ZPWR_TOKEN_POST '$ZPWR_TOKEN_POST'"
    fi
else
    touch "$ZPWR_TOKEN_POST"
fi

source "$ZPWR_RE_ENV_FILE" || {
    echo "where is $ZPWR_RE_ENV_FILE" >&2
}
test -s "$ZPWR_ZINIT_FZF/shell/completion.zsh" \
    && source "$ZPWR_ZINIT_FZF/shell/completion.zsh"

export PATH="$ZPWR_ZINIT_FZF/bin:$PATH"
export MANPATH="$ZPWR_ZINIT_FZF/fzf/man:$MANPATH"
source "$ZPWR_ZINIT_FZF/shell/key-bindings.zsh"

if [[ -d "$ZPWR_PLUGIN_DIR" ]]; then
    : ~ZPWR_PLUGIN_DIR
    # ./ = dont show in prompt
    export PD="$ZPWR_PLUGIN_DIR/."
fi


endTimestamp=$(perl -MTime::HiRes -e 'print Time::HiRes::time')
startupTimeMs=$(printf "%.3f" $((endTimestamp - startTimestamp)))
loggDebug "zsh startup took $startupTimeMs seconds"

ZPWR_VARS[startupTimeMs]=$startupTimeMs

if [[ $ZPWR_PROFILING == true ]]; then
    zprof
fi
#}}}***********************************************************
