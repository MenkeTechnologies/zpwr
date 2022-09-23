#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Aug 28 16:10:06 EDT 2020
##### Purpose: bash/zsh script to hold refreshable env vars
##### Notes:
#}}}***********************************************************

#{{{                    MARK:env vars to re eval after sourcing tokens
#**************************************************************
if zpwrIsZsh; then
    if ! (( $+ZPWR_VARS )) || [[ ${parameters[ZPWR_VARS]} != association ]]; then
        typeset -Ag ZPWR_VARS
    fi
else
    typeset -Ag ZPWR_VARS
fi

type -a zpwrEvalIfNeeded 1>/dev/null 2>&1 || function zpwrEvalIfNeeded() {

    local name current prev wanted
    name="$1"
    current="$2"
    wanted="$3"

    # first time sourced from .zpwr_env.sh
    if [[ -z "$current" ]]; then
        # when no env var from env pre zpwr and first time this file is read
        eval "export $name=\"$wanted\""
        ZPWR_VARS[prev_$name]="$wanted"
        return 0
    elif [[ -z "${ZPWR_VARS[prev_$name]}" ]]; then
        # when env var from zshenv but first time this file is read
        # overwrite it b/c all zpwr config must be done in zpwr except $ZPWR
        eval "export $name=\"$wanted\""
        ZPWR_VARS[prev_$name]="$wanted"
        return 0
    fi

    # no user changes to environment variable
    if [[ "$current" == "$wanted" ]]; then
        return 0
    fi
    prev=${ZPWR_VARS[prev_$name]}

    if [[ "$current" == "$prev" ]]; then
        # user has made change to base variables so reexport
        eval "export $name=\"$wanted\""
        # save prev state
        ZPWR_VARS[prev_$name]="$wanted"
        return 0
    fi
    # user has made direct change to env variable so leave alone
}

# the base dir for zpwr configs
test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"

if [[ $ZPWR_PLUGIN_MANAGER == zinit ]]; then
    zpwrEvalIfNeeded ZPWR_PLUGIN_MANAGER_HOME "$ZPWR_PLUGIN_MANAGER_HOME" "$HOME/.zinit" "$HOME"
    export ZSH="$ZPWR_PLUGIN_MANAGER_HOME"
    zpwrEvalIfNeeded ZSH_CUSTOM "$ZSH_CUSTOM" "$ZSH" "$ZSH"
elif [[ $ZPWR_PLUGIN_MANAGER == oh-my-zsh ]]; then
    zpwrEvalIfNeeded ZPWR_PLUGIN_MANAGER_HOME "$ZPWR_PLUGIN_MANAGER_HOME" "$HOME/.oh-my-zsh" "$HOME"
    export ZSH="$ZPWR_PLUGIN_MANAGER_HOME"
    zpwrEvalIfNeeded ZSH_CUSTOM "$ZSH_CUSTOM" "$ZSH/custom" "$ZSH"
fi

if [[ $ZPWR_COLORS = true ]]; then
    export LS_COLORS="fi=38:di=32;1:ex=31;1"
    export EXA_COLORS="in=34:ur=32:uw=32:ux=32:gr=33:gw=33:gx=33:tr=31:tw=31:tx=31:xx=34:uu=38:gu=32:lc=32;1:un=41;37;1:gn=43;37;1:sb=4;1:xa=1;34:df=31;46;1:ds=31;45;1:lp=36;1:cc=1;31;46:da=34:b0=31;1;4:gm=32;1;4:ga=36;1;4:gd=34;1;4:gv=35;1;4:gt=37;1;4"
fi

# command for exa (replaces ls)
if [[ -z "$ZPWR_EXA_COMMAND" ]] || [[ $ZPWR_EXA_EXTENDED != true ]]; then
    if [[ $ZPWR_EXA_EXTENDED == true ]]; then
        export ZPWR_EXA_COMMAND='command exa --git -il -F -H --extended --color-scale -g -a --colour=always'
    else
        export ZPWR_EXA_COMMAND='command exa --git -il -F -H --color-scale -g -a --colour=always'
    fi
fi

# fzf dir
zpwrEvalIfNeeded ZPWR_FZF_DIR "$ZPWR_FZF_DIR" "$ZSH_CUSTOM/plugins/fzf" "$ZSH"
# local file ignored by git
zpwrEvalIfNeeded ZPWR_LOCAL "$ZPWR_LOCAL" "$ZPWR/local" "$ZPWR"
# plugin misc cache files
zpwrEvalIfNeeded ZSH_CACHE_DIR "$ZSH_CACHE_DIR" "$ZPWR_LOCAL/.cache" "$ZPWR_LOCAL"
# alias and function file bash compatible
zpwrEvalIfNeeded ZPWR_ALIAS_FILE "$ZPWR_ALIAS_FILE" "$ZPWR_ENV/.shell_aliases_functions.sh" "$ZPWR_ENV"
# autoloaded non completion functions
zpwrEvalIfNeeded ZPWR_AUTOLOAD "$ZPWR_AUTOLOAD" "$ZPWR/autoload" "$ZPWR"
# autoloaded common non completion functions
zpwrEvalIfNeeded ZPWR_AUTOLOAD_COMMON "$ZPWR_AUTOLOAD_COMMON" "$ZPWR_AUTOLOAD/common" "$ZPWR_AUTOLOAD"
# autoloaded common completion but completion helper functions
zpwrEvalIfNeeded ZPWR_AUTOLOAD_COMPS "$ZPWR_AUTOLOAD_COMPS " "$ZPWR_AUTOLOAD/comps" "$ZPWR_AUTOLOAD"
# autoloaded common non completion but completion helper functions
zpwrEvalIfNeeded ZPWR_AUTOLOAD_COMP_UTILS "$ZPWR_AUTOLOAD_COMP_UTILS " "$ZPWR_AUTOLOAD/comp_utils" "$ZPWR_AUTOLOAD"
# autoloaded darwin non completion functions
zpwrEvalIfNeeded ZPWR_AUTOLOAD_DARWIN "$ZPWR_AUTOLOAD_DARWIN" "$ZPWR_AUTOLOAD/darwin" "$ZPWR_AUTOLOAD"
# autoloaded fzf helper functions
zpwrEvalIfNeeded ZPWR_AUTOLOAD_FZF "$ZPWR_AUTOLOAD_FZF" "$ZPWR_AUTOLOAD/fzf" "$ZPWR_AUTOLOAD"
# autoloaded linux non completion functions
zpwrEvalIfNeeded ZPWR_AUTOLOAD_LINUX "$ZPWR_AUTOLOAD_LINUX" "$ZPWR_AUTOLOAD/linux" "$ZPWR_AUTOLOAD"
# autoloaded systemctl non completion functions
zpwrEvalIfNeeded ZPWR_AUTOLOAD_SYSTEMCTL "$ZPWR_AUTOLOAD_SYSTEMTCTL" "$ZPWR_AUTOLOAD/systemctl" "$ZPWR_AUTOLOAD"
# autoloaded completion functions
zpwrEvalIfNeeded ZPWR_COMPS "$ZPWR_COMPS" "$ZPWR/autoload/comps" "$ZPWR"
# cross OS comand file
zpwrEvalIfNeeded ZPWR_CROSS_OS_CMD "$ZPWR_CROSS_OS" "$ZPWR_SCRIPTS/crossOSCommands.sh" "$ZPWR_SCRIPTS"
# cross OS fn file
zpwrEvalIfNeeded ZPWR_CROSS_OS_EXE "$ZPWR_CROSS_OS" "$ZPWR_SCRIPTS/crossOSExecute.sh" "$ZPWR_SCRIPTS"
# the location of macOS only associated interpreted scripts
# custom plugin dir
zpwrEvalIfNeeded ZPWR_PLUGIN_DIR "$ZPWR_PLUGIN_DIR" "$ZSH_CUSTOM/plugins" "$ZSH_CUSTOM"
# fzf custom plugin dir
zpwrEvalIfNeeded ZPWR_ZINIT_FZF "$ZPWR_ZINIT_FZF" "$ZPWR_PLUGIN_DIR/MenkeTechnologies---fzf" "$ZPWR_PLUGIN_DIR"
# same as zpwr local
zpwrEvalIfNeeded ZPWR_HIDDEN_DIR "$ZPWR_HIDDEN_DIR" "$ZPWR/local" "$ZPWR"
# private tokens file sourced before
zpwrEvalIfNeeded ZPWR_TOKEN_PRE "$ZPWR_TOKEN_PRE" "$ZPWR_LOCAL/.tokens.sh" "$ZPWR_LOCAL"
# private tokens file sourced after
zpwrEvalIfNeeded ZPWR_TOKEN_POST "$ZPWR_TOKEN_POST" "$ZPWR_LOCAL/.tokens-post.sh" "$ZPWR_LOCAL"
zpwrEvalIfNeeded ZPWR_TEST "$ZPWR_TEST" "$ZPWR/tests" "$ZPWR"
# zpwr install files
zpwrEvalIfNeeded ZPWR_INSTALL "$ZPWR_INSTALL" "$ZPWR/install" "$ZPWR"
# user tmux.conf file
zpwrEvalIfNeeded ZPWR_TMUXRC "$ZPWR_TMUXRC" "$ZPWR_INSTALL/.tmux.conf" "$ZPWR_INSTALL"
# user vimrc file
zpwrEvalIfNeeded ZPWR_VIMRC "$ZPWR_VIMRC" "$ZPWR_INSTALL/.vimrc" "$ZPWR_INSTALL"
# user ideavimrc file
zpwrEvalIfNeeded ZPWR_IDEAVIMRC "$ZPWR_IDEAVIMRC" "$ZPWR_INSTALL/.ideavimrc" "$ZPWR_INSTALL"
# zpwr tmux config files
zpwrEvalIfNeeded ZPWR_TMUX "$ZPWR_TMUX" "$ZPWR/tmux" "$ZPWR"
# zpwr tmux git ignored files
zpwrEvalIfNeeded ZPWR_TMUX_LOCAL "$ZPWR_TMUX_LOCAL" "$ZPWR_TMUX/local" "$ZPWR_TMUX"
# the base path for zsh temp
zpwrEvalIfNeeded TMPPREFIX "$TMPPREFIX" "$ZPWR_LOCAL/.temp/zsh" "$ZPWR_LOCAL"
# the base dir for zpwr temp
zpwrEvalIfNeeded ZPWR_LOCAL_TEMP "$ZPWR_LOCAL_TEMP" "$ZPWR_LOCAL/.temp" "$ZPWR_LOCAL"
# the path to a lock file (semaphore) for zpwr
zpwrEvalIfNeeded ZPWR_LOCK_FILE "$ZPWR_LOCK_FILE" "$ZPWR_LOCAL/.lock" "$ZPWR_LOCAL"
# cache file for all zpwr env lookups
zpwrEvalIfNeeded ZPWR_LOCAL_ENV "$ZPWR_LOCAL_ENV" "$ZPWR_LOCAL/zpwrEnv" "$ZPWR_LOCAL"
# forked powerlevel10k config file for PROMPT
zpwrEvalIfNeeded ZPWR_PROMPT_FILE "$ZPWR_PROMPT_FILE" "$ZPWR_ENV/.p10k.zsh" "$ZPWR_ENV"
# the location of associated interpreted scripts
zpwrEvalIfNeeded ZPWR_SCRIPTS "$ZPWR_SCRIPTS" "$ZPWR/scripts" "$ZPWR"
# the location of macOS only associated interpreted scripts
zpwrEvalIfNeeded ZPWR_SCRIPTS_MAC "$ZPWR_SCRIPTS_MAC" "$ZPWR_SCRIPTS/macOnly" "$ZPWR_SCRIPTS"
# the location of zpwr verbs setup script
zpwrEvalIfNeeded ZPWR_VERBS_FILE "$ZPWR_VERBS_FILE" "$ZPWR_ENV/zpwr.zsh" "$ZPWR_ENV"
# the location of zpwr lib file
zpwrEvalIfNeeded ZPWR_LIB "$ZPWR_LIB" "$ZPWR_SCRIPTS/lib.sh" "$ZPWR_SCRIPTS"
# the location of zpwr init file
zpwrEvalIfNeeded ZPWR_LIB_INIT "$ZPWR_LIB_INIT" "$ZPWR_SCRIPTS/init.sh" "$ZPWR_SCRIPTS"
# command for all fzf clearlist in preview pane
zpwrEvalIfNeeded ZPWR_FZF_CLEARLIST "$ZPWR_FZF_CLEARLIST" "zsh $ZPWR_SCRIPTS/zpwrClearList.zsh -- \\\$file | fold -s -w 80" "$ZPWR_SCRIPTS"
# when ZPWR_USE_NEOVIM=true this the file used to find most recent files opened in neovim
zpwrEvalIfNeeded ZPWR_NVIMINFO "$ZPWR_NVIMINFO" "$ZPWR_LOCAL/.nviminfo" "$ZPWR_LOCAL"
# alacritty config file
zpwrEvalIfNeeded ZPWR_ALACRITTY_CFG "$ZPWR_ALACRITTY_CFG" "$HOME/.config/alacritty/alacritty.yml" "$HOME"
# emacs recent files
zpwrEvalIfNeeded ZPWR_RECENTF "$ZPWR_RECENTF" "$HOME/.emacs.d/.cache/recentf" "$HOME"
# alternate banner to ponysay
zpwrEvalIfNeeded ZPWR_BANNER_COMMAND "$ZPWR_BANNER_COMMAND" "bash $ZPWR_SCRIPTS_MAC/figletRandomFontOnce.sh $(hostname)" "$ZPWR_SCRIPTS_MAC"
# zpwr banner file location
zpwrEvalIfNeeded ZPWR_BANNER_SCRIPT "$ZPWR_BANNER_SCRIPT" "$ZPWR_SCRIPTS/about.sh" "$ZPWR_SCRIPTS"
# cache of git dirs
zpwrEvalIfNeeded ZPWR_ALL_GIT_DIRS "$ZPWR_ALL_GIT_DIRS" "$ZPWR_LOCAL/zpwrGitDirs.txt" "$ZPWR_LOCAL"
# cache of clean git dirs
zpwrEvalIfNeeded ZPWR_ALL_GIT_DIRS_CLEAN "$ZPWR_ALL_GIT_DIRS_CLEAN" "$ZPWR_LOCAL/zpwrGitDirsClean.txt" "$ZPWR_LOCAL"
# cache of dirty git dirs
zpwrEvalIfNeeded ZPWR_ALL_GIT_DIRS_DIRTY "$ZPWR_ALL_GIT_DIRS_DIRTY" "$ZPWR_LOCAL/zpwrGitDirsDirty.txt" "$ZPWR_LOCAL"
# log file
zpwrEvalIfNeeded ZPWR_LOGFILE "$ZPWR_LOGFILE" "$ZPWR_LOCAL/zpwrLog.txt" "$ZPWR_LOCAL"
# cache of env keys
zpwrEvalIfNeeded ZPWR_ENV_KEY_FILE "$ZPWR_ENV_KEY_FILE" "${ZPWR_LOCAL_ENV}Key.txt" "$ZPWR_LOCAL_ENV"
# cache of env values
zpwrEvalIfNeeded ZPWR_ENV_VALUE_FILE "$ZPWR_ENV_VALUE_FILE" "${ZPWR_LOCAL_ENV}Value.txt" "$ZPWR_LOCAL_ENV"
# temp files
zpwrEvalIfNeeded ZPWR_TEMPFILE "$ZPWR_TEMPFILE" "$ZPWR_LOCAL_TEMP/.temp$$-$USER" "$ZPWR_LOCAL_TEMP" "$USER"
zpwrEvalIfNeeded ZPWR_TEMPFILE1 "$ZPWR_TEMPFILE1" "$ZPWR_LOCAL_TEMP/.temp$$-1$USER" "$ZPWR_LOCAL_TEMP" "$USER"
zpwrEvalIfNeeded ZPWR_TEMPFILE2 "$ZPWR_TEMPFILE2" "$ZPWR_LOCAL_TEMP/.temp$$-2$USER" "$ZPWR_LOCAL_TEMP" "$USER"
zpwrEvalIfNeeded ZPWR_TEMPFILE3 "$ZPWR_TEMPFILE3" "$ZPWR_LOCAL_TEMP/.temp$$-3$USER" "$ZPWR_LOCAL_TEMP" "$USER"
zpwrEvalIfNeeded ZPWR_TEMPFILE4 "$ZPWR_TEMPFILE4" "$ZPWR_LOCAL_TEMP/.temp$$-4$USER" "$ZPWR_LOCAL_TEMP" "$USER"
zpwrEvalIfNeeded ZPWR_TEMPFILE_PROCESSED "$ZPWR_TEMPFILE_PROCESSED" "$ZPWR_LOCAL_TEMP/.temp$$-processed$USER" "$ZPWR_LOCAL_TEMP" "$USER"
# SQL temp files for use with learning collection
zpwrEvalIfNeeded ZPWR_TEMPFILE_SQL "$ZPWR_TEMPFILE_SQL" "$ZPWR_LOCAL_TEMP/.temp$$-2$USER.sql" "$ZPWR_LOCAL_TEMP" "$USER"
# last tmux window text capture
zpwrEvalIfNeeded ZPWR_TMUX_CAPTURE "$ZPWR_TMUX_CAPTURE" "$ZPWR_TMUX_LOCAL/tmux-capture-$$-$USER" "$ZPWR_TMUX_LOCAL" "$USER"
# socket for IPC
zpwrEvalIfNeeded ZPWR_SOCKET "$ZPWR_SOCKET" "$ZPWR_LOCAL_TEMP/.temp-$USER-socket" "$ZPWR_LOCAL_TEMP" "$USER"
# fifo for IPC
zpwrEvalIfNeeded ZPWR_FIFO "$ZPWR_FIFO" "$ZPWR_LOCAL_TEMP/.temp-$USER-fifo" "$ZPWR_LOCAL_TEMP" "$USER"
# zsh compsys completion system dir for cached completions
zpwrEvalIfNeeded ZPWR_COMPSYS_CACHE "$ZPWR_COMPSYS_CACHE" "$ZPWR_LOCAL/zcompcache" "$ZPWR_LOCAL"
# compsys cache file
zpwrEvalIfNeeded ZSH_COMPDUMP "$ZSH_COMPDUMP" "$ZPWR_LOCAL/.zcompdump-$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT" "$ZPWR_LOCAL" "$ZPWR_REPO_NAME" "$ZPWR_GITHUB_ACCOUNT"
# forked repos dir
zpwrEvalIfNeeded ZPWR_FORKED_DIR "$ZPWR_FORKED_DIR" "$HOME/forkedRepos" "$HOME"
# common dirs
zpwrEvalIfNeeded ZPWR_D "$ZPWR_D" "$HOME/Desktop" "$HOME"
zpwrEvalIfNeeded ZPWR_DOC "$ZPWR_DOC" "$HOME/Documents" "$HOME"
zpwrEvalIfNeeded ZPWR_DL "$ZPWR_DL" "$HOME/Downloads" "$HOME"
# history file
zpwrEvalIfNeeded HISTFILE "$HISTFILE" "$ZPWR_LOCAL/.$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT-history" "$ZPWR_LOCAL" "$ZPWR_REPO_NAME" "$ZPWR_GITHUB_ACCOUNT"
# the path for vim keybindings cache
zpwrEvalIfNeeded ZPWR_VIM_KEYBINDINGS "$ZPWR_VIM_KEYBINDINGS" "$ZPWR_LOCAL/zpwrVimKeybindings.txt" "$ZPWR_LOCAL"
# the path for all keybindings cache
zpwrEvalIfNeeded ZPWR_ALL_KEYBINDINGS "$ZPWR_ALL_KEYBINDINGS" "$ZPWR_LOCAL/zpwrAllKeybindings.txt" "$ZPWR_LOCAL"
# build GitHub URL
zpwrEvalIfNeeded ZPWR_GITHUB_URL "$ZPWR_GITHUB_URL" "https://github.com/$ZPWR_GITHUB_ACCOUNT" "$ZPWR_GITHUB_ACCOUNT"
#}}}***********************************************************
