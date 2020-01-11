# ZPWR => World's Most Advanced UNIX Terminal Environment

![Alt text](http://jakobmenke.com/img/tmuxfinal1.png?raw=true)

This project started out as my own version of Hashrocket's [Dotmatrix](https://github.com/hashrocket/dotmatrix) repo and it then grew.

It is an extremely powerful custom terminal environment bilt on top of [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh).

There is a significant amount of custom zsh, bash, vimL and perl code that I wrote to support very advanced functionality that I desired.

## ZPWR Features
- spelling correction, abbreviation expansion and automatic capitalization on the command line
- snippets with tabstops that expand with spacebar and advance to next stop with C-p
- expanding regular aliases and global aliases from zsh menu selection and in vim insert mode
- color-coded sections of zsh menu completion for commands, aliases, functions and builtins
- color-coded sections of zsh menu completion for man pages
- custom styling for tag grouping in menu selection
- tag grouping for man pages
- colorized man pages color grouped by sections
- insert matching quotes, brackets and parentheses
- custom keybinding to open files most recently edited based on viminfo and placed into fzf for fuzzy searching
- keybinding to run current code file open in vim in tmux pane to right
- keybinding to run current vim selection in tmux pane to right as standalone script
- keybinding to run current vim selection in tmux pane to right in REPL
- fzf preview pane show contents of JAR, WAR, deb, rpm, zip, tgz and gzip files
- 10.5k zsh completions
- ergonomic, recursive tmux keybindings
- zsh keybindings to fzf search file names and syntax highlighted, numbered file preview
- zsh keybindings to fzf search file contents and syntax highlighted, numbered file preview
- zsh keybindings to fzf search of most recent files opened in vim with syntax highlighted, numbered preview pane
- zsh keybindings to fzf search of network process with lsof return PIDs
- fzf searching of all git directories on computer
- fzf searching of all dirty git directories on computer
- zsh completion for z command bases on .z database
- keybindings to save to mysql learning table
- functions to search from mysql learning table
- functions, `redo <number...>` and `rsql <number...>`, to modify mysql learning table
- keybinding formats newlines and spaces before saving to mysql learning database
- oh my zsh plugins loading based on OS
- tmux keybindings based on OS
- custom banner commands when new shell is launched
- custom ZPWR banner when `getrc`, `zpwr banner` and `install.sh` run
- zle sed subs on current command line
- vim text objects on command line
- vim extract method for shell, perl and python scripts (gv to select extracted)
- vim extract variable for shell, perl and python scripts (gv to select extracted)
- software updater script, `source autoUpdater.h`,  on 24 hour loop
- colorized side diffs on zsh keybinding before git push
- zsh keybindings to git add, commit and push with commit message from current command line
- git blacklisted directories
- zle quote swappers
- zsh, tmux and vim keybindings to copy to clipboard
- getrc shell function to pull down latest code changes from this repo
- shell function, c, that is wrapper around bat that works with text, jars, tgz, rpm, deb and zips
- shell function, c, uses same shell code to generate output that default FZF preview pane does
- shell function, c, auto runs sudo when file is not readable
- shell function, r, that cds to any of parent directories with zsh completion
- 150+ bash, perl, zsh and python scripts
- clearList function that run clear and ls and show stats for commands, files, aliases, functions etc
- color coded, tag grouped clearList zsh completion
- search google from tmux mouse drag selection (tmux's copy-mode-vi)
- open URLs and files from tmux mouse drag selection (tmux's copy-mode-vi)
- zpwr subcommands covering most of ZPWR functions with zsh completion `zpwr <tab>`
- centralized FZF preview pane customization
- centralized environment variables in ZPWR namespace to control functionality
- environment variables in ZPWR namespace in vim YCM completion from ctags generated `~/tags`
- centralized ZPWR files in `~/.zpwr` allowing easy uninstall
- systemd functions for starting/enabling, stopping/disabling service with zsh completion
- poll.service = systemd service that polls github and download latest zpwr code
- learn.service = systemd service that runs learning collection API
- restart function that launches poll and learn by enabling and starting in systemd

## ZPWR Dependencies
- oh-my-zsh with 63 plugins of which 16 are custom
- zsh
- Powerlevel9k zsh prompt with ~dirs
- tmux
- neovim with 76 plugins and python3/node support
- youcompleteme
- ultisnips
- supertab
- pathogen
- vundle
- iftop-color
- htop
- ccze
- rust/cargo
- rustup
- exa
- bat
- fd-find
- ripgrep
- cargo-update
- go
- fzf
- gotop
- lolcat
- mylg
- python3
- powerline-status for tmux
- vim-airline status bar
- grc
- mycli
- pgcli
- ponysay
- pygments
- perl
- bash

# Supported Operating Systems:
- macOS
- raspbian
- debian
- freebsd
- kali
- fedora
- centos
- debian
- arch
- mint
- zorin
- parrot OS
- WSL ubuntu/kali/suse/leap/fedora
- SUSE

# Installation Instructions

```sh
git clone http://github.com/MenkeTechnologies/zpwr.git && cd zpwr && ./install.sh
```

The installer will confirm what will be installed and overwritten before executing.

Some interactivity is required near end of installer for postfix, wireshark and snort installs.

Once you reach the oh-my-zsh prompt, type 
```sh
logout
```
or
```sh
exit
```
or type C-d (Control-d) to return to installer script.

## Install Destination

Most zpwr custom configs will be installed to `~/.zpwr`.  This is the `ZPWR` and `ZPWR_HIDDEN_DIR` environment variables.  Exceptions are `~/.zshrc`, `~/.vimrc`, `~/.tmux.conf`, `~/grc.zsh` which are installed to home dir.
Your old configs for these files will be found in a directory name approximately `~/.zpwr/username.rc.bak.date` after install.  Exact directory name is generated as shown.
```sh
backupdir="$ZPWR_HIDDEN_DIR/$USER.rc.bak.$(date +'%m.%d.%Y')"
```

## Uninstall
Copy all configs from backup dir mentioned above to home directory overwriting the ones installed by zpwr, most importantly the `.zshrc`, `.vimrc` and `.tmux.conf`.
Then remove the zpwr dir as shown.
```sh
rm -rf ~/.zpwr
```
This will not uninstall packages installed by system package manager, pip modules, gems, vim plugins, tmux plugins and zsh plugins.
You must remove these manually if desired.
If desired you can also uninstall oh-my-zsh with ```uninstall_oh_my_zsh```.  Make sure the `~/.zshrc` is your original version.

## Font
You need to change the Terminal font to support the Powerline triangles and other special characters in the Powerlevel9k PROMPT.

The installer installs Hack Nerd Font on the Mac with Homebrew and Powerline Symbols on Linux.  Consult your terminal emulator
documentation for details on how to change the font.

## getrc and copyConf functions
There is a shell function called `getrc`, or `zpwr update` that will update ZPWR by cloning the latest changes from this repository.
It invokes `copyConf` which overwrites `~/.zshrc`, `~/.vimrc`, `~/.shell_aliases_functions.sh`, `~.tmux.conf`.
`copyConf` will also overwrite all scripts in `$ZPWR_SCRIPTS` which defaults to `~/.zpwr/scripts` and some other configs in home directory.
Run `clearList getrc copyConf` to see the bodies of these function.

## Tmux prefix
The default tmux prefix key is C-x (control-x) on macOS so one can control inner tmux sessions on Linux/UNIX (prefix is C-b) separately.
To invoke C-x in the shell press the keybinding twice.
The left most segment of the tmux powerline status bar will be highlighted when the prefix is pressed and dehighlight when prefix is deactivated.

## Vim Plugins
There are 76 vim plugins installed.  One of which is vim-autosave which autosaves all edits thus making `:w` unnecessary.
`:u 0` in vim command(colon) mode will reset all changes in buffer which will then be autosaved.

## Bypassing expansion on space
C-Space (Control-Space or actually the ^@ terminal escape code) will bypass all expansion of globbing, aliases and words.
Expansion can be disabled entirely by removing zsh-expand from plugins array in `~/.zshrc`.

> ~/.zshrc:265
```sh
plugins=(fasd-simple gh_reveal zsh-z zsh-expand zsh-surround
```

Alternatively, change these env vars to false in `~/.zpwr/.tokens.sh`.  The first controls all expansion in any position.
The second variable controls expansion in second position.  For example with sudo/zpwr/env in the first position and the alias to expand in the second position on the command line.
> ~/.zshrc:77
```sh
# aliases expand in first position
export ZPWR_EXPAND=true
# aliases expand in second position after sudo
export ZPWR_EXPAND_SECOND_POSITION=true
```

The relevant code is the zsh-expand plugin for expansion at the second position.
> ~/.oh-my-zsh/custom/plugins/zsh-expand/zsh-expand.plugin.zsh: 368
```sh
if echo "$firstword_partition" | command grep -qE '(sudo|zpwr|env)';then
```

## Running script from vim in tmux right pane is supported for these languages
> ~/.vimrc
```vim
    let supportedTypes=['sh','zsh', 'cr','py','rb','pl', 'clj', 'tcl', 'vim', 'lisp', 'hs', 'ml', 'coffee', 'swift', 'lua', 'java', 'f90']
```

File ending of currently edited file in vim determines the interpreter used by the bash script `$ZPWR_SCRIPTS/runner.sh` which defaults to `~/.zpwr/scripts/runner.sh`

## Tmux Main Window
The main window show in the screenshots is started by Prefix-D in an empty tmux window.  This sources a tmux script named control-window.
Alternatively you could invoke the script by Prefix-: `source-file ~/.tmux/control-window` or in the terminal with `tmux source-file ~/.tmux/control-window` in an empty tmux window.

## Personal Config
Startup shell files will source `~/.zpwr/.tokens.sh` so you can put your additional code there.  This file will not be overridden with the `getrc` shell function.

Running `zpwr regen` will regenerate all cache files in `~/.zpwr` and create a ctags file named `~/tags` in your home directory.
YCM (vim code completion engine) will source this file (`autocmd filetype * set tags+=~/tags` includes `~/tags`), while providing completion so ZPWR env vars vim code completion in `~/.tokens.sh` should work.  Inside vim `<Space>]` will jump to definition of the tag in the preview window.

## zpwr verbs
Typing `zpwr <tab>` will invoked zsh menucompletion for zpwr verbs/subcommands.  These subcommands just invoke other shell functions.

## ZPWR_GITHUB_ACCOUNT variable
Change in `~/.zpwr/.tokens.sh`
```sh
export ZPWR_GITHUB_ACCOUNT='MenkeTechnologies'
```
to match your GitHub account name to enable various functionality with your account like `openMyGH`, `hc` and `hd` shell functions for opening your GitHub home page, creating and deleting GitHub repos from the command line respectively

## Environment Variables
These are environment variables set in `~/.zshrc` which you can override in your `~/.zpwr/.tokens.sh` to customize the behavior of the terminal setup.
```sh
# Global Environment Variables for ZPWR by MenkeTechnologies
# More Environment Variables in ~/.zpwr/.shell_aliases_functions.sh near top of file
# override in ~/.zpwr/.tokens.sh
# see README.md
# set to POWERLEVEL to use the powerlevel9k prompt
export ZPWR_PROMPT=POWERLEVEL
# aliases expand in first position
export ZPWR_EXPAND=true
# aliases expand in second position after sudo
export ZPWR_EXPAND_SECOND_POSITION=true
# aliases expand after spelling correction
export ZPWR_CORRECT_EXPAND=true
# auto select first item of menuselect
export ZPWR_AUTO_SELECT=true
# typing leading quote, paren, bracket inserts trailing after caret
export ZPWR_SURROUND=true
# output is more colorful
export ZPWR_COLORS=true
# linux OS auto attach to tmux sessions
export ZPWR_AUTO_ATTACH=true
# exa command invoked from clearList shows extended attributes
export ZPWR_EXA_EXTENDED=true
# uses the zprof function to profile startup
export ZPWR_PROFILING=alse
# turns on debugging logs using logg function
export ZPWR_DEBUG=false
# turns on set -x
export ZPWR_TRACE=false
# use nvim not vim
export ZPWR_USE_NEOVIM=true
#whether to include all the zpwr learning functions
export ZPWR_LEARN=true
# ANSI styling codes for git commits
export ZPWR_COMMIT_STYLE='1;37;45'
# bat (syntax highlighting) theme
export ZPWR_BAT_THEME="GitHub"
# the char that prefixes global aliases like je<space>
export ZPWR_GLOBAL_ALIAS_PREFIX=j
# the string that marks a tabstop when expanding aliases
# move to next tabstop with ^P
export ZPWR_TABSTOP=__________
# the OS of the host
export ZPWR_OS_TYPE="$(uname -s | perl -e 'print lc<>')"
# the base dir for zpwr configs
export ZPWR_HIDDEN_DIR="$HOME/.zpwr"
export ZPWR="$ZPWR_HIDDEN_DIR"
export ZPWR_TMUX="$ZPWR_HIDDEN_DIR/.tmux"
# the base dir for zpwr temp
export ZPWR_HIDDEN_DIR_TEMP="$HOME/.zpwr/.temp"
# the path to a lock file (semaphore) for zpwr
export ZPWR_LOCK_FILE="$ZPWR_HIDDEN_DIR/.lock"
# for alternating pretty printer
export ZPWR_DELIMITER_CHAR='%'
export ZPWR_GITHUB_ACCOUNT='MenkeTechnologies'
export ZPWR_GITHUB_URL="https://github.com/$ZPWR_GITHUB_ACCOUNT"
export ZPWR_REPO_NAME="zpwr"
# the repo name for more zsh compsys completions
export ZPWR_COMPLETION_DIR="zsh-more-completions"
# the path for vim keybindings cache
export ZPWR_VIM_KEYBINDINGS="$ZPWR_HIDDEN_DIR/zpwrVimKeybindings.txt"
# the path for all keybindings cache
export ZPWR_ALL_KEYBINDINGS="$ZPWR_HIDDEN_DIR/zpwrAllKeybindings.txt"
# logg function underscore color
export ZPWR_LOG_UNDER_COLOR='\x1b[0;34m'
# logg function quote color
export ZPWR_LOG_QUOTE_COLOR='\x1b[0;35m'
# logg function timestamp color
export ZPWR_LOG_DATE_COLOR='\x1b[0;32;44m'
# logg function message color
export ZPWR_LOG_MSG_COLOR='\x1b[0;37;45m'
# run ls after rm and other modifying commands such as touch automatically
export ZPWR_RM_AUTO_LS=true
# run ls after cd automatically
export ZPWR_CD_AUTO_LS=true
# cache file for all zpwr env lookups
export ZPWR_ENV="$ZPWR_HIDDEN_DIR/zpwrEnv"
# forked powerlevel9k config file for PROMPT
export ZPWR_PROMPT_FILE="$ZPWR_HIDDEN_DIR/.powerlevel9kconfig.sh"
# the location of associated interpreted scripts
export ZPWR_SCRIPTS="$ZPWR_HIDDEN_DIR/scripts"
# this the description separator in compsys option completions (ls -<tab>)
# and the separator for function se() between row number and learning
export ZPWR_CHAR_LOGO="<<)(>>"
# set to comma separated list of pane numbers
# to activate sending to numbered tmux panes
export ZPWR_SEND_KEYS_PANE=-1
# when true sends every char to synced panes
# when false does not send enter and Control to synced panes
export ZPWR_SEND_KEYS_FULL=false
# when ZPWR_USE_NEOVIM=true this the file used to find most recent files opened in neovim
export ZPWR_NVIMINFO="$ZPWR_HIDDEN_DIR/.nviminfo"
#when true vim normal mode C-V mapped to exec current file in right tmux pane
export ZPWR_MAP_C_V_VIM_NORMAL=false
```

## Contributing
I am always looking for contributors.

## Warnings
Moving the scripts from `$ZPWR_SCRIPTS` which defaults to `~/.zpwr/scripts` and `~/.zpwr/.tmux` will break a lot of functionality because vim and tmux configurations depend on these scipts for advanced features

# Running on a MacbookPro
![Alt text](http://jakobmenke.com/img/tmuxfinal22.png?raw=true)
![Alt text](http://jakobmenke.com/img/tmux-scripts.png)
# Running on the Raspberry Pi 3
![Alt text](http://jakobmenke.com/img/tmuxfinal3.png?raw=true)
![Alt text](http://jakobmenke.com/img/tmuxfinal4.png?raw=true)
# Running on the Rock64
![Final 5](http://jakobmenke.com/img/tmuxfinal5.jpg?raw=true)

## Keybindings generated with `source keybindingsToREADME.zsh`

# Tmux keybindings (tmux lsk)
- ``` bind-key    -T copy-mode    C-Space               send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode    C-a                   send-keys -X start-of-line ```
- ``` bind-key    -T copy-mode    C-b                   send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode    C-c                   send-keys -X cancel ```
- ``` bind-key    -T copy-mode    C-e                   send-keys -X end-of-line ```
- ``` bind-key    -T copy-mode    C-f                   send-keys -X cursor-right ```
- ``` bind-key    -T copy-mode    C-g                   send-keys -X clear-selection ```
- ``` bind-key    -T copy-mode    C-k                   send-keys -X copy-end-of-line ```
- ``` bind-key    -T copy-mode    C-n                   send-keys -X cursor-down ```
- ``` bind-key    -T copy-mode    C-p                   send-keys -X cursor-up ```
- ``` bind-key    -T copy-mode    C-r                   command-prompt -i -I "#{pane_search_string}" -p "(search up)" "send -X search-backward-incremental \"%%%\"" ```
- ``` bind-key    -T copy-mode    C-s                   command-prompt -i -I "#{pane_search_string}" -p "(search down)" "send -X search-forward-incremental \"%%%\"" ```
- ``` bind-key    -T copy-mode    C-v                   send-keys -X page-down ```
- ``` bind-key    -T copy-mode    C-w                   send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode    Escape                send-keys -X cancel ```
- ``` bind-key    -T copy-mode    Space                 send-keys -X page-down ```
- ``` bind-key    -T copy-mode    ,                     send-keys -X jump-reverse ```
- ``` bind-key    -T copy-mode    \;                    send-keys -X jump-again ```
- ``` bind-key    -T copy-mode    F                     command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode    N                     send-keys -X search-reverse ```
- ``` bind-key    -T copy-mode    R                     send-keys -X rectangle-toggle ```
- ``` bind-key    -T copy-mode    T                     command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode    f                     command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode    g                     command-prompt -p "(goto line)" "send -X goto-line \"%%%\"" ```
- ``` bind-key    -T copy-mode    n                     send-keys -X search-again ```
- ``` bind-key    -T copy-mode    q                     send-keys -X cancel ```
- ``` bind-key    -T copy-mode    t                     command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode    MouseDown1Pane        select-pane ```
- ``` bind-key    -T copy-mode    MouseDrag1Pane        select-pane \; send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode    MouseDragEnd1Pane     send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode    WheelUpPane           select-pane \; send-keys -X -N 5 scroll-up ```
- ``` bind-key    -T copy-mode    WheelDownPane         select-pane \; send-keys -X -N 5 scroll-down ```
- ``` bind-key    -T copy-mode    DoubleClick1Pane      select-pane \; send-keys -X select-word ```
- ``` bind-key    -T copy-mode    TripleClick1Pane      select-pane \; send-keys -X select-line ```
- ``` bind-key    -T copy-mode    Home                  send-keys -X start-of-line ```
- ``` bind-key    -T copy-mode    End                   send-keys -X end-of-line ```
- ``` bind-key    -T copy-mode    NPage                 send-keys -X page-down ```
- ``` bind-key    -T copy-mode    PPage                 send-keys -X page-up ```
- ``` bind-key    -T copy-mode    Up                    send-keys -X cursor-up ```
- ``` bind-key    -T copy-mode    Down                  send-keys -X cursor-down ```
- ``` bind-key    -T copy-mode    Left                  send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode    Right                 send-keys -X cursor-right ```
- ``` bind-key    -T copy-mode    M-C-b                 send-keys -X previous-matching-bracket ```
- ``` bind-key    -T copy-mode    M-C-f                 send-keys -X next-matching-bracket ```
- ``` bind-key    -T copy-mode    M-1                   command-prompt -N -I 1 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-2                   command-prompt -N -I 2 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-3                   command-prompt -N -I 3 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-4                   command-prompt -N -I 4 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-5                   command-prompt -N -I 5 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-6                   command-prompt -N -I 6 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-7                   command-prompt -N -I 7 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-8                   command-prompt -N -I 8 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-9                   command-prompt -N -I 9 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-<                   send-keys -X history-top ```
- ``` bind-key    -T copy-mode    M->                   send-keys -X history-bottom ```
- ``` bind-key    -T copy-mode    M-R                   send-keys -X top-line ```
- ``` bind-key    -T copy-mode    M-b                   send-keys -X previous-word ```
- ``` bind-key    -T copy-mode    M-f                   send-keys -X next-word-end ```
- ``` bind-key    -T copy-mode    M-m                   send-keys -X back-to-indentation ```
- ``` bind-key    -T copy-mode    M-r                   send-keys -X middle-line ```
- ``` bind-key    -T copy-mode    M-v                   send-keys -X page-up ```
- ``` bind-key    -T copy-mode    M-w                   send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode    "M-{"                 send-keys -X previous-paragraph ```
- ``` bind-key    -T copy-mode    "M-}"                 send-keys -X next-paragraph ```
- ``` bind-key    -T copy-mode    M-Up                  send-keys -X halfpage-up ```
- ``` bind-key    -T copy-mode    M-Down                send-keys -X halfpage-down ```
- ``` bind-key    -T copy-mode    C-Up                  send-keys -X scroll-up ```
- ``` bind-key    -T copy-mode    C-Down                send-keys -X scroll-down ```
- ``` bind-key    -T copy-mode-vi C-b                   send-keys -X page-up ```
- ``` bind-key    -T copy-mode-vi C-c                   send-keys -X cancel ```
- ``` bind-key    -T copy-mode-vi C-d                   send-keys -X halfpage-down ```
- ``` bind-key    -T copy-mode-vi C-e                   send-keys -X scroll-down ```
- ``` bind-key    -T copy-mode-vi C-f                   send-keys -X page-down ```
- ``` bind-key    -T copy-mode-vi C-h                   send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode-vi C-j                   send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode-vi Enter                 send-keys -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy" ```
- ``` bind-key    -T copy-mode-vi C-u                   send-keys -X halfpage-up ```
- ``` bind-key    -T copy-mode-vi C-v                   send-keys -X rectangle-toggle ```
- ``` bind-key    -T copy-mode-vi C-y                   send-keys -X scroll-up ```
- ``` bind-key    -T copy-mode-vi Escape                send-keys -X clear-selection ```
- ``` bind-key    -T copy-mode-vi Space                 send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode-vi \$                    send-keys -X end-of-line ```
- ``` bind-key    -T copy-mode-vi %                     send-keys -X next-matching-bracket ```
- ``` bind-key    -T copy-mode-vi ,                     send-keys -X jump-reverse ```
- ``` bind-key    -T copy-mode-vi /                     command-prompt -p "(search down)" "send -X search-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 0                     send-keys -X start-of-line ```
- ``` bind-key    -T copy-mode-vi 1                     command-prompt -N -I 1 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 2                     command-prompt -N -I 2 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 3                     command-prompt -N -I 3 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 4                     command-prompt -N -I 4 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 5                     command-prompt -N -I 5 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 6                     command-prompt -N -I 6 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 7                     command-prompt -N -I 7 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 8                     command-prompt -N -I 8 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 9                     command-prompt -N -I 9 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi :                     command-prompt -p "(goto line)" "send -X goto-line \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi \;                    send-keys -X jump-again ```
- ``` bind-key    -T copy-mode-vi ?                     command-prompt -p "(search up)" "send -X search-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi A                     send-keys -X append-selection-and-cancel ```
- ``` bind-key    -T copy-mode-vi B                     send-keys -X previous-space ```
- ``` bind-key    -T copy-mode-vi D                     send-keys -X copy-end-of-line ```
- ``` bind-key    -T copy-mode-vi E                     send-keys -X next-space-end ```
- ``` bind-key    -T copy-mode-vi F                     command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi G                     send-keys -X history-bottom ```
- ``` bind-key    -T copy-mode-vi H                     send-keys -X top-line ```
- ``` bind-key    -T copy-mode-vi J                     send-keys -X scroll-down ```
- ``` bind-key    -T copy-mode-vi K                     send-keys -X scroll-up ```
- ``` bind-key    -T copy-mode-vi L                     send-keys -X bottom-line ```
- ``` bind-key    -T copy-mode-vi M                     send-keys -X middle-line ```
- ``` bind-key    -T copy-mode-vi N                     send-keys -X search-reverse ```
- ``` bind-key    -T copy-mode-vi T                     command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi V                     send-keys -X select-line ```
- ``` bind-key    -T copy-mode-vi W                     send-keys -X next-space ```
- ``` bind-key    -T copy-mode-vi ^                     send-keys -X back-to-indentation ```
- ``` bind-key    -T copy-mode-vi b                     send-keys -X previous-word ```
- ``` bind-key    -T copy-mode-vi e                     send-keys -X next-word-end ```
- ``` bind-key    -T copy-mode-vi f                     command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi g                     send-keys -X history-top ```
- ``` bind-key    -T copy-mode-vi h                     send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode-vi j                     send-keys -X cursor-down ```
- ``` bind-key    -T copy-mode-vi k                     send-keys -X cursor-up ```
- ``` bind-key    -T copy-mode-vi l                     send-keys -X cursor-right ```
- ``` bind-key    -T copy-mode-vi n                     send-keys -X search-again ```
- ``` bind-key    -T copy-mode-vi o                     send-keys -X other-end ```
- ``` bind-key    -T copy-mode-vi q                     send-keys -X cancel ```
- ``` bind-key    -T copy-mode-vi s                     send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" \; run-shell "reattach-to-user-namespace bash ~/.zpwr/.tmux/google.sh google" ```
- ``` bind-key    -T copy-mode-vi t                     command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi v                     send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode-vi w                     send-keys -X next-word ```
- ``` bind-key    -T copy-mode-vi x                     send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" \; display-message -F "current pane directory #{pane_current_path}" \; run-shell "tmux display-message -p -F \"#{pane_current_path}\" > ~/.zpwr/.tmux/pane_pwd" \; run-shell "reattach-to-user-namespace bash ~/.zpwr/.tmux/google.sh open" ```
- ``` bind-key    -T copy-mode-vi y                     send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" ```
- ``` bind-key    -T copy-mode-vi z                     send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" \; run-shell "reattach-to-user-namespace bash ~/.zpwr/.tmux/google.sh google" ```
- ``` bind-key    -T copy-mode-vi \{                    send-keys -X previous-paragraph ```
- ``` bind-key    -T copy-mode-vi \}                    send-keys -X next-paragraph ```
- ``` bind-key    -T copy-mode-vi MouseDown1Pane        select-pane ```
- ``` bind-key    -T copy-mode-vi MouseDown3Pane        send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" \; run-shell "reattach-to-user-namespace bash ~/.zpwr/.tmux/google.sh google" ```
- ``` bind-key    -T copy-mode-vi MouseDrag1Pane        select-pane \; send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode-vi MouseDragEnd1Pane     send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode-vi WheelUpPane           select-pane \; send-keys -X -N 5 scroll-up ```
- ``` bind-key    -T copy-mode-vi WheelDownPane         select-pane \; send-keys -X -N 5 scroll-down ```
- ``` bind-key    -T copy-mode-vi DoubleClick1Pane      select-pane \; send-keys -X select-word ```
- ``` bind-key    -T copy-mode-vi TripleClick1Pane      select-pane \; send-keys -X select-line ```
- ``` bind-key    -T copy-mode-vi BSpace                send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode-vi NPage                 send-keys -X page-down ```
- ``` bind-key    -T copy-mode-vi PPage                 send-keys -X page-up ```
- ``` bind-key    -T copy-mode-vi Up                    send-keys -X cursor-up ```
- ``` bind-key    -T copy-mode-vi Down                  send-keys -X cursor-down ```
- ``` bind-key    -T copy-mode-vi Left                  send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode-vi Right                 send-keys -X cursor-right ```
- ``` bind-key    -T copy-mode-vi C-Up                  send-keys -X scroll-up ```
- ``` bind-key    -T copy-mode-vi C-Down                send-keys -X scroll-down ```
- ``` bind-key    -T prefix       C-n                   next-window ```
- ``` bind-key    -T prefix       C-o                   rotate-window ```
- ``` bind-key    -T prefix       C-p                   previous-window ```
- ``` bind-key    -T prefix       C-r                   run-shell /Users/wizard/.tmux/plugins/tmux-resurrect/scripts/restore.sh ```
- ``` bind-key    -T prefix       C-s                   run-shell /Users/wizard/.tmux/plugins/tmux-resurrect/scripts/save.sh ```
- ``` bind-key    -T prefix       C-v                   run-shell "tmux set buffer \"$(reattach-to-user-namespace pbpaste)\"; tmux paste-buffer" ```
- ``` bind-key    -T prefix       C-x                   send-prefix ```
- ``` bind-key    -T prefix       C-z                   suspend-client ```
- ``` bind-key    -T prefix       Space                 next-layout ```
- ``` bind-key    -T prefix       !                     break-pane ```
- ``` bind-key    -T prefix       \"                    split-window ```
- ``` bind-key    -T prefix       \#                    list-buffers ```
- ``` bind-key    -T prefix       \$                    command-prompt -I "#S" "rename-session -- '%%'" ```
- ``` bind-key    -T prefix       %                     split-window -h ```
- ``` bind-key    -T prefix       &                     confirm-before -p "kill-window #W? (y/n)" kill-window ```
- ``` bind-key    -T prefix       \'                    command-prompt -p index "select-window -t ':%%'" ```
- ``` bind-key -r -T prefix       (                     switch-client -p ```
- ``` bind-key -r -T prefix       )                     switch-client -n ```
- ``` bind-key    -T prefix       +                     split-window -v -c "#{pane_current_path}" \; select-pane -l \; kill-pane ```
- ``` bind-key    -T prefix       ,                     command-prompt -I "#W" "rename-window -- '%%'" ```
- ``` bind-key    -T prefix       -                     split-window -v ```
- ``` bind-key    -T prefix       .                     command-prompt "move-window -t '%%'" ```
- ``` bind-key    -T prefix       0                     select-window -t :=0 ```
- ``` bind-key    -T prefix       1                     select-window -t :=1 ```
- ``` bind-key    -T prefix       2                     select-window -t :=2 ```
- ``` bind-key    -T prefix       3                     select-window -t :=3 ```
- ``` bind-key    -T prefix       4                     select-window -t :=4 ```
- ``` bind-key    -T prefix       5                     select-window -t :=5 ```
- ``` bind-key    -T prefix       6                     select-window -t :=6 ```
- ``` bind-key    -T prefix       7                     select-window -t :=7 ```
- ``` bind-key    -T prefix       8                     select-window -t :=8 ```
- ``` bind-key    -T prefix       9                     select-window -t :=9 ```
- ``` bind-key    -T prefix       :                     command-prompt ```
- ``` bind-key    -T prefix       \;                    last-pane ```
- ``` bind-key    -T prefix       <                     display-menu -T "#[align=centre]#{window_index}:#{window_name}" -x W -y S "Swap Left" l "swap-window -t:-1" "Swap Right" r "swap-window -t:+1" "#{?pane_marked_set,,-}Swap Marked" s swap-window  Kill X kill-window Respawn R "respawn-window -k" "#{?pane_marked,Unmark,Mark}" m "select-pane -m" Rename n "command-prompt -I \"#W\" \"rename-window -- '%%'\""  "New After" w "new-window -a" "New At End" W new-window ```
- ``` bind-key    -T prefix       =                     choose-buffer -Z ```
- ``` bind-key    -T prefix       >                     display-menu -T "#[align=centre]#{pane_index} (#{pane_id})" -x P -y P "#{?mouse_word,Search For #[underscore]#{=/9/...:mouse_word},}" C-r "copy-mode -t=; send -Xt= search-backward \"#{q:mouse_word}\"" "#{?mouse_word,Type #[underscore]#{=/9/...:mouse_word},}" C-y "send-keys -l -- \"#{q:mouse_word}\"" "#{?mouse_word,Copy #[underscore]#{=/9/...:mouse_word},}" c "set-buffer -- \"#{q:mouse_word}\"" "#{?mouse_line,Copy Line,}" l "set-buffer -- \"#{q:mouse_line}\""  "Horizontal Split" h "split-window -h" "Vertical Split" v "split-window -v"  "Swap Up" u "swap-pane -U" "Swap Down" d "swap-pane -D" "#{?pane_marked_set,,-}Swap Marked" s swap-pane  Kill X kill-pane Respawn R "respawn-pane -k" "#{?pane_marked,Unmark,Mark}" m "select-pane -m" "#{?window_zoomed_flag,Unzoom,Zoom}" z "resize-pane -Z" ```
- ``` bind-key    -T prefix       ?                     list-keys ```
- ``` bind-key    -T prefix       D                     source-file /Users/wizard/.zpwr/.tmux/control-window ```
- ``` bind-key    -T prefix       E                     source-file /Users/wizard/.zpwr/.tmux/fourVertical ```
- ``` bind-key    -T prefix       F                     source-file /Users/wizard/.zpwr/.tmux/four-panes ```
- ``` bind-key    -T prefix       G                     source-file /Users/wizard/.zpwr/.tmux/eight-panes ```
- ``` bind-key -r -T prefix       H                     resize-pane -L 5 ```
- ``` bind-key    -T prefix       I                     run-shell /Users/wizard/.tmux/plugins/tpm/bindings/install_plugins ```
- ``` bind-key -r -T prefix       J                     resize-pane -D 5 ```
- ``` bind-key -r -T prefix       K                     resize-pane -U 5 ```
- ``` bind-key -r -T prefix       L                     resize-pane -R 5 ```
- ``` bind-key    -T prefix       M                     select-pane -M ```
- ``` bind-key    -T prefix       O                     source-file /Users/wizard/.zpwr/.tmux/sixteen-panes ```
- ``` bind-key    -T prefix       P                     paste-buffer ```
- ``` bind-key    -T prefix       R                     source-file /Users/wizard/.zpwr/.tmux/thirtytwo-panes-repl ```
- ``` bind-key    -T prefix       S                     set-window-option synchronize-panes ```
- ``` bind-key    -T prefix       T                     source-file /Users/wizard/.zpwr/.tmux/config-files ```
- ``` bind-key    -T prefix       U                     run-shell /Users/wizard/.tmux/plugins/tpm/bindings/update_plugins ```
- ``` bind-key    -T prefix       Y                     split-window -v -c "#{pane_current_path}" \; select-pane -l \; kill-pane ```
- ``` bind-key    -T prefix       [                     copy-mode ```
- ``` bind-key    -T prefix       \\                    split-window -h -c "#{pane_current_path}" ```
- ``` bind-key    -T prefix       ]                     paste-buffer ```
- ``` bind-key    -T prefix       _                     split-window -v -c "#{pane_current_path}" ```
- ``` bind-key    -T prefix       c                     new-window ```
- ``` bind-key    -T prefix       d                     detach-client ```
- ``` bind-key    -T prefix       f                     command-prompt "find-window -Z -- '%%'" ```
- ``` bind-key    -T prefix       i                     display-message ```
- ``` bind-key    -T prefix       l                     source-file /Users/wizard/.zpwr/.tmux/learn ```
- ``` bind-key    -T prefix       m                     select-pane -m ```
- ``` bind-key -r -T prefix       n                     next-window ```
- ``` bind-key    -T prefix       o                     select-pane -t :.+ ```
- ``` bind-key -r -T prefix       p                     previous-window ```
- ``` bind-key    -T prefix       q                     display-panes -d 5000 ```
- ``` bind-key    -T prefix       r                     source-file /Users/wizard/.tmux.conf \; display-message "Tmux Reloaded!" ```
- ``` bind-key    -T prefix       s                     choose-tree -Zs ```
- ``` bind-key    -T prefix       t                     clock-mode ```
- ``` bind-key    -T prefix       w                     choose-tree -Z ```
- ``` bind-key    -T prefix       x                     kill-pane ```
- ``` bind-key    -T prefix       z                     resize-pane -Z ```
- ``` bind-key -r -T prefix       \{                    rotate-window ```
- ``` bind-key    -T prefix       |                     split-window -h ```
- ``` bind-key    -T prefix       \}                    swap-pane -D ```
- ``` bind-key    -T prefix       \~                    show-messages ```
- ``` bind-key -r -T prefix       DC                    refresh-client -c ```
- ``` bind-key    -T prefix       PPage                 copy-mode -u ```
- ``` bind-key -r -T prefix       Up                    select-pane -U ```
- ``` bind-key -r -T prefix       Down                  select-pane -D ```
- ``` bind-key -r -T prefix       Left                  select-pane -L ```
- ``` bind-key -r -T prefix       Right                 select-pane -R ```
- ``` bind-key    -T prefix       M-1                   select-layout even-horizontal ```
- ``` bind-key    -T prefix       M-2                   select-layout even-vertical ```
- ``` bind-key    -T prefix       M-3                   select-layout main-horizontal ```
- ``` bind-key    -T prefix       M-4                   select-layout main-vertical ```
- ``` bind-key    -T prefix       M-5                   select-layout tiled ```
- ``` bind-key    -T prefix       M-n                   next-window -a ```
- ``` bind-key    -T prefix       M-o                   rotate-window -D ```
- ``` bind-key    -T prefix       M-p                   previous-window -a ```
- ``` bind-key    -T prefix       M-u                   run-shell /Users/wizard/.tmux/plugins/tpm/bindings/clean_plugins ```
- ``` bind-key -r -T prefix       M-Up                  resize-pane -U 5 ```
- ``` bind-key -r -T prefix       M-Down                resize-pane -D 5 ```
- ``` bind-key -r -T prefix       M-Left                resize-pane -L 5 ```
- ``` bind-key -r -T prefix       M-Right               resize-pane -R 5 ```
- ``` bind-key -r -T prefix       C-Up                  resize-pane -U ```
- ``` bind-key -r -T prefix       C-Down                resize-pane -D ```
- ``` bind-key -r -T prefix       C-Left                resize-pane -L ```
- ``` bind-key -r -T prefix       C-Right               resize-pane -R ```
- ``` bind-key -r -T prefix       S-Up                  refresh-client -U 10 ```
- ``` bind-key -r -T prefix       S-Down                refresh-client -D 10 ```
- ``` bind-key -r -T prefix       S-Left                refresh-client -L 10 ```
- ``` bind-key -r -T prefix       S-Right               refresh-client -R 10 ```
- ``` bind-key    -T root         MouseDown1Pane        select-pane -t = \; send-keys -M ```
- ``` bind-key    -T root         MouseDown1Status      select-window -t = ```
- ``` bind-key    -T root         MouseDown3Pane        if-shell -F -t = "#{mouse_any_flag}" "select-pane -t=; send-keys -M" "select-pane -t=" ```
- ``` bind-key    -T root         MouseDown3Status      display-menu -T "#[align=centre]#{window_index}:#{window_name}" -t = -x W -y S "Swap Left" l "swap-window -t:-1" "Swap Right" r "swap-window -t:+1" "#{?pane_marked_set,,-}Swap Marked" s swap-window  Kill X kill-window Respawn R "respawn-window -k" "#{?pane_marked,Unmark,Mark}" m "select-pane -m" Rename n "command-prompt -I \"#W\" \"rename-window -- '%%'\""  "New After" w "new-window -a" "New At End" W new-window ```
- ``` bind-key    -T root         MouseDown3StatusLeft  display-menu -T "#[align=centre]#{session_name}" -t = -x M -y S Next n "switch-client -n" Previous p "switch-client -p"  Renumber N "move-window -r" Rename n "command-prompt -I \"#S\" \"rename-session -- '%%'\""  "New Session" s new-session "New Window" w new-window ```
- ``` bind-key    -T root         MouseDown3StatusRight display-menu -T "#[align=centre]#{client_name}" -t = -x M -y S Detach d detach-client "Detach & Kill" X "detach-client -P" "Detach Others" o "detach-client -a"  Lock l lock-client ```
- ``` bind-key    -T root         MouseDrag1Pane        if-shell -F -t = "#{mouse_any_flag}" "if -Ft= \"#{pane_in_mode}\" \"copy-mode -M\" \"send-keys -M\"" "copy-mode -M" ```
- ``` bind-key    -T root         MouseDrag1Border      resize-pane -M ```
- ``` bind-key    -T root         WheelUpPane           if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= \"#{pane_in_mode}\" \"send-keys -M\" \"copy-mode -et=\"" ```
- ``` bind-key    -T root         WheelUpStatus         previous-window ```
- ``` bind-key    -T root         WheelDownStatus       next-window ```
- ``` bind-key    -T root         M-MouseDown3Pane      display-menu -T "#[align=centre]#{pane_index} (#{pane_id})" -t = -x M -y M "#{?mouse_word,Search For #[underscore]#{=/9/...:mouse_word},}" C-r "copy-mode -t=; send -Xt= search-backward \"#{q:mouse_word}\"" "#{?mouse_word,Type #[underscore]#{=/9/...:mouse_word},}" C-y "send-keys -l -- \"#{q:mouse_word}\"" "#{?mouse_word,Copy #[underscore]#{=/9/...:mouse_word},}" c "set-buffer -- \"#{q:mouse_word}\"" "#{?mouse_line,Copy Line,}" l "set-buffer -- \"#{q:mouse_line}\""  "Horizontal Split" h "split-window -h" "Vertical Split" v "split-window -v"  "Swap Up" u "swap-pane -U" "Swap Down" d "swap-pane -D" "#{?pane_marked_set,,-}Swap Marked" s swap-pane  Kill X kill-pane Respawn R "respawn-pane -k" "#{?pane_marked,Unmark,Mark}" m "select-pane -m" "#{?window_zoomed_flag,Unzoom,Zoom}" z "resize-pane -Z" ```
- ``` bind-key    -T root         M-Up                  select-pane -U ```
- ``` bind-key    -T root         M-Down                select-pane -D ```
- ``` bind-key    -T root         M-Left                select-pane -L ```
- ``` bind-key    -T root         M-Right               select-pane -R ```
# Zsh Vim Insert Mode keybindings (bindkey -M viins -L)
- ``` bindkey -M viins "^@" terminate-space ```
- ``` bindkey -M viins "^A" beginning-of-line ```
- ``` bindkey -M viins "^B" clipboard ```
- ``` bindkey -M viins "^C" self-insert ```
- ``` bindkey -M viins "^D" list-choices ```
- ``` bindkey -M viins "^E" end-of-line ```
- ``` bindkey -M viins "^F^D" intoFzf ```
- ``` bindkey -M viins "^F^F" fzf-file-widget ```
- ``` bindkey -M viins "^F^G" intoFzfAg ```
- ``` bindkey -M viins "^F^H" lsoffzf ```
- ``` bindkey -M viins "^F^K" alternateQuotes ```
- ``` bindkey -M viins "^F^L" list-choices ```
- ``` bindkey -M viins "^F^S" gitFunc ```
- ``` bindkey -M viins "^G" what-cursor-position ```
- ``` bindkey -M viins "^H" vi-backward-delete-char ```
- ``` bindkey -M viins "^I" fzf-completion ```
- ``` bindkey -M viins "^J" accept-line ```
- ``` bindkey -M viins "^K" learn ```
- ``` bindkey -M viins "^L" clear-screen ```
- ``` bindkey -M viins "^M" accept-line ```
- ``` bindkey -M viins "^N" sudo-command-line ```
- ``` bindkey -M viins "^O" edit-command-line ```
- ``` bindkey -M viins "^P" EOLorNextTabStop ```
- ``` bindkey -M viins "^Q" lastWordDouble ```
- ``` bindkey -M viins "^R" redo ```
- ``` bindkey -M viins "^S" gitFuncNoCheck ```
- ``` bindkey -M viins "^T" transpose-chars ```
- ``` bindkey -M viins "^U" clearLine ```
- ``` bindkey -M viins "^V^F" fasdFZF ```
- ``` bindkey -M viins "^V^G" fzf-cd-widget ```
- ``` bindkey -M viins "^V^N" vimFzfSudo ```
- ``` bindkey -M viins "^V^S" zFZF ```
- ``` bindkey -M viins "^V^V" vimFzf ```
- ``` bindkey -M viins "^V^Z" fzf-history-widget ```
- ``` bindkey -M viins "^V," fzfEnv ```
- ``` bindkey -M viins "^V." fzfAllKeybind ```
- ``` bindkey -M viins "^V/" locateFzf ```
- ``` bindkey -M viins "^Vc" fzfCommits ```
- ``` bindkey -M viins "^Vk" fzfVimKeybind ```
- ``` bindkey -M viins "^W" vi-backward-kill-word ```
- ``` bindkey -M viins "^X^R" _read_comp ```
- ``` bindkey -M viins "^X?" _complete_debug ```
- ``` bindkey -M viins "^XC" _correct_filename ```
- ``` bindkey -M viins "^Xa" _expand_alias ```
- ``` bindkey -M viins "^Xc" _correct_word ```
- ``` bindkey -M viins "^Xd" _list_expansions ```
- ``` bindkey -M viins "^Xe" _expand_word ```
- ``` bindkey -M viins "^Xh" _complete_help ```
- ``` bindkey -M viins "^Xm" _most_recent_file ```
- ``` bindkey -M viins "^Xn" _next_tags ```
- ``` bindkey -M viins "^Xt" _complete_tag ```
- ``` bindkey -M viins "^X~" _bash_list-choices ```
- ``` bindkey -M viins "^Y" changeQuotes ```
- ``` bindkey -M viins "^Z" undo ```
- ``` bindkey -M viins "^[" vi-cmd-mode ```
- ``` bindkey -M viins "^[^D" capitalize-word ```
- ``` bindkey -M viins "^[^F" sub ```
- ``` bindkey -M viins "^[^L" down-case-word ```
- ``` bindkey -M viins "^[^M" self-insert-unmeta ```
- ``` bindkey -M viins "^[^O" runner ```
- ``` bindkey -M viins "^[^P" updater ```
- ``` bindkey -M viins "^[^T" transpose-words ```
- ``` bindkey -M viins "^[^U" up-case-word ```
- ``` bindkey -M viins "^[^[" sudo-command-line ```
- ``` bindkey -M viins "^[ " sshRegain ```
- ``` bindkey -M viins "^[," _history-complete-newer ```
- ``` bindkey -M viins "^[/" _history-complete-older ```
- ``` bindkey -M viins "^[OA" history-substring-search-up ```
- ``` bindkey -M viins "^[OB" history-substring-search-down ```
- ``` bindkey -M viins "^[OC" vi-forward-char ```
- ``` bindkey -M viins "^[OD" vi-backward-char ```
- ``` bindkey -M viins "^[OP" updater ```
- ``` bindkey -M viins "^[OQ" sub ```
- ``` bindkey -M viins "^[OR" getrcWidget ```
- ``` bindkey -M viins "^[[1;2D" sub ```
- ``` bindkey -M viins "^[[1;5A" gitfunc ```
- ``` bindkey -M viins "^[[1;5B" updater ```
- ``` bindkey -M viins "^[[1;5C" tutsUpdate ```
- ``` bindkey -M viins "^[[1;5D" dbz ```
- ``` bindkey -M viins "^[[200~" bracketed-paste ```
- ``` bindkey -M viins "^[[5~" clipboard ```
- ``` bindkey -M viins "^[[A" up-line-or-history ```
- ``` bindkey -M viins "^[[B" down-line-or-history ```
- ``` bindkey -M viins "^[[C" vi-forward-char ```
- ``` bindkey -M viins "^[[D" vi-backward-char ```
- ``` bindkey -M viins "^[[Z" clipboard ```
- ``` bindkey -M viins "^[~" _bash_complete-word ```
- ``` bindkey -M viins "^\\\\" self-insert ```
- ``` bindkey -M viins "^]" basicSedSub ```
- ``` bindkey -R -M viins "^\^"-"^_" self-insert ```
- ``` bindkey -M viins " " supernatural-space ```
- ``` bindkey -M viins "!" self-insert ```
- ``` bindkey -M viins "\"" interceptSurround ```
- ``` bindkey -R -M viins "#"-"&" self-insert ```
- ``` bindkey -R -M viins "'"-"(" interceptSurround ```
- ``` bindkey -R -M viins ")"-"-" self-insert ```
- ``` bindkey -M viins "." rationalize-dot ```
- ``` bindkey -R -M viins "/"-"Z" self-insert ```
- ``` bindkey -M viins "[" interceptSurround ```
- ``` bindkey -R -M viins "\\\\"-"_" self-insert ```
- ``` bindkey -M viins "\`" interceptSurround ```
- ``` bindkey -R -M viins "a"-"z" self-insert ```
- ``` bindkey -M viins "{" interceptSurround ```
- ``` bindkey -R -M viins "|"-"~" self-insert ```
- ``` bindkey -M viins "^?" interceptDelete ```
- ``` bindkey -R -M viins "\M-^@"-"\M-^?" self-insert ```
# Zsh Vim Normal Mode keybindings (bindkey -M vicmd -L)
- ``` bindkey -a "^A" beginning-of-line ```
- ``` bindkey -a "^B" clipboard ```
- ``` bindkey -a "^D" list-choices ```
- ``` bindkey -a "^E" end-of-line ```
- ``` bindkey -a "^F^D" intoFzf ```
- ``` bindkey -a "^F^F" fzf-file-widget ```
- ``` bindkey -a "^F^G" intoFzfAg ```
- ``` bindkey -a "^F^H" lsoffzf ```
- ``` bindkey -a "^F^K" alternateQuotes ```
- ``` bindkey -a "^F^L" list-choices ```
- ``` bindkey -a "^F^S" gitFunc ```
- ``` bindkey -a "^G" what-cursor-position ```
- ``` bindkey -a "^H" vi-backward-char ```
- ``` bindkey -a "^J" accept-line ```
- ``` bindkey -a "^K" learn ```
- ``` bindkey -a "^L" clear-screen ```
- ``` bindkey -a "^M" accept-line ```
- ``` bindkey -a "^N" down-history ```
- ``` bindkey -a "^O" edit-command-line ```
- ``` bindkey -a "^P" EOLorNextTabStop ```
- ``` bindkey -a "^Q" lastWordDouble ```
- ``` bindkey -a "^R" redo ```
- ``` bindkey -a "^S" gitFuncNoCheck ```
- ``` bindkey -a "^T" transpose-chars ```
- ``` bindkey -a "^U" clearLine ```
- ``` bindkey -a "^V^F" fasdFZF ```
- ``` bindkey -a "^V^G" fzf-cd-widget ```
- ``` bindkey -a "^V^N" vimFzfSudo ```
- ``` bindkey -a "^V^S" zFZF ```
- ``` bindkey -a "^V^V" vimFzf ```
- ``` bindkey -a "^V^Z" fzf-history-widget ```
- ``` bindkey -a "^V," fzfEnv ```
- ``` bindkey -a "^V." fzfAllKeybind ```
- ``` bindkey -a "^V/" locateFzf ```
- ``` bindkey -a "^Vc" fzfCommits ```
- ``` bindkey -a "^W" deleteLastWord ```
- ``` bindkey -a "^Y" changeQuotes ```
- ``` bindkey -a "^Z" undo ```
- ``` bindkey -a "^[" beep ```
- ``` bindkey -a "^[^D" capitalize-word ```
- ``` bindkey -a "^[^L" down-case-word ```
- ``` bindkey -a "^[^O" runner ```
- ``` bindkey -a "^[^P" updater ```
- ``` bindkey -a "^[^T" transpose-words ```
- ``` bindkey -a "^[^U" up-case-word ```
- ``` bindkey -a "^[^[" sudo-command-line ```
- ``` bindkey -a "^[ " sshRegain ```
- ``` bindkey -a "^[OA" up-line-or-history ```
- ``` bindkey -a "^[OB" down-line-or-history ```
- ``` bindkey -a "^[OC" vi-forward-char ```
- ``` bindkey -a "^[OD" vi-backward-char ```
- ``` bindkey -a "^[[200~" bracketed-paste ```
- ``` bindkey -a "^[[A" up-line-or-history ```
- ``` bindkey -a "^[[B" down-line-or-history ```
- ``` bindkey -a "^[[C" vi-forward-char ```
- ``` bindkey -a "^[[D" vi-backward-char ```
- ``` bindkey -a "^]" basicSedSub ```
- ``` bindkey -a " " vi-forward-char ```
- ``` bindkey -a "\"" vi-set-buffer ```
- ``` bindkey -a "#" pound-insert ```
- ``` bindkey -a "\$" vi-end-of-line ```
- ``` bindkey -a "%" vi-match-bracket ```
- ``` bindkey -a "'" vi-goto-mark-line ```
- ``` bindkey -a "+" vi-down-line-or-history ```
- ``` bindkey -a "," vi-rev-repeat-find ```
- ``` bindkey -a -- "-" vi-up-line-or-history ```
- ``` bindkey -a "." vi-repeat-change ```
- ``` bindkey -a "/" vi-history-search-backward ```
- ``` bindkey -a "0" vi-digit-or-beginning-of-line ```
- ``` bindkey -R -a "1"-"9" digit-argument ```
- ``` bindkey -a ":" execute-named-cmd ```
- ``` bindkey -a ";" vi-repeat-find ```
- ``` bindkey -a "<" vi-unindent ```
- ``` bindkey -a "=" list-choices ```
- ``` bindkey -a ">" vi-indent ```
- ``` bindkey -a "?" vi-history-search-forward ```
- ``` bindkey -a "A" vi-add-eol ```
- ``` bindkey -a "B" vi-backward-blank-word ```
- ``` bindkey -a "C" vi-change-eol ```
- ``` bindkey -a "D" vi-kill-eol ```
- ``` bindkey -a "E" vi-forward-blank-word-end ```
- ``` bindkey -a "F" vi-find-prev-char ```
- ``` bindkey -a "G" end-of-buffer-or-history ```
- ``` bindkey -a "I" vi-insert-bol ```
- ``` bindkey -a "J" vi-join ```
- ``` bindkey -a "N" vi-rev-repeat-search ```
- ``` bindkey -a "O" vi-open-line-above ```
- ``` bindkey -a "P" vi-put-before ```
- ``` bindkey -a "R" vi-replace ```
- ``` bindkey -a "S" vi-change-whole-line ```
- ``` bindkey -a "T" vi-find-prev-char-skip ```
- ``` bindkey -a "V" visual-line-mode ```
- ``` bindkey -a "W" vi-forward-blank-word ```
- ``` bindkey -a "X" vi-backward-delete-char ```
- ``` bindkey -a "Y" vi-yank-whole-line ```
- ``` bindkey -a "\^" vi-first-non-blank ```
- ``` bindkey -a "\`" vi-goto-mark ```
- ``` bindkey -a "a" vi-add-next ```
- ``` bindkey -a "b" vi-backward-word ```
- ``` bindkey -a "c" vi-change ```
- ``` bindkey -a "d" vi-delete ```
- ``` bindkey -a "e" vi-forward-word-end ```
- ``` bindkey -a "f" vi-find-next-char ```
- ``` bindkey -a "gE" vi-backward-blank-word-end ```
- ``` bindkey -a "gU" vi-up-case ```
- ``` bindkey -s -a "gUU" "gUgU" ```
- ``` bindkey -a "ga" what-cursor-position ```
- ``` bindkey -a "ge" vi-backward-word-end ```
- ``` bindkey -a "gg" beginning-of-buffer-or-history ```
- ``` bindkey -a "gu" vi-down-case ```
- ``` bindkey -s -a "guu" "gugu" ```
- ``` bindkey -a "g~" vi-oper-swap-case ```
- ``` bindkey -s -a "g~~" "g~g~" ```
- ``` bindkey -a "h" vi-backward-char ```
- ``` bindkey -a "i" vi-insert ```
- ``` bindkey -a "j" down-line-or-history ```
- ``` bindkey -a "k" up-line-or-history ```
- ``` bindkey -a "l" vi-forward-char ```
- ``` bindkey -a "m" vi-set-mark ```
- ``` bindkey -a "n" vi-repeat-search ```
- ``` bindkey -a "o" vi-open-line-below ```
- ``` bindkey -a "p" vi-put-after ```
- ``` bindkey -a "r" vi-replace-chars ```
- ``` bindkey -a "s" vi-substitute ```
- ``` bindkey -a "t" vi-find-next-char-skip ```
- ``` bindkey -a "u" undo ```
- ``` bindkey -a "v" visual-mode ```
- ``` bindkey -a "w" vi-forward-word ```
- ``` bindkey -a "x" vi-delete-char ```
- ``` bindkey -a "y" vi-yank ```
- ``` bindkey -a "|" vi-goto-column ```
- ``` bindkey -a "~" vi-swap-case ```
- ``` bindkey -a "^?" vi-backward-char ```
# Zsh Menuselect Mode keybindings (bindkey -M menuselect -L)
- ``` bindkey -M menuselect "^@" accept-line ```
- ``` bindkey -M menuselect "^D" accept-and-menu-complete ```
- ``` bindkey -M menuselect "^F" accept-and-infer-next-history ```
- ``` bindkey -M menuselect "^H" vi-beginning-of-line ```
- ``` bindkey -M menuselect "^I" complete-word ```
- ``` bindkey -M menuselect "^J" vi-forward-word ```
- ``` bindkey -M menuselect "^K" vi-backward-word ```
- ``` bindkey -M menuselect "^L" vi-end-of-line ```
- ``` bindkey -M menuselect "^M" .accept-line ```
- ``` bindkey -M menuselect "^O" accept-and-infer-next-history ```
- ``` bindkey -M menuselect "^S" reverse-menu-complete ```
- ``` bindkey -M menuselect "^[OA" up-line-or-history ```
- ``` bindkey -M menuselect "^[OB" down-line-or-history ```
- ``` bindkey -M menuselect "^[OC" forward-char ```
- ``` bindkey -M menuselect "^[OD" backward-char ```
- ``` bindkey -M menuselect "^[[1;5A" vi-backward-word ```
- ``` bindkey -M menuselect "^[[1;5B" vi-forward-word ```
- ``` bindkey -M menuselect "^[[1;5C" vi-end-of-line ```
- ``` bindkey -M menuselect "^[[1;5D" vi-beginning-of-line ```
- ``` bindkey -M menuselect "^[[1~" vi-beginning-of-line ```
- ``` bindkey -M menuselect "^[[4~" vi-end-of-line ```
- ``` bindkey -M menuselect "^[[5~" vi-backward-word ```
- ``` bindkey -M menuselect "^[[6~" vi-forward-word ```
- ``` bindkey -M menuselect "^[[A" up-line-or-history ```
- ``` bindkey -M menuselect "^[[B" down-line-or-history ```
- ``` bindkey -M menuselect "^[[C" forward-char ```
- ``` bindkey -M menuselect "^[[D" backward-char ```
- ``` bindkey -M menuselect "/" history-incremental-search-forward ```
- ``` bindkey -M menuselect "?" history-incremental-search-backward ```
# Zsh Vim Visual Mode keybindings (bindkey -M visual -L)
- ``` bindkey -M visual "^[" deactivate-region ```
- ``` bindkey -M visual "^[OA" up-line ```
- ``` bindkey -M visual "^[OB" down-line ```
- ``` bindkey -M visual "^[[A" up-line ```
- ``` bindkey -M visual "^[[B" down-line ```
- ``` bindkey -M visual "-" vi-up-line-or-history ```
- ``` bindkey -M visual "U" vi-up-case ```
- ``` bindkey -M visual "a\"" select-quoted ```
- ``` bindkey -M visual "a'" select-quoted ```
- ``` bindkey -M visual "a(" select-bracketed ```
- ``` bindkey -M visual "a)" select-bracketed ```
- ``` bindkey -M visual "a+" select-quoted ```
- ``` bindkey -M visual "a," select-quoted ```
- ``` bindkey -M visual "a-" select-quoted ```
- ``` bindkey -M visual "a." select-quoted ```
- ``` bindkey -M visual "a/" select-quoted ```
- ``` bindkey -M visual "a:" select-quoted ```
- ``` bindkey -M visual "a;" select-quoted ```
- ``` bindkey -M visual "a<" select-bracketed ```
- ``` bindkey -M visual "a=" select-quoted ```
- ``` bindkey -M visual "a>" select-bracketed ```
- ``` bindkey -M visual "a@" select-quoted ```
- ``` bindkey -M visual "aB" select-bracketed ```
- ``` bindkey -M visual "aW" select-a-blank-word ```
- ``` bindkey -M visual "a[" select-bracketed ```
- ``` bindkey -M visual "a\\\\" select-quoted ```
- ``` bindkey -M visual "a]" select-bracketed ```
- ``` bindkey -M visual "a\`" select-quoted ```
- ``` bindkey -M visual "aa" select-a-shell-word ```
- ``` bindkey -M visual "ab" select-bracketed ```
- ``` bindkey -M visual "aw" select-a-word ```
- ``` bindkey -M visual "a{" select-bracketed ```
- ``` bindkey -M visual "a|" select-quoted ```
- ``` bindkey -M visual "a}" select-bracketed ```
- ``` bindkey -M visual "i\"" select-quoted ```
- ``` bindkey -M visual "i'" select-quoted ```
- ``` bindkey -M visual "i(" select-bracketed ```
- ``` bindkey -M visual "i)" select-bracketed ```
- ``` bindkey -M visual "i+" select-quoted ```
- ``` bindkey -M visual "i," select-quoted ```
- ``` bindkey -M visual "i-" select-quoted ```
- ``` bindkey -M visual "i." select-quoted ```
- ``` bindkey -M visual "i/" select-quoted ```
- ``` bindkey -M visual "i:" select-quoted ```
- ``` bindkey -M visual "i;" select-quoted ```
- ``` bindkey -M visual "i<" select-bracketed ```
- ``` bindkey -M visual "i=" select-quoted ```
- ``` bindkey -M visual "i>" select-bracketed ```
- ``` bindkey -M visual "i@" select-quoted ```
- ``` bindkey -M visual "iB" select-bracketed ```
- ``` bindkey -M visual "iW" select-in-blank-word ```
- ``` bindkey -M visual "i[" select-bracketed ```
- ``` bindkey -M visual "i\\\\" select-quoted ```
- ``` bindkey -M visual "i]" select-bracketed ```
- ``` bindkey -M visual "i\`" select-quoted ```
- ``` bindkey -M visual "ia" select-in-shell-word ```
- ``` bindkey -M visual "ib" select-bracketed ```
- ``` bindkey -M visual "iw" select-in-word ```
- ``` bindkey -M visual "i{" select-bracketed ```
- ``` bindkey -M visual "i|" select-quoted ```
- ``` bindkey -M visual "i}" select-bracketed ```
- ``` bindkey -M visual "j" down-line ```
- ``` bindkey -M visual "k" up-line ```
- ``` bindkey -M visual "o" exchange-point-and-mark ```
- ``` bindkey -M visual "p" put-replace-selection ```
- ``` bindkey -M visual "u" vi-down-case ```
- ``` bindkey -M visual "x" vi-delete ```
- ``` bindkey -M visual "~" vi-oper-swap-case ```
# Zsh Listscroll Mode keybindings (bindkey -M listscroll -L)
- ``` bindkey -M listscroll "^I" complete-word ```
- ``` bindkey -M listscroll "^J" accept-line ```
- ``` bindkey -M listscroll "^M" accept-line ```
- ``` bindkey -M listscroll "^[OB" down-line-or-history ```
- ``` bindkey -M listscroll "^[[B" down-line-or-history ```
- ``` bindkey -M listscroll " " complete-word ```
- ``` bindkey -M listscroll "f" complete-word ```
- ``` bindkey -M listscroll "q" send-break ```
# Zsh Vim Operator Mode keybindings (bindkey -M viopp -L)
- ``` bindkey -M viopp "^[" vi-cmd-mode ```
- ``` bindkey -M viopp "^[OA" up-line ```
- ``` bindkey -M viopp "^[OB" down-line ```
- ``` bindkey -M viopp "^[[A" up-line ```
- ``` bindkey -M viopp "^[[B" down-line ```
- ``` bindkey -M viopp "-" vi-up-line-or-history ```
- ``` bindkey -M viopp "a\"" select-quoted ```
- ``` bindkey -M viopp "a'" select-quoted ```
- ``` bindkey -M viopp "a(" select-bracketed ```
- ``` bindkey -M viopp "a)" select-bracketed ```
- ``` bindkey -M viopp "a+" select-quoted ```
- ``` bindkey -M viopp "a," select-quoted ```
- ``` bindkey -M viopp "a-" select-quoted ```
- ``` bindkey -M viopp "a." select-quoted ```
- ``` bindkey -M viopp "a/" select-quoted ```
- ``` bindkey -M viopp "a:" select-quoted ```
- ``` bindkey -M viopp "a;" select-quoted ```
- ``` bindkey -M viopp "a<" select-bracketed ```
- ``` bindkey -M viopp "a=" select-quoted ```
- ``` bindkey -M viopp "a>" select-bracketed ```
- ``` bindkey -M viopp "a@" select-quoted ```
- ``` bindkey -M viopp "aB" select-bracketed ```
- ``` bindkey -M viopp "aW" select-a-blank-word ```
- ``` bindkey -M viopp "a[" select-bracketed ```
- ``` bindkey -M viopp "a\\\\" select-quoted ```
- ``` bindkey -M viopp "a]" select-bracketed ```
- ``` bindkey -M viopp "a\`" select-quoted ```
- ``` bindkey -M viopp "aa" select-a-shell-word ```
- ``` bindkey -M viopp "ab" select-bracketed ```
- ``` bindkey -M viopp "aw" select-a-word ```
- ``` bindkey -M viopp "a{" select-bracketed ```
- ``` bindkey -M viopp "a|" select-quoted ```
- ``` bindkey -M viopp "a}" select-bracketed ```
- ``` bindkey -M viopp "i\"" select-quoted ```
- ``` bindkey -M viopp "i'" select-quoted ```
- ``` bindkey -M viopp "i(" select-bracketed ```
- ``` bindkey -M viopp "i)" select-bracketed ```
- ``` bindkey -M viopp "i+" select-quoted ```
- ``` bindkey -M viopp "i," select-quoted ```
- ``` bindkey -M viopp "i-" select-quoted ```
- ``` bindkey -M viopp "i." select-quoted ```
- ``` bindkey -M viopp "i/" select-quoted ```
- ``` bindkey -M viopp "i:" select-quoted ```
- ``` bindkey -M viopp "i;" select-quoted ```
- ``` bindkey -M viopp "i<" select-bracketed ```
- ``` bindkey -M viopp "i=" select-quoted ```
- ``` bindkey -M viopp "i>" select-bracketed ```
- ``` bindkey -M viopp "i@" select-quoted ```
- ``` bindkey -M viopp "iB" select-bracketed ```
- ``` bindkey -M viopp "iW" select-in-blank-word ```
- ``` bindkey -M viopp "i[" select-bracketed ```
- ``` bindkey -M viopp "i\\\\" select-quoted ```
- ``` bindkey -M viopp "i]" select-bracketed ```
- ``` bindkey -M viopp "i\`" select-quoted ```
- ``` bindkey -M viopp "ia" select-in-shell-word ```
- ``` bindkey -M viopp "ib" select-bracketed ```
- ``` bindkey -M viopp "iw" select-in-word ```
- ``` bindkey -M viopp "i{" select-bracketed ```
- ``` bindkey -M viopp "i|" select-quoted ```
- ``` bindkey -M viopp "i}" select-bracketed ```
- ``` bindkey -M viopp "j" down-line ```
- ``` bindkey -M viopp "k" up-line ```
# Vim Keybindings Insert Mode
- ``` i  <S-BS>       @<Plug>delimitMateS-BS ```
- ``` i  <BS>         @<Plug>delimitMateBS ```
- ``` i  <Plug>delimitMateJumpMany *@<SNR>48_TriggerAbb()."\<C-R>=delimitMate#JumpMany()\<CR>" ```
- ``` i  <C-G>g       @<Plug>delimitMateJumpMany ```
- ``` i  <C-H>        @<Plug>delimitMateBS ```
- ``` i  "            @<Plug>delimitMate" ```
- ``` i  '            @<Plug>delimitMate' ```
- ``` i  (            @<Plug>delimitMate( ```
- ``` i  )            @<Plug>delimitMate) ```
- ``` i  [            @<Plug>delimitMate[ ```
- ``` i  ]            @<Plug>delimitMate] ```
- ``` i  `            @<Plug>delimitMate` ```
- ``` i  {            @<Plug>delimitMate{ ```
- ``` i  }            @<Plug>delimitMate} ```
- ``` i  <Plug>ISurround * <C-R>=<SNR>156_insert(1)<CR> ```
- ``` i  <Plug>Isurround * <C-R>=<SNR>156_insert()<CR> ```
- ``` i  <Plug>(sexp_insert_backspace) * sexp#backspace_insertion() ```
- ``` i  <Plug>(sexp_insert_double_quote) * sexp#quote_insertion('"') ```
- ``` i  <Plug>(sexp_insert_closing_curly) * sexp#closing_insertion('}') ```
- ``` i  <Plug>(sexp_insert_closing_square) * sexp#closing_insertion(']') ```
- ``` i  <Plug>(sexp_insert_closing_round) * sexp#closing_insertion(')') ```
- ``` i  <Plug>(sexp_insert_opening_curly) * sexp#opening_insertion('{') ```
- ``` i  <Plug>(sexp_insert_opening_square) * sexp#opening_insertion('[') ```
- ``` i  <Plug>(sexp_insert_opening_round) * sexp#opening_insertion('(') ```
- ``` !  <M-C-H>     * <C-W> ```
- ``` !  <M-BS>      * <C-W> ```
- ``` !  <M-p>       * <Up> ```
- ``` !  <M-n>       * <Down> ```
- ``` i  <M-d>       * <C-O>dw ```
- ``` !  <M-f>       * <S-Right> ```
- ``` !  <M-b>       * <S-Left> ```
- ``` i  <Plug>NERDCommenterInsert * <Space><BS><Esc>:call NERDComment('i', 'insert')<CR> ```
- ``` i  <Plug>(fzf-maps-i) * <C-O>:call fzf#vim#maps('i', 0)<CR> ```
- ``` i  <Plug>(fzf-complete-buffer-line) * fzf#vim#complete#buffer_line() ```
- ``` i  <Plug>(fzf-complete-line) * fzf#vim#complete#line() ```
- ``` i  <Plug>(fzf-complete-file-ag) * fzf#vim#complete#path('ag -l -g ""') ```
- ``` i  <Plug>(fzf-complete-file) * fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'") ```
- ``` i  <Plug>(fzf-complete-path) * fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'") ```
- ``` i  <Plug>(fzf-complete-word) * fzf#vim#complete#word() ```
- ``` i  <Plug>(emmet-merge-lines) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#mergeLines()<CR> ```
- ``` i  <Plug>(emmet-anchorize-summary) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#anchorizeURL(1)<CR> ```
- ``` i  <Plug>(emmet-anchorize-url) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#anchorizeURL(0)<CR> ```
- ``` i  <Plug>(emmet-remove-tag) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#removeTag()<CR> ```
- ``` i  <Plug>(emmet-split-join-tag) * <Esc>:call emmet#splitJoinTag()<CR> ```
- ``` i  <Plug>(emmet-toggle-comment) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#toggleComment()<CR> ```
- ``` i  <Plug>(emmet-image-encode) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#imageEncode()<CR> ```
- ``` i  <Plug>(emmet-image-size) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#imageSize()<CR> ```
- ``` i  <Plug>(emmet-move-prev-item) * <Esc>:call emmet#moveNextPrevItem(1)<CR> ```
- ``` i  <Plug>(emmet-move-next-item) * <Esc>:call emmet#moveNextPrevItem(0)<CR> ```
- ``` i  <Plug>(emmet-move-prev) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#moveNextPrev(1)<CR> ```
- ``` i  <Plug>(emmet-move-next) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#moveNextPrev(0)<CR> ```
- ``` i  <Plug>(emmet-balance-tag-outword) * <Esc>:call emmet#balanceTag(-1)<CR> ```
- ``` i  <Plug>(emmet-balance-tag-inward) * <Esc>:call emmet#balanceTag(1)<CR> ```
- ``` i  <Plug>(emmet-update-tag) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#updateTag()<CR> ```
- ``` i  <Plug>(emmet-expand-word) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#expandAbbr(1,"")<CR> ```
- ``` i  <Plug>(emmet-expand-abbr) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#expandAbbr(0,"")<CR> ```
- ``` i  <Plug>delimitMateS-Tab * <SNR>48_TriggerAbb()."\<C-R>=delimitMate#JumpAny()\<CR>" ```
- ``` i  <Plug>delimitMateSpace * <SNR>48_TriggerAbb()."\<C-R>=delimitMate#ExpandSpace()\<CR>" ```
- ``` i  <Plug>delimitMateCR * <SNR>48_TriggerAbb()."\<C-R>=delimitMate#ExpandReturn()\<CR>" ```
- ``` i  <Plug>delimitMateS-BS * delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>" ```
- ``` i  <Plug>delimitMateBS * <C-R>=delimitMate#BS()<CR> ```
- ``` i  <Plug>delimitMate` * <SNR>48_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\`\")<CR>" ```
- ``` i  <Plug>delimitMate' * <SNR>48_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\'\")<CR>" ```
- ``` i  <Plug>delimitMate" * <SNR>48_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\"\")<CR>" ```
- ``` i  <Plug>delimitMate] * <SNR>48_TriggerAbb().delimitMate#JumpOut("\]") ```
- ``` i  <Plug>delimitMate} * <SNR>48_TriggerAbb().delimitMate#JumpOut("\}") ```
- ``` i  <Plug>delimitMate) * <SNR>48_TriggerAbb().delimitMate#JumpOut("\)") ```
- ``` i  <Plug>delimitMate[ * <SNR>48_TriggerAbb().delimitMate#ParenDelim("]") ```
- ``` i  <Plug>delimitMate{ * <SNR>48_TriggerAbb().delimitMate#ParenDelim("}") ```
- ``` i  <Plug>delimitMate( * <SNR>48_TriggerAbb().delimitMate#ParenDelim(")") ```
- ``` i  <Plug>(ale_complete) * <C-\><C-O>:ALEComplete<CR> ```
- ``` i  <Plug>(ale_show_completion_menu) * <C-X><C-O> ```
- ``` i  <S-Tab>       <Plug>SuperTabBackward ```
- ``` i  <Plug>SuperTabBackward & <C-R>=SuperTab('p')<CR> ```
- ``` i  <Plug>SuperTabForward & <C-R>=SuperTab('n')<CR> ```
- ``` i  <C-Tab>     * <C-R>=UltiSnips#ListSnippets()<CR> ```
- ``` i  <F11>       * <C-X><C-T> ```
- ``` i  <F10>       * <C-X><C-K> ```
- ``` i  <F7>        * <Esc>:TTags<CR> ```
- ``` i  <F6>        * <Esc>:SyntasticToggleMode<CR> ```
- ``` i  <F5>        * <Esc>:LOTRToggle<CR> ```
- ``` i  <F4>        * <Esc>:MinimapToggle<CR> ```
- ``` i  <F3>        * <Esc>:TlistAddFiles *<CR>:TlistToggle<CR> ```
- ``` i  <F2>        * <Esc>:UndotreeToggle<CR> ```
- ``` i  <F1>        * <Esc>:NERDTreeToggle<CR> ```
- ``` i  <F8>        * <Esc>:%s@@@g<Left><Left><Left> ```
- ``` i  <C-Up>      * <Esc>:<C-U>call GoToNextMarker("{{{",1)<CR>i ```
- ``` i  <C-Down>    * <Esc>:<C-U>call GoToNextMarker("{{{",0)<CR>i ```
- ``` i  <End>       * <Esc>Gi ```
- ``` i  <Home>      * <Esc>ggi ```
- ``` i  <C-A>       * <C-O>^ ```
- ``` i  <C-B><C-N>  * <Esc>^2xji ```
- ``` i  <C-B>       * getline('.')=~'^\s*$'&&col('.')>strlen(getline('.'))?"0\<C-D>\<Esc>kJs":"\<Left>" ```
- ``` i  <C-C>       * <Esc>:wq!<CR>:qa!<CR> ```
- ``` i  <C-D>       * col('.')>strlen(getline('.'))?"\<C-D>":"\<Del>" ```
- ``` i  <C-D><NL>     <Plug>(fzf-complete-file-ag) ```
- ``` i  <C-D><C-F>    <Plug>(fzf-complete-path) ```
- ``` i  <C-D>.      * <C-O>:FZFMaps<CR> ```
- ``` i  <C-D>/      * <C-O>:LocateAll<CR> ```
- ``` i  <C-D>z      * <Esc>:TlistAddFiles * <CR> :TlistToggle<CR>i ```
- ``` i  <C-D>y      * <Esc>:update<CR>:SyntasticCheck<CR>a ```
- ``` i  <C-D>x      * <C-O>:Marks<CR> ```
- ``` i  <C-D>w      * <C-O>:update<CR> ```
- ``` i  <C-D>v      * <Esc>:w!<CR>:call TmuxRepeatGeneric()<CR>a ```
- ``` i  <C-D>u      * <C-O>:History:<CR> ```
- ``` i  <C-D>]      * <C-W>}<CR> ```
- ``` i  <C-D>t      * <C-O>:Tags<CR> ```
- ``` i  <C-D>s      * <C-O>:History/<CR> ```
- ``` i  <C-D>rr     * <Esc>:Rg<CR> ```
- ``` i  <C-D>rq     * <Esc>:silent !open -t %:p:h<CR>:redraw!<CR>a ```
- ``` i  <C-D>q      * <C-O>:SaveSession!<CR><Tab> ```
- ``` i  <C-D>p      * <C-O>:call GetRef()<CR> ```
- ``` i  <C-D>o      * <C-O>:ALEToggle<CR> ```
- ``` i  <C-D>n      * <C-O>:Snippets<CR> ```
- ``` i  <C-D>m      * <C-O>:Map<CR> ```
- ``` i  <C-D>l      * <C-O>:Lines<CR> ```
- ``` i  <C-D>k      * <C-O>:ALEFix<CR> ```
- ``` i  <C-D>j      * <C-O>:Agg<CR> ```
- ``` i  <C-D>i      * <C-O>:Imap<CR> ```
- ``` i  <C-D>h      * <C-O>:HistoryFiles<CR> ```
- ``` i  <C-D>g      * <C-O>:Commits!<CR> ```
- ``` i  <C-D>f      * <C-O>:Files<CR> ```
- ``` i  <C-D>e      * <C-O>:ALEInfo<CR> ```
- ``` i  <C-D>d      * <C-O>:Commands<CR> ```
- ``` i  <C-D>c      * <C-O>:Colors<CR> ```
- ``` i  <C-D>b      * <C-O>:Buffers<CR> ```
- ``` i  <C-D>a      * <C-O>:Ag<CR> ```
- ``` i  <C-D><C-D>  * <C-O>:GitGutterUndoHunk<CR> ```
- ``` i  <C-D><C-T>  * <C-O>:call TransposeWords()<CR> ```
- ``` i  <C-E>       * col('.')>strlen(getline('.'))||pumvisible()?"\<C-E>":"\<End>" ```
- ``` i  <C-F>       * col('.')>strlen(getline('.'))?"\<C-F>":"\<Right>" ```
- ``` i  <C-G>S        <Plug>ISurround ```
- ``` i  <C-G>s        <Plug>Isurround ```
- ``` i  <Tab>       * <C-R>=UltiSnips#ExpandSnippetOrJump()<CR> ```
- ``` i  <C-L>       * <Esc>mbgg=G`bzza ```
- ``` i  <C-S>         <Plug>Isurround ```
- ``` i  <C-T>       * i<BS><C-O>:silent! undojoin | normal! xp<CR> ```
- ``` i  <C-X><C-A>  * <C-A> ```
- ``` i  <C-X>       * <C-R>=<SNR>34_ManualCompletionEnter()<CR> ```
- ``` i  <C-X><C-L>  * fzf#vim#complete(fzf#wrap({ 'prefix': '^.*$', 'source': 'rg -n ^ --color always', 'options': '--ansi --delimiter : --nth 3..', 'left': '60', 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }})) ```
- ``` i  <C-X><C-K>  * fzf#vim#complete#word({'left': '15%'}) ```
- ``` i  <C-Y>m        <Plug>(emmet-merge-lines) ```
- ``` i  <C-Y>A        <Plug>(emmet-anchorize-summary) ```
- ``` i  <C-Y>a        <Plug>(emmet-anchorize-url) ```
- ``` i  <C-Y>k        <Plug>(emmet-remove-tag) ```
- ``` i  <C-Y>j        <Plug>(emmet-split-join-tag) ```
- ``` i  <C-Y>/        <Plug>(emmet-toggle-comment) ```
- ``` i  <C-Y>I        <Plug>(emmet-image-encode) ```
- ``` i  <C-Y>i        <Plug>(emmet-image-size) ```
- ``` i  <C-Y>N        <Plug>(emmet-move-prev) ```
- ``` i  <C-Y>n        <Plug>(emmet-move-next) ```
- ``` i  <C-Y>D        <Plug>(emmet-balance-tag-outword) ```
- ``` i  <C-Y>d        <Plug>(emmet-balance-tag-inward) ```
- ``` i  <C-Y>u        <Plug>(emmet-update-tag) ```
- ``` i  <C-Y>;        <Plug>(emmet-expand-word) ```
- ``` i  <C-Y>,        <Plug>(emmet-expand-abbr) ```
- ``` i  <C-Z>       * <Esc>:suspend<CR> ```
- ``` i  <C-\>       * <Esc>+ ```
# Vim Keybindings Normal Mode
- ``` n  <Space>hp    @<Plug>(GitGutterPreviewHunk) ```
- ``` n  <Space>hu    @<Plug>(GitGutterUndoHunk) ```
- ``` n  <Space>hs    @<Plug>(GitGutterStageHunk) ```
- ``` n  [c           @<Plug>(GitGutterPrevHunk) ```
- ``` n  ]c           @<Plug>(GitGutterNextHunk) ```
- ``` n  <C-C>       * :wq!<CR>:qa!<CR> ```
- ``` n  <C-D>.      * :FZFMaps<CR> ```
- ``` n  <C-D>/      * :LocateAll<CR> ```
- ``` n  <C-D>z      * :TlistAddFiles *<CR>:TlistToggle<CR> ```
- ``` n  <C-D>y      * :update<CR>:SyntasticCheck<CR> ```
- ``` n  <C-D>x      * :Marks<CR> ```
- ``` n  <C-D>w      * :update<CR> ```
- ``` n  <C-D>v      * :w!<CR>:call TmuxRepeatGeneric()<CR> ```
- ``` n  <C-D>u      * :History:<CR> ```
- ``` n  <C-D>]      * <C-W>}<CR> ```
- ``` n  <C-D>t      * :Tags<CR> ```
- ``` n  <C-D>s      * :History/<CR> ```
- ``` n  <C-D>rr     * :Rg<CR> ```
- ``` n  <C-D>rq     * :silent !open -t %:p:h<CR>:redraw!<CR> ```
- ``` n  <C-D>q      * :SaveSession!<CR><Tab> ```
- ``` n  <C-D>p      * :call GetRef()<CR> ```
- ``` n  <C-D>o      * :ALEToggle<CR> ```
- ``` n  <C-D>n      * :Snippets<CR> ```
- ``` n  <C-D>m      * :Map<CR> ```
- ``` n  <C-D>l      * :Lines<CR> ```
- ``` n  <C-D>k      * :ALEFix<CR> ```
- ``` n  <C-D>j      * :Agg<CR> ```
- ``` n  <C-D>i      * :Imap<CR> ```
- ``` n  <C-D>h      * :HistoryFiles<CR> ```
- ``` n  <C-D>g      * :Commits!<CR> ```
- ``` n  <C-D>f      * :Files<CR> ```
- ``` n  <C-D>e      * :ALEInfo<CR> ```
- ``` n  <C-D>d      * :Commands<CR> ```
- ``` n  <C-D>c      * :Colors<CR> ```
- ``` n  <C-D>b      * :Buffers<CR> ```
- ``` n  <C-D>a      * :Ag<CR> ```
- ```    <C-D><C-D>  * :GitGutterUndoHunk<CR> ```
- ``` n  <C-D>,      * :call NERDComment("x","Toggle")<CR>`> ```
- ``` n  <C-F>       * :q!<CR> ```
- ``` n  <C-G>       * :call multiple_cursors#new("n", 1)<CR> ```
- ``` nox<C-H>       * 4h ```
- ```    <NL>        * 4j ```
- ```    <C-K>       * 4k ```
- ```    <C-L>       * 4l ```
- ```    <CR>          <Plug>(wildfire-fuel) ```
- ```    <C-P>         <Plug>(ctrlp) ```
- ``` n  <C-R>         <Plug>(RepeatRedo) ```
- ``` n  <C-T>       * xp ```
- ``` n  <C-V>       * :w!<CR>:call TmuxRepeat("file")<CR> ```
- ``` n  <C-W>\      * :vsplit<CR> ```
- ``` n  <C-W>-      * :split<CR> ```
- ``` n  <C-X>s        <Plug>RefactorExtractSetter ```
- ``` n  <C-X>g        <Plug>RefactorExtractGetter ```
- ``` n  <C-X>p        <Plug>RefactorPutLastDown ```
- ``` n  <C-X>P        <Plug>RefactorPutLastUp ```
- ``` n  <C-Y>m        <Plug>(emmet-merge-lines) ```
- ``` n  <C-Y>A        <Plug>(emmet-anchorize-summary) ```
- ``` n  <C-Y>a        <Plug>(emmet-anchorize-url) ```
- ``` n  <C-Y>k        <Plug>(emmet-remove-tag) ```
- ``` n  <C-Y>j        <Plug>(emmet-split-join-tag) ```
- ``` n  <C-Y>/        <Plug>(emmet-toggle-comment) ```
- ``` n  <C-Y>I        <Plug>(emmet-image-encode) ```
- ``` n  <C-Y>i        <Plug>(emmet-image-size) ```
- ``` n  <C-Y>N        <Plug>(emmet-move-prev) ```
- ``` n  <C-Y>n        <Plug>(emmet-move-next) ```
- ``` n  <C-Y>D        <Plug>(emmet-balance-tag-outword) ```
- ``` n  <C-Y>d        <Plug>(emmet-balance-tag-inward) ```
- ``` n  <C-Y>u        <Plug>(emmet-update-tag) ```
- ``` n  <C-Y>;        <Plug>(emmet-expand-word) ```
- ``` n  <C-Y>,        <Plug>(emmet-expand-abbr) ```
- ```    <Esc>[1;5D    <C-Left> ```
- ```    <Esc>[1;5C    <C-Right> ```
- ```    <Esc>[1;5B    <C-Down> ```
- ```    <Esc>[1;5A    <C-Up> ```
- ``` n  <Esc><C-C>  * wvU ```
- ``` n  <Esc><C-T>  * :call TransposeWords()<CR> ```
- ``` n  <C-\>       * + ```
- ``` n  <Space>cr     <Plug>LOTRToggle ```
- ```    <Space><Space>   <Plug>(easymotion-prefix) ```
- ``` n  <Space>ca     <Plug>NERDCommenterAltDelims ```
- ``` n  <Space>cu     <Plug>NERDCommenterUncomment ```
- ``` n  <Space>cb     <Plug>NERDCommenterAlignBoth ```
- ``` n  <Space>cl     <Plug>NERDCommenterAlignLeft ```
- ``` n  <Space>cA     <Plug>NERDCommenterAppend ```
- ``` n  <Space>cy     <Plug>NERDCommenterYank ```
- ``` n  <Space>cs     <Plug>NERDCommenterSexy ```
- ``` n  <Space>ci     <Plug>NERDCommenterInvert ```
- ``` n  <Space>c$     <Plug>NERDCommenterToEOL ```
- ``` n  <Space>cn     <Plug>NERDCommenterNested ```
- ``` n  <Space>cm     <Plug>NERDCommenterMinimal ```
- ``` n  <Space>c<Space>   <Plug>NERDCommenterToggle ```
- ``` n  <Space>cc     <Plug>NERDCommenterComment ```
- ``` n  <Space>mt   * :MinimapToggle<CR> ```
- ``` n  <Space>mc   * :MinimapClose<CR> ```
- ``` n  <Space>mu   * :MinimapUpdate<CR> ```
- ``` n  <Space>mm   * :Minimap<CR> ```
- ``` n  <Space><Tab>   <Plug>(fzf-maps-n) ```
- ``` n  <Space>ta   * :Tags<CR> ```
- ``` n  <Space>]    * <C-W>}<CR> ```
- ``` n  <Space>rg   * :Rg<CR> ```
- ``` n  <Space>o    * :ALEToggle<CR> ```
- ``` n  <Space>m    * :Map<CR> ```
- ``` n  <Space>ag   * :Agg<CR> ```
- ``` n  <Space>f    * :Files<CR> ```
- ``` n  <Space>co   * :Colors<CR> ```
- ``` n  <Space>b    * :Buffers<CR> ```
- ``` n  <Space>aa   * :Ag<CR> ```
- ``` n  <Space>vj   * :w!<CR>:call TmuxRepeat("file")<CR> ```
- ``` n  <Space>ev     :call ExtractVariable()<CR> ```
- ```    <Space><Space>e   <Plug>(easymotion-bd-e) ```
- ```    <Space><Space>w   <Plug>(easymotion-bd-w) ```
- ``` n  <Space>p    * :prev<CR> ```
- ``` n  <Space>n    * :n<CR> ```
- ``` n  <Space>[    * :call Quoter("bracket")<CR> ```
- ``` n  <Space>`    * :call Quoter("back")<CR> ```
- ``` n  <Space>'    * :call Quoter("single")<CR> ```
- ``` n  <Space>"    * :call Quoter("double")<CR> ```
- ```    <Space>z    * nea ```
- ``` n  <Space>t    * :tabnew<CR> ```
- ``` n  <Space>s    * :split<CR> ```
- ``` n  <Space>v    * :vsplit<CR> ```
- ``` n  <Space>w    * :w!<CR> ```
- ``` n  <Space>e    * :q!<CR> ```
- ``` n  <Space>c    * :wq!<CR> ```
- ``` n  <Space>q    * :qa!<CR> ```
- ``` n  <Space>r    * :%s/\<<C-R><C-W>\>/<C-R><C-W>/g<Left><Left> ```
- ``` n  <Space>g    * :%s/\<<C-R><C-W>\>//g<Left><Left> ```
- ```    <Space>sudo * :w !sudo tee % &>/dev/null<CR><CR><CR> ```
- ```    <Space>=    * 4+ ```
- ```    <Space>-    * 4- ```
- ``` n  %             <Plug>(MatchitNormalForward) ```
- ``` nox(           * repmo#SelfKey('(', ')') ```
- ``` nox)           * repmo#SelfKey(')', '(') ```
- ``` nox+           * repmo#SelfKey('+', '-') ```
- ``` n  ,e            <Plug>CamelCaseMotion_e ```
- ``` nox,             repmo#LastRevKey('<Plug>Sneak_,') ```
- ``` nox-           * repmo#SelfKey('-', '+') ```
- ``` n  .             <Plug>(RepeatDot) ```
- ``` nox;             repmo#LastKey('<Plug>Sneak_;') ```
- ``` n  <p          & :<C-U>call <SNR>157_putline(v:count1 . ']p', 'Below')<CR><'] ```
- ``` n  <P          & :<C-U>call <SNR>157_putline(v:count1 . '[p', 'Above')<CR><'] ```
- ``` n  =p          & :<C-U>call <SNR>157_putline(v:count1 . ']p', 'Below')<CR>='] ```
- ``` n  =P          & :<C-U>call <SNR>157_putline(v:count1 . '[p', 'Above')<CR>='] ```
- ``` n  =op         * <Nop> ```
- ``` n  =o            <SNR>157_legacy_option_map(nr2char(getchar())) ```
- ``` n  >p          & :<C-U>call <SNR>157_putline(v:count1 . ']p', 'Below')<CR>>'] ```
- ``` n  >P          & :<C-U>call <SNR>157_putline(v:count1 . '[p', 'Above')<CR>>'] ```
- ``` n  @:            <Plug>RepeatEx ```
- ```    B           * repmo#SelfKey('b', 'w') ```
- ``` noxE           * repmo#SelfKey('E', 'gE') ```
- ``` noxF             repmo#ZapKey('<Plug>Sneak_F') ```
- ``` n  S             <Plug>Sneak_S ```
- ``` noxT             repmo#ZapKey('<Plug>Sneak_T') ```
- ``` n  U             <Plug>(RepeatUndoLine) ```
- ```    W           * repmo#SelfKey('w', 'b') ```
- ``` n  Y           * yy`> ```
- ``` n  [%            <Plug>(MatchitNormalMultiBackward) ```
- ``` n  [xx           <Plug>unimpaired_line_xml_encode ```
- ``` n  [x            <Plug>unimpaired_xml_encode ```
- ``` n  [uu           <Plug>unimpaired_line_url_encode ```
- ``` n  [u            <Plug>unimpaired_url_encode ```
- ``` n  [yy           <Plug>unimpaired_line_string_encode ```
- ``` n  [y            <Plug>unimpaired_string_encode ```
- ``` n  [P            <Plug>unimpairedPutAbove ```
- ``` n  [p            <Plug>unimpairedPutAbove ```
- ``` n  [op         & :call <SNR>157_setup_paste()<CR>O ```
- ``` n  [o+         & :set cursorline cursorcolumn<CR> ```
- ``` n  [ox         & :set cursorline cursorcolumn<CR> ```
- ``` n  [ov         & :set virtualedit+=all<CR> ```
- ``` n  [ow         & :setlocal wrap<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [os         & :setlocal spell<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [or         & :setlocal relativenumber<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [on         & :setlocal number<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [ol         & :setlocal list<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [oi         & :set ignorecase<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [oh         & :set hlsearch<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [od         & :diffthis<CR> ```
- ``` n  [o|         & :setlocal cursorcolumn<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [ou         & :setlocal cursorcolumn<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [o_         & :setlocal cursorline<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [o-         & :setlocal cursorline<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [oc         & :setlocal cursorline<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  [ob         & :set background=light<CR> ```
- ``` n  [e            <Plug>unimpairedMoveUp ```
- ``` n  [<Space>      <Plug>unimpairedBlankUp ```
- ``` n  [n            <Plug>unimpairedContextPrevious ```
- ``` n  [f            <Plug>unimpairedDirectoryPrevious ```
- ``` n  [<C-T>        <Plug>unimpairedTPPrevious ```
- ``` n  [T            <Plug>unimpairedTFirst ```
- ``` n  [t            <Plug>unimpairedTPrevious ```
- ``` n  [<C-Q>        <Plug>unimpairedQPFile ```
- ``` n  [Q            <Plug>unimpairedQFirst ```
- ``` n  [q            <Plug>unimpairedQPrevious ```
- ``` n  [<C-L>        <Plug>unimpairedLPFile ```
- ``` n  [L            <Plug>unimpairedLFirst ```
- ``` n  [l            <Plug>unimpairedLPrevious ```
- ``` n  [B            <Plug>unimpairedBFirst ```
- ``` n  [b            <Plug>unimpairedBPrevious ```
- ``` n  [A            <Plug>unimpairedAFirst ```
- ``` n  [a            <Plug>unimpairedAPrevious ```
- ``` n  []            k$][%?}<CR>]}]]}]] ```
- ``` n  [[            ?{<CR>w99[{ ```
- ``` nox[m          * repmo#SelfKey('[m', ']m') ```
- ``` n  \K          * :OnlineThesaurusCurrentWord<CR> ```
- ``` n  ]%            <Plug>(MatchitNormalMultiForward) ```
- ``` n  ]xx           <Plug>unimpaired_line_xml_decode ```
- ``` n  ]x            <Plug>unimpaired_xml_decode ```
- ``` n  ]uu           <Plug>unimpaired_line_url_decode ```
- ``` n  ]u            <Plug>unimpaired_url_decode ```
- ``` n  ]yy           <Plug>unimpaired_line_string_decode ```
- ``` n  ]y            <Plug>unimpaired_string_decode ```
- ``` n  ]P            <Plug>unimpairedPutBelow ```
- ``` n  ]p            <Plug>unimpairedPutBelow ```
- ``` n  ]op         & :call <SNR>157_setup_paste()<CR>o ```
- ``` n  ]o+         & :set nocursorline nocursorcolumn<CR> ```
- ``` n  ]ox         & :set nocursorline nocursorcolumn<CR> ```
- ``` n  ]ov         & :set virtualedit-=all<CR> ```
- ``` n  ]ow         & :setlocal nowrap<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]os         & :setlocal nospell<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]or         & :setlocal norelativenumber<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]on         & :setlocal nonumber<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]ol         & :setlocal nolist<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]oi         & :set noignorecase<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]oh         & :set nohlsearch<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]od         & :diffoff<CR> ```
- ``` n  ]o|         & :setlocal nocursorcolumn<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]ou         & :setlocal nocursorcolumn<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]o_         & :setlocal nocursorline<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]o-         & :setlocal nocursorline<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]oc         & :setlocal nocursorline<C-R>=<SNR>157_statusbump()<CR><CR> ```
- ``` n  ]ob         & :set background=dark<CR> ```
- ``` n  ]e            <Plug>unimpairedMoveDown ```
- ``` n  ]<Space>      <Plug>unimpairedBlankDown ```
- ``` n  ]n            <Plug>unimpairedContextNext ```
- ``` n  ]f            <Plug>unimpairedDirectoryNext ```
- ``` n  ]<C-T>        <Plug>unimpairedTPNext ```
- ``` n  ]T            <Plug>unimpairedTLast ```
- ``` n  ]t            <Plug>unimpairedTNext ```
- ``` n  ]<C-Q>        <Plug>unimpairedQNFile ```
- ``` n  ]Q            <Plug>unimpairedQLast ```
- ``` n  ]q            <Plug>unimpairedQNext ```
- ``` n  ]<C-L>        <Plug>unimpairedLNFile ```
- ``` n  ]L            <Plug>unimpairedLLast ```
- ``` n  ]l            <Plug>unimpairedLNext ```
- ``` n  ]B            <Plug>unimpairedBLast ```
- ``` n  ]b            <Plug>unimpairedBNext ```
- ``` n  ]A            <Plug>unimpairedALast ```
- ``` n  ]a            <Plug>unimpairedANext ```
- ``` n  ]]            j0[[%/{<CR> ```
- ``` n  ][            /}<CR>b99]} ```
- ``` nox]m          * repmo#SelfKey(']m', '[m') ```
- ``` noxb             <Plug>CamelCaseMotion_b ```
- ``` n  cop         * <Nop> ```
- ``` n  co            <SNR>157_legacy_option_map(nr2char(getchar())) ```
- ``` n  cS            <Plug>CSurround ```
- ``` n  cs            <Plug>Csurround ```
- ``` n  ds            <Plug>Dsurround ```
- ``` noxe           * repmo#SelfKey('e', 'ge') ```
- ``` noxf             repmo#ZapKey('<Plug>Sneak_f') ```
- ``` n  gx            <Plug>NetrwBrowseX ```
- ``` n  g%            <Plug>(MatchitNormalBackward) ```
- ``` noxge          * repmo#SelfKey('ge', 'e') ```
- ``` noxgE          * repmo#SelfKey('gE', 'E') ```
- ``` noxh           * repmo#SelfKey('h', 'l') ```
- ``` noxj             repmo#Key('gj', 'gk') ```
- ``` noxk             repmo#Key('gk', 'gj') ```
- ``` noxl           * repmo#SelfKey('l', 'h') ```
- ``` n  mg            <Plug>BookmarkMoveToLine ```
- ``` n  mjj           <Plug>BookmarkMoveDown ```
- ``` n  mkk           <Plug>BookmarkMoveUp ```
- ``` n  mx            <Plug>BookmarkClearAll ```
- ``` n  mc            <Plug>BookmarkClear ```
- ``` n  mp            <Plug>BookmarkPrev ```
- ``` n  mn            <Plug>BookmarkNext ```
- ``` n  mi            <Plug>BookmarkAnnotate ```
- ``` n  mm            <Plug>BookmarkToggle ```
- ``` n  ma            <Plug>BookmarkShowAll ```
- ``` nx s             repmo#ZapKey('<Plug>Sneak_s') ```
- ``` noxt             repmo#ZapKey('<Plug>Sneak_t') ```
- ``` n  u             <Plug>(RepeatUndo) ```
- ``` noxw             <Plug>CamelCaseMotion_w ```
- ``` n  yop         & :call <SNR>157_setup_paste()<CR>0C ```
- ``` n  yo+         & :set <C-R>=<SNR>157_cursor_options()<CR><CR> ```
- ``` n  yox         & :set <C-R>=<SNR>157_cursor_options()<CR><CR> ```
- ``` n  yov         & :set <C-R>=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"<CR><CR> ```
- ``` n  yow         & :setlocal <C-R>=<SNR>157_toggle("wrap")<CR><CR> ```
- ``` n  yos         & :setlocal <C-R>=<SNR>157_toggle("spell")<CR><CR> ```
- ``` n  yor         & :setlocal <C-R>=<SNR>157_toggle("relativenumber")<CR><CR> ```
- ``` n  yon         & :setlocal <C-R>=<SNR>157_toggle("number")<CR><CR> ```
- ``` n  yol         & :setlocal <C-R>=<SNR>157_toggle("list")<CR><CR> ```
- ``` n  yoi         & :set <C-R>=<SNR>157_toggle("ignorecase")<CR><CR> ```
- ``` n  yoh         & :set <C-R>=<SNR>157_toggle("hlsearch")<CR><CR> ```
- ``` n  yod         & :<C-R>=&diff ? "diffoff" : "diffthis"<CR><CR> ```
- ``` n  yo|         & :setlocal <C-R>=<SNR>157_toggle("cursorcolumn")<CR><CR> ```
- ``` n  you         & :setlocal <C-R>=<SNR>157_toggle("cursorcolumn")<CR><CR> ```
- ``` n  yo_         & :setlocal <C-R>=<SNR>157_toggle("cursorline")<CR><CR> ```
- ``` n  yo-         & :setlocal <C-R>=<SNR>157_toggle("cursorline")<CR><CR> ```
- ``` n  yoc         & :setlocal <C-R>=<SNR>157_toggle("cursorline")<CR><CR> ```
- ``` n  yob         & :set background=<C-R>=&background == "dark" ? "light" : "dark"<CR><CR> ```
- ``` n  ySS           <Plug>YSsurround ```
- ``` n  ySs           <Plug>YSsurround ```
- ``` n  yss           <Plug>Yssurround ```
- ``` n  yS            <Plug>YSurround ```
- ``` n  ys            <Plug>Ysurround ```
- ``` n  y<C-G>      & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> ```
- ``` nox{           * repmo#SelfKey('{', '}') ```
- ``` nox}           * repmo#SelfKey('}', '{') ```
- ``` n  <Plug>NetrwBrowseX * :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<CR> ```
- ``` n  <Plug>(MatchitNormalMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR> ```
- ``` n  <Plug>(MatchitNormalMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR> ```
- ``` n  <Plug>(MatchitNormalBackward) * :<C-U>call matchit#Match_wrapper('',0,'n')<CR> ```
- ``` n  <Plug>(MatchitNormalForward) * :<C-U>call matchit#Match_wrapper('',1,'n')<CR> ```
- ``` n  <Plug>(wildfire-quick-select) * :<C-U>call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR> ```
- ``` n  <Plug>(wildfire-fuel) * :<C-U>call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR> ```
- ``` n  <Plug>unimpaired_line_xml_decode * <SNR>157_TransformSetup("xml_decode")."_" ```
- ``` n  <Plug>unimpaired_xml_decode * <SNR>157_TransformSetup("xml_decode") ```
- ``` n  <Plug>unimpaired_line_xml_encode * <SNR>157_TransformSetup("xml_encode")."_" ```
- ``` n  <Plug>unimpaired_xml_encode * <SNR>157_TransformSetup("xml_encode") ```
- ``` n  <Plug>unimpaired_line_url_decode * <SNR>157_TransformSetup("url_decode")."_" ```
- ``` n  <Plug>unimpaired_url_decode * <SNR>157_TransformSetup("url_decode") ```
- ``` n  <Plug>unimpaired_line_url_encode * <SNR>157_TransformSetup("url_encode")."_" ```
- ``` n  <Plug>unimpaired_url_encode * <SNR>157_TransformSetup("url_encode") ```
- ``` n  <Plug>unimpaired_line_string_decode * <SNR>157_TransformSetup("string_decode")."_" ```
- ``` n  <Plug>unimpaired_string_decode * <SNR>157_TransformSetup("string_decode") ```
- ``` n  <Plug>unimpaired_line_string_encode * <SNR>157_TransformSetup("string_encode")."_" ```
- ``` n  <Plug>unimpaired_string_encode * <SNR>157_TransformSetup("string_encode") ```
- ``` n  <Plug>unimpairedPutBelow * :call <SNR>157_putline(']p', 'Below')<CR> ```
- ``` n  <Plug>unimpairedPutAbove * :call <SNR>157_putline('[p', 'Above')<CR> ```
- ``` n  <Plug>unimpairedPaste * :call <SNR>157_setup_paste()<CR> ```
- ```    <Plug>unimpairedMoveSelectionDown * :<C-U>call <SNR>157_MoveSelectionDown(v:count1)<CR> ```
- ```    <Plug>unimpairedMoveSelectionUp * :<C-U>call <SNR>157_MoveSelectionUp(v:count1)<CR> ```
- ``` n  <Plug>unimpairedMoveDown * :<C-U>call <SNR>157_Move('+',v:count1,'Down')<CR> ```
- ``` n  <Plug>unimpairedMoveUp * :<C-U>call <SNR>157_Move('--',v:count1,'Up')<CR> ```
- ``` n  <Plug>unimpairedBlankDown * :<C-U>call <SNR>157_BlankDown(v:count1)<CR> ```
- ``` n  <Plug>unimpairedBlankUp * :<C-U>call <SNR>157_BlankUp(v:count1)<CR> ```
- ``` n  <Plug>unimpairedContextNext * :<C-U>call <SNR>157_Context(0)<CR> ```
- ``` n  <Plug>unimpairedContextPrevious * :<C-U>call <SNR>157_Context(1)<CR> ```
- ``` n  <Plug>unimpairedDirectoryPrevious * :<C-U>edit <C-R>=<SNR>157_fnameescape(fnamemodify(<SNR>157_FileByOffset(-v:count1), ':.'))<CR><CR> ```
- ``` n  <Plug>unimpairedDirectoryNext * :<C-U>edit <C-R>=<SNR>157_fnameescape(fnamemodify(<SNR>157_FileByOffset(v:count1), ':.'))<CR><CR> ```
- ``` n  <Plug>unimpairedTPNext * :<C-U>exe "p".(v:count ? v:count : "")."tnext"<CR> ```
- ``` n  <Plug>unimpairedTPPrevious * :<C-U>exe "p".(v:count ? v:count : "")."tprevious"<CR> ```
- ``` n  <Plug>unimpairedTLast * :<C-U>exe "".(v:count ? v:count : "")."tlast"<CR> ```
- ``` n  <Plug>unimpairedTFirst * :<C-U>exe "".(v:count ? v:count : "")."tfirst"<CR> ```
- ``` n  <Plug>unimpairedTNext * :<C-U>exe "".(v:count ? v:count : "")."tnext"<CR> ```
- ``` n  <Plug>unimpairedTPrevious * :<C-U>exe "".(v:count ? v:count : "")."tprevious"<CR> ```
- ``` n  <Plug>unimpairedQNFile * :<C-U>exe "".(v:count ? v:count : "")."cnfile"<CR>zv ```
- ``` n  <Plug>unimpairedQPFile * :<C-U>exe "".(v:count ? v:count : "")."cpfile"<CR>zv ```
- ``` n  <Plug>unimpairedQLast * :<C-U>exe "".(v:count ? v:count : "")."clast"<CR>zv ```
- ``` n  <Plug>unimpairedQFirst * :<C-U>exe "".(v:count ? v:count : "")."cfirst"<CR>zv ```
- ``` n  <Plug>unimpairedQNext * :<C-U>exe "".(v:count ? v:count : "")."cnext"<CR>zv ```
- ``` n  <Plug>unimpairedQPrevious * :<C-U>exe "".(v:count ? v:count : "")."cprevious"<CR>zv ```
- ``` n  <Plug>unimpairedLNFile * :<C-U>exe "".(v:count ? v:count : "")."lnfile"<CR>zv ```
- ``` n  <Plug>unimpairedLPFile * :<C-U>exe "".(v:count ? v:count : "")."lpfile"<CR>zv ```
- ``` n  <Plug>unimpairedLLast * :<C-U>exe "".(v:count ? v:count : "")."llast"<CR>zv ```
- ``` n  <Plug>unimpairedLFirst * :<C-U>exe "".(v:count ? v:count : "")."lfirst"<CR>zv ```
- ``` n  <Plug>unimpairedLNext * :<C-U>exe "".(v:count ? v:count : "")."lnext"<CR>zv ```
- ``` n  <Plug>unimpairedLPrevious * :<C-U>exe "".(v:count ? v:count : "")."lprevious"<CR>zv ```
- ``` n  <Plug>unimpairedBLast * :<C-U>exe "".(v:count ? v:count : "")."blast"<CR> ```
- ``` n  <Plug>unimpairedBFirst * :<C-U>exe "".(v:count ? v:count : "")."bfirst"<CR> ```
- ``` n  <Plug>unimpairedBNext * :<C-U>exe "".(v:count ? v:count : "")."bnext"<CR> ```
- ``` n  <Plug>unimpairedBPrevious * :<C-U>exe "".(v:count ? v:count : "")."bprevious"<CR> ```
- ``` n  <Plug>unimpairedALast * :<C-U>exe "".(v:count ? v:count : "")."last"<CR> ```
- ``` n  <Plug>unimpairedAFirst * :<C-U>exe "".(v:count ? v:count : "")."first"<CR> ```
- ``` n  <Plug>unimpairedANext * :<C-U>exe "".(v:count ? v:count : "")."next"<CR> ```
- ``` n  <Plug>unimpairedAPrevious * :<C-U>exe "".(v:count ? v:count : "")."previous"<CR> ```
- ``` n  <Plug>YSurround * <SNR>156_opfunc2('setup') ```
- ``` n  <Plug>Ysurround * <SNR>156_opfunc('setup') ```
- ``` n  <Plug>YSsurround * <SNR>156_opfunc2('setup').'_' ```
- ``` n  <Plug>Yssurround * '^'.v:count1.<SNR>156_opfunc('setup').'g_' ```
- ``` n  <Plug>CSurround * :<C-U>call <SNR>156_changesurround(1)<CR> ```
- ``` n  <Plug>Csurround * :<C-U>call <SNR>156_changesurround()<CR> ```
- ``` n  <Plug>Dsurround * :<C-U>call <SNR>156_dosurround(<SNR>156_inputtarget())<CR> ```
- ``` n  <Plug>SurroundRepeat * . ```
- ``` n  <Plug>(startify-open-buffers) * :<C-U>call startify#open_buffers()<CR> ```
- ``` n  <Plug>SneakPrevious   <Plug>Sneak_, ```
- ``` n  <Plug>SneakNext   <Plug>Sneak_; ```
- ``` n  <Plug>(SneakStreakBackward)   <Plug>SneakLabel_S ```
- ``` n  <Plug>(SneakStreak)   <Plug>SneakLabel_s ```
- ``` n  <Plug>SneakBackward   <Plug>Sneak_S ```
- ``` n  <Plug>SneakForward   <Plug>Sneak_s ```
- ``` n  <Plug>SneakLabel_S * :<C-U>call sneak#wrap('', 2, 1, 2, 2)<CR> ```
- ``` n  <Plug>SneakLabel_s * :<C-U>call sneak#wrap('', 2, 0, 2, 2)<CR> ```
- ``` n  <Plug>Sneak_T * :<C-U>call sneak#wrap('', 1, 1, 0, 0)<CR> ```
- ``` n  <Plug>Sneak_t * :<C-U>call sneak#wrap('', 1, 0, 0, 0)<CR> ```
- ``` n  <Plug>Sneak_F * :<C-U>call sneak#wrap('', 1, 1, 1, 0)<CR> ```
- ``` n  <Plug>Sneak_f * :<C-U>call sneak#wrap('', 1, 0, 1, 0)<CR> ```
- ``` n  <Plug>Sneak_, * :<C-U>call <SNR>154_rpt('', 1)<CR> ```
- ``` n  <Plug>Sneak_; * :<C-U>call <SNR>154_rpt('', 0)<CR> ```
- ``` n  <Plug>Sneak_S * :<C-U>call sneak#wrap('', 2, 1, 2, 1)<CR> ```
- ``` n  <Plug>Sneak_s * :<C-U>call sneak#wrap('', 2, 0, 2, 1)<CR> ```
- ``` n  <Plug>(sexp_capture_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 1, 1) | call <SNR>151_repeat_set("\<Plug>(sexp_capture_next_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_capture_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 0, 1) | call <SNR>151_repeat_set("\<Plug>(sexp_capture_prev_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_emit_tail_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 1, 0) | call <SNR>151_repeat_set("\<Plug>(sexp_emit_tail_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_emit_head_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 0, 0) | call <SNR>151_repeat_set("\<Plug>(sexp_emit_head_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_swap_element_forward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 1, 0) | call <SNR>151_repeat_set("\<Plug>(sexp_swap_element_forward)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_swap_element_backward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 0, 0) | call <SNR>151_repeat_set("\<Plug>(sexp_swap_element_backward)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_swap_list_forward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 1, 1) | call <SNR>151_repeat_set("\<Plug>(sexp_swap_list_forward)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_swap_list_backward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 0, 1) | call <SNR>151_repeat_set("\<Plug>(sexp_swap_list_backward)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_splice_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#splice_list(b:sexp_count) | call <SNR>151_repeat_set("\<Plug>(sexp_splice_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_convolute) * :<C-U>let b:sexp_count = v:count | call sexp#convolute(b:sexp_count, 'n') | call <SNR>151_repeat_set("\<Plug>(sexp_convolute)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_raise_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'n', 'sexp#select_current_element', 'n', 1) | call <SNR>151_repeat_set("\<Plug>(sexp_raise_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_raise_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'n', 'sexp#select_current_list', 'n', 0, 0) | call <SNR>151_repeat_set("\<Plug>(sexp_raise_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_insert_at_list_tail) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#insert_at_list_terminal(1) | call <SNR>151_repeat_set("\<Plug>(sexp_insert_at_list_tail)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_insert_at_list_head) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#insert_at_list_terminal(0) | call <SNR>151_repeat_set("\<Plug>(sexp_insert_at_list_head)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_curly_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '{', '}', 1, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_curly_tail_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_curly_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '{', '}', 0, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_curly_head_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_square_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '[', ']', 1, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_square_tail_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_square_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '[', ']', 0, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_square_head_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_round_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '(', ')', 1, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_round_tail_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_round_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '(', ')', 0, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_round_head_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_curly_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '{', '}', 1, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_curly_tail_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_curly_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '{', '}', 0, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_curly_head_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_square_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '[', ']', 1, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_square_tail_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_square_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '[', ']', 0, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_square_head_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_round_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '(', ')', 1, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_round_tail_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_round_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '(', ')', 0, g:sexp_insert_after_wrap) | call <SNR>151_repeat_set("\<Plug>(sexp_round_head_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_indent_top) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#indent(1, b:sexp_count) | call <SNR>151_repeat_set("\<Plug>(sexp_indent_top)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_indent) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#indent(0, b:sexp_count) | call <SNR>151_repeat_set("\<Plug>(sexp_indent)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_select_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_adjacent_element', 'n', 1)<CR> ```
- ``` n  <Plug>(sexp_select_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_adjacent_element', 'n', 0)<CR> ```
- ``` n  <Plug>(sexp_move_to_next_top_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#move_to_adjacent_element('n', b:sexp_count, 1, 0, 1)<CR> ```
- ``` n  <Plug>(sexp_move_to_prev_top_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#move_to_adjacent_element('n', b:sexp_count, 0, 0, 1)<CR> ```
- ``` n  <Plug>(sexp_flow_to_next_leaf_tail) * :<C-U>let b:sexp_count = v:count | call sexp#leaf_flow('n', b:sexp_count, 1, 1)<CR> ```
- ``` n  <Plug>(sexp_flow_to_prev_leaf_tail) * :<C-U>let b:sexp_count = v:count | call sexp#leaf_flow('n', b:sexp_count, 0, 1)<CR> ```
- ``` n  <Plug>(sexp_flow_to_next_leaf_head) * :<C-U>let b:sexp_count = v:count | call sexp#leaf_flow('n', b:sexp_count, 1, 0)<CR> ```
- ``` n  <Plug>(sexp_flow_to_prev_leaf_head) * :<C-U>let b:sexp_count = v:count | call sexp#leaf_flow('n', b:sexp_count, 0, 0)<CR> ```
- ``` n  <Plug>(sexp_flow_to_next_close) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#list_flow('n', b:sexp_count, 1, 1)<CR> ```
- ``` n  <Plug>(sexp_flow_to_next_open) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#list_flow('n', b:sexp_count, 1, 0)<CR> ```
- ``` n  <Plug>(sexp_flow_to_prev_open) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#list_flow('n', b:sexp_count, 0, 0)<CR> ```
- ``` n  <Plug>(sexp_flow_to_prev_close) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#list_flow('n', b:sexp_count, 0, 1)<CR> ```
- ``` n  <Plug>(sexp_move_to_next_element_tail) * :<C-U>let b:sexp_count = v:count | call sexp#move_to_adjacent_element('n', b:sexp_count, 1, 1, 0)<CR> ```
- ``` n  <Plug>(sexp_move_to_prev_element_tail) * :<C-U>let b:sexp_count = v:count | call sexp#move_to_adjacent_element('n', b:sexp_count, 0, 1, 0)<CR> ```
- ``` n  <Plug>(sexp_move_to_next_element_head) * :<C-U>let b:sexp_count = v:count | call sexp#move_to_adjacent_element('n', b:sexp_count, 1, 0, 0)<CR> ```
- ``` n  <Plug>(sexp_move_to_prev_element_head) * :<C-U>let b:sexp_count = v:count | call sexp#move_to_adjacent_element('n', b:sexp_count, 0, 0, 0)<CR> ```
- ``` n  <Plug>(sexp_move_to_next_bracket) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#move_to_nearest_bracket', 'n', 1)<CR> ```
- ``` n  <Plug>(sexp_move_to_prev_bracket) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#move_to_nearest_bracket', 'n', 0)<CR> ```
- ``` n  <Plug>(RepeatRedo) * :<C-U>call repeat#wrap("\<C-R>",v:count)<CR> ```
- ``` n  <Plug>(RepeatUndoLine) * :<C-U>call repeat#wrap('U',v:count)<CR> ```
- ``` n  <Plug>(RepeatUndo) * :<C-U>call repeat#wrap('u',v:count)<CR> ```
- ``` n  <Plug>(RepeatDot) * :<C-U>exe repeat#run(v:count)<CR> ```
- ``` n  <Plug>RefactorExtractSetter * <C-\><C-N>:call lh#refactor#extract_setter()<CR> ```
- ``` n  <Plug>RefactorExtractGetter * <C-\><C-N>:call lh#refactor#extract_getter()<CR> ```
- ``` n  <Plug>RefactorPutLastDown * <C-\><C-N>:call lh#refactor#put_extracted_last('')<CR> ```
- ``` n  <Plug>RefactorPutLastUp * <C-\><C-N>:call lh#refactor#put_extracted_last('!')<CR> ```
- ``` n  <Plug>MarkologyLineHighlightToggle * :MarkologyLineHighlightToggle<CR> ```
- ``` n  <Plug>MarkologyQuickFix * :MarkologyQuickFix<CR> ```
- ``` n  <Plug>MarkologyLocationList * :MarkologyLocationList<CR> ```
- ``` n  <Plug>MarkologyPrevLocalMarkByAlpha * :MarkologyPrevLocalMarkByAlpha<CR> ```
- ``` n  <Plug>MarkologyNextLocalMarkByAlpha * :MarkologyNextLocalMarkByAlpha<CR> ```
- ``` n  <Plug>MarkologyPrevLocalMarkPos * :MarkologyPrevLocalMarkPos<CR> ```
- ``` n  <Plug>MarkologyNextLocalMarkPos * :MarkologyNextLocalMarkPos<CR> ```
- ``` n  <Plug>MarkologyClearAll * :MarkologyClearAll<CR> ```
- ``` n  <Plug>MarkologyClearMark * :MarkologyClearMark<CR> ```
- ``` n  <Plug>MarkologyPlaceMark * :MarkologyPlaceMark<CR> ```
- ``` n  <Plug>MarkologyPlaceMarkToggle * :MarkologyPlaceMarkToggle<CR> ```
- ``` n  <Plug>MarkologyToggle * :MarkologyToggle<CR> ```
- ``` n  <Plug>MarkologyDisable * :MarkologyDisable<CR> ```
- ``` n  <Plug>MarkologyEnable * :MarkologyEnable<CR> ```
- ``` n  <Plug>LOTRToggle * :LOTRToggle<CR> ```
- ``` n  <Plug>GitGutterPreviewHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')<CR> ```
- ``` n  <Plug>(GitGutterPreviewHunk) * :GitGutterPreviewHunk<CR> ```
- ``` n  <Plug>GitGutterUndoHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')<CR> ```
- ``` n  <Plug>(GitGutterUndoHunk) * :GitGutterUndoHunk<CR> ```
- ``` n  <Plug>GitGutterStageHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')<CR> ```
- ``` n  <Plug>(GitGutterStageHunk) * :GitGutterStageHunk<CR> ```
- ``` n  <Plug>GitGutterPrevHunk * &diff ? '[c' : ":\<C-U>call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\<CR>" ```
- ``` n  <Plug>(GitGutterPrevHunk) * &diff ? '[c' : ":\<C-U>execute v:count1 . 'GitGutterPrevHunk'\<CR>" ```
- ``` n  <Plug>GitGutterNextHunk * &diff ? ']c' : ":\<C-U>call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\<CR>" ```
- ``` n  <Plug>(GitGutterNextHunk) * &diff ? ']c' : ":\<C-U>execute v:count1 . 'GitGutterNextHunk'\<CR>" ```
- ```    <Plug>(easymotion-prefix)N   <Plug>(easymotion-N) ```
- ```    <Plug>(easymotion-prefix)n   <Plug>(easymotion-n) ```
- ```    <Plug>(easymotion-prefix)k   <Plug>(easymotion-k) ```
- ```    <Plug>(easymotion-prefix)j   <Plug>(easymotion-j) ```
- ```    <Plug>(easymotion-prefix)gE   <Plug>(easymotion-gE) ```
- ```    <Plug>(easymotion-prefix)ge   <Plug>(easymotion-ge) ```
- ```    <Plug>(easymotion-prefix)E   <Plug>(easymotion-E) ```
- ```    <Plug>(easymotion-prefix)e   <Plug>(easymotion-e) ```
- ```    <Plug>(easymotion-prefix)B   <Plug>(easymotion-B) ```
- ```    <Plug>(easymotion-prefix)b   <Plug>(easymotion-b) ```
- ```    <Plug>(easymotion-prefix)W   <Plug>(easymotion-W) ```
- ```    <Plug>(easymotion-prefix)w   <Plug>(easymotion-w) ```
- ```    <Plug>(easymotion-prefix)T   <Plug>(easymotion-T) ```
- ```    <Plug>(easymotion-prefix)t   <Plug>(easymotion-t) ```
- ```    <Plug>(easymotion-prefix)s   <Plug>(easymotion-s) ```
- ```    <Plug>(easymotion-prefix)F   <Plug>(easymotion-F) ```
- ```    <Plug>(easymotion-prefix)f   <Plug>(easymotion-f) ```
- ``` nos<Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(0)<CR> ```
- ```    <Plug>(easymotion-dotrepeat) * :<C-U>call EasyMotion#DotRepeat()<CR> ```
- ``` nos<Plug>(easymotion-repeat) * :<C-U>call EasyMotion#Repeat(0)<CR> ```
- ``` nos<Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(0,1)<CR> ```
- ``` nos<Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(0,0)<CR> ```
- ``` nos<Plug>(easymotion-wl) * :<C-U>call EasyMotion#WBL(0,0)<CR> ```
- ``` nos<Plug>(easymotion-lineforward) * :<C-U>call EasyMotion#LineAnywhere(0,0)<CR> ```
- ``` nos<Plug>(easymotion-lineanywhere) * :<C-U>call EasyMotion#LineAnywhere(0,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-wl) * :<C-U>call EasyMotion#WBL(0,2)<CR> ```
- ``` nos<Plug>(easymotion-linebackward) * :<C-U>call EasyMotion#LineAnywhere(0,1)<CR> ```
- ``` nos<Plug>(easymotion-bl) * :<C-U>call EasyMotion#WBL(0,1)<CR> ```
- ``` nos<Plug>(easymotion-el) * :<C-U>call EasyMotion#EL(0,0)<CR> ```
- ``` nos<Plug>(easymotion-gel) * :<C-U>call EasyMotion#EL(0,1)<CR> ```
- ``` nos<Plug>(easymotion-bd-el) * :<C-U>call EasyMotion#EL(0,2)<CR> ```
- ``` nos<Plug>(easymotion-jumptoanywhere) * :<C-U>call EasyMotion#JumpToAnywhere(0,2)<CR> ```
- ``` nos<Plug>(easymotion-vim-n) * :<C-U>call EasyMotion#Search(0,0,1)<CR> ```
- ``` nos<Plug>(easymotion-n) * :<C-U>call EasyMotion#Search(0,0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-n) * :<C-U>call EasyMotion#Search(0,2,0)<CR> ```
- ``` nos<Plug>(easymotion-vim-N) * :<C-U>call EasyMotion#Search(0,1,1)<CR> ```
- ``` nos<Plug>(easymotion-N) * :<C-U>call EasyMotion#Search(0,1,0)<CR> ```
- ``` nos<Plug>(easymotion-eol-j) * :<C-U>call EasyMotion#Eol(0,0)<CR> ```
- ``` nos<Plug>(easymotion-sol-k) * :<C-U>call EasyMotion#Sol(0,1)<CR> ```
- ``` nos<Plug>(easymotion-sol-j) * :<C-U>call EasyMotion#Sol(0,0)<CR> ```
- ``` nos<Plug>(easymotion-k) * :<C-U>call EasyMotion#JK(0,1)<CR> ```
- ``` nos<Plug>(easymotion-j) * :<C-U>call EasyMotion#JK(0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-jk) * :<C-U>call EasyMotion#JK(0,2)<CR> ```
- ``` nos<Plug>(easymotion-eol-bd-jk) * :<C-U>call EasyMotion#Eol(0,2)<CR> ```
- ``` nos<Plug>(easymotion-sol-bd-jk) * :<C-U>call EasyMotion#Sol(0,2)<CR> ```
- ``` nos<Plug>(easymotion-eol-k) * :<C-U>call EasyMotion#Eol(0,1)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-ge) * :<C-U>call EasyMotion#EK(0,1)<CR> ```
- ``` nos<Plug>(easymotion-w) * :<C-U>call EasyMotion#WB(0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-W) * :<C-U>call EasyMotion#WBW(0,2)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-w) * :<C-U>call EasyMotion#WBK(0,0)<CR> ```
- ``` nos<Plug>(easymotion-gE) * :<C-U>call EasyMotion#EW(0,1)<CR> ```
- ``` nos<Plug>(easymotion-e) * :<C-U>call EasyMotion#E(0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-E) * :<C-U>call EasyMotion#EW(0,2)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-e) * :<C-U>call EasyMotion#EK(0,0)<CR> ```
- ``` nos<Plug>(easymotion-b) * :<C-U>call EasyMotion#WB(0,1)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-b) * :<C-U>call EasyMotion#WBK(0,1)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-bd-w) * :<C-U>call EasyMotion#WBK(0,2)<CR> ```
- ``` nos<Plug>(easymotion-W) * :<C-U>call EasyMotion#WBW(0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-w) * :<C-U>call EasyMotion#WB(0,2)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-bd-e) * :<C-U>call EasyMotion#EK(0,2)<CR> ```
- ``` nos<Plug>(easymotion-ge) * :<C-U>call EasyMotion#E(0,1)<CR> ```
- ``` nos<Plug>(easymotion-E) * :<C-U>call EasyMotion#EW(0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-e) * :<C-U>call EasyMotion#E(0,2)<CR> ```
- ``` nos<Plug>(easymotion-B) * :<C-U>call EasyMotion#WBW(0,1)<CR> ```
- ``` n  <Plug>(easymotion-overwin-w) * :<C-U>call EasyMotion#overwin#w()<CR> ```
- ``` n  <Plug>(easymotion-overwin-line) * :<C-U>call EasyMotion#overwin#line()<CR> ```
- ``` n  <Plug>(easymotion-overwin-f2) * :<C-U>call EasyMotion#OverwinF(2)<CR> ```
- ``` n  <Plug>(easymotion-overwin-f) * :<C-U>call EasyMotion#OverwinF(1)<CR> ```
- ``` nos<Plug>(easymotion-Tln) * :<C-U>call EasyMotion#TL(-1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-t2) * :<C-U>call EasyMotion#T(2,0,0)<CR> ```
- ``` nos<Plug>(easymotion-t) * :<C-U>call EasyMotion#T(1,0,0)<CR> ```
- ``` nos<Plug>(easymotion-s) * :<C-U>call EasyMotion#S(1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-tn) * :<C-U>call EasyMotion#T(-1,0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-t2) * :<C-U>call EasyMotion#T(2,0,2)<CR> ```
- ``` nos<Plug>(easymotion-tl) * :<C-U>call EasyMotion#TL(1,0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-tn) * :<C-U>call EasyMotion#T(-1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-fn) * :<C-U>call EasyMotion#S(-1,0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-tl) * :<C-U>call EasyMotion#TL(1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-fl) * :<C-U>call EasyMotion#SL(1,0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-tl2) * :<C-U>call EasyMotion#TL(2,0,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-fn) * :<C-U>call EasyMotion#S(-1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-f) * :<C-U>call EasyMotion#S(1,0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-fl) * :<C-U>call EasyMotion#SL(1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-Fl2) * :<C-U>call EasyMotion#SL(2,0,1)<CR> ```
- ``` nos<Plug>(easymotion-tl2) * :<C-U>call EasyMotion#TL(2,0,0)<CR> ```
- ``` nos<Plug>(easymotion-f2) * :<C-U>call EasyMotion#S(2,0,0)<CR> ```
- ``` nos<Plug>(easymotion-Fln) * :<C-U>call EasyMotion#SL(-1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-sln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-tln) * :<C-U>call EasyMotion#TL(-1,0,0)<CR> ```
- ``` nos<Plug>(easymotion-fl2) * :<C-U>call EasyMotion#SL(2,0,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-fl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR> ```
- ``` nos<Plug>(easymotion-T2) * :<C-U>call EasyMotion#T(2,0,1)<CR> ```
- ``` nos<Plug>(easymotion-bd-tln) * :<C-U>call EasyMotion#TL(-1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-T) * :<C-U>call EasyMotion#T(1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-bd-t) * :<C-U>call EasyMotion#T(1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-Tn) * :<C-U>call EasyMotion#T(-1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-s2) * :<C-U>call EasyMotion#S(2,0,2)<CR> ```
- ``` nos<Plug>(easymotion-Tl) * :<C-U>call EasyMotion#TL(1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-sn) * :<C-U>call EasyMotion#S(-1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-Fn) * :<C-U>call EasyMotion#S(-1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-sl) * :<C-U>call EasyMotion#SL(1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-Fl) * :<C-U>call EasyMotion#SL(1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-sl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-fln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-F) * :<C-U>call EasyMotion#S(1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-bd-f) * :<C-U>call EasyMotion#S(1,0,2)<CR> ```
- ``` nos<Plug>(easymotion-F2) * :<C-U>call EasyMotion#S(2,0,1)<CR> ```
- ``` nos<Plug>(easymotion-bd-f2) * :<C-U>call EasyMotion#S(2,0,2)<CR> ```
- ``` nos<Plug>(easymotion-Tl2) * :<C-U>call EasyMotion#TL(2,0,1)<CR> ```
- ``` nos<Plug>(easymotion-fln) * :<C-U>call EasyMotion#SL(-1,0,0)<CR> ```
- ``` n  <Plug>BookmarkMoveToLine * :<C-U>BookmarkMoveToLine v:count<CR> ```
- ``` n  <Plug>BookmarkMoveDown * :<C-U>BookmarkMoveDown v:count<CR> ```
- ``` n  <Plug>BookmarkMoveUp * :<C-U>BookmarkMoveUp v:count<CR> ```
- ``` n  <Plug>BookmarkClearAll * :BookmarkClearAll<CR> ```
- ``` n  <Plug>BookmarkClear * :BookmarkClear<CR> ```
- ``` n  <Plug>BookmarkPrev * :BookmarkPrev<CR> ```
- ``` n  <Plug>BookmarkNext * :BookmarkNext<CR> ```
- ``` n  <Plug>BookmarkAnnotate * :BookmarkAnnotate<CR> ```
- ``` n  <Plug>BookmarkToggle * :BookmarkToggle<CR> ```
- ``` n  <Plug>BookmarkShowAll * :BookmarkShowAll<CR> ```
- ```    <Plug>(asterisk-gz#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0}) ```
- ```    <Plug>(asterisk-z#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1}) ```
- ```    <Plug>(asterisk-g#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0}) ```
- ```    <Plug>(asterisk-#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1}) ```
- ```    <Plug>(asterisk-gz*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0}) ```
- ```    <Plug>(asterisk-z*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1}) ```
- ```    <Plug>(asterisk-g*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0}) ```
- ```    <Plug>(asterisk-*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1}) ```
- ``` n  <Plug>NERDCommenterAltDelims * :call <SNR>54_SwitchToAlternativeDelimiters(1)<CR> ```
- ``` n  <Plug>NERDCommenterUncomment * :call NERDComment("n", "Uncomment")<CR> ```
- ``` n  <Plug>NERDCommenterAlignBoth * :call NERDComment("n", "AlignBoth")<CR> ```
- ``` n  <Plug>NERDCommenterAlignLeft * :call NERDComment("n", "AlignLeft")<CR> ```
- ``` n  <Plug>NERDCommenterAppend * :call NERDComment("n", "Append")<CR> ```
- ``` n  <Plug>NERDCommenterYank * :call NERDComment("n", "Yank")<CR> ```
- ``` n  <Plug>NERDCommenterSexy * :call NERDComment("n", "Sexy")<CR> ```
- ``` n  <Plug>NERDCommenterInvert * :call NERDComment("n", "Invert")<CR> ```
- ``` n  <Plug>NERDCommenterToEOL * :call NERDComment("n", "ToEOL")<CR> ```
- ``` n  <Plug>NERDCommenterNested * :call NERDComment("n", "Nested")<CR> ```
- ``` n  <Plug>NERDCommenterMinimal * :call NERDComment("n", "Minimal")<CR> ```
- ``` n  <Plug>NERDCommenterToggle * :call NERDComment("n", "Toggle")<CR> ```
- ``` n  <Plug>NERDCommenterComment * :call NERDComment("n", "Comment")<CR> ```
- ``` n  <Plug>(fzf-maps-n) * :<C-U>call fzf#vim#maps('n', 0)<CR> ```
- ``` n  <Plug>(emmet-merge-lines) * :call emmet#mergeLines()<CR> ```
- ``` n  <Plug>(emmet-anchorize-summary) * :call emmet#anchorizeURL(1)<CR> ```
- ``` n  <Plug>(emmet-anchorize-url) * :call emmet#anchorizeURL(0)<CR> ```
- ``` n  <Plug>(emmet-remove-tag) * :call emmet#removeTag()<CR> ```
- ``` n  <Plug>(emmet-split-join-tag) * :call emmet#splitJoinTag()<CR> ```
- ``` n  <Plug>(emmet-toggle-comment) * :call emmet#toggleComment()<CR> ```
- ``` n  <Plug>(emmet-image-encode) * :call emmet#imageEncode()<CR> ```
- ``` n  <Plug>(emmet-image-size) * :call emmet#imageSize()<CR> ```
- ``` n  <Plug>(emmet-move-prev-item) * :call emmet#moveNextPrevItem(1)<CR> ```
- ``` n  <Plug>(emmet-move-next-item) * :call emmet#moveNextPrevItem(0)<CR> ```
- ``` n  <Plug>(emmet-move-prev) * :call emmet#moveNextPrev(1)<CR> ```
- ``` n  <Plug>(emmet-move-next) * :call emmet#moveNextPrev(0)<CR> ```
- ``` n  <Plug>(emmet-balance-tag-outword) * :call emmet#balanceTag(-1)<CR> ```
- ``` n  <Plug>(emmet-balance-tag-inward) * :call emmet#balanceTag(1)<CR> ```
- ``` n  <Plug>(emmet-update-tag) * :call emmet#updateTag()<CR> ```
- ``` n  <Plug>(emmet-expand-word) * :call emmet#expandAbbr(1,"")<CR> ```
- ``` n  <Plug>(emmet-expand-abbr) * :call emmet#expandAbbr(3,"")<CR> ```
- ``` n  <Plug>(ctrlp) * :<C-U>CtrlP<CR> ```
- ``` n  <Plug>CamelCaseMotion_e * :<C-U>call camelcasemotion#Motion('e',v:count1,'n')<CR> ```
- ``` n  <Plug>CamelCaseMotion_b * :<C-U>call camelcasemotion#Motion('b',v:count1,'n')<CR> ```
- ``` n  <Plug>CamelCaseMotion_w * :<C-U>call camelcasemotion#Motion('w',v:count1,'n')<CR> ```
- ``` n  <Plug>(ale_rename) * :ALERename<CR> ```
- ``` n  <Plug>(ale_documentation) * :ALEDocumentation<CR> ```
- ``` n  <Plug>(ale_hover) * :ALEHover<CR> ```
- ``` n  <Plug>(ale_find_references) * :ALEFindReferences<CR> ```
- ``` n  <Plug>(ale_go_to_type_definition_in_vsplit) * :ALEGoToTypeDefinitionInVSplit<CR> ```
- ``` n  <Plug>(ale_go_to_type_definition_in_split) * :ALEGoToTypeDefinitionInSplit<CR> ```
- ``` n  <Plug>(ale_go_to_type_definition_in_tab) * :ALEGoToTypeDefinitionInTab<CR> ```
- ``` n  <Plug>(ale_go_to_type_definition) * :ALEGoToTypeDefinition<CR> ```
- ``` n  <Plug>(ale_go_to_definition_in_vsplit) * :ALEGoToDefinitionInVSplit<CR> ```
- ``` n  <Plug>(ale_go_to_definition_in_split) * :ALEGoToDefinitionInSplit<CR> ```
- ``` n  <Plug>(ale_go_to_definition_in_tab) * :ALEGoToDefinitionInTab<CR> ```
- ``` n  <Plug>(ale_go_to_definition) * :ALEGoToDefinition<CR> ```
- ``` n  <Plug>(ale_fix) * :ALEFix<CR> ```
- ``` n  <Plug>(ale_detail) * :ALEDetail<CR> ```
- ``` n  <Plug>(ale_lint) * :ALELint<CR> ```
- ``` n  <Plug>(ale_reset_buffer) * :ALEResetBuffer<CR> ```
- ``` n  <Plug>(ale_disable_buffer) * :ALEDisableBuffer<CR> ```
- ``` n  <Plug>(ale_enable_buffer) * :ALEEnableBuffer<CR> ```
- ``` n  <Plug>(ale_toggle_buffer) * :ALEToggleBuffer<CR> ```
- ``` n  <Plug>(ale_reset) * :ALEReset<CR> ```
- ``` n  <Plug>(ale_disable) * :ALEDisable<CR> ```
- ``` n  <Plug>(ale_enable) * :ALEEnable<CR> ```
- ``` n  <Plug>(ale_toggle) * :ALEToggle<CR> ```
- ``` n  <Plug>(ale_last) * :ALELast<CR> ```
- ``` n  <Plug>(ale_first) * :ALEFirst<CR> ```
- ``` n  <Plug>(ale_next_wrap_warning) * :ALENext -wrap -warning<CR> ```
- ``` n  <Plug>(ale_next_warning) * :ALENext -warning<CR> ```
- ``` n  <Plug>(ale_next_wrap_error) * :ALENext -wrap -error<CR> ```
- ``` n  <Plug>(ale_next_error) * :ALENext -error<CR> ```
- ``` n  <Plug>(ale_next_wrap) * :ALENextWrap<CR> ```
- ``` n  <Plug>(ale_next) * :ALENext<CR> ```
- ``` n  <Plug>(ale_previous_wrap_warning) * :ALEPrevious -wrap -warning<CR> ```
- ``` n  <Plug>(ale_previous_warning) * :ALEPrevious -warning<CR> ```
- ``` n  <Plug>(ale_previous_wrap_error) * :ALEPrevious -wrap -error<CR> ```
- ``` n  <Plug>(ale_previous_error) * :ALEPrevious -error<CR> ```
- ``` n  <Plug>(ale_previous_wrap) * :ALEPreviousWrap<CR> ```
- ``` n  <Plug>(ale_previous) * :ALEPrevious<CR> ```
- ``` n  <Plug>(ale_show_completion_menu) * :call ale#completion#RestoreCompletionOptions()<CR> ```
- ``` n  <F11>       * :call conque_term#exec_file()<CR> ```
- ``` n  <F7>        * :TTags<CR> ```
- ``` n  <F6>        * :SyntasticToggleMode<CR> ```
- ``` n  <F5>        * :LOTRToggle<CR> ```
- ``` n  <F4>        * :MinimapToggle<CR> ```
- ``` n  <F3>        * :TlistAddFiles *<CR>:TlistToggle<CR> ```
- ``` n  <F2>        * :UndotreeToggle<CR> ```
- ``` n  <F1>        * :NERDTreeToggle<CR> ```
- ``` n  <F8>        * :%s@@@g<Left><Left><Left> ```
- ``` n  <C-Up>      * :<C-U>call GoToNextMarker("{{{",1)<CR> ```
- ``` n  <C-Down>    * :<C-U>call GoToNextMarker("{{{",0)<CR> ```
- ``` n  <End>       * G ```
- ``` n  <Home>      * gg ```
- ``` n  <Plug>RepeatEx * @: :call repeat#set("\<Plug>RepeatEx")<CR> ```
# Vim Keybindings Visual Mode
- ``` x  <Space>hs    @<Plug>(GitGutterStageHunk) ```
- ``` x  ac           @<Plug>(GitGutterTextObjectOuterVisual) ```
- ``` x  ic           @<Plug>(GitGutterTextObjectInnerVisual) ```
- ``` v  <C-B>       * "*y`> ```
- ```    <C-D><C-D>  * :GitGutterUndoHunk<CR> ```
- ``` v  <C-D>d      * :<C-C>:update<CR> ```
- ``` v  <C-D>y      * :<C-C>:update<CR>:SyntasticCheck<CR> ```
- ``` v  <C-D>,      * :call NERDComment("x","Toggle")<CR>`> ```
- ``` v  <C-F>       * :<C-C>:q!<CR> ```
- ``` x  <C-G>       * :<C-U>call multiple_cursors#new("v", 0)<CR> ```
- ``` s  <C-H>       * <C-G>"_c ```
- ``` nox<C-H>       * 4h ```
- ``` x  <Tab>       * :call UltiSnips#SaveLastVisualSelection()<CR>gvs ```
- ``` s  <Tab>       * <Esc>:call UltiSnips#ExpandSnippetOrJump()<CR> ```
- ```    <NL>        * 4j ```
- ```    <C-K>       * 4k ```
- ```    <C-L>       * 4l ```
- ```    <CR>          <Plug>(wildfire-fuel) ```
- ```    <C-P>         <Plug>(ctrlp) ```
- ``` s  <C-R>       * <C-G>"_c<C-R> ```
- ``` x  <C-X>t        <Plug>RefactorExtractType ```
- ``` x  <C-X>v        <Plug>RefactorExtractVariable ```
- ``` x  <C-X>f      * :call lh#refactor#extract_function(1,lh#ui#input("Name for the function to extract: "))<CR> ```
- ``` v  <C-Y>c        <Plug>(emmet-code-pretty) ```
- ``` v  <C-Y>D        <Plug>(emmet-balance-tag-outword) ```
- ``` v  <C-Y>d        <Plug>(emmet-balance-tag-inward) ```
- ``` v  <C-Y>,        <Plug>(emmet-expand-abbr) ```
- ```    <Esc>[1;5D    <C-Left> ```
- ```    <Esc>[1;5C    <C-Right> ```
- ```    <Esc>[1;5B    <C-Down> ```
- ```    <Esc>[1;5A    <C-Up> ```
- ```    <Space><Space>   <Plug>(easymotion-prefix) ```
- ``` x  <Space>cu     <Plug>NERDCommenterUncomment ```
- ``` x  <Space>cb     <Plug>NERDCommenterAlignBoth ```
- ``` x  <Space>cl     <Plug>NERDCommenterAlignLeft ```
- ``` x  <Space>cy     <Plug>NERDCommenterYank ```
- ``` x  <Space>cs     <Plug>NERDCommenterSexy ```
- ``` x  <Space>ci     <Plug>NERDCommenterInvert ```
- ``` x  <Space>cn     <Plug>NERDCommenterNested ```
- ``` x  <Space>cm     <Plug>NERDCommenterMinimal ```
- ``` x  <Space>c<Space>   <Plug>NERDCommenterToggle ```
- ``` x  <Space>cc     <Plug>NERDCommenterComment ```
- ``` x  <Space><Tab>   <Plug>(fzf-maps-x) ```
- ``` v  <Space>vl   * <Esc>:call TmuxRepeat("repl")<CR>gv ```
- ``` v  <Space>vk   * <Esc>:call TmuxRepeat("visual")<CR>gv ```
- ``` v  <Space>em     :call ExtractMethod()<CR> ```
- ```    <Space><Space>e   <Plug>(easymotion-bd-e) ```
- ```    <Space><Space>w   <Plug>(easymotion-bd-w) ```
- ``` v  <Space>(    * :call InsertQuoteVisualMode("paren")<CR> ```
- ``` v  <Space>{    * :call InsertQuoteVisualMode("curlybracket")<CR> ```
- ``` v  <Space>[    * :call InsertQuoteVisualMode("bracket")<CR> ```
- ``` v  <Space>`    * :call InsertQuoteVisualMode("back")<CR> ```
- ``` v  <Space>'    * :call InsertQuoteVisualMode("single")<CR<CR> ```
- ``` v  <Space>"    * :call InsertQuoteVisualMode("double")<CR> ```
- ```    <Space>z    * nea ```
- ```    <Space>sudo * :w !sudo tee % &>/dev/null<CR><CR><CR> ```
- ``` v  <Space>b    * :w !tmux set-buffer "$(cat)"<CR><CR> ```
- ```    <Space>=    * 4+ ```
- ```    <Space>-    * 4- ```
- ``` x  %             <Plug>(MatchitVisualForward) ```
- ``` nox(           * repmo#SelfKey('(', ')') ```
- ``` nox)           * repmo#SelfKey(')', '(') ```
- ``` nox+           * repmo#SelfKey('+', '-') ```
- ``` x  ,e            <Plug>CamelCaseMotion_e ```
- ``` nox,             repmo#LastRevKey('<Plug>Sneak_,') ```
- ``` nox-           * repmo#SelfKey('-', '+') ```
- ``` nox;             repmo#LastKey('<Plug>Sneak_;') ```
- ``` v  <           * <gv ```
- ``` v  >           * >gv ```
- ``` x  @(targets)  * :<C-U>call targets#do()<CR> ```
- ``` x  A             targets#e('o', 'A', 'A') ```
- ```    B           * repmo#SelfKey('b', 'w') ```
- ``` noxE           * repmo#SelfKey('E', 'gE') ```
- ``` noxF             repmo#ZapKey('<Plug>Sneak_F') ```
- ``` x  I             targets#e('o', 'I', 'I') ```
- ``` x  S             <Plug>VSurround ```
- ``` noxT             repmo#ZapKey('<Plug>Sneak_T') ```
- ```    W           * repmo#SelfKey('w', 'b') ```
- ``` v  Y           * y`>j ```
- ``` x  Z             <Plug>Sneak_S ```
- ``` x  [%            <Plug>(MatchitVisualMultiBackward) ```
- ``` x  [x            <Plug>unimpaired_xml_encode ```
- ``` x  [u            <Plug>unimpaired_url_encode ```
- ``` x  [y            <Plug>unimpaired_string_encode ```
- ``` x  [e            <Plug>unimpairedMoveSelectionUp ```
- ``` x  [n            <Plug>unimpairedContextPrevious ```
- ``` nox[m          * repmo#SelfKey('[m', ']m') ```
- ``` ox [[          * repmo#SelfKey('[[', ']]') ```
- ``` v  \K          * y:Thesaurus <C-R>"<CR> ```
- ``` x  ]%            <Plug>(MatchitVisualMultiForward) ```
- ``` x  ]x            <Plug>unimpaired_xml_decode ```
- ``` x  ]u            <Plug>unimpaired_url_decode ```
- ``` x  ]y            <Plug>unimpaired_string_decode ```
- ``` x  ]e            <Plug>unimpairedMoveSelectionDown ```
- ``` x  ]n            <Plug>unimpairedContextNext ```
- ``` nox]m          * repmo#SelfKey(']m', '[m') ```
- ``` ox ]]          * repmo#SelfKey(']]', '[[') ```
- ``` x  a%            <Plug>(MatchitVisualTextObject) ```
- ``` x  a             targets#e('o', 'a', 'a') ```
- ``` noxb             <Plug>CamelCaseMotion_b ```
- ``` noxe           * repmo#SelfKey('e', 'ge') ```
- ``` noxf             repmo#ZapKey('<Plug>Sneak_f') ```
- ``` v  gx            <Plug>NetrwBrowseXVis ```
- ``` x  g%            <Plug>(MatchitVisualBackward) ```
- ``` x  gS            <Plug>VgSurround ```
- ``` noxge          * repmo#SelfKey('ge', 'e') ```
- ``` noxgE          * repmo#SelfKey('gE', 'E') ```
- ``` noxh           * repmo#SelfKey('h', 'l') ```
- ``` x  i             targets#e('o', 'i', 'i') ```
- ``` x  i,e           <Plug>CamelCaseMotion_ie ```
- ``` x  i,b           <Plug>CamelCaseMotion_ib ```
- ``` x  i,w           <Plug>CamelCaseMotion_iw ```
- ``` noxj             repmo#Key('gj', 'gk') ```
- ``` noxk             repmo#Key('gk', 'gj') ```
- ``` noxl           * repmo#SelfKey('l', 'h') ```
- ``` nx s             repmo#ZapKey('<Plug>Sneak_s') ```
- ``` noxt             repmo#ZapKey('<Plug>Sneak_t') ```
- ``` noxw             <Plug>CamelCaseMotion_w ```
- ``` nox{           * repmo#SelfKey('{', '}') ```
- ``` nox}           * repmo#SelfKey('}', '{') ```
- ``` s  <BS>        * <C-G>"_c ```
- ``` v  <Plug>NetrwBrowseXVis * :<C-U>call netrw#BrowseXVis()<CR> ```
- ``` v  <Plug>(MatchitVisualTextObject)   <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) ```
- ``` v  <Plug>(MatchitVisualMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` ```
- ``` v  <Plug>(MatchitVisualMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` ```
- ``` v  <Plug>(MatchitVisualBackward) * :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` ```
- ``` v  <Plug>(MatchitVisualForward) * :<C-U>call matchit#Match_wrapper('',1,'v')<CR>m'gv`` ```
- ``` v  <Plug>(wildfire-fuel) * :<C-U>call wildfire#Fuel(v:count1)<CR> ```
- ``` v  <Plug>(wildfire-water) * :<C-U>call wildfire#Water(v:count1)<CR> ```
- ``` x  <Plug>unimpaired_xml_decode * <SNR>157_TransformSetup("xml_decode") ```
- ``` x  <Plug>unimpaired_xml_encode * <SNR>157_TransformSetup("xml_encode") ```
- ``` x  <Plug>unimpaired_url_decode * <SNR>157_TransformSetup("url_decode") ```
- ``` x  <Plug>unimpaired_url_encode * <SNR>157_TransformSetup("url_encode") ```
- ``` x  <Plug>unimpaired_string_decode * <SNR>157_TransformSetup("string_decode") ```
- ``` x  <Plug>unimpaired_string_encode * <SNR>157_TransformSetup("string_encode") ```
- ```    <Plug>unimpairedMoveSelectionDown * :<C-U>call <SNR>157_MoveSelectionDown(v:count1)<CR> ```
- ```    <Plug>unimpairedMoveSelectionUp * :<C-U>call <SNR>157_MoveSelectionUp(v:count1)<CR> ```
- ``` x  <Plug>unimpairedContextNext * :<C-U>exe 'normal! gv'|call <SNR>157_Context(0)<CR> ```
- ``` x  <Plug>unimpairedContextPrevious * :<C-U>exe 'normal! gv'|call <SNR>157_Context(1)<CR> ```
- ``` v  <Plug>VgSurround * :<C-U>call <SNR>156_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR> ```
- ``` v  <Plug>VSurround * :<C-U>call <SNR>156_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR> ```
- ``` x  <Plug>SneakPrevious   <Plug>Sneak_, ```
- ``` x  <Plug>SneakNext   <Plug>Sneak_; ```
- ``` x  <Plug>(SneakStreakBackward)   <Plug>SneakLabel_S ```
- ``` x  <Plug>(SneakStreak)   <Plug>SneakLabel_s ```
- ``` x  <Plug>VSneakPrevious   <Plug>Sneak_, ```
- ``` x  <Plug>VSneakNext   <Plug>Sneak_; ```
- ``` x  <Plug>VSneakBackward   <Plug>Sneak_S ```
- ``` x  <Plug>VSneakForward   <Plug>Sneak_s ```
- ``` x  <Plug>SneakLabel_S * :<C-U>call sneak#wrap(visualmode(), 2, 1, 2, 2)<CR> ```
- ``` x  <Plug>SneakLabel_s * :<C-U>call sneak#wrap(visualmode(), 2, 0, 2, 2)<CR> ```
- ``` x  <Plug>Sneak_T * :<C-U>call sneak#wrap(visualmode(), 1, 1, 0, 0)<CR> ```
- ``` x  <Plug>Sneak_t * :<C-U>call sneak#wrap(visualmode(), 1, 0, 0, 0)<CR> ```
- ``` x  <Plug>Sneak_F * :<C-U>call sneak#wrap(visualmode(), 1, 1, 1, 0)<CR> ```
- ``` x  <Plug>Sneak_f * :<C-U>call sneak#wrap(visualmode(), 1, 0, 1, 0)<CR> ```
- ``` x  <Plug>Sneak_, * :<C-U>call <SNR>154_rpt(visualmode(), 1)<CR> ```
- ``` x  <Plug>Sneak_; * :<C-U>call <SNR>154_rpt(visualmode(), 0)<CR> ```
- ``` x  <Plug>Sneak_S * :<C-U>call sneak#wrap(visualmode(), 2, 1, 2, 1)<CR> ```
- ``` x  <Plug>Sneak_s * :<C-U>call sneak#wrap(visualmode(), 2, 0, 2, 1)<CR> ```
- ``` x  <Plug>(sexp_capture_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'v', 1, 1)<CR> ```
- ``` x  <Plug>(sexp_capture_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'v', 0, 1)<CR> ```
- ``` x  <Plug>(sexp_emit_tail_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'v', 1, 0)<CR> ```
- ``` x  <Plug>(sexp_emit_head_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'v', 0, 0)<CR> ```
- ``` x  <Plug>(sexp_swap_element_forward) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#swap_element', 'v', 1, 0)<CR> ```
- ``` x  <Plug>(sexp_swap_element_backward) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#swap_element', 'v', 0, 0)<CR> ```
- ``` x  <Plug>(sexp_swap_list_forward) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#swap_element', 'v', 1, 1)<CR> ```
- ``` x  <Plug>(sexp_swap_list_backward) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#swap_element', 'v', 0, 1)<CR> ```
- ``` x  <Plug>(sexp_raise_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'v', '')<CR> ```
- ``` x  <Plug>(sexp_raise_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'v', '')<CR> ```
- ``` x  <Plug>(sexp_curly_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '{', '}', 1, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_curly_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '{', '}', 0, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_square_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '[', ']', 1, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_square_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '[', ']', 0, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_round_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '(', ')', 1, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_round_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '(', ')', 0, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_curly_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '{', '}', 1, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_curly_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '{', '}', 0, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_square_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '[', ']', 1, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_square_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '[', ']', 0, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_round_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '(', ')', 1, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_round_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '(', ')', 0, g:sexp_insert_after_wrap)<CR> ```
- ``` x  <Plug>(sexp_select_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_adjacent_element', 'v', 1)<CR> ```
- ``` x  <Plug>(sexp_select_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_adjacent_element', 'v', 0)<CR> ```
- ``` x  <Plug>(sexp_move_to_next_top_element) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 1, 0, 1)<CR> ```
- ``` x  <Plug>(sexp_move_to_prev_top_element) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 0, 0, 1)<CR> ```
- ``` x  <Plug>(sexp_flow_to_next_leaf_tail) * <Esc>:<C-U>call sexp#leaf_flow('v', v:prevcount, 1, 1)<CR> ```
- ``` x  <Plug>(sexp_flow_to_prev_leaf_tail) * <Esc>:<C-U>call sexp#leaf_flow('v', v:prevcount, 0, 1)<CR> ```
- ``` x  <Plug>(sexp_flow_to_next_leaf_head) * <Esc>:<C-U>call sexp#leaf_flow('v', v:prevcount, 1, 0)<CR> ```
- ``` x  <Plug>(sexp_flow_to_prev_leaf_head) * <Esc>:<C-U>call sexp#leaf_flow('v', v:prevcount, 0, 0)<CR> ```
- ``` x  <Plug>(sexp_flow_to_next_close) * <Esc>:<C-U>call sexp#list_flow('v', v:prevcount, 1, 1)<CR> ```
- ``` x  <Plug>(sexp_flow_to_next_open) * <Esc>:<C-U>call sexp#list_flow('v', v:prevcount, 1, 0)<CR> ```
- ``` x  <Plug>(sexp_flow_to_prev_open) * <Esc>:<C-U>call sexp#list_flow('v', v:prevcount, 0, 0)<CR> ```
- ``` x  <Plug>(sexp_flow_to_prev_close) * <Esc>:<C-U>call sexp#list_flow('v', v:prevcount, 0, 1)<CR> ```
- ``` x  <Plug>(sexp_move_to_next_element_tail) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 1, 1, 0)<CR> ```
- ``` x  <Plug>(sexp_move_to_prev_element_tail) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 0, 1, 0)<CR> ```
- ``` x  <Plug>(sexp_move_to_next_element_head) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 1, 0, 0)<CR> ```
- ``` x  <Plug>(sexp_move_to_prev_element_head) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 0, 0, 0)<CR> ```
- ``` x  <Plug>(sexp_move_to_next_bracket) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#move_to_nearest_bracket', 'v', 1)<CR> ```
- ``` x  <Plug>(sexp_move_to_prev_bracket) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#move_to_nearest_bracket', 'v', 0)<CR> ```
- ``` x  <Plug>(sexp_inner_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_element('v', 1)<CR> ```
- ``` x  <Plug>(sexp_outer_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_element('v', 0)<CR> ```
- ``` x  <Plug>(sexp_inner_string) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_string('v', 1)<CR> ```
- ``` x  <Plug>(sexp_outer_string) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_string('v', 0)<CR> ```
- ``` x  <Plug>(sexp_inner_top_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_top_list('v', 1)<CR> ```
- ``` x  <Plug>(sexp_outer_top_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_top_list('v', 0)<CR> ```
- ``` x  <Plug>(sexp_inner_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_current_list', 'v', 1, 1)<CR> ```
- ``` x  <Plug>(sexp_outer_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_current_list', 'v', 0, 1)<CR> ```
- ``` x  <Plug>RefactorExtractType * :call lh#refactor#extract_type(1,lh#ui#input("Name for the type to extract: "))<CR> ```
- ``` x  <Plug>RefactorExtractVariable * :call lh#refactor#extract_variable(1,lh#ui#input("Name for the variable to extract: ", lh#refactor#default_varname()))<CR> ```
- ``` x  <Plug>GitGutterStageHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')<CR> ```
- ``` x  <Plug>(GitGutterStageHunk) * :GitGutterStageHunk<CR> ```
- ``` x  <Plug>(GitGutterTextObjectOuterVisual) * :<C-U>call gitgutter#hunk#text_object(0)<CR> ```
- ``` x  <Plug>(GitGutterTextObjectInnerVisual) * :<C-U>call gitgutter#hunk#text_object(1)<CR> ```
- ```    <Plug>(easymotion-prefix)N   <Plug>(easymotion-N) ```
- ```    <Plug>(easymotion-prefix)n   <Plug>(easymotion-n) ```
- ```    <Plug>(easymotion-prefix)k   <Plug>(easymotion-k) ```
- ```    <Plug>(easymotion-prefix)j   <Plug>(easymotion-j) ```
- ```    <Plug>(easymotion-prefix)gE   <Plug>(easymotion-gE) ```
- ```    <Plug>(easymotion-prefix)ge   <Plug>(easymotion-ge) ```
- ```    <Plug>(easymotion-prefix)E   <Plug>(easymotion-E) ```
- ```    <Plug>(easymotion-prefix)e   <Plug>(easymotion-e) ```
- ```    <Plug>(easymotion-prefix)B   <Plug>(easymotion-B) ```
- ```    <Plug>(easymotion-prefix)b   <Plug>(easymotion-b) ```
- ```    <Plug>(easymotion-prefix)W   <Plug>(easymotion-W) ```
- ```    <Plug>(easymotion-prefix)w   <Plug>(easymotion-w) ```
- ```    <Plug>(easymotion-prefix)T   <Plug>(easymotion-T) ```
- ```    <Plug>(easymotion-prefix)t   <Plug>(easymotion-t) ```
- ```    <Plug>(easymotion-prefix)s   <Plug>(easymotion-s) ```
- ```    <Plug>(easymotion-prefix)F   <Plug>(easymotion-F) ```
- ```    <Plug>(easymotion-prefix)f   <Plug>(easymotion-f) ```
- ``` x  <Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(1)<CR> ```
- ``` nos<Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(0)<CR> ```
- ```    <Plug>(easymotion-dotrepeat) * :<C-U>call EasyMotion#DotRepeat()<CR> ```
- ``` x  <Plug>(easymotion-repeat) * <Esc>:<C-U>call EasyMotion#Repeat(1)<CR> ```
- ``` nos<Plug>(easymotion-repeat) * :<C-U>call EasyMotion#Repeat(0)<CR> ```
- ``` x  <Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(1,1)<CR> ```
- ``` nos<Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(0,1)<CR> ```
- ``` x  <Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(1,0)<CR> ```
- ``` nos<Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(0,0)<CR> ```
- ``` x  <Plug>(easymotion-wl) * <Esc>:<C-U>call EasyMotion#WBL(1,0)<CR> ```
- ``` nos<Plug>(easymotion-wl) * :<C-U>call EasyMotion#WBL(0,0)<CR> ```
- ``` x  <Plug>(easymotion-lineforward) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,0)<CR> ```
- ``` nos<Plug>(easymotion-lineforward) * :<C-U>call EasyMotion#LineAnywhere(0,0)<CR> ```
- ``` x  <Plug>(easymotion-lineanywhere) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,2)<CR> ```
- ``` nos<Plug>(easymotion-lineanywhere) * :<C-U>call EasyMotion#LineAnywhere(0,2)<CR> ```
- ``` x  <Plug>(easymotion-bd-wl) * <Esc>:<C-U>call EasyMotion#WBL(1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-wl) * :<C-U>call EasyMotion#WBL(0,2)<CR> ```
- ``` x  <Plug>(easymotion-linebackward) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,1)<CR> ```
- ``` nos<Plug>(easymotion-linebackward) * :<C-U>call EasyMotion#LineAnywhere(0,1)<CR> ```
- ``` x  <Plug>(easymotion-bl) * <Esc>:<C-U>call EasyMotion#WBL(1,1)<CR> ```
- ``` nos<Plug>(easymotion-bl) * :<C-U>call EasyMotion#WBL(0,1)<CR> ```
- ``` x  <Plug>(easymotion-el) * <Esc>:<C-U>call EasyMotion#EL(1,0)<CR> ```
- ``` nos<Plug>(easymotion-el) * :<C-U>call EasyMotion#EL(0,0)<CR> ```
- ``` x  <Plug>(easymotion-gel) * <Esc>:<C-U>call EasyMotion#EL(1,1)<CR> ```
- ``` nos<Plug>(easymotion-gel) * :<C-U>call EasyMotion#EL(0,1)<CR> ```
- ``` x  <Plug>(easymotion-bd-el) * <Esc>:<C-U>call EasyMotion#EL(1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-el) * :<C-U>call EasyMotion#EL(0,2)<CR> ```
- ``` x  <Plug>(easymotion-jumptoanywhere) * <Esc>:<C-U>call EasyMotion#JumpToAnywhere(1,2)<CR> ```
- ``` nos<Plug>(easymotion-jumptoanywhere) * :<C-U>call EasyMotion#JumpToAnywhere(0,2)<CR> ```
- ``` x  <Plug>(easymotion-vim-n) * <Esc>:<C-U>call EasyMotion#Search(1,0,1)<CR> ```
- ``` nos<Plug>(easymotion-vim-n) * :<C-U>call EasyMotion#Search(0,0,1)<CR> ```
- ``` x  <Plug>(easymotion-n) * <Esc>:<C-U>call EasyMotion#Search(1,0,0)<CR> ```
- ``` nos<Plug>(easymotion-n) * :<C-U>call EasyMotion#Search(0,0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-n) * <Esc>:<C-U>call EasyMotion#Search(1,2,0)<CR> ```
- ``` nos<Plug>(easymotion-bd-n) * :<C-U>call EasyMotion#Search(0,2,0)<CR> ```
- ``` x  <Plug>(easymotion-vim-N) * <Esc>:<C-U>call EasyMotion#Search(1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-vim-N) * :<C-U>call EasyMotion#Search(0,1,1)<CR> ```
- ``` x  <Plug>(easymotion-N) * <Esc>:<C-U>call EasyMotion#Search(1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-N) * :<C-U>call EasyMotion#Search(0,1,0)<CR> ```
- ``` x  <Plug>(easymotion-eol-j) * <Esc>:<C-U>call EasyMotion#Eol(1,0)<CR> ```
- ``` nos<Plug>(easymotion-eol-j) * :<C-U>call EasyMotion#Eol(0,0)<CR> ```
- ``` x  <Plug>(easymotion-sol-k) * <Esc>:<C-U>call EasyMotion#Sol(1,1)<CR> ```
- ``` nos<Plug>(easymotion-sol-k) * :<C-U>call EasyMotion#Sol(0,1)<CR> ```
- ``` x  <Plug>(easymotion-sol-j) * <Esc>:<C-U>call EasyMotion#Sol(1,0)<CR> ```
- ``` nos<Plug>(easymotion-sol-j) * :<C-U>call EasyMotion#Sol(0,0)<CR> ```
- ``` x  <Plug>(easymotion-k) * <Esc>:<C-U>call EasyMotion#JK(1,1)<CR> ```
- ``` nos<Plug>(easymotion-k) * :<C-U>call EasyMotion#JK(0,1)<CR> ```
- ``` x  <Plug>(easymotion-j) * <Esc>:<C-U>call EasyMotion#JK(1,0)<CR> ```
- ``` nos<Plug>(easymotion-j) * :<C-U>call EasyMotion#JK(0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-jk) * <Esc>:<C-U>call EasyMotion#JK(1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-jk) * :<C-U>call EasyMotion#JK(0,2)<CR> ```
- ``` x  <Plug>(easymotion-eol-bd-jk) * <Esc>:<C-U>call EasyMotion#Eol(1,2)<CR> ```
- ``` nos<Plug>(easymotion-eol-bd-jk) * :<C-U>call EasyMotion#Eol(0,2)<CR> ```
- ``` x  <Plug>(easymotion-sol-bd-jk) * <Esc>:<C-U>call EasyMotion#Sol(1,2)<CR> ```
- ``` nos<Plug>(easymotion-sol-bd-jk) * :<C-U>call EasyMotion#Sol(0,2)<CR> ```
- ``` x  <Plug>(easymotion-eol-k) * <Esc>:<C-U>call EasyMotion#Eol(1,1)<CR> ```
- ``` nos<Plug>(easymotion-eol-k) * :<C-U>call EasyMotion#Eol(0,1)<CR> ```
- ``` x  <Plug>(easymotion-iskeyword-ge) * <Esc>:<C-U>call EasyMotion#EK(1,1)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-ge) * :<C-U>call EasyMotion#EK(0,1)<CR> ```
- ``` x  <Plug>(easymotion-w) * <Esc>:<C-U>call EasyMotion#WB(1,0)<CR> ```
- ``` nos<Plug>(easymotion-w) * :<C-U>call EasyMotion#WB(0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-W) * <Esc>:<C-U>call EasyMotion#WBW(1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-W) * :<C-U>call EasyMotion#WBW(0,2)<CR> ```
- ``` x  <Plug>(easymotion-iskeyword-w) * <Esc>:<C-U>call EasyMotion#WBK(1,0)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-w) * :<C-U>call EasyMotion#WBK(0,0)<CR> ```
- ``` x  <Plug>(easymotion-gE) * <Esc>:<C-U>call EasyMotion#EW(1,1)<CR> ```
- ``` nos<Plug>(easymotion-gE) * :<C-U>call EasyMotion#EW(0,1)<CR> ```
- ``` x  <Plug>(easymotion-e) * <Esc>:<C-U>call EasyMotion#E(1,0)<CR> ```
- ``` nos<Plug>(easymotion-e) * :<C-U>call EasyMotion#E(0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-E) * <Esc>:<C-U>call EasyMotion#EW(1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-E) * :<C-U>call EasyMotion#EW(0,2)<CR> ```
- ``` x  <Plug>(easymotion-iskeyword-e) * <Esc>:<C-U>call EasyMotion#EK(1,0)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-e) * :<C-U>call EasyMotion#EK(0,0)<CR> ```
- ``` x  <Plug>(easymotion-b) * <Esc>:<C-U>call EasyMotion#WB(1,1)<CR> ```
- ``` nos<Plug>(easymotion-b) * :<C-U>call EasyMotion#WB(0,1)<CR> ```
- ``` x  <Plug>(easymotion-iskeyword-b) * <Esc>:<C-U>call EasyMotion#WBK(1,1)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-b) * :<C-U>call EasyMotion#WBK(0,1)<CR> ```
- ``` x  <Plug>(easymotion-iskeyword-bd-w) * <Esc>:<C-U>call EasyMotion#WBK(1,2)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-bd-w) * :<C-U>call EasyMotion#WBK(0,2)<CR> ```
- ``` x  <Plug>(easymotion-W) * <Esc>:<C-U>call EasyMotion#WBW(1,0)<CR> ```
- ``` nos<Plug>(easymotion-W) * :<C-U>call EasyMotion#WBW(0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-w) * <Esc>:<C-U>call EasyMotion#WB(1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-w) * :<C-U>call EasyMotion#WB(0,2)<CR> ```
- ``` x  <Plug>(easymotion-iskeyword-bd-e) * <Esc>:<C-U>call EasyMotion#EK(1,2)<CR> ```
- ``` nos<Plug>(easymotion-iskeyword-bd-e) * :<C-U>call EasyMotion#EK(0,2)<CR> ```
- ``` x  <Plug>(easymotion-ge) * <Esc>:<C-U>call EasyMotion#E(1,1)<CR> ```
- ``` nos<Plug>(easymotion-ge) * :<C-U>call EasyMotion#E(0,1)<CR> ```
- ``` x  <Plug>(easymotion-E) * <Esc>:<C-U>call EasyMotion#EW(1,0)<CR> ```
- ``` nos<Plug>(easymotion-E) * :<C-U>call EasyMotion#EW(0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-e) * <Esc>:<C-U>call EasyMotion#E(1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-e) * :<C-U>call EasyMotion#E(0,2)<CR> ```
- ``` x  <Plug>(easymotion-B) * <Esc>:<C-U>call EasyMotion#WBW(1,1)<CR> ```
- ``` nos<Plug>(easymotion-B) * :<C-U>call EasyMotion#WBW(0,1)<CR> ```
- ``` x  <Plug>(easymotion-Tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-Tln) * :<C-U>call EasyMotion#TL(-1,0,1)<CR> ```
- ``` x  <Plug>(easymotion-t2) * <Esc>:<C-U>call EasyMotion#T(2,1,0)<CR> ```
- ``` nos<Plug>(easymotion-t2) * :<C-U>call EasyMotion#T(2,0,0)<CR> ```
- ``` x  <Plug>(easymotion-t) * <Esc>:<C-U>call EasyMotion#T(1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-t) * :<C-U>call EasyMotion#T(1,0,0)<CR> ```
- ``` x  <Plug>(easymotion-s) * <Esc>:<C-U>call EasyMotion#S(1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-s) * :<C-U>call EasyMotion#S(1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-tn) * :<C-U>call EasyMotion#T(-1,0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-t2) * <Esc>:<C-U>call EasyMotion#T(2,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-t2) * :<C-U>call EasyMotion#T(2,0,2)<CR> ```
- ``` x  <Plug>(easymotion-tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-tl) * :<C-U>call EasyMotion#TL(1,0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-tn) * :<C-U>call EasyMotion#T(-1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-fn) * :<C-U>call EasyMotion#S(-1,0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-tl) * :<C-U>call EasyMotion#TL(1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-fl) * :<C-U>call EasyMotion#SL(1,0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-tl2) * :<C-U>call EasyMotion#TL(2,0,2)<CR> ```
- ``` x  <Plug>(easymotion-bd-fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-fn) * :<C-U>call EasyMotion#S(-1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-f) * <Esc>:<C-U>call EasyMotion#S(1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-f) * :<C-U>call EasyMotion#S(1,0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-fl) * :<C-U>call EasyMotion#SL(1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-Fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,1)<CR> ```
- ``` nos<Plug>(easymotion-Fl2) * :<C-U>call EasyMotion#SL(2,0,1)<CR> ```
- ``` x  <Plug>(easymotion-tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,0)<CR> ```
- ``` nos<Plug>(easymotion-tl2) * :<C-U>call EasyMotion#TL(2,0,0)<CR> ```
- ``` x  <Plug>(easymotion-f2) * <Esc>:<C-U>call EasyMotion#S(2,1,0)<CR> ```
- ``` nos<Plug>(easymotion-f2) * :<C-U>call EasyMotion#S(2,0,0)<CR> ```
- ``` x  <Plug>(easymotion-Fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-Fln) * :<C-U>call EasyMotion#SL(-1,0,1)<CR> ```
- ``` x  <Plug>(easymotion-sln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-sln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-tln) * :<C-U>call EasyMotion#TL(-1,0,0)<CR> ```
- ``` x  <Plug>(easymotion-fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,0)<CR> ```
- ``` nos<Plug>(easymotion-fl2) * :<C-U>call EasyMotion#SL(2,0,0)<CR> ```
- ``` x  <Plug>(easymotion-bd-fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-fl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR> ```
- ``` x  <Plug>(easymotion-T2) * <Esc>:<C-U>call EasyMotion#T(2,1,1)<CR> ```
- ``` nos<Plug>(easymotion-T2) * :<C-U>call EasyMotion#T(2,0,1)<CR> ```
- ``` x  <Plug>(easymotion-bd-tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-tln) * :<C-U>call EasyMotion#TL(-1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-T) * <Esc>:<C-U>call EasyMotion#T(1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-T) * :<C-U>call EasyMotion#T(1,0,1)<CR> ```
- ``` x  <Plug>(easymotion-bd-t) * <Esc>:<C-U>call EasyMotion#T(1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-t) * :<C-U>call EasyMotion#T(1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-Tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-Tn) * :<C-U>call EasyMotion#T(-1,0,1)<CR> ```
- ``` x  <Plug>(easymotion-s2) * <Esc>:<C-U>call EasyMotion#S(2,1,2)<CR> ```
- ``` nos<Plug>(easymotion-s2) * :<C-U>call EasyMotion#S(2,0,2)<CR> ```
- ``` x  <Plug>(easymotion-Tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-Tl) * :<C-U>call EasyMotion#TL(1,0,1)<CR> ```
- ``` x  <Plug>(easymotion-sn) * <Esc>:<C-U>call EasyMotion#S(-1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-sn) * :<C-U>call EasyMotion#S(-1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-Fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-Fn) * :<C-U>call EasyMotion#S(-1,0,1)<CR> ```
- ``` x  <Plug>(easymotion-sl) * <Esc>:<C-U>call EasyMotion#SL(1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-sl) * :<C-U>call EasyMotion#SL(1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-Fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-Fl) * :<C-U>call EasyMotion#SL(1,0,1)<CR> ```
- ``` x  <Plug>(easymotion-sl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,2)<CR> ```
- ``` nos<Plug>(easymotion-sl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR> ```
- ``` x  <Plug>(easymotion-bd-fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-fln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-F) * <Esc>:<C-U>call EasyMotion#S(1,1,1)<CR> ```
- ``` nos<Plug>(easymotion-F) * :<C-U>call EasyMotion#S(1,0,1)<CR> ```
- ``` x  <Plug>(easymotion-bd-f) * <Esc>:<C-U>call EasyMotion#S(1,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-f) * :<C-U>call EasyMotion#S(1,0,2)<CR> ```
- ``` x  <Plug>(easymotion-F2) * <Esc>:<C-U>call EasyMotion#S(2,1,1)<CR> ```
- ``` nos<Plug>(easymotion-F2) * :<C-U>call EasyMotion#S(2,0,1)<CR> ```
- ``` x  <Plug>(easymotion-bd-f2) * <Esc>:<C-U>call EasyMotion#S(2,1,2)<CR> ```
- ``` nos<Plug>(easymotion-bd-f2) * :<C-U>call EasyMotion#S(2,0,2)<CR> ```
- ``` x  <Plug>(easymotion-Tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,1)<CR> ```
- ``` nos<Plug>(easymotion-Tl2) * :<C-U>call EasyMotion#TL(2,0,1)<CR> ```
- ``` x  <Plug>(easymotion-fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,0)<CR> ```
- ``` nos<Plug>(easymotion-fln) * :<C-U>call EasyMotion#SL(-1,0,0)<CR> ```
- ```    <Plug>(asterisk-gz#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0}) ```
- ```    <Plug>(asterisk-z#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1}) ```
- ```    <Plug>(asterisk-g#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0}) ```
- ```    <Plug>(asterisk-#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1}) ```
- ```    <Plug>(asterisk-gz*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0}) ```
- ```    <Plug>(asterisk-z*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1}) ```
- ```    <Plug>(asterisk-g*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0}) ```
- ```    <Plug>(asterisk-*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1}) ```
- ``` x  <Plug>NERDCommenterUncomment * :call NERDComment("x", "Uncomment")<CR> ```
- ``` x  <Plug>NERDCommenterAlignBoth * :call NERDComment("x", "AlignBoth")<CR> ```
- ``` x  <Plug>NERDCommenterAlignLeft * :call NERDComment("x", "AlignLeft")<CR> ```
- ``` x  <Plug>NERDCommenterYank * :call NERDComment("x", "Yank")<CR> ```
- ``` x  <Plug>NERDCommenterSexy * :call NERDComment("x", "Sexy")<CR> ```
- ``` x  <Plug>NERDCommenterInvert * :call NERDComment("x", "Invert")<CR> ```
- ``` x  <Plug>NERDCommenterNested * :call NERDComment("x", "Nested")<CR> ```
- ``` x  <Plug>NERDCommenterMinimal * :call NERDComment("x", "Minimal")<CR> ```
- ``` x  <Plug>NERDCommenterToggle * :call NERDComment("x", "Toggle")<CR> ```
- ``` x  <Plug>NERDCommenterComment * :call NERDComment("x", "Comment")<CR> ```
- ``` x  <Plug>(fzf-maps-x) * :<C-U>call fzf#vim#maps('x', 0)<CR> ```
- ``` v  <Plug>(emmet-code-pretty) * :call emmet#codePretty()<CR> ```
- ``` v  <Plug>(emmet-balance-tag-outword) * <Esc>:call emmet#balanceTag(-1)<CR> ```
- ``` v  <Plug>(emmet-balance-tag-inward) * <Esc>:call emmet#balanceTag(1)<CR> ```
- ``` v  <Plug>(emmet-expand-abbr) * :call emmet#expandAbbr(2,"")<CR> ```
- ``` v  <Plug>CamelCaseMotion_ie * :<C-U>call camelcasemotion#InnerMotion('e',v:count1)<CR> ```
- ``` v  <Plug>CamelCaseMotion_ib * :<C-U>call camelcasemotion#InnerMotion('b',v:count1)<CR> ```
- ``` v  <Plug>CamelCaseMotion_iw * :<C-U>call camelcasemotion#InnerMotion('w',v:count1)<CR> ```
- ``` v  <Plug>CamelCaseMotion_e * :<C-U>call camelcasemotion#Motion('e',v:count1,'v')<CR> ```
- ``` v  <Plug>CamelCaseMotion_b * :<C-U>call camelcasemotion#Motion('b',v:count1,'v')<CR> ```
- ``` v  <Plug>CamelCaseMotion_w * :<C-U>call camelcasemotion#Motion('w',v:count1,'v')<CR> ```
- ``` v  <Plug>(ale_show_completion_menu) * <Nop> ```
- ``` s  <Del>       * <C-G>"_c ```
- ``` x  <BS>          <Plug>(wildfire-water) ```
- ``` s  <C-Tab>     * <Esc>:call UltiSnips#ListSnippets()<CR> ```
- ``` v  <C-Up>      * :m '< -- <CR> gv ```
- ``` v  <C-Down>    * :m '> + <CR> gv ```
- ``` v  <C-Left>    * <gv ```
- ``` v  <C-Right>   * >gv ```
- ``` v  <RightMouse> * "*y`> ```
# Vim Keybindings Command Colon Mode
- ``` !  <M-C-H>     * <C-W> ```
- ``` !  <M-BS>      * <C-W> ```
- ``` !  <M-p>       * <Up> ```
- ``` !  <M-n>       * <Down> ```
- ``` c  <M-d>       * <S-Right><C-W> ```
- ``` !  <M-f>       * <S-Right> ```
- ``` !  <M-b>       * <S-Left> ```
- ``` c  <Plug>(ale_show_completion_menu) * <Nop> ```
- ``` c  <C-A>       * <Home> ```
- ``` c  <C-B>       * <Left> ```
- ``` c  <C-D>       * getcmdpos()>strlen(getcmdline())?"\<C-D>":"\<Del>" ```
- ``` c  <C-F>       * getcmdpos()>strlen(getcmdline())?&cedit:"\<Right>" ```
- ``` c  <C-R><C-G>  & fnameescape(fugitive#Object(@%)) ```
- ``` c  <C-T>       * <SNR>146_transpose() ```
- ``` c  <C-U>       * <SNR>146_ctrl_u() ```
- ``` c  <C-X><C-A>  * <C-A> ```
- ``` c  <C-Y>       * <C-R>- ```
