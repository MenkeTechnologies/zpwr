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
zmodload zsh/datetime
startTimestamp=$EPOCHREALTIME
#}}}***********************************************************

#{{{                    MARK:FPATH AND PATH NO DUPLICATES
#**************************************************************
function zpwrDedupPaths() {
    # duplicates slow down searching and
    # mess up OMZ fpath check if should remove zcompdump
    fpath=(${(u)fpath})
    path=(${(u)path})
}

# duplicates slow down searching
declare -aU fpath
declare -aU path
# FPATH should not be exported
declare +x FPATH
zpwrDedupPaths
#}}}***********************************************************

#{{{                    MARK:ZPWR source env file which sources lib
#**************************************************************
if [[ -z $ZSH_ARGZERO ]]; then
    0="${(%):-%N}"
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
fi

0="${${(M)0:#/*}:-$PWD/$0}"
export ZPWR="${0:A:h:h}"
export ZPWR_ENV="$ZPWR/env"

export ZPWR_ENV_FILE="$ZPWR_ENV/.zpwr_env.sh"
export ZPWR_RE_ENV_FILE="$ZPWR_ENV/.zpwr_re_env.sh"

# map to hold global data between scripts
declare -Ag ZPWR_VARS
# map to store each zpwr verb, key is the verbname, value is cmd=description
declare -Ag ZPWR_VERBS

function zpwrInitEnv() {
    source "$ZPWR_ENV_FILE" || {
        echo "where is ZPWR_ENV_FILE '$ZPWR_ENV_FILE'" >&2
        return 1
    }
}

zpwrInitEnv

if [[ ! -d "$ZPWR_LOCAL_TEMP" ]]; then
    mkdir -p "$ZPWR_LOCAL_TEMP"
fi

if [[ "$ZPWR_PLUGIN_MANAGER" == zinit ]]; then
    if [[ ! -d "$ZPWR_PLUGIN_MANAGER_HOME" ]]; then
        prettyPrintBox "Installing zinit"
        mkdir "$ZPWR_PLUGIN_MANAGER_HOME"
        git clone https://github.com/zdharma/zinit.git "$ZPWR_PLUGIN_MANAGER_HOME/bin"
    fi
fi
#}}}***********************************************************

#{{{                    MARK:non ZPWR Exports
#**************************************************************
export LC_ALL="en_US.UTF-8"
# stop delay when entering normal mode
export KEYTIMEOUT=1
export SHELL="$(which zsh)"
# default vi-backward-delete-char does not delete paste insert point
export AUTOPAIR_BKSPC_WIDGET='.backward-delete-char'
#}}}***********************************************************

#{{{                    MARK:OMZ env vars
#**************************************************************
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)

ZSH_DISABLE_COMPFIX=true
#}}}***********************************************************

#{{{                    MARK:Zinit plugins and snippets
#**************************************************************
ZPWR_GH_PLUGINS=(
    MenkeTechnologies/zsh-z
    MenkeTechnologies/fasd-simple
    MenkeTechnologies/fzf
    MenkeTechnologies/fzf-tab
    MenkeTechnologies/gh_reveal
    zdharma/history-search-multi-word
    MenkeTechnologies/jhipster-oh-my-zsh-plugin
    MenkeTechnologies/revolver
    zdharma/zbrowse
    zsh-users/zsh-completions
    MenkeTechnologies/zsh-git-acp
    MenkeTechnologies/zsh-sudo
    MenkeTechnologies/zsh-nginx
    MenkeTechnologies/zsh-sed-sub
    zdharma/zsh-tig-plugin
    MenkeTechnologies/zsh-travis
    MenkeTechnologies/zsh-git-repo-cache
    zdharma/zsh-unique-id
    MenkeTechnologies/zsh-very-colorful-manuals
    zdharma/zui
    MenkeTechnologies/zunit
    zdharma/zzcomplete
    #comps
    MenkeTechnologies/zsh-gem-completion
    MenkeTechnologies/zsh-cpan-completion
    MenkeTechnologies/zsh-pip-description-completion
    MenkeTechnologies/zsh-xcode-completions
    MenkeTechnologies/zsh-better-npm-completion
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
    mvn
    django
    python
    golang
    man
    nmap
    postgres
    colorize
    rsync
    vundle
    meteor
    gulp
    grunt
    glassfish
    tig
    tmux
    gradle
    grails
)

ZPWR_OMZ_LIBS=(
    git.zsh
    directories.zsh
    grep.zsh
    functions.zsh
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

# conditional plugins

if exists docker; then
    ZPWR_OMZ_COMPS+=(docker)
    ZPWR_GH_PLUGINS+=(
    MenkeTechnologies/zsh-docker-aliases
    )
fi

if exists docker-compose; then
    ZPWR_OMZ_PLUGINS+=(docker-compose)
fi

exists kubectl && ZPWR_GH_PLUGINS+=(MenkeTechnologies/kubectl-aliases nnao45/zsh-kubectl-completion)

exists systemctl && ZPWR_OMZ_PLUGINS+=(systemd)
exists subl && ZPWR_OMZ_PLUGINS+=(sublime)
exists svn && ZPWR_OMZ_PLUGINS+=(svn)

exists adb && ZPWR_OMZ_COMPS+=(adb)

if [[ $ZPWR_OS_TYPE == debian ]]; then
    ZPWR_OMZ_PLUGINS+=(debian)
elif [[ $ZPWR_OS_TYPE == ubuntu ]]; then
    ZPWR_OMZ_PLUGINS+=(ubuntu)
elif [[ $ZPWR_OS_TYPE == darwin ]]; then
    ZPWR_OMZ_PLUGINS+=(xcode)
fi

exists rails && ZPWR_OMZ_PLUGINS+=(rails)

if [[ $ZPWR_LEARN != false ]]; then
    ZPWR_GH_PLUGINS=(MenkeTechnologies/zsh-learn $ZPWR_GH_PLUGINS)
fi

#}}}***********************************************************

#{{{                    MARK:source tokens pre OMZ
#**************************************************************
function zpwrTokenPre() {
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
}

zpwrTokenPre

if [[ $ZPWR_PROFILING == true ]]; then
    # profiling startup
    zmodload zsh/zprof
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
#}}}***********************************************************

#{{{                    MARK:FPATH setup
#**************************************************************
if [[ $ZPWR_DEBUG == true ]]; then
    echo "______pre fpath size '$#fpath'" and '$fpath'"'_____ = ""'$fpath'" >> $ZPWR_LOGFILE
fi

fpath=($ZPWR_AUTOLOAD_SYSTEMCTL $ZPWR_AUTOLOAD_COMMON $ZPWR_AUTOLOAD_COMP_UTILS $ZPWR_COMPS $fpath)
#}}}***********************************************************
#
#{{{                    MARK:autoload
#**************************************************************
autoload -z $ZPWR_AUTOLOAD_COMMON/*(.:t) $ZPWR_AUTOLOAD_COMP_UTILS/*(.:t)
autoload -Uz zrecompile zm zargs compinit

if [[ "$ZPWR_OS_TYPE" == "darwin" ]];then
    ZPWR_OMZ_PLUGINS+=(brew osx)
    ZPWR_OMZ_COMPS+=(pod)

    # add ZPWR autoload dirs to fpath
    fpath=($ZPWR_AUTOLOAD_DARWIN $fpath)
    autoload -z $ZPWR_AUTOLOAD_DARWIN/*(.:t)
    # determine if this terminal was started in IDE
    #[[ "$ZPWR_PARENT_PROCESS" == *(#i)(login|tmux|vim|alacritty)* ]] && plugins+=(tmux)
elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then

    # add ZPWR autoload dirs to fpath
    fpath=($ZPWR_AUTOLOAD_LINUX $fpath)
    autoload -z $ZPWR_AUTOLOAD_LINUX/*(.:t)
    zpwrLinuxPlugins
else
    # unix
    # add ZPWR autoload dirs to fpath
    fpath=($ZPWR_AUTOLOAD_LINUX $fpath)
    autoload -z $ZPWR_AUTOLOAD_LINUX/*(.:t)
fi
#}}}***********************************************************

#{{{                    MARK:pre zinit
#**************************************************************
bindkey -v

if [[ $ZPWR_DEBUG == true ]]; then
    echo "pre: $fpath" >> "$ZPWR_LOGFILE"
fi

function zpwrTokenPost() {
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
}
#}}}***********************************************************

#{{{                    MARK:ZINIT
#**************************************************************
source "$ZPWR_PLUGIN_MANAGER_HOME/bin/zinit.zsh"
# tell zinit where compsy cache file is
ZINIT[ZCOMPDUMP_PATH]="$ZSH_COMPDUMP"

#override zicompinit
zicompinit() {
    compinit -u -d ${ZINIT[ZCOMPDUMP_PATH]:-${ZDOTDIR:-$HOME}/.zcompdump} "${(Q@)${(z@)ZINIT[COMPINIT_OPTS]}}" 2>/dev/null
}

# late load prompt and call precmd fns first thing after prompt loads

zinit ice lucid nocd nocompile wait'!' atinit'bindPowerline;bindPowerlineTmux;bindZpwrDirs' atload'_powerline_set_jobnum &> /dev/null;_powerline_set_main_keymap_name &> /dev/null;bindPreCmd; _p9k_precmd &> /dev/null'
zinit load MenkeTechnologies/zpwrp10k

# late
for p in $ZPWR_OMZ_COMPS; do
    zinit ice svn lucid nocompile as'completion' pick'null' wait
    zinit snippet OMZ::plugins/$p
done

for p in $ZPWR_OMZ_LIBS; do
    zinit ice lucid nocompile wait atload='omzOverrides'
    zinit snippet OMZ::lib/$p
done

# late
for p in $ZPWR_OMZ_PLUGINS; do
    zinit ice svn lucid nocompile wait
    zinit snippet OMZ::plugins/$p
done

# late GH plugins
for p in $ZPWR_GH_PLUGINS; do
    zinit ice lucid nocompile  wait
    zinit load $p
done

unset p


zinit ice lucid nocompile wait atinit='bindOverrideOMZ;bindForGit'
zinit load \
    MenkeTechnologies/forgit

zinit ice lucid nocompile wait atinit='bindZdharma' atload'bindZdharmaPost'
zinit load \
    zdharma/zconvey

# late bind autopair keystrokes
zinit ice lucid nocompile wait'0' atload='bindInterceptSurround'
zinit load \
    hlissner/zsh-autopair

# override OMZ/plugin aliases with own aliases
zinit ice lucid nocompile wait'0a' \
atload'bindAliasesLate;createAliasCache;bindAliasesZshLate;bindOverrideZLE;'
zinit load \
    MenkeTechnologies/zsh-expand


# late bind keystrokes, must come before syntax highlight
zinit ice lucid nocompile wait'0b' atload'bindHistorySubstring'
zinit load \
    zsh-users/zsh-history-substring-search


# late , must come before syntax highlight
zinit ice lucid nocompile wait'0c' atload'_zsh_autosuggest_start;bindFZFLate;bindZpwrVerbs;bindZpwrZstyle'
zinit load \
    zsh-users/zsh-autosuggestions

# late , must be last to load
# runs ZLE keybindings to override other late loaders
# runs compinit
zinit ice lucid nocompile wait'0d' atinit'bindPenultimate;bindFinal;zpwrTokenPost'
zinit load \
    zdharma/fast-syntax-highlighting

# use fpath NOT symlinks into ~/.zinit/completions
# to have more-completions be last resort and not overrride system completions
zinit ice lucid nocompile wait'0e' nocompletions atload='zpwrDedupPaths'
zinit load \
    MenkeTechnologies/zsh-more-completions

zinit ice lucid nocompile nocd as'null' wait"$ZPWR_ZINIT_COMPINIT_DELAY" atinit'zicompinit; zicdreplay; bindOverrideOMZCompdefs'
zinit light \
    MenkeTechnologies/zsh-zinit-final

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
test -s "$ZPWR_ALIAS_FILE" && source "$ZPWR_ALIAS_FILE"
#}}}***********************************************************

#{{{                    MARK:Override OMZ config
#**************************************************************
ZPWR_VARS[recachedCompsys]=felse
# reload compsys cache if file is stale for 1 week
zpwrStaleZcompdump

#if ! (( $+_comps[z] )); then
    #zpwrRetryZcompdump
#else
    #loggDebug "found '${_comps[z]}' for z so used cached '$ZSH_COMPDUMP'"
    #loggDebug "_comps size: '$#_comps' fpath length: '$#fpath' path length: '$#path'"
#fi

# change history size in memory
export HISTSIZE=999999999
# change history file size
export SAVEHIST="$HISTSIZE"
#}}}***********************************************************

#{{{                    MARK:Zpwr verbs
#**************************************************************
# late loaded in autoload/common/bindZpwrVerbs
#}}}***********************************************************

#{{{                    MARK:ZLE bindkey
#**************************************************************
# ZLE keybindings late loaded in autoload/common/bindOverrideZLE
# this is to override any late loaded plugins with keybindings
#}}}***********************************************************

#{{{                    MARK:Setopt Options
#**************************************************************
# fish like menu select search
zmodload -i zsh/complist
setopt menucomplete

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

# silence all bells and beeps
setopt no_beep

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

if [[ "$ZPWR_AUTO_SELECT" == true ]]; then
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
#stty stop undef
#stty start undef
#}}}***********************************************************

#{{{                    MARK:FZF
#**************************************************************
# run in autoload/common/bindFZFLate
#}}}***********************************************************

#{{{                    MARK:Custom Compsys Functions
#**************************************************************
# list of completers to use
zstyle ':completion:*' completer _expand _ignored _megacomplete _approximate _correct
# zstyle ':completion:*:*:*:*:functions' ignored-patterns

if [[ "$ZPWR_INTERACTIVE_MENU_SELECT" == true ]]; then
    zstyle ':completion:*:*:*:*:*' menu select=0 interactive
else
    zstyle ':completion:*:*:*:*:*' menu select=0
fi
#}}}***********************************************************


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
if [[ "$ZPWR_AUTO_ATTACH" == true ]]; then

    if [[ "$ZPWR_OS_TYPE" == linux ]]; then
        zpwrAttachSetup
    fi
fi
#}}}***********************************************************

#{{{                    MARK:Early bind Immediate Usage
#**************************************************************
alias zp='zpwr'
alias tm='tmux'
#}}}***********************************************************

#{{{                    MARK:Finish
#**************************************************************

endTimestamp=$EPOCHREALTIME
startupTimeMs=$(printf "%.3f" $((endTimestamp - startTimestamp)))
loggDebug "zsh startup took $startupTimeMs seconds"

ZPWR_VARS[startTimestamp]="$startTimestamp"
ZPWR_VARS[endTimestamp]="$endTimestamp"
ZPWR_VARS[startupTimeMs]="$startupTimeMs"

unset startupTimeMs startTimestamp endTimestamp

if [[ "$ZPWR_PROFILING" == true ]]; then
    zprof
fi
#}}}***********************************************************
