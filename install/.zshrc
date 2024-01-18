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
builtin zmodload zsh/datetime
startTimestamp=$EPOCHREALTIME
#}}}***********************************************************

#{{{                    MARK:FPATH AND PATH NO DUPLICATES
#**************************************************************
# FPATH should not be exported
builtin typeset +x FPATH
#}}}***********************************************************

#{{{                    MARK:ZPWR source env file which sources lib
#**************************************************************
if [[ -z $ZSH_ARGZERO ]]; then
    0="${(%):-%N}"
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
fi

# convert $0 to abs path
0="${${(M)0:#/*}:-$PWD/$0}"

# from .zpwr/install/.zshrc to .zpwr/
builtin export ZPWR="${0:A:h:h}"
builtin export ZPWR_ENV="$ZPWR/env"

builtin export ZPWR_ENV_FILE="$ZPWR_ENV/.zpwr_env.sh"
builtin export ZPWR_RE_ENV_FILE="$ZPWR_ENV/.zpwr_re_env.sh"

# map to hold global data between scripts
builtin typeset -Ag ZPWR_VARS
# map to store each zpwr verb, key is the verbname, value is cmd=description
builtin typeset -Ag ZPWR_VERBS

function zpwrInitEnv() {
    builtin source "$ZPWR_ENV_FILE" || {
        builtin echo "where is ZPWR_ENV_FILE '$ZPWR_ENV_FILE'" >&2
        return 1
    }
}

zpwrInitEnv

# You may need to manually set your language environment
# has all aliases and functions common to bourne like shells
builtin test -s "$ZPWR_ALIAS_FILE" && builtin source "$ZPWR_ALIAS_FILE"

if [[ ! -d "$ZPWR_LOCAL_TEMP" ]]; then
    command mkdir -p "$ZPWR_LOCAL_TEMP"
fi

if [[ "$ZPWR_PLUGIN_MANAGER" == zinit ]]; then
    builtin typeset -A ZINIT
    if [[ ! -d "$ZPWR_PLUGIN_MANAGER_HOME/bin" ]]; then
        zpwrPrettyPrintBox "Installing zinit"
        command mkdir -p "$ZPWR_PLUGIN_MANAGER_HOME/bin"
        command git clone https://github.com/$ZPWR_ZDHARMA/zinit.git "$ZPWR_PLUGIN_MANAGER_HOME/bin"
    else
        ZINIT[OPTIMIZE_OUT_DISK_ACCESSES]=1
    fi
fi
#}}}***********************************************************

#{{{                    MARK:non ZPWR Exports
#**************************************************************
builtin export LC_ALL="en_US.UTF-8"
# stop delay when entering normal mode
builtin export KEYTIMEOUT="$ZPWR_KEYTIMEOUT"
builtin export SHELL="$(which zsh)"
# default vi-backward-delete-char does not delete paste insert point
builtin export AUTOPAIR_BKSPC_WIDGET='.backward-delete-char'
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
builtin export SSH_KEY_PATH="~/.ssh/rsa_id"

#get rid of mercurial prompt
hg_prompt_info(){}
# User configuration

ZSH_AUTOSUGGEST_STRATEGY=( match_prev_cmd )

ZSH_DISABLE_COMPFIX=true
#}}}***********************************************************

#{{{                    MARK:Zinit plugins and snippets
#**************************************************************
ZPWR_GH_PLUGINS=(
    MenkeTechnologies/zsh-z
    MenkeTechnologies/fasd-simple
    MenkeTechnologies/fzf-tab
    MenkeTechnologies/gh_reveal
    $ZPWR_ZDHARMA/history-search-multi-word
    MenkeTechnologies/jhipster-oh-my-zsh-plugin
    MenkeTechnologies/revolver
    $ZPWR_ZDHARMA/zbrowse
    zsh-users/zsh-completions
    MenkeTechnologies/zsh-git-acp
    MenkeTechnologies/zsh-sudo
    MenkeTechnologies/zsh-nginx
    MenkeTechnologies/zsh-sed-sub
    $ZPWR_ZDHARMA/zsh-tig-plugin
    MenkeTechnologies/zsh-travis
    MenkeTechnologies/zsh-git-repo-cache
    $ZPWR_ZDHARMA/zsh-unique-id
    MenkeTechnologies/zsh-very-colorful-manuals
    $ZPWR_ZDHARMA/zui
    MenkeTechnologies/zunit
    $ZPWR_ZDHARMA/zzcomplete
    marlonrichert/zsh-hist
    MenkeTechnologies/fzf-zsh-plugin
    #comps
    MenkeTechnologies/zsh-gem-completion
    MenkeTechnologies/zsh-cargo-completion
    MenkeTechnologies/zsh-cpan-completion
    MenkeTechnologies/zsh-pip-description-completion
    MenkeTechnologies/zsh-xcode-completions
    MenkeTechnologies/zsh-better-npm-completion
)

ZPWR_OMZ_PLUGINS=(
    rust
    ruby
    rake
    yarn
    coffee
    node
    npm
    perl
    git
    github
    mvn
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
    ng/_ng
    coffee/_coffee
    scala/_scala
    lein/_lein
    glassfish/_asadmin
    spring/_spring
    redis-cli/_redis-cli
    rust/_rustc
    fd/_fd
    github/_hub
    meteor/_meteor
    yarn/_yarn
    golang/_golang
)

# conditional plugins
if zpwrCommandExists dotnet; then
    ZPWR_GH_PLUGINS+=( MenkeTechnologies/zsh-dotnet-completion )
fi

if zpwrCommandExists docker; then
    ZPWR_GH_PLUGINS+=( MenkeTechnologies/zsh-docker-aliases )
fi

if zpwrCommandExists docker-compose; then
    ZPWR_OMZ_PLUGINS+=( docker-compose )
    ZPWR_OMZ_COMPS+=( docker-compose/_docker-compose )
fi

if zpwrCommandExists kubectl;then
    ZPWR_GH_PLUGINS+=( MenkeTechnologies/kubectl-aliases nnao45/zsh-kubectl-completion )
fi

if zpwrCommandExists oc;then
    ZPWR_GH_PLUGINS+=( MenkeTechnologies/zsh-openshift-aliases )
fi

if zpwrCommandExists systemctl; then
    ZPWR_OMZ_PLUGINS+=( systemd )
    fpath+=( $ZPWR_AUTOLOAD_SYSTEMCTL )
fi

zpwrCommandExists subl && ZPWR_OMZ_PLUGINS+=( sublime )
zpwrCommandExists svn && ZPWR_OMZ_PLUGINS+=( svn )
zpwrCommandExists adb && ZPWR_OMZ_COMPS+=( adb/_adb )

if [[ $ZPWR_OS_TYPE == linux ]]; then
    zpwrOsDebVsUbuntu \
        'ZPWR_OMZ_PLUGINS+=( debian )' \
        'ZPWR_OMZ_PLUGINS+=( ubuntu )' \
        'ZPWR_EXA_EXTENDED=false'
elif [[ $ZPWR_OS_TYPE == darwin ]]; then
    ZPWR_OMZ_PLUGINS+=( xcode )
    ZPWR_OMZ_COMPS+=( xcode/_xcselv )
fi


if [[ $ZPWR_LEARN != false ]]; then
    ZPWR_GH_PLUGINS=( $ZPWR_GH_PLUGINS MenkeTechnologies/zsh-learn )
fi

#}}}***********************************************************

#{{{                    MARK:source tokens pre OMZ
#**************************************************************
function zpwrTokenPre() {

    if builtin test -f "$ZPWR_TOKEN_PRE"; then
        if ! builtin source "$ZPWR_TOKEN_PRE"; then
            zpwrLogConsoleErr "could not source ZPWR_TOKEN_PRE '$ZPWR_TOKEN_PRE'"
        fi
    else
        command touch "$ZPWR_TOKEN_PRE"
    fi

    builtin source "$ZPWR_RE_ENV_FILE" || {
        echo "where is ZPWR_RE_ENV_FILE$ZPWR_RE_ENV_FILE" >&2
    }
}

zpwrTokenPre

if [[ $ZPWR_PROFILING == true ]]; then
    # profiling startup
    builtin zmodload zsh/zprof
fi
#}}}***********************************************************

#{{{                    MARK:post first token
#**************************************************************
if [[ ! -d $ZPWR ]]; then
    command mkdir -p $ZPWR
fi

if [[ ! -d $ZPWR_INSTALL ]]; then
    command mkdir -p $ZPWR_INSTALL
fi

if [[ ! -d $ZPWR_TMUX_LOCAL ]]; then
    command mkdir -p $ZPWR_TMUX_LOCAL
fi

if [[ ! -d $ZPWR_LOCAL ]]; then
    command mkdir -p $ZPWR_LOCAL
fi
#}}}***********************************************************

#{{{                    MARK:FPATH setup
#**************************************************************
#if [[ $ZPWR_DEBUG == true ]]; then
    #echo "______pre fpath size '$#fpath'" and '$fpath'"'_____ = ""'$fpath'" >> $ZPWR_LOGFILE
#fi
fpath=( $ZPWR_AUTOLOAD_COMMON $ZPWR_AUTOLOAD_COMP_UTILS $ZPWR_COMPS $fpath )
#}}}***********************************************************
#
#{{{                    MARK:Autoload
#**************************************************************
builtin autoload -z $ZPWR_AUTOLOAD_COMMON/*(.:t) $ZPWR_AUTOLOAD_COMP_UTILS/*(.:t)
builtin autoload -Uz zrecompile zmv zargs compinit

if [[ "$ZPWR_OS_TYPE" == "darwin" ]];then
    ZPWR_OMZ_PLUGINS+=( brew )
    ZPWR_OMZ_PLUGINS+=( macos )
    ZPWR_OMZ_COMPS+=( macos/_security )
    ZPWR_OMZ_COMPS+=( pod/_pod )

    # add ZPWR autoload dirs to fpath
    fpath=( $ZPWR_AUTOLOAD_DARWIN "$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath )
    builtin autoload -z $ZPWR_AUTOLOAD_DARWIN/*(.:t)
    # determine if this terminal was started in IDE
    #[[ "$ZPWR_PARENT_PROCESS" == *(#i)(login|tmux|vim|alacritty)* ]] && plugins+=(tmux)
elif [[ "$ZPWR_OS_TYPE" == "linux" ]];then

    # add ZPWR autoload dirs to fpath
    fpath=( $ZPWR_AUTOLOAD_LINUX $fpath )
    builtin autoload -z $ZPWR_AUTOLOAD_LINUX/*(.:t)
    zpwrLinuxPlugins
else
    # unix
    # add ZPWR autoload dirs to fpath
    fpath=( $ZPWR_AUTOLOAD_LINUX $fpath )
    builtin autoload -z $ZPWR_AUTOLOAD_LINUX/*(.:t)
fi
#}}}***********************************************************

#{{{                    MARK:Pre plugin manager
#**************************************************************
# vi mode
if [[ $ZPWR_BINDKEY_VI == true ]]; then
    builtin bindkey -v
else
    builtin bindkey -e
fi

#if [[ $ZPWR_DEBUG == true ]]; then
    #echo "pre: $fpath" >> "$ZPWR_LOGFILE"
#fi

function zpwrTokenPost() {

    # source .tokens.sh to override with user functions
    if builtin test -f "$ZPWR_TOKEN_POST"; then
        if ! builtin source "$ZPWR_TOKEN_POST"; then
            zpwrLogConsoleErr "could not source ZPWR_TOKEN_POST '$ZPWR_TOKEN_POST'"
        fi
    else
        touch "$ZPWR_TOKEN_POST"
    fi

    builtin source "$ZPWR_RE_ENV_FILE" || {
        builtin echo "where is $ZPWR_RE_ENV_FILE" >&2
    }
}
#}}}***********************************************************

#{{{                    MARK:ZPWR_PLUGIN_MANAGER
#**************************************************************
if [[ "$ZPWR_PLUGIN_MANAGER" == zinit ]]; then
    ZINIT[ZCOMPDUMP_PATH]="$ZSH_COMPDUMP"
    ZINIT[COMPINIT_OPTS]='-C -u'
    builtin source "$ZPWR_PLUGIN_MANAGER_HOME/bin/zinit.zsh"
    # tell zinit where compsy cache file is

    #override zicompinit
    zicompinit() {
        compinit -u -d ${ZINIT[ZCOMPDUMP_PATH]:-${ZDOTDIR:-$HOME}/.zcompdump} "${(Q@)${(z@)ZINIT[COMPINIT_OPTS]}}" 2>/dev/null
    }

    # late load prompt and call precmd fns first thing after prompt loads

    zinit ice lucid nocd nocompile wait'!' atinit'zpwrBindPowerline; zpwrBindPowerlineTmux; zpwrBindDirs; zpwrPrecmd' \
        atload'_powerline_set_jobnum &> /dev/null;_powerline_set_main_keymap_name &> /dev/null; zpwrBindPrecmd; _p9k_precmd &> /dev/null'
    zinit load MenkeTechnologies/zpwrp10k

    # late
    () {
        local p

        for p in $ZPWR_OMZ_COMPS; do
            zinit ice lucid nocompile as'completion' pick'null' wait
            zinit snippet OMZP::$p
        done
        # WARNING temporary hack to allow linking OMZ completions into .zinit/completions
        for p in $ZPWR_OMZ_COMPS; do
            ln -sfn $ZSH/snippets/OMZP::${p%/*}/${p#*/}/${p#*/} $ZSH/completions/${p#*/}
        done

        for p in $ZPWR_OMZ_LIBS; do
            zinit ice lucid nocompile wait atload='zpwrOmzOverrides'
            zinit snippet OMZL::$p
        done

        # late
        for p in $ZPWR_OMZ_PLUGINS; do
            zinit ice lucid nocompile wait
            zinit snippet OMZP::$p
        done

        # WARNING download extra plugin files manually until zinit supports snippets with multiple files
        if [[ $ZPWR_OS_TYPE == darwin ]]; then
            local files=(music spotify) f
            for f in ${files[@]}; do
                if [[ ! -f "$ZSH/snippets/OMZP::macos/$f" ]]; then
                    wget -qP "$ZSH/snippets/OMZP::macos" https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/macos/$f
                fi
            done
        fi

        if zpwrCommandExists rails; then
            zinit ice lucid nocompile nocompletions wait
            zinit snippet OMZP::rails
        fi

        # late GH plugins
        for p in $ZPWR_GH_PLUGINS; do
            zinit ice lucid nocompile wait
            zinit load $p
        done
    }

    zinit ice as'program' lucid nocompile pick'bin/fzf' wait
    zinit load MenkeTechnologies/fzf


    zinit ice as'program' lucid pick'bin/git-fuzzy' wait
    zinit load bigH/git-fuzzy


    zinit ice lucid nocompile wait atinit='zpwrBindOverrideOMZ;zpwrBindForGit'
    zinit load \
        MenkeTechnologies/forgit

    zinit ice lucid nocompile wait atinit='zpwrBindZdharma' atload'zpwrBindZdharmaPost'
    zinit load \
        MenkeTechnologies/zconvey

    # late bind autopair keystrokes
    zinit ice lucid nocompile wait'0' atload='zpwrBindInterceptSurround'
    zinit load \
        hlissner/zsh-autopair

    # override OMZ/plugin aliases with own aliases
    zinit ice lucid nocompile wait'0a' \
    atload'zpwrBindAliasesLate; zpwrCreateAliasCache; zpwrBindAliasesZshLate; zpwrBindOverrideZLE'
    zinit load \
        MenkeTechnologies/zsh-expand

    if [[ $ZPWR_AUTO_COMPLETE == true ]]; then
        zinit ice lucid nocompile wait"0b" atinit='zpwrBindOverrideAutoComplete'
    zinit load \
        MenkeTechnologies/zsh-autocomplete
    fi

    # late bind keystrokes, must come before syntax highlight
    zinit ice lucid nocompile wait'0c' atload'zpwrBindHistorySubstring'
    zinit load \
        zsh-users/zsh-history-substring-search

    # late , must come before syntax highlight
    zinit ice lucid nocompile wait'0d' \
        atload'_zsh_autosuggest_start; zpwrBindFZFLate; zpwrBindVerbs; zpwrBindZstyle'
    zinit load \
        zsh-users/zsh-autosuggestions

    # late loaded, must be last to load
    # runs ZLE keybindings to override other late loaders
    zinit ice lucid nocompile wait'0e' atinit'zpwrBindPenultimate; zpwrBindFinal; zpwrTokenPost'
    zinit load \
        MenkeTechnologies/zsh-zinit-final

    # use fpath NOT symlinks into ~/.zinit/completions
    # to have more-completions be last resort and not overrride system completions
    zinit ice lucid nocompile wait'0f' nocompletions
    zinit load \
        MenkeTechnologies/zsh-more-completions

    zinit ice lucid nocompile nocd as'null' wait"${ZPWR_ZINIT_COMPINIT_DELAY}g" \
        atinit'zicompinit; zicdreplay;zpwrBindOverrideOMZCompdefs'
    zinit light \
        MenkeTechnologies/zsh-zinit-final

    zinit ice lucid nocompile wait"${ZPWR_ZINIT_COMPINIT_DELAY}h" nocompletions atload='zpwrDedupPaths;zpwrBindPreexecChpwd'
    zinit load \
        $ZPWR_ZDHARMA/fast-syntax-highlighting

elif [[ "$ZPWR_PLUGIN_MANAGER" == oh-my-zsh ]]; then

    plugins+=(
        ${ZPWR_OMZ_COMPS[@]}
        ${ZPWR_OMZ_PLUGINS[@]}
        ${ZPWR_GH_PLUGINS[@]}
    )

    builtin source "$ZPWR_PLUGIN_MANAGER_HOME/oh-my-zsh.sh"

    if [[ $ZSH_DISABLE_COMPFIX != true ]]; then
        # Load only from secure directories
        compinit -i -C -d "$ZSH_COMPDUMP"
    else
        # If the user wants it, load from all found directories
        compinit -u -C -d "$ZSH_COMPDUMP"
    fi

else

    zpwrLogConsoleErr "Unsupported ZPWR_PLUGIN_MANAGER '$ZPWR_PLUGIN_MANAGER'!"
fi



#if [[ $ZPWR_DEBUG == true ]]; then
    #echo "\npost: $fpath" >> "$ZPWR_LOGFILE"
#fi
#}}}***********************************************************

#{{{                    MARK:Override OMZ config
#**************************************************************
ZPWR_VARS[recachedCompsys]=false
# reload compsys cache if file is stale for 1 week
zpwrStaleZcompdump

#if ! (( $+_comps[z] )); then
    #zpwrRetryZcompdump
#else
    #zpwrLogDebug "found '${_comps[z]}' for z so used cached '$ZSH_COMPDUMP'"
    #zpwrLogDebug "_comps size: '$#_comps' fpath length: '$#fpath' path length: '$#path'"
#fi

# change history size in memory
builtin export HISTSIZE=999999999
# change history file size
builtin export SAVEHIST=99999999
#}}}***********************************************************

#{{{                    MARK:Zpwr verbs
#**************************************************************
# late loaded in autoload/common/zpwrBindVerbs
#}}}***********************************************************

#{{{                    MARK:ZLE bindkey
#**************************************************************
# ZLE keybindings late loaded in autoload/common/zpwrBindOverrideZLE
# this is to override any late loaded plugins with keybindings
#}}}***********************************************************

#{{{                    MARK:Setopt Options
#**************************************************************
# fish like menu select search
builtin zmodload -i zsh/complist

# l=*
builtin setopt glob_assign

# long format
builtin setopt long_list_jobs

# !!:s/*//
builtin setopt histsubst_pattern

# allow '' escape
builtin setopt rc_quotes

# allow **.c
builtin setopt globstarshort

# allow {abcd0-9} expansion
builtin setopt braceccl

# Allow comments even in interactive shells (especially for Muness)
builtin setopt interactive_comments

# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
builtin setopt auto_cd

# if argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory
builtin setopt cdable_vars

# don't push multiple copies of the same directory onto the directory stack
builtin setopt pushd_ignore_dups

# treat #, ~, and ^ as part of patterns for filename generation
builtin setopt extended_glob

# Allow multiple terminal sessions to all append to one zsh command history
builtin setopt append_history

# save timestamp of command and duration
builtin setopt extended_history

# when trimming history, lose oldest duplicates first
builtin setopt hist_expire_dups_first

# Do not write events to history that are duplicates of previous events
builtin setopt hist_ignore_dups

# do not execute, just expand history
builtin setopt hist_verify

# remove command line from history list when first character on the line is a space
builtin setopt hist_ignore_space

# When searching history don't display results already cycled through twice
builtin setopt hist_find_no_dups

# Remove extra blanks from each command line being added to history
builtin setopt hist_reduce_blanks

# do not execute, just expand history
builtin unsetopt hist_verify

# imports new commands and appends typed commands to history
builtin setopt share_history

# When completing from the middle of a word, move the cursor to the end of the word
builtin setopt always_to_end

# show completion menu on successive tab press. needs unsetopt menu_complete to work
# builtin setopt auto_menu

# any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
builtin setopt auto_name_dirs

# Allow completion from within a word/phrase
builtin setopt complete_in_word

# spelling correction for commands
builtin setopt nocorrect

# spelling correction for arguments
builtin setopt nocorrect_all

# Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
builtin setopt prompt_subst

# only show the rprompt on the current prompt
builtin setopt transient_rprompt

# perform implicit tees or cats when multiple redirections are attempted
builtin setopt multios

# dot files included in regular globs
builtin setopt glob_dots

# no glob in all globs then error
builtin setopt csh_null_glob

# silence all bells and beeps
builtin setopt no_beep

# > file creates file
# NOT compatible with $(<<EOF) used in comp caches
builtin setopt no_sh_null_cmd

# allow unquoted globs to pass through
builtin setopt no_bad_pattern

# globs sorted numerically
builtin setopt numeric_glob_sort

# global substitution is case insensitive
builtin setopt nocaseglob

# =cmd
builtin setopt equals

# filename completion after =
builtin setopt magic_equal_subst

if [[ "$ZPWR_AUTO_SELECT" == true ]]; then
    #auto select first item of menu completion
    builtin setopt menu_complete
fi

#array expandsion include prefix
builtin setopt rc_expand_param

# display octal and hex like C
builtin setopt cbases

# any failing command in pipeline fails entire pipeline, breaks grep -q && ...
#builtin setopt pipefail 2>/dev/null

# search PATH for zsh <script>
builtin setopt pathscript

# search PATH for zsh <dir/script>
builtin setopt pathdirs

# more compact menu completion
builtin setopt list_packed

# increase max size for directory stack
builtin export DIRSTACKSIZE=50

# so we can bind ^S and ^Q
builtin setopt no_flow_control
#}}}***********************************************************

#{{{                    MARK:FZF
#**************************************************************
# late loads in autoload/common/zpwrBindFZFLate
#}}}***********************************************************

#{{{                    MARK:Custom Compsys Functions
#**************************************************************
function zpwrBindMenu() {

    # list of completers to use
    builtin zstyle ':completion:*' completer _expand _ignored _megacomplete _approximate _correct
    #builtin zstyle ':completion:*:*:*:*:functions' ignored-patterns

    if [[ "$ZPWR_INTERACTIVE_MENU_SELECT" == true ]]; then
        builtin zstyle ':completion:*:*:*:*:*' menu select=0 interactive
    else
        builtin zstyle ':completion:*:*:*:*:*' menu select=0
    fi
}

zpwrBindMenu
#}}}***********************************************************


#{{{                    MARK:Initialize Login
#**************************************************************
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

#{{{                    MARK:Early bind some aliases for immediate Usage
#**************************************************************
builtin alias zp='zpwr'
builtin alias tm='tmux'
#}}}***********************************************************

#{{{                    MARK:Finish
#**************************************************************

endTimestamp=$EPOCHREALTIME
startupTimeMs=$( printf "%.3f" $(( endTimestamp - startTimestamp )) )
zpwrLogDebug "zsh startup took $startupTimeMs seconds"

ZPWR_VARS[startTimestamp]="$startTimestamp"
ZPWR_VARS[endTimestamp]="$endTimestamp"
ZPWR_VARS[startupTimeMs]="$startupTimeMs"

builtin unset startupTimeMs startTimestamp endTimestamp

if [[ "$ZPWR_PROFILING" == true ]]; then
    zprof
fi
#}}}***********************************************************
