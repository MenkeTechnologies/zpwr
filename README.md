# ZPWR => World's Most Advanced UNIX Terminal Environment

![Alt text](http://jakobmenke.com/img/tmuxfinal1.png?raw=true)

#### Master [![Build Status](https://travis-ci.com/MenkeTechnologies/zpwr.svg?branch=master)](https://travis-ci.com/MenkeTechnologies/zpwr) Dev [![Build Status](https://travis-ci.com/MenkeTechnologies/zpwr.svg?branch=dev)](https://travis-ci.com/MenkeTechnologies/zpwr) Version [![GitHub tag](https://img.shields.io/github/tag/MenkeTechnologies/zpwr.svg)](https://GitHub.com/MenkeTechnologies/zpwr/tags/) Commits [![GitHub commits](https://img.shields.io/github/commits-since/MenkeTechnologies/zpwr/v1.0.svg)](https://GitHub.com/MenkeTechnologies/zpwr/commit/) Contributors [![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors)


This project started out as my own version of Hashrocket's [Dotmatrix](https://github.com/hashrocket/dotmatrix) repo and it then grew.

It is an extremely powerful custom terminal environment built on top of [zinit](https://github.com/zdharma/zinit).

There is a significant amount of custom zsh, bash, vimL and perl code that I wrote to support very advanced functionality that I desired.

## Contents

- [Full Install](#full-installation-instructions-to-zpwr)
- [Features](#zpwr-features)
- [Dependencies](#zpwr-dependencies)
- [Supported Operating Systems](#supported-operating-systems)
- [ZPWR Extras Not Installed](#zpwr-extras-not-installed)
- [Limited Install](#limited-install)
- [Uninstall](#uninstall)
- [Setup Step: Font](#font)
- [Updating](#updating)
- [Tmux Prefix Detail](#tmux-prefix) - How To
- [Vim Autosave](#autosaving-vim-plugins) - Feature
- [Bypass Space Expansion](#bypassing-expansion-on-space) - How To
- [Turning Off Ponies And Colors Globally](#turning-off-ponies-and-colors-globally) - How To
- [Bypass Space Expansion](#bypassing-expansion-on-space) - How To
- [Vim Language Support For Tmux Right Pane](#running-script-from-vim-in-tmux-right-pane-is-supported-for-these-languages)
- [Main Window](#tmux-main-window) - Feature
- [Personal Config File Information](#personal-config) - Detail
- [ZPWR verb menu completion](#zpwr-verbs) - Feature
- [Github Account Environment Variable](#zpwr_github_account-variable) - Setup Step
- [Adding A New Zsh Plugin](#adding-more-zinit-plugins) - How To
- [Configurable Environment Variables](#environment-variables) - Feature
- [Test Suite](#tests)
- [Super Fast Shell Startup Speed](#shell-startup-speed) - Feature
- [Contributing](#contributing) - documentation, marketing, video tutorials, GIFs/screenshots in README and expanding the tests
- [Warning](#warnings) - The only user modifiable files are the user token files
- [MacbookPro Screenshots](#running-on-a-macbookpro)
- [RasberryPi Screenshots](#running-on-the-raspberry-pi-3)
- [Rock64 Screenshots](#running-on-the-rock64)
- [KeyBindings](#keybindings-generated-with-source-keybindingstoreadmezsh--readmemd)
- [Tmux Keybindings](#tmux-keybindings-tmux-lsk)
- [Zsh Vim Insert Mode Keybindings](#zsh-vim-insert-mode-keybindings-bindkey--m-viins--l)
- [Zsh Vim Normal Mode Keybindings](#zsh-vim-normal-mode-keybindings-bindkey--m-vicmd--l)
- [Zsh Vim MenuSelect Mode Keybindings](#zsh-menuselect-mode-keybindings-bindkey--m-menuselect--l)
- [Zsh Vim Visual Mode Keybindings](#zsh-vim-visual-mode-keybindings-bindkey--m-visual--l)
- [Zsh Vim ListScroll Mode Keybindings](#zsh-listscroll-mode-keybindings-bindkey--m-listscroll--l)
- [Zsh Vim Operator Mode Keybindings](#zsh-vim-operator-mode-keybindings-bindkey--m-viopp--l)
- [Vim Insert Mode Keybindings](#vim-keybindings-insert-mode)
- [Vim Normal Mode Keybindings](#vim-keybindings-normal-mode)
- [Vim Keybindings Visual Mode](#vim-keybindings-visual-mode)
- [Vim Keybindings Command Colon Mode](#vim-keybindings-command-colon-mode)

# Full Installation Instructions to `~/.zpwr`

```sh
sh -c "$(curl -fsSL raw.githubusercontent.com/MenkeTechnologies/zpwr/master/install/s)"
```
OR
```sh
git clone http://github.com/MenkeTechnologies/zpwr.git ~/.zpwr && cd ~/.zpwr/install && ./install.sh
```

The installer will confirm what will be installed and overwritten before executing.

Some interactivity is required near end of installer for postfix, wireshark and snort installs.

Zinit will install plugins on first zsh after install.

## Full Installation Instructions to `$ZPWR`
To install to a custom directory, clone the project to custom directory and start the installer.  ZPWR will pick up its location and export ZPWR to that directory.
This also means you can move ZPWR after install after updating the sym links that are in `$HOME`.  First `export ZPWR_INSTALL=<mydirectory>/install` in current shell.  Replace `<mydirectory>` with your new install dir and keep `/install` in the export.
Then run `zpwr regenconfiglinks` in same shell to create new sym links pointing to your new directory `<mydirectory>`.  Then exec a new zsh with `exec zsh` and all environment variables will be set accordingly.

## ZPWR Features
- 335+ zpwr subcommands covering most of ZPWR functionality with colorized zsh menucompletion `zpwr <tab>`
- 145+ centralized environment variables in ZPWR namespace to control functionality
- 690+ centralized ZPWR files in `~/.zpwr` allowing easy uninstall
- ~11.5k zsh tab completions including [zsh-more-completions](https://github.com/MenkeTechnologies/zsh-more-completions)
- 165+ bash, perl, zsh and python scripts in `~/.zpwr/scripts` or `$ZPWR_SCRIPTS` git tracked
- user specific ZPWR files in `~/.zpwr/local` git ignored
- installer specific ZPWR files in `~/.zpwr/install` git tracked
- 1800+ aliases
- 320+ git aliases from OMZ git plugin and [zsh-git-acp](https://github.com/MenkeTechnologies/zsh-git-acp)
- ZPWR installer ouput in `~/.zpwr/local/installer` git ignored
- central on/off control of zpwr colorful output with `ZPWR_COLORS`
- zsh completion with descriptions for parameters, regular, suffix and global aliases
- spelling correction, abbreviation expansion and automatic capitalization on the command line [zsh-expand](https://github.com/MenkeTechnologies/zsh-expand)
- snippets with tabstops that expand with spacebar and advance to next stop with C-p [zsh-expand](https://github.com/MenkeTechnologies/zsh-expand)
- expanding regular aliases and global aliases from zsh menu selection and in vim insert mode [zsh-expand](https://github.com/MenkeTechnologies/zsh-expand)
- color-coded groups of zsh menu completion for commands, aliases, reswords, functions, builtins, parameters, files, command history, correction
- color-coded groups of zsh menu completion for man pages
- color-coded groups of zsh menu completion for git subcommands
- color-coded groups of zsh menu completion for git objects
- heavily colorized man pages [zsh-very-colorful-manuals](https://github.com/MenkeTechnologies/zsh-very-colorful-manuals)
- insert matching quotes, brackets and parentheses like most IDEs [zsh-autopair](https://github.com/hlissner/zsh-autopair)
- custom keybinding to open files most recently edited based on viminfo and emacs recentff and placed into fzf for fuzzy searching `zpwr vimrecent`
- vim keybindings (insert, normal and visual modes) to run current code file open in vim in tmux pane to right
- vim keybindings (insert, normal and visual modes) to run current vim selection in tmux pane to right as standalone script
- vim keybindings (insert, normal and visual modes) to run current vim selection in tmux pane to right in REPL
- fzf preview pane show contents of JAR, WAR, deb, rpm, zip, tgz and gzip files controlled by central FZF.*OPTS env vars
- ergonomic, recursive tmux keybindings for next and previous windows
- zsh keybindings to fzf search file names and syntax highlighted, numbered file preview from bat or pygmentize `zpwr vimfilesearch`
- zsh keybindings to fzf search file contents and syntax highlighted, numbered file preview from bat or pygmentize `zpwr vimwordsearch`
- zsh keybindings to fzf search of network processes with lsof return PIDs `zpwr lsof`
- zsh function to cache all git directories `zpwr regengitrepocache`
- zsh function for fzf searching of all git directories `zpwr gitrepos`
- zsh function for fzf searching of all dirty git directories `zpwr gitreposdirty`
- zsh function to exec cmd in all git directories `zpwr gitreposexec`
- integration of [z](https://github.com/MenkeTechnologies/zsh-z) frecency database into _files completion
- integration of [fasd](https://github.com/MenkeTechnologies/fasd-simple) frecency database into _files completion
- zsh menucompletion for [z](https://github.com/MenkeTechnologies/zsh-z) command based on frecency [z](https://github.com/MenkeTechnologies/zsh-z) and [fasd](https://github.com/MenkeTechnologies/fasd-simple) databases
- keybindings to save to mysql learning table [zsh-learn](https://github.com/MenkeTechnologies/zsh-learn)
- functions `zpwr searchl` to search from mysql learning table [zsh-learn](https://github.com/MenkeTechnologies/zsh-learn)
- `zpwr redo <number/regex...>` prints to prompt SQL update statements for learning items [zsh-learn](https://github.com/MenkeTechnologies/zsh-learn)
- `zpwr redosql <number/regex...>` prints to vim SQL update statements for learning items that run once vim is quit [zsh-learn](https://github.com/MenkeTechnologies/zsh-learn)
- zle keybinding formats newlines and spaces before saving to mysql learning database [zsh-learn](https://github.com/MenkeTechnologies/zsh-learn)
- zsh plugins loading based on OS
- zsh functions autoloading based on OS
- tmux keybindings and scripts based on OS
- custom ZPWR banner with latest commit and tag when `zpwr update`, `zpwr banner` or `zpwr about` and `install.sh` run
- custom banners when new shell is launched `zpwr banner`
- zle sed sub widget to replace globally on current command line [zsh-sed-sub](https://github.com/MenkeTechnologies/zsh-sed-sub)
- expanded vim text objects on command line
- vim extract method from visual selection for shell, perl and python scripts (`gv` to select extracted)
- vim extract variable under cursor for shell, perl and python scripts (`gv` to select extracted)
- vim extract variable from visual selection for shell, perl and python scripts (`gv` to select extracted)
- vim autohighlight word under cursor after delay like JetBrains IDEs
- software updater script, `source ~/.zpwr/scripts/autoUpdater.sh`,  on 24 hour loop
- colorized side diffs on zsh keybinding before git push [zsh-git-acp](https://github.com/MenkeTechnologies/zsh-git-acp)
- zsh keybindings to git add, commit and push with commit message from current command line [zsh-git-acp](https://github.com/MenkeTechnologies/zsh-git-acp)
- git commit blacklisted directories [zsh-git-acp](https://github.com/MenkeTechnologies/zsh-git-acp)
- zle quote swapper widget
- zsh, tmux and vim keybindings to copy/paste to system clipboard
- shell function to pull down latest code changes from this repo with `zpwr update`
- shell function that is wrapper around bat that works with text, jars, tgz, rpm, deb and zips with `zpwr cat` or `c`
- shell function uses same shell code to generate output that default FZF preview pane does with `zpwr cat` or `c`
- shell function automatically runs sudo when file is not readable with `zpwr cat` or `c`
- shell function that cds to any of parent directories with zsh completion with `zpwr cdup` or `r`
- zpwrClearList function that run clear and ls and show stats for commands, files, aliases, functions etc
- color-coded, grouped zpwrClearList zsh completion
- search google from tmux mouse drag selection (tmux's copy-mode-vi)
- open URLs and files from tmux mouse drag selection (tmux's copy-mode-vi)
- zpwr subcommands count with `zpwr verbscount`
- zpwr subcommands into fzf then execed with `zpwr verbs`
- zpwr subcommands into fzf with `zpwr verbsedit`
- zpwr environment counts with `zpwr envcounts`
- centralized FZF preview pane customization with environment variables
- environment variables in ZPWR namespace in vim YCM completion from ctags generated `~/tags`
- systemd functions for starting/enabling, stopping/disabling service with zsh completion
- systemd service, poll.service, that polls github and download latest zpwr code
- systemd service, learn.service, that runs learning collection API
- restart function that launches poll.service and learn by enabling and starting in systemd
- 2700+ line README


## ZPWR Dependencies
- zsh
- tmux
- neovim with 79 plugins and python3/node support
- perl
- bash (4.0+, 3.2 not supported)
- zinit with 87 plugins of which 27 are custom
- forked powerlevel10k zsh prompt with ~dirs
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
- python3
- powerline-status for tmux
- vim-airline status bar
- grc
- mycli
- pgcli
- ponysay
- pygments

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
- manjaro
- mint
- zorin
- parrot OS
- WSL ubuntu/kali/suse/leap/fedora
- SUSE
- AMI

## ZPWR Extras Not Installed
- JetBrains .ideamvimrc
- JetBrains plugin list
- JetBrains settings JAR
- JetBrains JVM Options idea.vmoptions
- Spacemacs Config with 460+ packages in .spacemacs
- Emacs Yasnippets
- Alacritty Main Config
- Alacritty Color Theme
- macOS Terminal Color Theme
- gtags from zpwr and .globalrc
- .gitconfig and .gitignore_global

## Limited Install
```sh
git clone http://github.com/MenkeTechnologies/zpwr.git ~/.zpwr && cd ~/.zpwr/install && ./install.sh -c
```
This will install just config files not dependencies.

You can then run each install shell script in `.zpwr/install` manually to install just vim plugins or cargo packages etc.

## Install Destination

All zpwr custom configs will be installed to `~/.zpwr`.  This is the `ZPWR` environment variable.  `~/.zshrc`, `~/.vimrc`, `~/.tmux.conf`, `~/grc.zsh` and other config files are sym linked into home dir to be read by the respective program.
Your old configs for these files will be found in a directory name approximately `~/.zpwr/local/username.rc.bak.date` after install.  Exact directory name is generated as shown.
```sh
backupdir="$ZPWR_HIDDEN_DIR/$USER.rc.bak.$(date +'%m.%d.%Y')"
```
Installer artifacts such as log files and cloned repos go into `~/.zpwr/local/installer`.

## Uninstall

Run `zpwr uninstall`.  This will ask for confirmation before moving backups dirs to `$HOME`, unlinking all configs from `$HOME` and deleting all config dirs.

OR

1. Run `zpwr rmconfiglinks` (`zpwrUnlinkConf`) to unlink all zpwr config symlinks.
2. Copy all configs from backup dir mentioned above to home directory most importantly the `.zshrc`, `.vimrc` and `.tmux.conf`.
3. Remove the zpwr dir as shown.
```sh
rm -rf ~/.zpwr
```
This will not uninstall packages installed by system package manager, pip modules, gems, vim plugins, tmux plugins and zsh plugins.
You must remove these manually if desired.
If desired you can also uninstall zinit with ```rm -rf ~/.zinit```.  Make sure `~/.zshrc` and other config files in `$HOME` are original versions.

## Font
You need to change the Terminal font to display the Powerline triangles and other special characters in the Powerlevel10k `$PROMPT`.

The installer installs Hack Nerd Font on the Mac with Homebrew and Powerline Symbols on Linux.  Consult your terminal emulator
documentation for details on how to change the font.

## Updating
`zpwr updateall` (`zua`) links all zpwr config files, updates zpwr and zsh plugins, regens all caches and updates all dependencies. 

### zpwr update and zpwrLinkConf functions
There is a shell function called `zpwr update` that will update ZPWR by pulling the latest changes from this repository into `~/.zpwr`, links all zpwr config files and updates all zsh plugins.
It invokes `zpwr regenconfiglinks` (`zpwrLinkConf`) which sym links `~/.zshrc`, `~/.vimrc` and `~/.tmux.conf` and some other miscellaneous configuration files into `$HOME`.

## Tmux prefix
The default tmux prefix key is C-a (control-a) on macOS so one can control inner tmux sessions (inside tmux session login to another computer and attach to its tmux session) on Linux/UNIX (prefix is C-b) separately.
To invoke C-a in the shell press C-a twice or to invoke C-b press C-b twice.
The left most segment of the tmux powerline status bar will be highlighted when the prefix is pressed and dehighlight when prefix is deactivated.
You change the prefixes in `~/.zpwr/local/.tokens.sh` with these environment variable.
```sh
# the tmux prefix on mac
export ZPWR_TMUX_PREFIX_MAC='C-a'
# the tmux prefix on linux
export ZPWR_TMUX_PREFIX_LINUX='C-b'
```

## Autosaving Vim Plugins
One of the vim plugin is vim-autosave which autosaves all edits thus making `:w` unnecessary.
`:u 0` in vim command(colon) mode will reset all changes in buffer which will then be autosaved.

## Bypassing expansion on space
C-Space (Control-Space or actually the ^@ terminal escape code) will bypass all expansion of globbing, aliases and words.
Expansion can be disabled entirely by adding `zinit unload MenkeTechnologies/zsh-expand &>/dev/null` to `~/.zpwr/local/.tokens-post.sh` or removing [zsh-expand](https://github.com/MenkeTechnologies/zsh-expand) from ZPWR_GH_PLUGINS array in `~/.zpwr/local/.tokens.sh`.

> ~/.zpwr/local/.tokens-post.sh
```sh
zinit unload MenkeTechnologies/zsh-expand &>/dev/null
```

OR

> ~/.zpwr/local/.tokens.sh
```sh
ZPWR_GH_PLUGINS[$ZPWR_GH_PLUGINS[(i)MenkeTechnologies/zsh-expand]]=()

```

Alternatively, change these env vars to false in `~/.zpwr/local/.tokens.sh`.  The first turn off expansion in any position.
The second variable turns off expansion in second position.  For example with sudo/zpwr/env in the first position and the alias to expand in the second position on the command line.  The third turn offs glob/history/param etc expansion in any position.  The fourth turns off spelling correction in any position.
> ~/.zpwr/local/.tokens.sh
```sh
# aliases expand in first position
export ZPWR_EXPAND=false
# aliases expand in second position after sudo
export ZPWR_EXPAND_SECOND_POSITION=false
# expand globs, history etc with zle expand-word
export ZPWR_EXPAND_NATIVE=false
# spelling correction in zsh-expand plugin
export ZPWR_CORRECT=false
# expand inside "
export ZPWR_EXPAND_QUOTE_DOUBLE=true
# expand inside '
export ZPWR_EXPAND_QUOTE_SINGLE=false
```

The relevant code is the [zsh-expand](https://github.com/MenkeTechnologies/zsh-expand) plugin for expansion at the second position.
> ~/.zinit/plugins/zsh-expand/zpwrExpandLib.zsh
```sh
if printf -- "$ZPWR_VARS[firstword_partition]" | command grep -qsE $ZPWR_VARS[continueFirstPositionRegex];then
```

## Turning off ponies and colors globally
To turn off all ponysay ponies, colored groups and colored group descriptions, add to tokens file.
> ~/.zpwr/local/.tokens.sh
```sh
# ponysay banner when shell startup finishes
export ZPWR_INTRO_BANNER=nopony
# output is more colorful
export ZPWR_COLORS=false
# colored section headers
export ZPWR_COLORS_SECTIONS=false
```

## Running script from vim in tmux right pane is supported for these languages
> ~/.vimrc
```vim
    let supportedTypes=['sh','zsh', 'cr','py','rb','pl', 'clj', 'tcl', 'vim', 'lisp', 'hs', 'ml', 'coffee', 'swift', 'lua', 'java', 'f90']
```

File ending of currently edited file in vim determines the interpreter used by the bash script `$ZPWR_SCRIPTS/runner.sh` which defaults to `~/.zpwr/scripts/runner.sh`

## Tmux Main Window
The main window show in the screenshots is started by prefix-D (tmux prefix definition mentioned above) in an empty tmux window.  This sources a tmux script `~/.zpwr/tmux/control-window`.
Alternatively you could invoke the script by prefix-: `source-file ~/.zpwr/tmux/control-window` or in the terminal with `tmux source-file ~/.zpwr/tmux/control-window` in an empty tmux window.

## Personal Config
Startup shell files will source `~/.zpwr/local/.tokens.sh` before zsh config and zinit startup so you can put your additional code there.  This file will not be overridden with the `zpwr update` shell function.  You can override installer variables in this file before install.  Because this file if sourced by bash installer and zsh startup you should check if the shell is zsh before any zsh only features like `zpwrIsZsh && myZshConfig`.  Startup shell files will source `~/.zpwr/local/.tokens-post.sh` after all zsh config and zinit startup.

To use a different .vimrc and/or tmux.conf, set these environment variables to absolute path of custom configs and then `zpwr regenconfiglinks`.

> ~/.zpwr/local/.tokens.sh
```sh
# user tmux.conf file
export ZPWR_TMUXRC="$HOME/.tmux.conf"
# user vimrc file
export ZPWR_VIMRC="$HOME/.vimrc"
```

Running `zpwr regen` will regenerate all cache files in `~/.zpwr/local` and create a ctags file named `~/tags` in your home directory.
YCM (vim code completion engine) will source this file (`autocmd filetype * set tags+=~/tags` includes `~/tags`), while providing completion so ZPWR env vars vim code completion in `~/.zpwr/local/.tokens.sh` should work.  Inside vim `<Space>]` will jump to definition of the tag in the preview window.

## zpwr verbs
Typing `zpwr <tab>` will invoked zsh menucompletion for zpwr verbs/subcommands.  These subcommands invoke other shell functions passing all args.  `zpwr verbs` will list them all in fzf and then execute selected verb.

## ZPWR_GITHUB_ACCOUNT variable
Change in `~/.zpwr/local/.tokens.sh`
```sh
export ZPWR_GITHUB_ACCOUNT='MenkeTechnologies'
```
to match your GitHub account name to enable various functionality with your account like `zpwr github`, `zpwr githubcreate` and `zpwr githubdelete` shell functions for opening your GitHub home page, creating and deleting GitHub repos from the command line respectively

## Adding more Zinit plugins
Add in `~/.zpwr/local/.tokens-post.sh` your extra plugins like such
```sh
zinit ice lucid nocompile wait'0a'
zinit load \
hlissner/zsh-autopair
```

## Environment Variables
These are environment variables set in `~/.zpwr/env/.zpwr_env.sh` and `~/.zpwr/env/.zpwr_re_env.sh` which you can override in your `~/.zpwr/local/.tokens.sh` to customize the behavior of the terminal setup.  The file `~/.zpwr/env/.zpwr_re_env.sh` is reread after user tokens file to update environment variables that depend on previous variables that could change in user token file.
```sh
# Global Environment Variables for ZPWR by MenkeTechnologies
# More Environment Variables in ~/.zpwr/env/.shell_aliases_functions.sh near top of file
# override in ~/.zpwr/local/.tokens.sh, ~/.zpwr/local is git ignored
# see README.md
# linux OS SSH auto attach to tmux sessions
export ZPWR_AUTO_ATTACH=true
# run ls after rm and other modifying commands such as touch automatically
export ZPWR_AUTO_LS_RM=true
# run ls after cd automatically
export ZPWR_AUTO_LS_CD=true
# auto select first item of menuselect
export ZPWR_AUTO_SELECT=true
# clear and ls before and after banner
export ZPWR_BANNER_CLEARLIST=true
# cd to Desktop after banner Darwin
export ZPWR_BANNER_DESKTOP_DARWIN=false
# cd to Desktop after banner Linux
export ZPWR_BANNER_DESKTOP_LINUX=true
# ponysay banner when shell startup finishes
export ZPWR_INTRO_BANNER=ponies
# bat (syntax highlighting) theme
export ZPWR_BAT_THEME='GitHub'
# this the description separator in compsys option completions (ls -<tab>)
# and the separator for function se() between row number and learning
export ZPWR_CHAR_LOGO='<<)(>>'
# group description leading chars
export ZPWR_DESC_PRE='-<<'
# group description trailing chars
export ZPWR_DESC_POST='>>-'
# group description text color ANSI codes
export ZPWR_DESC_TEXT_COLOR='34'
# group description leading chars color ANSI codes
export ZPWR_DESC_PRE_COLOR='1;31'
# group description trailing chars color ANSI codes
export ZPWR_DESC_POST_COLOR='1;31'
# output is more colorful
export ZPWR_COLORS=true
# colored section headers
export ZPWR_COLORS_SECTIONS=true
# zpwr <tab> is more colorful
export ZPWR_COLORS_VERBS=true
# common colors ANSI codes
export ZPWR_COLOR_BLUE="\x1b[37;44m"
export ZPWR_COLOR_RED="\x1b[31m"
export ZPWR_COLOR_RESET="\x1b[0m"
# ANSI styling codes for git commits
export ZPWR_COMMIT_STYLE='1;37;45'
# named compsys colors zsh pattern and ANSI codes
export ZPWR_NAMED_COLORS='=(#b)(*)=1;37;46'
# file prefix compsys colors
export ZPWR_COMMON_ZSTYLE_OPTS='reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)(*)==37;45=37;43=34}:${(s.:.)LS_COLORS}")'
# sudo prefix to add when you get permission denied
export ZPWR_SUDO_CMD='sudo -E'
# sudo for aliases and expansion
export ZPWR_FULL_SUDO='\builtin command sudo -E env PATH="$PATH"'
# the repo name for more zsh compsys completions
export ZPWR_COMPLETION_DIR='zsh-more-completions'
# spelling correction in zsh-expand plugin
export ZPWR_CORRECT=true
# aliases expand after spelling correction
export ZPWR_CORRECT_EXPAND=true
# turns on debugging logs using logg function
export ZPWR_DEBUG=false
# default OMZ theme if Powerlevel 10k not used
export ZPWR_DEFAULT_OMZ_THEME=simonoff
# for alternating pretty printer
export ZPWR_DELIMITER_CHAR='%'
# the default vim command
export ZPWR_VIM='nvim'
# the emacs command
export ZPWR_EMACS='command emacs -nw'
# the emacs client command
export ZPWR_EMACS_CLIENT='emacsclient -c -nw -a ""'
# exa command invoked from zpwrClearList shows extended attributes
export ZPWR_EXA_EXTENDED=true
# aliases expand in first position
export ZPWR_EXPAND=true
# aliases expand in second position after sudo
export ZPWR_EXPAND_SECOND_POSITION=true
# expand globs, history etc with zle expand-word
export ZPWR_EXPAND_NATIVE=true
# expand inside "
export ZPWR_EXPAND_QUOTE_DOUBLE=true
# expand inside '
export ZPWR_EXPAND_QUOTE_SINGLE=false
# command for all fzf
export ZPWR_FZF='fzf --ansi'
# prompt for all fzf
export ZPWR_FZF_LOGO='<<)ZPWR(>>'
# GH username
export ZPWR_GITHUB_ACCOUNT='MenkeTechnologies'
# the char that prefixes global aliases like je<space>
export ZPWR_GLOBAL_ALIAS_PREFIX=j
# whether to search interactively in menuselect
export ZPWR_INTERACTIVE_MENU_SELECT=true
# whether to include all the zpwr learning functions
export ZPWR_LEARN=true
# logg function underscore color ANSI codes
export ZPWR_LOG_UNDER_COLOR='\x1b[0;34m'
# logg function quote color
export ZPWR_LOG_QUOTE_COLOR='\x1b[0;35m'
# logg function timestamp color
export ZPWR_LOG_DATE_COLOR='\x1b[0;32;44m'
# logg function message color
export ZPWR_LOG_MSG_COLOR='\x1b[0;37;45m'
# when true vim normal mode C-V mapped to exec current file in right tmux pane
export ZPWR_MAP_C_V_VIM_NORMAL=false
# the marker found color in bat output into fzf from ag search ANSI codes
export ZPWR_MARKER_COLOR='0;1;4;37;44m'
# default value for pygmentize theme
export ZPWR_PYGMENTIZE_COLOR="emacs"
# zpwr colorizer = bat or pygmentize
export ZPWR_COLORIZER=bat
# the OS of the host
export ZPWR_OS_TYPE="$(uname -s | tr A-Z a-z)"
# plugin framework
export ZPWR_PLUGIN_MANAGER=zinit
# use mac vim over vim on darwin
export ZPWR_PREFER_MVIM=true
# uses the zprof function to profile startup
export ZPWR_PROFILING=false
# set to POWERLEVEL to use the powerlevel10k prompt
export ZPWR_PROMPT=powerlevel10k
# git colored output cmd prefix
export ZPWR_GIT_COLOR_PREFIX="git -c color.status=always -c color.ui=always --no-pager"
# char to separate log messages
export ZPWR_QUOTE_START_CHAR='<<('
# char to separate log messages
export ZPWR_QUOTE_END_CHAR=')>>'
# maybe z4ze
export ZPWR_REPO_NAME='zpwr'
# when true sends every char to synced panes
# when false does not send enter and Control to synced panes
export ZPWR_SEND_KEYS_FULL=false
# how long to sleep after display of counts in zpwr display of all
export ZPWR_LOOK_TIME=5
# set to comma separated list of pane numbers
# to activate sending to numbered tmux panes
export ZPWR_SEND_KEYS_PANE=-1
# typing leading quote, paren, bracket inserts trailing after caret
export ZPWR_SURROUND=true
# the string that marks a tabstop when expanding aliases
# move to next tabstop with ^P
export ZPWR_TABSTOP=__________
# include tabstop aliases
export ZPWR_TABSTOP_ALIASES=true
# the tmux prefix on mac
export ZPWR_TMUX_PREFIX_MAC='C-a'
# the tmux prefix on linux
export ZPWR_TMUX_PREFIX_LINUX='C-b'
# turns on set -x in critical regions
export ZPWR_TRACE=false
# use nvim not vim
export ZPWR_USE_NEOVIM=true
# delay between shell start and compinit
export ZPWR_ZINIT_COMPINIT_DELAY=0

# set to false if this file is sourced during remote execution with no ZPWR env
test -z $ZPWR_REMOTE && export ZPWR_REMOTE=false

```

```sh
# the base dir for zpwr configs
test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
if [[ $ZPWR_PLUGIN_MANAGER == oh-my-zsh ]]; then
    evalIfNeeded ZPWR_PLUGIN_MANAGER_HOME "$ZPWR_PLUGIN_MANAGER_HOME" "$HOME/.oh-my-zsh" "$HOME"
    export ZSH="$ZPWR_PLUGIN_MANAGER_HOME"
    evalIfNeeded ZSH_CUSTOM "$ZSH_CUSTOM" "$ZSH/custom" "$ZSH"
elif [[ $ZPWR_PLUGIN_MANAGER == zinit ]]; then
    evalIfNeeded ZPWR_PLUGIN_MANAGER_HOME "$ZPWR_PLUGIN_MANAGER_HOME" "$HOME/.zinit" "$HOME"
    export ZSH="$ZPWR_PLUGIN_MANAGER_HOME"
    evalIfNeeded ZSH_CUSTOM "$ZSH_CUSTOM" "$ZSH" "$ZSH"
fi

# fzf dir
evalIfNeeded ZPWR_FZF_DIR "$ZPWR_FZF_DIR" "$ZSH_CUSTOM/plugins/fzf" "$ZSH"
# local file ignored by git
evalIfNeeded ZPWR_LOCAL "$ZPWR_LOCAL" "$ZPWR/local" "$ZPWR"
# alias and function file bash compatible
evalIfNeeded ZPWR_ALIAS_FILE "$ZPWR_ALIAS_FILE" "$ZPWR_ENV/.shell_aliases_functions.sh" "$ZPWR_ENV"
# autoloaded non completion functions
evalIfNeeded ZPWR_AUTOLOAD "$ZPWR_AUTOLOAD" "$ZPWR/autoload" "$ZPWR"
# autoloaded common non completion functions
evalIfNeeded ZPWR_AUTOLOAD_COMMON "$ZPWR_AUTOLOAD_COMMON" "$ZPWR_AUTOLOAD/common" "$ZPWR_AUTOLOAD"
# autoloaded darwin non completion functions
evalIfNeeded ZPWR_AUTOLOAD_DARWIN "$ZPWR_AUTOLOAD_DARWIN" "$ZPWR_AUTOLOAD/darwin" "$ZPWR_AUTOLOAD"
# autoloaded linux non completion functions
evalIfNeeded ZPWR_AUTOLOAD_LINUX "$ZPWR_AUTOLOAD_LINUX" "$ZPWR_AUTOLOAD/linux" "$ZPWR_AUTOLOAD"
# autoloaded systemctl non completion functions
evalIfNeeded ZPWR_AUTOLOAD_SYSTEMCTL "$ZPWR_AUTOLOAD_SYSTEMTCTL" "$ZPWR_AUTOLOAD/systemctl" "$ZPWR_AUTOLOAD"
# autoloaded completion functions
evalIfNeeded ZPWR_COMPS "$ZPWR_COMPS" "$ZPWR/comps" "$ZPWR"
# custom plugin dir
evalIfNeeded ZPWR_PLUGIN_DIR "$ZPWR_PLUGIN_DIR" "$ZSH_CUSTOM/plugins" "$ZSH_CUSTOM"
# fzf custom plugin dir
evalIfNeeded ZPWR_ZINIT_FZF "$ZPWR_ZINIT_FZF" "$ZPWR_PLUGIN_DIR/MenkeTechnologies---fzf" "$ZPWR_PLUGIN_DIR"
# same as zpwr local
evalIfNeeded ZPWR_HIDDEN_DIR "$ZPWR_HIDDEN_DIR" "$ZPWR/local" "$ZPWR"
# private tokens file sourced before
evalIfNeeded ZPWR_TOKEN_PRE "$ZPWR_TOKEN_PRE" "$ZPWR_LOCAL/.tokens.sh" "$ZPWR_LOCAL"
# private tokens file sourced after
evalIfNeeded ZPWR_TOKEN_POST "$ZPWR_TOKEN_POST" "$ZPWR_LOCAL/.tokens-post.sh" "$ZPWR_LOCAL"
evalIfNeeded ZPWR_TEST "$ZPWR_TEST" "$ZPWR/tests" "$ZPWR"
# zpwr install files
evalIfNeeded ZPWR_INSTALL "$ZPWR_INSTALL" "$ZPWR/install" "$ZPWR"
# user tmux.conf file
evalIfNeeded ZPWR_TMUXRC "$ZPWR_TMUXRC" "$ZPWR_INSTALL/.tmux.conf" "$ZPWR_INSTALL"
# user vimrc file
evalIfNeeded ZPWR_VIMRC "$ZPWR_VIMRC" "$ZPWR_INSTALL/.vimrc" "$ZPWR_INSTALL"
# user ideavimrc file
evalIfNeeded ZPWR_IDEAVIMRC "$ZPWR_IDEAVIMRC" "$ZPWR_INSTALL/.ideavimrc" "$ZPWR_INSTALL"
# zpwr tmux config files
evalIfNeeded ZPWR_TMUX "$ZPWR_TMUX" "$ZPWR/tmux" "$ZPWR"
# zpwr tmux git ignored files
evalIfNeeded ZPWR_TMUX_LOCAL "$ZPWR_TMUX_LOCAL" "$ZPWR_TMUX/local" "$ZPWR_TMUX"
# the base dir for zpwr temp
evalIfNeeded ZPWR_LOCAL_TEMP "$ZPWR_LOCAL_TEMP" "$ZPWR_LOCAL/.temp" "$ZPWR_LOCAL"
# the path to a lock file (semaphore) for zpwr
evalIfNeeded ZPWR_LOCK_FILE "$ZPWR_LOCK_FILE" "$ZPWR_LOCAL/.lock" "$ZPWR_LOCAL"
# cache file for all zpwr env lookups
evalIfNeeded ZPWR_LOCAL_ENV "$ZPWR_LOCAL_ENV" "$ZPWR_LOCAL/zpwrEnv" "$ZPWR_LOCAL"
# forked powerlevel10k config file for PROMPT
evalIfNeeded ZPWR_PROMPT_FILE "$ZPWR_PROMPT_FILE" "$ZPWR_ENV/.powerlevel10kconfig.sh" "$ZPWR_ENV"
# the location of associated interpreted scripts
evalIfNeeded ZPWR_SCRIPTS "$ZPWR_SCRIPTS" "$ZPWR/scripts" "$ZPWR"
# the location of macOS only associated interpreted scripts
evalIfNeeded ZPWR_SCRIPTS_MAC "$ZPWR_SCRIPTS_MAC" "$ZPWR_SCRIPTS/macOnly" "$ZPWR_SCRIPTS"
# the location of zpwr verbs setup script
evalIfNeeded ZPWR_VERBS_FILE "$ZPWR_VERBS_FILE" "$ZPWR_SCRIPTS/zpwr.zsh" "$ZPWR_SCRIPTS"
# the location of zpwr lib file
evalIfNeeded ZPWR_LIB "$ZPWR_LIB" "$ZPWR_SCRIPTS/lib.sh" "$ZPWR_SCRIPTS"
# the location of zpwr init file
evalIfNeeded ZPWR_LIB_INIT "$ZPWR_LIB_INIT" "$ZPWR_SCRIPTS/init.sh" "$ZPWR_SCRIPTS"
# command for all fzf clearlist in preview pane
evalIfNeeded ZPWR_FZF_CLEARLIST "$ZPWR_FZF_CLEARLIST" "zsh $ZPWR_SCRIPTS/zpwrClearList.zsh -- \\\$file | fold -s -w 80" "$ZPWR_SCRIPTS"
# when ZPWR_USE_NEOVIM=true this the file used to find most recent files opened in neovim
evalIfNeeded ZPWR_NVIMINFO "$ZPWR_NVIMINFO" "$ZPWR_LOCAL/.nviminfo" "$ZPWR_LOCAL"
# emacs recent files
evalIfNeeded ZPWR_RECENTF "$ZPWR_RECENTF" "$HOME/.emacs.d/.cache/recentf" "$HOME"
# alternate banner to ponysay
evalIfNeeded ZPWR_DEFAULT_BANNER "$ZPWR_DEFAULT_BANNER" "bash $ZPWR_SCRIPTS_MAC/figletRandomFontOnce.sh $(hostname)" "$ZPWR_SCRIPTS_MAC"
# zpwr banner file location
evalIfNeeded ZPWR_BANNER_SCRIPT "$ZPWR_BANNER_SCRIPT" "$ZPWR_SCRIPTS/about.sh" "$ZPWR_SCRIPTS"
# cache of git dirs
evalIfNeeded ZPWR_ALL_GIT_DIRS "$ZPWR_ALL_GIT_DIRS" "$ZPWR_LOCAL/zpwrGitDirs.txt" "$ZPWR_LOCAL"
# cache of dirty git dirs
evalIfNeeded ZPWR_ALL_GIT_DIRS_DIRTY "$ZPWR_ALL_GIT_DIRS_DIRTY" "$ZPWR_LOCAL/zpwrGitDirsDirty.txt" "$ZPWR_LOCAL"
# log file
evalIfNeeded ZPWR_LOGFILE "$ZPWR_LOGFILE" "$ZPWR_LOCAL/zpwrLog.txt" "$ZPWR_LOCAL"
# cache of env keys
evalIfNeeded ZPWR_ENV_KEY_FILE "$ZPWR_ENV_KEY_FILE" "${ZPWR_LOCAL_ENV}Key.txt" "$ZPWR_LOCAL_ENV"
# cache of env values
evalIfNeeded ZPWR_ENV_VALUE_FILE "$ZPWR_ENV_VALUE_FILE" "${ZPWR_LOCAL_ENV}Value.txt" "$ZPWR_LOCAL_ENV"
# temp files
evalIfNeeded ZPWR_TEMPFILE "$ZPWR_TEMPFILE" "$ZPWR_LOCAL_TEMP/.temp$$-$USER" "$ZPWR_LOCAL_TEMP" "$USER"
evalIfNeeded ZPWR_TEMPFILE1 "$ZPWR_TEMPFILE1" "$ZPWR_LOCAL_TEMP/.temp$$-1$USER" "$ZPWR_LOCAL_TEMP" "$USER"
evalIfNeeded ZPWR_TEMPFILE2 "$ZPWR_TEMPFILE2" "$ZPWR_LOCAL_TEMP/.temp$$-2$USER" "$ZPWR_LOCAL_TEMP" "$USER"
evalIfNeeded ZPWR_TEMPFILE3 "$ZPWR_TEMPFILE3" "$ZPWR_LOCAL_TEMP/.temp$$-3$USER" "$ZPWR_LOCAL_TEMP" "$USER"
evalIfNeeded ZPWR_TEMPFILE4 "$ZPWR_TEMPFILE4" "$ZPWR_LOCAL_TEMP/.temp$$-4$USER" "$ZPWR_LOCAL_TEMP" "$USER"
# SQL temp files for use with learning collection
evalIfNeeded ZPWR_TEMPFILE_SQL "$ZPWR_TEMPFILE_SQL" "$ZPWR_LOCAL_TEMP/.temp$$-2$USER.sql" "$ZPWR_LOCAL_TEMP" "$USER"
# zsh compsys completion system dir for cached completions
evalIfNeeded ZPWR_COMPSYS_CACHE "$ZPWR_COMPSYS_CACHE" "$ZPWR_LOCAL/zcompcache" "$ZPWR_LOCAL"
# compsys cache file
evalIfNeeded ZSH_COMPDUMP "$ZSH_COMPDUMP" "$ZPWR_LOCAL/.zcompdump-$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT" "$ZPWR_LOCAL" "$ZPWR_REPO_NAME" "$ZPWR_GITHUB_ACCOUNT"
# forked repos dir
evalIfNeeded ZPWR_FORKED_DIR "$ZPWR_FORKED_DIR" "$HOME/forkedRepos" "$HOME"
# common dirs
evalIfNeeded ZPWR_D "$ZPWR_D" "$HOME/Desktop" "$HOME"
evalIfNeeded ZPWR_DOC "$ZPWR_DOC" "$HOME/Documents" "$HOME"
evalIfNeeded ZPWR_DL "$ZPWR_DL" "$HOME/Downloads" "$HOME"
# history file
evalIfNeeded HISTFILE "$HISTFILE" "$ZPWR_LOCAL/.$ZPWR_REPO_NAME-$ZPWR_GITHUB_ACCOUNT-history" "$ZPWR_LOCAL" "$ZPWR_REPO_NAME" "$ZPWR_GITHUB_ACCOUNT"
# the path for vim keybindings cache
evalIfNeeded ZPWR_VIM_KEYBINDINGS "$ZPWR_VIM_KEYBINDINGS" "$ZPWR_LOCAL/zpwrVimKeybindings.txt" "$ZPWR_LOCAL"
# the path for all keybindings cache
evalIfNeeded ZPWR_ALL_KEYBINDINGS "$ZPWR_ALL_KEYBINDINGS" "$ZPWR_LOCAL/zpwrAllKeybindings.txt" "$ZPWR_LOCAL"
evalIfNeeded ZPWR_GITHUB_URL "$ZPWR_GITHUB_URL" "https://github.com/$ZPWR_GITHUB_ACCOUNT" "$ZPWR_GITHUB_ACCOUNT"
```

## Tests
You can run all the unit tests via `zpwr tests`.

There is also the alias `tru` (tests run) to run the tests.
```sh
zpwrExists zunit && {
    alias tru="( builtin cd $ZPWR && zunit --verbose $ZPWR/tests/*.zsh )"
}
```

## Shell Startup speed
Running `zpwr recompile` will zrecompile all zpwr configs and all autoloaded functions and compsys completions in fpath. `zpwr refreshzwc` will remove old .zwc files before zrecompile.  This will maximize startup and running speed.  `~/.zpwr/autoload` contains ZPWR autoloaded functions and `~/.zpwr/autoload/comps` contains autoloaded compsys functions.
Removing the lolcat into ponysay banner like so on startup will further increase speed.
```sh
export ZPWR_INTRO_BANNER=nopony
```
With Zinit Turbo mode, despite the number of plugins and completions, startup usually takes < 1 second on faster machines but up to 2-10 seconds on slow machines such as WSL.  Zinit runs compinit in the background after startup and you will experience a brief lockup (unnoticeable if `zpwr regenzsh` and `zpwr recompile` have run to create .zcompdump.zwc).
```sh
export ZPWR_ZINIT_COMPINIT_DELAY=0
```
## Contributing
I am looking for contributors mostly for documentation, marketing, video tutorials, GIFs/screenshots in README and expanding the tests.

## Warnings
Moving scripts from `$ZPWR_SCRIPTS` which defaults to `~/.zpwr/scripts` and `$ZPWR_TMUX` which defaults to `~/.zpwr/tmux` will break a lot of functionality because vim and tmux configurations depend on these scipts for advanced features.  The only user modifiable files are the user token files.

# Running on a MacbookPro
![Alt text](http://jakobmenke.com/img/tmuxfinal22.png?raw=true)
![Alt text](http://jakobmenke.com/img/tmux-scripts.png)
# Running on the Raspberry Pi 3
![Alt text](http://jakobmenke.com/img/tmuxfinal3.png?raw=true)
![Alt text](http://jakobmenke.com/img/tmuxfinal4.png?raw=true)
# Running on the Rock64
![Final 5](http://jakobmenke.com/img/tmuxfinal5.jpg?raw=true)

## Keybindings generated with `source keybindingsToREADME.zsh >> README.md`

# Tmux keybindings (tmux lsk)
- ``` bind-key    -T copy-mode    C-Space              send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode    C-a                  send-keys -X start-of-line ```
- ``` bind-key    -T copy-mode    C-b                  send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode    C-c                  send-keys -X cancel ```
- ``` bind-key    -T copy-mode    C-e                  send-keys -X end-of-line ```
- ``` bind-key    -T copy-mode    C-f                  send-keys -X cursor-right ```
- ``` bind-key    -T copy-mode    C-g                  send-keys -X clear-selection ```
- ``` bind-key    -T copy-mode    C-k                  send-keys -X copy-end-of-line ```
- ``` bind-key    -T copy-mode    C-n                  send-keys -X cursor-down ```
- ``` bind-key    -T copy-mode    C-p                  send-keys -X cursor-up ```
- ``` bind-key    -T copy-mode    C-r                  command-prompt -i -I "#{pane_search_string}" -p "(search up)" "send -X search-backward-incremental \"%%%\"" ```
- ``` bind-key    -T copy-mode    C-s                  command-prompt -i -I "#{pane_search_string}" -p "(search down)" "send -X search-forward-incremental \"%%%\"" ```
- ``` bind-key    -T copy-mode    C-v                  send-keys -X page-down ```
- ``` bind-key    -T copy-mode    C-w                  send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode    Escape               send-keys -X cancel ```
- ``` bind-key    -T copy-mode    Space                send-keys -X page-down ```
- ``` bind-key    -T copy-mode    ,                    send-keys -X jump-reverse ```
- ``` bind-key    -T copy-mode    \;                   send-keys -X jump-again ```
- ``` bind-key    -T copy-mode    F                    command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode    N                    send-keys -X search-reverse ```
- ``` bind-key    -T copy-mode    R                    send-keys -X rectangle-toggle ```
- ``` bind-key    -T copy-mode    T                    command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode    f                    command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode    g                    command-prompt -p "(goto line)" "send -X goto-line \"%%%\"" ```
- ``` bind-key    -T copy-mode    n                    send-keys -X search-again ```
- ``` bind-key    -T copy-mode    q                    send-keys -X cancel ```
- ``` bind-key    -T copy-mode    t                    command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode    MouseDown1Pane       select-pane ```
- ``` bind-key    -T copy-mode    MouseDrag1Pane       select-pane \; send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode    MouseDragEnd1Pane    send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode    WheelUpPane          select-pane \; send-keys -X -N 5 scroll-up ```
- ``` bind-key    -T copy-mode    WheelDownPane        select-pane \; send-keys -X -N 5 scroll-down ```
- ``` bind-key    -T copy-mode    DoubleClick1Pane     select-pane \; send-keys -X select-word ```
- ``` bind-key    -T copy-mode    TripleClick1Pane     select-pane \; send-keys -X select-line ```
- ``` bind-key    -T copy-mode    Home                 send-keys -X start-of-line ```
- ``` bind-key    -T copy-mode    End                  send-keys -X end-of-line ```
- ``` bind-key    -T copy-mode    NPage                send-keys -X page-down ```
- ``` bind-key    -T copy-mode    PPage                send-keys -X page-up ```
- ``` bind-key    -T copy-mode    Up                   send-keys -X cursor-up ```
- ``` bind-key    -T copy-mode    Down                 send-keys -X cursor-down ```
- ``` bind-key    -T copy-mode    Left                 send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode    Right                send-keys -X cursor-right ```
- ``` bind-key    -T copy-mode    M-C-b                send-keys -X previous-matching-bracket ```
- ``` bind-key    -T copy-mode    M-C-f                send-keys -X next-matching-bracket ```
- ``` bind-key    -T copy-mode    M-1                  command-prompt -N -I 1 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-2                  command-prompt -N -I 2 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-3                  command-prompt -N -I 3 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-4                  command-prompt -N -I 4 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-5                  command-prompt -N -I 5 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-6                  command-prompt -N -I 6 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-7                  command-prompt -N -I 7 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-8                  command-prompt -N -I 8 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-9                  command-prompt -N -I 9 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode    M-<                  send-keys -X history-top ```
- ``` bind-key    -T copy-mode    M->                  send-keys -X history-bottom ```
- ``` bind-key    -T copy-mode    M-R                  send-keys -X top-line ```
- ``` bind-key    -T copy-mode    M-b                  send-keys -X previous-word ```
- ``` bind-key    -T copy-mode    M-f                  send-keys -X next-word-end ```
- ``` bind-key    -T copy-mode    M-m                  send-keys -X back-to-indentation ```
- ``` bind-key    -T copy-mode    M-r                  send-keys -X middle-line ```
- ``` bind-key    -T copy-mode    M-v                  send-keys -X page-up ```
- ``` bind-key    -T copy-mode    M-w                  send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode    "M-{"                send-keys -X previous-paragraph ```
- ``` bind-key    -T copy-mode    "M-}"                send-keys -X next-paragraph ```
- ``` bind-key    -T copy-mode    M-Up                 send-keys -X halfpage-up ```
- ``` bind-key    -T copy-mode    M-Down               send-keys -X halfpage-down ```
- ``` bind-key    -T copy-mode    C-Up                 send-keys -X scroll-up ```
- ``` bind-key    -T copy-mode    C-Down               send-keys -X scroll-down ```
- ``` bind-key    -T copy-mode-vi C-b                  send-keys -X page-up ```
- ``` bind-key    -T copy-mode-vi C-c                  send-keys -X cancel ```
- ``` bind-key    -T copy-mode-vi C-d                  send-keys -X halfpage-down ```
- ``` bind-key    -T copy-mode-vi C-e                  send-keys -X scroll-down ```
- ``` bind-key    -T copy-mode-vi C-f                  send-keys -X page-down ```
- ``` bind-key    -T copy-mode-vi C-h                  send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode-vi C-j                  send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode-vi Enter                send-keys -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy" ```
- ``` bind-key    -T copy-mode-vi C-u                  send-keys -X halfpage-up ```
- ``` bind-key    -T copy-mode-vi C-v                  send-keys -X rectangle-toggle ```
- ``` bind-key    -T copy-mode-vi C-y                  send-keys -X scroll-up ```
- ``` bind-key    -T copy-mode-vi Escape               send-keys -X clear-selection ```
- ``` bind-key    -T copy-mode-vi Space                send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode-vi \#                   send-keys -FX search-backward "#{copy_cursor_word}" ```
- ``` bind-key    -T copy-mode-vi \$                   send-keys -X end-of-line ```
- ``` bind-key    -T copy-mode-vi %                    send-keys -X next-matching-bracket ```
- ``` bind-key    -T copy-mode-vi *                    send-keys -FX search-forward "#{copy_cursor_word}" ```
- ``` bind-key    -T copy-mode-vi ,                    send-keys -X jump-reverse ```
- ``` bind-key    -T copy-mode-vi /                    command-prompt -p "(search down)" "send -X search-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 0                    send-keys -X start-of-line ```
- ``` bind-key    -T copy-mode-vi 1                    command-prompt -N -I 1 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 2                    command-prompt -N -I 2 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 3                    command-prompt -N -I 3 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 4                    command-prompt -N -I 4 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 5                    command-prompt -N -I 5 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 6                    command-prompt -N -I 6 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 7                    command-prompt -N -I 7 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 8                    command-prompt -N -I 8 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi 9                    command-prompt -N -I 9 -p (repeat) "send -N \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi :                    command-prompt -p "(goto line)" "send -X goto-line \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi \;                   send-keys -X jump-again ```
- ``` bind-key    -T copy-mode-vi ?                    command-prompt -p "(search up)" "send -X search-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi A                    send-keys -X append-selection-and-cancel ```
- ``` bind-key    -T copy-mode-vi B                    send-keys -X previous-space ```
- ``` bind-key    -T copy-mode-vi D                    send-keys -X copy-end-of-line ```
- ``` bind-key    -T copy-mode-vi E                    send-keys -X next-space-end ```
- ``` bind-key    -T copy-mode-vi F                    command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi G                    send-keys -X history-bottom ```
- ``` bind-key    -T copy-mode-vi H                    send-keys -X top-line ```
- ``` bind-key    -T copy-mode-vi J                    send-keys -X scroll-down ```
- ``` bind-key    -T copy-mode-vi K                    send-keys -X scroll-up ```
- ``` bind-key    -T copy-mode-vi L                    send-keys -X bottom-line ```
- ``` bind-key    -T copy-mode-vi M                    send-keys -X middle-line ```
- ``` bind-key    -T copy-mode-vi N                    send-keys -X search-reverse ```
- ``` bind-key    -T copy-mode-vi T                    command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi V                    send-keys -X select-line ```
- ``` bind-key    -T copy-mode-vi W                    send-keys -X next-space ```
- ``` bind-key    -T copy-mode-vi ^                    send-keys -X back-to-indentation ```
- ``` bind-key    -T copy-mode-vi b                    send-keys -X previous-word ```
- ``` bind-key    -T copy-mode-vi e                    send-keys -X next-word-end ```
- ``` bind-key    -T copy-mode-vi f                    command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi g                    send-keys -X history-top ```
- ``` bind-key    -T copy-mode-vi h                    send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode-vi j                    send-keys -X cursor-down ```
- ``` bind-key    -T copy-mode-vi k                    send-keys -X cursor-up ```
- ``` bind-key    -T copy-mode-vi l                    send-keys -X cursor-right ```
- ``` bind-key    -T copy-mode-vi n                    send-keys -X search-again ```
- ``` bind-key    -T copy-mode-vi o                    send-keys -X other-end ```
- ``` bind-key    -T copy-mode-vi q                    send-keys -X cancel ```
- ``` bind-key    -T copy-mode-vi s                    send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" \; run-shell "reattach-to-user-namespace bash ~/.zpwr/tmux/google.sh google" ```
- ``` bind-key    -T copy-mode-vi t                    command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\"" ```
- ``` bind-key    -T copy-mode-vi v                    send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode-vi w                    send-keys -X next-word ```
- ``` bind-key    -T copy-mode-vi x                    send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" \; display-message -F "current pane directory #{pane_current_path}" \; run-shell "tmux display-message -p -F \"#{pane_current_path}\" > \$ZPWR_TMUX_LOCAL/pane_pwd" \; run-shell "reattach-to-user-namespace bash ~/.zpwr/tmux/google.sh open" ```
- ``` bind-key    -T copy-mode-vi y                    send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" ```
- ``` bind-key    -T copy-mode-vi z                    send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" \; run-shell "reattach-to-user-namespace bash ~/.zpwr/tmux/google.sh google" ```
- ``` bind-key    -T copy-mode-vi \{                   send-keys -X previous-paragraph ```
- ``` bind-key    -T copy-mode-vi \}                   send-keys -X next-paragraph ```
- ``` bind-key    -T copy-mode-vi MouseDown1Pane       select-pane ```
- ``` bind-key    -T copy-mode-vi MouseDown3Pane       send-keys -X copy-pipe "reattach-to-user-namespace pbcopy" \; run-shell "reattach-to-user-namespace bash ~/.zpwr/tmux/google.sh google" ```
- ``` bind-key    -T copy-mode-vi MouseDrag1Pane       select-pane \; send-keys -X begin-selection ```
- ``` bind-key    -T copy-mode-vi MouseDragEnd1Pane    send-keys -X copy-selection-and-cancel ```
- ``` bind-key    -T copy-mode-vi WheelUpPane          select-pane \; send-keys -X -N 5 scroll-up ```
- ``` bind-key    -T copy-mode-vi WheelDownPane        select-pane \; send-keys -X -N 5 scroll-down ```
- ``` bind-key    -T copy-mode-vi DoubleClick1Pane     select-pane \; send-keys -X select-word ```
- ``` bind-key    -T copy-mode-vi TripleClick1Pane     select-pane \; send-keys -X select-line ```
- ``` bind-key    -T copy-mode-vi BSpace               send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode-vi NPage                send-keys -X page-down ```
- ``` bind-key    -T copy-mode-vi PPage                send-keys -X page-up ```
- ``` bind-key    -T copy-mode-vi Up                   send-keys -X cursor-up ```
- ``` bind-key    -T copy-mode-vi Down                 send-keys -X cursor-down ```
- ``` bind-key    -T copy-mode-vi Left                 send-keys -X cursor-left ```
- ``` bind-key    -T copy-mode-vi Right                send-keys -X cursor-right ```
- ``` bind-key    -T copy-mode-vi C-Up                 send-keys -X scroll-up ```
- ``` bind-key    -T copy-mode-vi C-Down               send-keys -X scroll-down ```
- ``` bind-key    -T prefix       C-a                  send-prefix ```
- ``` bind-key    -T prefix       C-n                  next-window ```
- ``` bind-key    -T prefix       C-o                  rotate-window ```
- ``` bind-key    -T prefix       C-p                  previous-window ```
- ``` bind-key    -T prefix       C-r                  run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh ```
- ``` bind-key    -T prefix       C-s                  run-shell ~/.tmux/plugins/tmux-resurrect/scripts/save.sh ```
- ``` bind-key    -T prefix       C-v                  run-shell "tmux set buffer \"$(reattach-to-user-namespace pbpaste)\"; tmux paste-buffer" ```
- ``` bind-key    -T prefix       C-z                  suspend-client ```
- ``` bind-key    -T prefix       Space                next-layout ```
- ``` bind-key    -T prefix       !                    break-pane ```
- ``` bind-key    -T prefix       \"                   split-window ```
- ``` bind-key    -T prefix       \#                   list-buffers ```
- ``` bind-key    -T prefix       \$                   command-prompt -I "#S" "rename-session -- '%%'" ```
- ``` bind-key    -T prefix       %                    split-window -h ```
- ``` bind-key    -T prefix       &                    confirm-before -p "kill-window #W? (y/n)" kill-window ```
- ``` bind-key    -T prefix       \'                   command-prompt -p index "select-window -t ':%%'" ```
- ``` bind-key -r -T prefix       (                    switch-client -p ```
- ``` bind-key -r -T prefix       )                    switch-client -n ```
- ``` bind-key    -T prefix       +                    split-window -v -c "#{pane_current_path}" \; select-pane -l \; kill-pane ```
- ``` bind-key    -T prefix       ,                    command-prompt -I "#W" "rename-window -- '%%'" ```
- ``` bind-key    -T prefix       -                    split-window -v ```
- ``` bind-key    -T prefix       .                    command-prompt "move-window -t '%%'" ```
- ``` bind-key    -T prefix       /                    command-prompt -k -p key "list-keys -1N \"%%%\"" ```
- ``` bind-key    -T prefix       0                    select-window -t :=0 ```
- ``` bind-key    -T prefix       1                    select-window -t :=1 ```
- ``` bind-key    -T prefix       2                    select-window -t :=2 ```
- ``` bind-key    -T prefix       3                    select-window -t :=3 ```
- ``` bind-key    -T prefix       4                    select-window -t :=4 ```
- ``` bind-key    -T prefix       5                    select-window -t :=5 ```
- ``` bind-key    -T prefix       6                    select-window -t :=6 ```
- ``` bind-key    -T prefix       7                    select-window -t :=7 ```
- ``` bind-key    -T prefix       8                    select-window -t :=8 ```
- ``` bind-key    -T prefix       9                    select-window -t :=9 ```
- ``` bind-key    -T prefix       :                    command-prompt ```
- ``` bind-key    -T prefix       \;                   last-pane ```
- ``` bind-key    -T prefix       <                    display-menu -T "#[align=centre]#{window_index}:#{window_name}" -x W -y S "Swap Left" l "swap-window -t:-1" "Swap Right" r "swap-window -t:+1" "#{?pane_marked_set,,-}Swap Marked" s swap-window  Kill X kill-window Respawn R "respawn-window -k" "#{?pane_marked,Unmark,Mark}" m "select-pane -m" Rename n "command-prompt -I \"#W\" \"rename-window -- '%%'\""  "New After" w "new-window -a" "New At End" W new-window ```
- ``` bind-key    -T prefix       =                    choose-buffer -Z ```
- ``` bind-key    -T prefix       >                    display-menu -T "#[align=centre]#{pane_index} (#{pane_id})" -x P -y P "#{?mouse_word,Search For #[underscore]#{=/9/...:mouse_word},}" C-r "copy-mode -t=; send -Xt= search-backward \"#{q:mouse_word}\"" "#{?mouse_word,Type #[underscore]#{=/9/...:mouse_word},}" C-y "send-keys -l -- \"#{q:mouse_word}\"" "#{?mouse_word,Copy #[underscore]#{=/9/...:mouse_word},}" c "set-buffer -- \"#{q:mouse_word}\"" "#{?mouse_line,Copy Line,}" l "set-buffer -- \"#{q:mouse_line}\""  "Horizontal Split" h "split-window -h" "Vertical Split" v "split-window -v"  "Swap Up" u "swap-pane -U" "Swap Down" d "swap-pane -D" "#{?pane_marked_set,,-}Swap Marked" s swap-pane  Kill X kill-pane Respawn R "respawn-pane -k" "#{?pane_marked,Unmark,Mark}" m "select-pane -m" "#{?window_zoomed_flag,Unzoom,Zoom}" z "resize-pane -Z" ```
- ``` bind-key    -T prefix       ?                    list-keys -N ```
- ``` bind-key    -T prefix       D                    source-file ~/.zpwr/tmux/control-window ```
- ``` bind-key    -T prefix       E                    source-file ~/.zpwr/tmux/fourVertical ```
- ``` bind-key    -T prefix       F                    source-file ~/.zpwr/tmux/four-panes ```
- ``` bind-key    -T prefix       G                    source-file ~/.zpwr/tmux/eight-panes ```
- ``` bind-key -r -T prefix       H                    resize-pane -L 5 ```
- ``` bind-key    -T prefix       I                    run-shell ~/.tmux/plugins/tpm/bindings/install_plugins ```
- ``` bind-key -r -T prefix       J                    resize-pane -D 5 ```
- ``` bind-key -r -T prefix       K                    resize-pane -U 5 ```
- ``` bind-key -r -T prefix       L                    resize-pane -R 5 ```
- ``` bind-key    -T prefix       M                    source-file ~/.zpwr/tmux/learn ```
- ``` bind-key    -T prefix       O                    source-file ~/.zpwr/tmux/sixteen-panes ```
- ``` bind-key    -T prefix       P                    paste-buffer ```
- ``` bind-key    -T prefix       R                    source-file ~/.zpwr/tmux/thirtytwo-panes-repl ```
- ``` bind-key    -T prefix       S                    set-window-option synchronize-panes ```
- ``` bind-key    -T prefix       T                    source-file ~/.zpwr/tmux/config-files ```
- ``` bind-key    -T prefix       U                    run-shell ~/.tmux/plugins/tpm/bindings/update_plugins ```
- ``` bind-key    -T prefix       Y                    split-window -v -c "#{pane_current_path}" \; select-pane -l \; kill-pane ```
- ``` bind-key    -T prefix       [                    copy-mode ```
- ``` bind-key    -T prefix       \\                   split-window -h -c "#{pane_current_path}" ```
- ``` bind-key    -T prefix       ]                    paste-buffer ```
- ``` bind-key    -T prefix       _                    split-window -v -c "#{pane_current_path}" ```
- ``` bind-key    -T prefix       a                    last-window ```
- ``` bind-key    -T prefix       c                    new-window ```
- ``` bind-key    -T prefix       d                    detach-client ```
- ``` bind-key    -T prefix       f                    command-prompt "find-window -Z -- '%%'" ```
- ``` bind-key -r -T prefix       h                    select-pane -L ```
- ``` bind-key    -T prefix       i                    display-message ```
- ``` bind-key -r -T prefix       j                    select-pane -D ```
- ``` bind-key -r -T prefix       k                    select-pane -U ```
- ``` bind-key -r -T prefix       l                    select-pane -R ```
- ``` bind-key    -T prefix       m                    select-pane -m ```
- ``` bind-key -r -T prefix       n                    next-window ```
- ``` bind-key    -T prefix       o                    select-pane -t :.+ ```
- ``` bind-key -r -T prefix       p                    previous-window ```
- ``` bind-key    -T prefix       q                    display-panes -d 5000 ```
- ``` bind-key    -T prefix       r                    source-file ~/.tmux.conf \; display-message "Tmux Reloaded!" ```
- ``` bind-key    -T prefix       s                    choose-tree -Zs ```
- ``` bind-key    -T prefix       t                    clock-mode ```
- ``` bind-key    -T prefix       w                    choose-tree -Z ```
- ``` bind-key    -T prefix       x                    kill-pane ```
- ``` bind-key    -T prefix       z                    resize-pane -Z ```
- ``` bind-key -r -T prefix       \{                   rotate-window ```
- ``` bind-key    -T prefix       |                    split-window -h ```
- ``` bind-key    -T prefix       \}                   swap-pane -D ```
- ``` bind-key    -T prefix       \~                   show-messages ```
- ``` bind-key -r -T prefix       DC                   refresh-client -c ```
- ``` bind-key    -T prefix       PPage                copy-mode -u ```
- ``` bind-key -r -T prefix       Up                   select-pane -U ```
- ``` bind-key -r -T prefix       Down                 select-pane -D ```
- ``` bind-key -r -T prefix       Left                 select-pane -L ```
- ``` bind-key -r -T prefix       Right                select-pane -R ```
- ``` bind-key    -T prefix       M-1                  select-layout even-horizontal ```
- ``` bind-key    -T prefix       M-2                  select-layout even-vertical ```
- ``` bind-key    -T prefix       M-3                  select-layout main-horizontal ```
- ``` bind-key    -T prefix       M-4                  select-layout main-vertical ```
- ``` bind-key    -T prefix       M-5                  select-layout tiled ```
- ``` bind-key    -T prefix       M-n                  next-window -a ```
- ``` bind-key    -T prefix       M-o                  rotate-window -D ```
- ``` bind-key    -T prefix       M-p                  previous-window -a ```
- ``` bind-key    -T prefix       M-u                  run-shell ~/.tmux/plugins/tpm/bindings/clean_plugins ```
- ``` bind-key -r -T prefix       M-Up                 resize-pane -U 5 ```
- ``` bind-key -r -T prefix       M-Down               resize-pane -D 5 ```
- ``` bind-key -r -T prefix       M-Left               resize-pane -L 5 ```
- ``` bind-key -r -T prefix       M-Right              resize-pane -R 5 ```
- ``` bind-key -r -T prefix       C-Up                 resize-pane -U ```
- ``` bind-key -r -T prefix       C-Down               resize-pane -D ```
- ``` bind-key -r -T prefix       C-Left               resize-pane -L ```
- ``` bind-key -r -T prefix       C-Right              resize-pane -R ```
- ``` bind-key -r -T prefix       S-Up                 refresh-client -U 10 ```
- ``` bind-key -r -T prefix       S-Down               refresh-client -D 10 ```
- ``` bind-key -r -T prefix       S-Left               refresh-client -L 10 ```
- ``` bind-key -r -T prefix       S-Right              refresh-client -R 10 ```
- ``` bind-key    -T root         C-\\                 switch-client -n ```
- ``` bind-key    -T root         C-]                  switch-client -p ```
- ``` bind-key    -T root         MouseDown1Pane       select-pane -t = \; send-keys -M ```
- ``` bind-key    -T root         MouseDown1Status     select-window -t = ```
- ``` bind-key    -T root         MouseDown3Pane       if-shell -F -t = "#{mouse_any_flag}" "select-pane -t=; send-keys -M" "select-pane -t=" ```
- ``` bind-key    -T root         MouseDown3Status     display-menu -T "#[align=centre]#{window_index}:#{window_name}" -t = -x W -y S "Swap Left" l "swap-window -t:-1" "Swap Right" r "swap-window -t:+1" "#{?pane_marked_set,,-}Swap Marked" s swap-window  Kill X kill-window Respawn R "respawn-window -k" "#{?pane_marked,Unmark,Mark}" m "select-pane -m" Rename n "command-prompt -I \"#W\" \"rename-window -- '%%'\""  "New After" w "new-window -a" "New At End" W new-window ```
- ``` bind-key    -T root         MouseDown3StatusLeft display-menu -T "#[align=centre]#{session_name}" -t = -x M -y S Next n "switch-client -n" Previous p "switch-client -p"  Renumber N "move-window -r" Rename n "command-prompt -I \"#S\" \"rename-session -- '%%'\""  "New Session" s new-session "New Window" w new-window ```
- ``` bind-key    -T root         MouseDrag1Pane       if-shell -F -t = "#{mouse_any_flag}" "if -Ft= \"#{pane_in_mode}\" \"copy-mode -M\" \"send-keys -M\"" "copy-mode -M" ```
- ``` bind-key    -T root         MouseDrag1Border     resize-pane -M ```
- ``` bind-key    -T root         WheelUpPane          if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= \"#{pane_in_mode}\" \"send-keys -M\" \"copy-mode -et=\"" ```
- ``` bind-key    -T root         WheelUpStatus        previous-window ```
- ``` bind-key    -T root         WheelDownStatus      next-window ```
- ``` bind-key    -T root         M-MouseDown3Pane     display-menu -T "#[align=centre]#{pane_index} (#{pane_id})" -t = -x M -y M "#{?mouse_word,Search For #[underscore]#{=/9/...:mouse_word},}" C-r "copy-mode -t=; send -Xt= search-backward \"#{q:mouse_word}\"" "#{?mouse_word,Type #[underscore]#{=/9/...:mouse_word},}" C-y "send-keys -l -- \"#{q:mouse_word}\"" "#{?mouse_word,Copy #[underscore]#{=/9/...:mouse_word},}" c "set-buffer -- \"#{q:mouse_word}\"" "#{?mouse_line,Copy Line,}" l "set-buffer -- \"#{q:mouse_line}\""  "Horizontal Split" h "split-window -h" "Vertical Split" v "split-window -v"  "Swap Up" u "swap-pane -U" "Swap Down" d "swap-pane -D" "#{?pane_marked_set,,-}Swap Marked" s swap-pane  Kill X kill-pane Respawn R "respawn-pane -k" "#{?pane_marked,Unmark,Mark}" m "select-pane -m" "#{?window_zoomed_flag,Unzoom,Zoom}" z "resize-pane -Z" ```
- ``` bind-key    -T root         M-Up                 select-pane -U ```
- ``` bind-key    -T root         M-Down               select-pane -D ```
- ``` bind-key    -T root         M-Left               select-pane -L ```
- ``` bind-key    -T root         M-Right              select-pane -R ```
# Zsh Vim Insert Mode keybindings (bindkey -M viins -L)
- ``` bindkey -M viins "^@" zpwrExpandTerminateSpace ```
- ``` bindkey -M viins "^A" beginning-of-line ```
- ``` bindkey -M viins "^B" zpwrClipboard ```
- ``` bindkey -M viins "^C" self-insert ```
- ``` bindkey -M viins "^D" list-choices ```
- ``` bindkey -M viins "^E" end-of-line ```
- ``` bindkey -M viins "^F^D" zpwrIntoFzf ```
- ``` bindkey -M viins "^F^F" fzf-file-widget ```
- ``` bindkey -M viins "^F^G" zpwrIntoFzfAg ```
- ``` bindkey -M viins "^F^H" zpwrLsoffzf ```
- ``` bindkey -M viins "^F^J" zpwrVerbsWidgetAccept ```
- ``` bindkey -M viins "^F^K" zpwrAlternateQuotes ```
- ``` bindkey -M viins "^F^L" list-choices ```
- ``` bindkey -M viins "^F^M" zzcomplete ```
- ``` bindkey -M viins "^F^N" zpwrVerbsWidget ```
- ``` bindkey -M viins "^F^P" basicSedSub ```
- ``` bindkey -M viins "^F^R" zpwrAsVar ```
- ``` bindkey -M viins "^F^S" zsh-gacp-CheckDiff ```
- ``` bindkey -M viins "^F^V" edit-command-line ```
- ``` bindkey -M viins "^Fj" zpwrVerbsWidgetAccept ```
- ``` bindkey -M viins "^G" what-cursor-position ```
- ``` bindkey -M viins "^H" autopair-delete ```
- ``` bindkey -M viins "^I" fzf-completion ```
- ``` bindkey -M viins "^J" accept-line ```
- ``` bindkey -M viins "^K" zsh-learn-Learn ```
- ``` bindkey -M viins "^L" clear-screen ```
- ``` bindkey -M viins "^M" zpwrMagicEnter ```
- ``` bindkey -M viins "^N" sudo-command-line ```
- ``` bindkey -M viins "^O" fzf-tab-complete ```
- ``` bindkey -M viins "^O^I" zc-logo ```
- ``` bindkey -M viins "^O^Z" zui-demo-various ```
- ``` bindkey -M viins "^P" zpwrEOLorNextTabStop ```
- ``` bindkey -M viins "^Q" zpwrLastWordDouble ```
- ``` bindkey -M viins "^R" fzf-history-widget ```
- ``` bindkey -M viins "^S" zsh-gacp-NoCheck ```
- ``` bindkey -M viins "^T" fzf-file-widget ```
- ``` bindkey -M viins "^U" zpwrClearLine ```
- ``` bindkey -M viins "^V^@" zpwrVimFzf ```
- ``` bindkey -M viins "^V^F" zpwrFasdFZF ```
- ``` bindkey -M viins "^V^G" fzf-cd-widget ```
- ``` bindkey -M viins "^V^K" zpwrEmacsFzf ```
- ``` bindkey -M viins "^V^L" zpwrZFZF ```
- ``` bindkey -M viins "^V^N" zpwrVimFzfSudo ```
- ``` bindkey -M viins "^V^R" history-search-multi-word ```
- ``` bindkey -M viins "^V^S" zpwrZFZF ```
- ``` bindkey -M viins "^V^V" zpwrVimAllWidgetAccept ```
- ``` bindkey -M viins "^V^Z" fzf-history-widget ```
- ``` bindkey -M viins "^V " zpwrVimFzf ```
- ``` bindkey -M viins "^V," zpwrFzfEnv ```
- ``` bindkey -M viins "^V." zpwrFzfAllKeybind ```
- ``` bindkey -M viins "^V/." zpwrLocateFzfEdit ```
- ``` bindkey -M viins "^V//" zpwrLocateFzf ```
- ``` bindkey -M viins "^V;" zpwrFzfSurround ```
- ``` bindkey -M viins "^Vc" zpwrFzfCommits ```
- ``` bindkey -M viins "^Vk" zpwrFzfVimKeybind ```
- ``` bindkey -M viins "^Vl" zpwrZFZF ```
- ``` bindkey -M viins "^Vm" zpwrVimAllWidget ```
- ``` bindkey -M viins "^Vv" zpwrVimAllWidgetAccept ```
- ``` bindkey -M viins "^W" vi-backward-kill-word ```
- ``` bindkey -M viins "^X^R" _read_comp ```
- ``` bindkey -M viins "^X^X" zpwrBufferXtrace ```
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
- ``` bindkey -M viins "^Y" zpwrChangeQuotes ```
- ``` bindkey -M viins "^Z" undo ```
- ``` bindkey -M viins "^[" vi-cmd-mode ```
- ``` bindkey -M viins "^[^D" capitalize-word ```
- ``` bindkey -M viins "^[^E" zpwrExpandGlobalAliases ```
- ``` bindkey -M viins "^[^F" sub ```
- ``` bindkey -M viins "^[^L" down-case-word ```
- ``` bindkey -M viins "^[^M" self-insert-unmeta ```
- ``` bindkey -M viins "^[^O" zpwrRunner ```
- ``` bindkey -M viins "^[^P" zpwrUp8widget ```
- ``` bindkey -M viins "^[^T" transpose-words ```
- ``` bindkey -M viins "^[^U" up-case-word ```
- ``` bindkey -M viins "^[ " zpwrSshRegain ```
- ``` bindkey -M viins "^[," _history-complete-newer ```
- ``` bindkey -M viins "^[/" _history-complete-older ```
- ``` bindkey -M viins "^[OA" history-substring-search-up ```
- ``` bindkey -M viins "^[OB" history-substring-search-down ```
- ``` bindkey -M viins "^[OC" vi-forward-char ```
- ``` bindkey -M viins "^[OD" vi-backward-char ```
- ``` bindkey -M viins "^[OF" end-of-line ```
- ``` bindkey -M viins "^[OH" beginning-of-line ```
- ``` bindkey -M viins "^[OP" zpwrUp8widget ```
- ``` bindkey -M viins "^[OQ" sub ```
- ``` bindkey -M viins "^[OR" zpwrGetrcWidget ```
- ``` bindkey -M viins "^[[1;2D" sub ```
- ``` bindkey -M viins "^[[200~" bracketed-paste ```
- ``` bindkey -M viins "^[[3~" delete-char ```
- ``` bindkey -M viins "^[[5A" zsh-gacp-CheckDiff ```
- ``` bindkey -M viins "^[[5B" zpwrUpdater ```
- ``` bindkey -M viins "^[[5C" zpwrTutsUpdate ```
- ``` bindkey -M viins "^[[5D" dbz ```
- ``` bindkey -M viins "^[[5~" zpwrClipboard ```
- ``` bindkey -M viins "^[[A" history-substring-search-up ```
- ``` bindkey -M viins "^[[B" history-substring-search-down ```
- ``` bindkey -M viins "^[[C" vi-forward-char ```
- ``` bindkey -M viins "^[[D" vi-backward-char ```
- ``` bindkey -M viins "^[[Z" zpwrClipboard ```
- ``` bindkey -M viins "^[c" fzf-cd-widget ```
- ``` bindkey -M viins "^[man" man-command-line ```
- ``` bindkey -M viins "^[~" _bash_complete-word ```
- ``` bindkey -R -M viins "^\\\\"-"^_" self-insert ```
- ``` bindkey -M viins " " zpwrExpandSupernaturalSpace ```
- ``` bindkey -M viins "!" self-insert ```
- ``` bindkey -M viins "\"" zpwrInterceptSurround ```
- ``` bindkey -R -M viins "#"-"&" self-insert ```
- ``` bindkey -R -M viins "'"-"(" zpwrInterceptSurround ```
- ``` bindkey -M viins ")" autopair-close ```
- ``` bindkey -R -M viins "*"-"-" self-insert ```
- ``` bindkey -M viins "." zpwrRationalizeDot ```
- ``` bindkey -R -M viins "/"-"Z" self-insert ```
- ``` bindkey -M viins "[" zpwrInterceptSurround ```
- ``` bindkey -M viins "\\\\" self-insert ```
- ``` bindkey -M viins "]" autopair-close ```
- ``` bindkey -R -M viins "\^"-"_" self-insert ```
- ``` bindkey -M viins "\`" zpwrInterceptSurround ```
- ``` bindkey -R -M viins "a"-"z" self-insert ```
- ``` bindkey -M viins "{" zpwrInterceptSurround ```
- ``` bindkey -M viins "|" self-insert ```
- ``` bindkey -M viins "}" autopair-close ```
- ``` bindkey -M viins "~" self-insert ```
- ``` bindkey -M viins "^?" zpwrInterceptDelete ```
- ``` bindkey -R -M viins "\M-^@"-"\M-^?" self-insert ```
# Zsh Vim Normal Mode keybindings (bindkey -M vicmd -L)
- ``` bindkey -a "^A" beginning-of-line ```
- ``` bindkey -a "^B" zpwrClipboard ```
- ``` bindkey -a "^D" list-choices ```
- ``` bindkey -a "^E" end-of-line ```
- ``` bindkey -a "^F^D" zpwrIntoFzf ```
- ``` bindkey -a "^F^F" fzf-file-widget ```
- ``` bindkey -a "^F^G" zpwrIntoFzfAg ```
- ``` bindkey -a "^F^H" zpwrLsoffzf ```
- ``` bindkey -a "^F^J" zpwrVerbsWidgetAccept ```
- ``` bindkey -a "^F^K" zpwrAlternateQuotes ```
- ``` bindkey -a "^F^L" list-choices ```
- ``` bindkey -a "^F^M" zzcomplete ```
- ``` bindkey -a "^F^N" zpwrVerbsWidget ```
- ``` bindkey -a "^F^P" basicSedSub ```
- ``` bindkey -a "^F^R" zpwrAsVar ```
- ``` bindkey -a "^F^S" zsh-gacp-CheckDiff ```
- ``` bindkey -a "^F^V" edit-command-line ```
- ``` bindkey -a "^Fj" zpwrVerbsWidgetAccept ```
- ``` bindkey -a "^G" what-cursor-position ```
- ``` bindkey -a "^H" vi-backward-char ```
- ``` bindkey -a "^I" zpwrExpandOrCompleteWithDots ```
- ``` bindkey -a "^J" accept-line ```
- ``` bindkey -a "^K" zsh-learn-Learn ```
- ``` bindkey -a "^L" clear-screen ```
- ``` bindkey -a "^M" zpwrMagicEnter ```
- ``` bindkey -a "^N" down-history ```
- ``` bindkey -a "^O" fzf-tab-complete ```
- ``` bindkey -a "^P" zpwrEOLorNextTabStop ```
- ``` bindkey -a "^Q" zpwrLastWordDouble ```
- ``` bindkey -a "^R" redo ```
- ``` bindkey -a "^S" zsh-gacp-NoCheck ```
- ``` bindkey -a "^T" transpose-chars ```
- ``` bindkey -a "^U" zpwrClearLine ```
- ``` bindkey -a "^V^@" zpwrVimFzf ```
- ``` bindkey -a "^V^F" zpwrFasdFZF ```
- ``` bindkey -a "^V^G" fzf-cd-widget ```
- ``` bindkey -a "^V^K" zpwrEmacsFzf ```
- ``` bindkey -a "^V^L" zpwrZFZF ```
- ``` bindkey -a "^V^N" zpwrVimFzfSudo ```
- ``` bindkey -a "^V^R" history-search-multi-word ```
- ``` bindkey -a "^V^S" zpwrZFZF ```
- ``` bindkey -a "^V^V" zpwrVimAllWidgetAccept ```
- ``` bindkey -a "^V^Z" fzf-history-widget ```
- ``` bindkey -a "^V " zpwrVimFzf ```
- ``` bindkey -a "^V," zpwrFzfEnv ```
- ``` bindkey -a "^V." zpwrFzfAllKeybind ```
- ``` bindkey -a "^V/." zpwrLocateFzfEdit ```
- ``` bindkey -a "^V//" zpwrLocateFzf ```
- ``` bindkey -a "^V;" zpwrFzfSurround ```
- ``` bindkey -a "^Vc" zpwrFzfCommits ```
- ``` bindkey -a "^Vl" zpwrZFZF ```
- ``` bindkey -a "^Vm" zpwrVimAllWidget ```
- ``` bindkey -a "^Vv" zpwrVimAllWidgetAccept ```
- ``` bindkey -a "^W" zpwrDeleteLastWord ```
- ``` bindkey -a "^X^X" zpwrBufferXtrace ```
- ``` bindkey -a "^Y" zpwrChangeQuotes ```
- ``` bindkey -a "^Z" undo ```
- ``` bindkey -a "^[" beep ```
- ``` bindkey -a "^[^D" capitalize-word ```
- ``` bindkey -a "^[^L" down-case-word ```
- ``` bindkey -a "^[^O" zpwrRunner ```
- ``` bindkey -a "^[^P" zpwrUp8widget ```
- ``` bindkey -a "^[^T" transpose-words ```
- ``` bindkey -a "^[^U" up-case-word ```
- ``` bindkey -a "^[ " zpwrSshRegain ```
- ``` bindkey -a "^[OA" up-line-or-history ```
- ``` bindkey -a "^[OB" down-line-or-history ```
- ``` bindkey -a "^[OC" vi-forward-char ```
- ``` bindkey -a "^[OD" vi-backward-char ```
- ``` bindkey -a "^[[200~" bracketed-paste ```
- ``` bindkey -a "^[[A" up-line-or-history ```
- ``` bindkey -a "^[[B" down-line-or-history ```
- ``` bindkey -a "^[[C" vi-forward-char ```
- ``` bindkey -a "^[[D" vi-backward-char ```
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
- ``` bindkey -M menuselect "^H" vi-backward-char ```
- ``` bindkey -M menuselect "^I" vi-forward-char ```
- ``` bindkey -M menuselect "^J" down-history ```
- ``` bindkey -M menuselect "^K" up-history ```
- ``` bindkey -M menuselect "^L" vi-forward-char ```
- ``` bindkey -M menuselect "^M" .accept-line ```
- ``` bindkey -M menuselect "^N" vi-forward-word ```
- ``` bindkey -M menuselect "^P" vi-backward-word ```
- ``` bindkey -M menuselect "^S" reverse-menu-complete ```
- ``` bindkey -M menuselect "^V" vi-insert ```
- ``` bindkey -M menuselect "^X" history-incremental-search-forward ```
- ``` bindkey -M menuselect "^[OA" up-line-or-history ```
- ``` bindkey -M menuselect "^[OB" down-line-or-history ```
- ``` bindkey -M menuselect "^[OC" forward-char ```
- ``` bindkey -M menuselect "^[OD" backward-char ```
- ``` bindkey -M menuselect "^[[1~" vi-beginning-of-line ```
- ``` bindkey -M menuselect "^[[4~" vi-end-of-line ```
- ``` bindkey -M menuselect "^[[5A" vi-backward-word ```
- ``` bindkey -M menuselect "^[[5B" vi-forward-word ```
- ``` bindkey -M menuselect "^[[5C" vi-end-of-line ```
- ``` bindkey -M menuselect "^[[5D" vi-beginning-of-line ```
- ``` bindkey -M menuselect "^[[5~" vi-backward-word ```
- ``` bindkey -M menuselect "^[[6~" vi-forward-word ```
- ``` bindkey -M menuselect "^[[A" up-line-or-history ```
- ``` bindkey -M menuselect "^[[B" down-line-or-history ```
- ``` bindkey -M menuselect "^[[C" forward-char ```
- ``` bindkey -M menuselect "^[[D" backward-char ```
- ``` bindkey -M menuselect "^[[Z" reverse-menu-complete ```
- ``` bindkey -M menuselect "." zpwrSelfInsert ```
- ``` bindkey -M menuselect "?" history-incremental-search-backward ```
- ``` bindkey -M menuselect "^?" undo ```
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
- ``` i  <Plug>delimitMateJumpMany *@<SNR>56_TriggerAbb()."\<C-R>=delimitMate#JumpMany()\<CR>" ```
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
- ``` i  <Plug>ISurround * <C-R>=<SNR>169_insert(1)<CR> ```
- ``` i  <Plug>Isurround * <C-R>=<SNR>169_insert()<CR> ```
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
- ``` i  <Plug>(neosnippet_start_unite_snippet) * unite#sources#neosnippet#start_complete() ```
- ``` i  <Plug>(neosnippet_jump) * neosnippet#mappings#jump_impl() ```
- ``` i  <Plug>(neosnippet_expand) * neosnippet#mappings#expand_impl() ```
- ``` i  <Plug>(neosnippet_jump_or_expand) * neosnippet#mappings#jump_or_expand_impl() ```
- ``` i  <Plug>(neosnippet_expand_or_jump) * neosnippet#mappings#expand_or_jump_impl() ```
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
- ``` i  <Plug>delimitMateS-Tab * <SNR>56_TriggerAbb()."\<C-R>=delimitMate#JumpAny()\<CR>" ```
- ``` i  <Plug>delimitMateSpace * <SNR>56_TriggerAbb()."\<C-R>=delimitMate#ExpandSpace()\<CR>" ```
- ``` i  <Plug>delimitMateCR * <SNR>56_TriggerAbb()."\<C-R>=delimitMate#ExpandReturn()\<CR>" ```
- ``` i  <Plug>delimitMateS-BS * delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>" ```
- ``` i  <Plug>delimitMateBS * <C-R>=delimitMate#BS()<CR> ```
- ``` i  <Plug>delimitMate` * <SNR>56_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\`\")<CR>" ```
- ``` i  <Plug>delimitMate' * <SNR>56_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\'\")<CR>" ```
- ``` i  <Plug>delimitMate" * <SNR>56_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\"\")<CR>" ```
- ``` i  <Plug>delimitMate] * <SNR>56_TriggerAbb().delimitMate#JumpOut("\]") ```
- ``` i  <Plug>delimitMate} * <SNR>56_TriggerAbb().delimitMate#JumpOut("\}") ```
- ``` i  <Plug>delimitMate) * <SNR>56_TriggerAbb().delimitMate#JumpOut("\)") ```
- ``` i  <Plug>delimitMate[ * <SNR>56_TriggerAbb().delimitMate#ParenDelim("]") ```
- ``` i  <Plug>delimitMate{ * <SNR>56_TriggerAbb().delimitMate#ParenDelim("}") ```
- ``` i  <Plug>delimitMate( * <SNR>56_TriggerAbb().delimitMate#ParenDelim(")") ```
- ``` i  <Plug>(ale_complete) * <C-\><C-O>:ALEComplete<CR> ```
- ``` i  <Plug>(ale_show_completion_menu) * <C-X><C-O><C-P> ```
- ``` i  <Plug>(asyncomplete_force_refresh) * asyncomplete#force_refresh() ```
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
- ``` i  <C-D>n      * <C-X><C-O> ```
- ``` i  <C-D>\      * <C-X><C-L> ```
- ``` i  <C-D>,      * <C-O>:FZFEnv<CR> ```
- ``` i  <C-D>.      * <C-O>:FZFKeys<CR> ```
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
- ``` i  <C-D>p      * <C-O>:call PasteClip()<CR> ```
- ``` i  <C-D>r      * <C-O>:call GetRef()<CR> ```
- ``` i  <C-D>o      * <C-O>:ALEToggle<CR> ```
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
- ``` i  <C-X>       * <C-R>=<SNR>32_ManualCompletionEnter()<CR> ```
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
- ``` n  <C-D>,      * :FZFEnv<CR> ```
- ``` n  <C-D>.      * :FZFKeys<CR> ```
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
- ``` n  <C-D>p      * :call PasteClip()<CR> ```
- ``` n  <C-D>r      * :call GetRef()<CR> ```
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
- ``` n  <C-D><C-D>  * :GitGutterUndoHunk<CR> ```
- ``` n  <C-F>       * :q!<CR> ```
- ``` n  <C-G>       * :call multiple_cursors#new("n", 1)<CR> ```
- ``` n  <C-H>       * 4h ```
- ``` n  <NL>        * 4j ```
- ``` n  <C-K>       * 4k ```
- ``` n  <C-L>       * 4l ```
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
- ``` n  <Space>/    * :LocateAll<CR> ```
- ``` n  <Space>ma   * :Marks<CR> ```
- ``` n  <Space>]    * <C-W>}<CR> ```
- ``` n  <Space>ta   * :Tags<CR> ```
- ``` n  <Space>h:   * :History:<CR> ```
- ``` n  <Space>h/   * :History/<CR> ```
- ``` n  <Space>hh   * :History<CR> ```
- ``` n  <Space>rg   * :Rg<CR> ```
- ``` n  <Space>o    * :ALEToggle<CR> ```
- ``` n  <Space>m    * :Map<CR> ```
- ``` n  <Space>j    * :Lines<CR> ```
- ``` n  <Space>ke   * :FZFKeys<CR> ```
- ``` n  <Space>,    * :FZFMaps<CR> ```
- ``` n  <Space>aa   * :Agg<CR> ```
- ``` n  <Space>i    * :Imap<CR> ```
- ``` n  <Space>f    * :Files<CR> ```
- ``` n  <Space>env  * :FZFEnv<CR> ```
- ``` n  <Space>;    * :Commands<CR> ```
- ``` n  <Space>.    * :Colors<CR> ```
- ``` n  <Space>b    * :Buffers<CR> ```
- ``` n  <Space>ag   * :Ag<CR> ```
- ```    <Space>hi     :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR> ```
- ``` n  <Space>vj   * :w!<CR>:call TmuxRepeat("file")<CR> ```
- ``` n  <Space>ev     :call ExtractVariable()<CR> ```
- ```    <Space><Space>e   <Plug>(easymotion-bd-e) ```
- ```    <Space><Space>w   <Plug>(easymotion-bd-w) ```
- ``` n  <Space>x    * :normal mzg&`zzz<CR> ```
- ``` n  <Space>p    * :bprev<CR> ```
- ``` n  <Space>n    * :bnext<CR> ```
- ``` n  <Space>ap   * :prev<CR> ```
- ``` n  <Space>an   * :next<CR> ```
- ``` n  <Space>lo   * :lopen<CR> ```
- ``` n  <Space>lc   * :lclose<CR> ```
- ``` n  <Space>lp   * :lprev<CR> ```
- ``` n  <Space>ln   * :lnext<CR> ```
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
- ``` n  <Space>wq   * :wq!<CR> ```
- ``` n  <Space>q    * :qa!<CR> ```
- ``` n  <Space>r    * :%s@\C\<<C-R><C-W>\>@<C-R><C-W>@g<Left><Left> ```
- ``` n  <Space>g    * :%s@\C\<<C-R><C-W>\>@@g<Left><Left> ```
- ```    <Space>sudo * :w !sudo tee % &>/dev/null<CR><CR><CR> ```
- ``` n  <Space>=    * 4+ ```
- ``` n  <Space>-    * 4- ```
- ``` n  %             <Plug>(MatchitNormalForward) ```
- ``` n  &&          * :normal mzg&`zzz<CR> ```
- ``` n  &           * :&&<CR> ```
- ``` nox(           * repmo#SelfKey('(', ')') ```
- ``` nox)           * repmo#SelfKey(')', '(') ```
- ``` nox+           * repmo#SelfKey('+', '-') ```
- ``` n  ,e            <Plug>CamelCaseMotion_e ```
- ``` nox,             repmo#LastRevKey('<Plug>Sneak_,') ```
- ``` nox-           * repmo#SelfKey('-', '+') ```
- ``` n  .             <Plug>(RepeatDot) ```
- ``` nox;             repmo#LastKey('<Plug>Sneak_;') ```
- ``` n  <p          & :<C-U>call <SNR>170_putline(v:count1 . ']p', 'Below')<CR><'] ```
- ``` n  <P          & :<C-U>call <SNR>170_putline(v:count1 . '[p', 'Above')<CR><'] ```
- ``` n  =p          & :<C-U>call <SNR>170_putline(v:count1 . ']p', 'Below')<CR>='] ```
- ``` n  =P          & :<C-U>call <SNR>170_putline(v:count1 . '[p', 'Above')<CR>='] ```
- ``` n  =op         * <Nop> ```
- ``` n  =o            <SNR>170_legacy_option_map(nr2char(getchar())) ```
- ``` n  >p          & :<C-U>call <SNR>170_putline(v:count1 . ']p', 'Below')<CR>>'] ```
- ``` n  >P          & :<C-U>call <SNR>170_putline(v:count1 . '[p', 'Above')<CR>>'] ```
- ``` n  @:            <Plug>RepeatEx ```
- ```    B           * repmo#SelfKey('b', 'w') ```
- ``` noxE           * repmo#SelfKey('E', 'gE') ```
- ``` noxF             repmo#ZapKey('<Plug>Sneak_F') ```
- ``` n  N           * :call GoToLastSearch('?')<CR> ```
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
- ``` n  [op         & :call <SNR>170_setup_paste()<CR>O ```
- ``` n  [o+         & :set cursorline cursorcolumn<CR> ```
- ``` n  [ox         & :set cursorline cursorcolumn<CR> ```
- ``` n  [ov         & :set virtualedit+=all<CR> ```
- ``` n  [ow         & :setlocal wrap<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [os         & :setlocal spell<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [or         & :setlocal relativenumber<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [on         & :setlocal number<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [ol         & :setlocal list<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [oi         & :set ignorecase<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [oh         & :set hlsearch<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [od         & :diffthis<CR> ```
- ``` n  [o|         & :setlocal cursorcolumn<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [ou         & :setlocal cursorcolumn<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [o_         & :setlocal cursorline<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [o-         & :setlocal cursorline<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  [oc         & :setlocal cursorline<C-R>=<SNR>170_statusbump()<CR><CR> ```
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
- ``` n  ]op         & :call <SNR>170_setup_paste()<CR>o ```
- ``` n  ]o+         & :set nocursorline nocursorcolumn<CR> ```
- ``` n  ]ox         & :set nocursorline nocursorcolumn<CR> ```
- ``` n  ]ov         & :set virtualedit-=all<CR> ```
- ``` n  ]ow         & :setlocal nowrap<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]os         & :setlocal nospell<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]or         & :setlocal norelativenumber<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]on         & :setlocal nonumber<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]ol         & :setlocal nolist<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]oi         & :set noignorecase<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]oh         & :set nohlsearch<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]od         & :diffoff<CR> ```
- ``` n  ]o|         & :setlocal nocursorcolumn<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]ou         & :setlocal nocursorcolumn<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]o_         & :setlocal nocursorline<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]o-         & :setlocal nocursorline<C-R>=<SNR>170_statusbump()<CR><CR> ```
- ``` n  ]oc         & :setlocal nocursorline<C-R>=<SNR>170_statusbump()<CR><CR> ```
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
- ``` n  co            <SNR>170_legacy_option_map(nr2char(getchar())) ```
- ``` n  cS            <Plug>CSurround ```
- ``` n  cs            <Plug>Csurround ```
- ``` n  cr            <Plug>(abolish-coerce-word) ```
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
- ``` n  n           * :call GoToLastSearch('/')<CR> ```
- ``` nx s             repmo#ZapKey('<Plug>Sneak_s') ```
- ``` noxt             repmo#ZapKey('<Plug>Sneak_t') ```
- ``` n  u             <Plug>(RepeatUndo) ```
- ``` noxw             <Plug>CamelCaseMotion_w ```
- ``` n  yop         & :call <SNR>170_setup_paste()<CR>0C ```
- ``` n  yo+         & :set <C-R>=<SNR>170_cursor_options()<CR><CR> ```
- ``` n  yox         & :set <C-R>=<SNR>170_cursor_options()<CR><CR> ```
- ``` n  yov         & :set <C-R>=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"<CR><CR> ```
- ``` n  yow         & :setlocal <C-R>=<SNR>170_toggle("wrap")<CR><CR> ```
- ``` n  yos         & :setlocal <C-R>=<SNR>170_toggle("spell")<CR><CR> ```
- ``` n  yor         & :setlocal <C-R>=<SNR>170_toggle("relativenumber")<CR><CR> ```
- ``` n  yon         & :setlocal <C-R>=<SNR>170_toggle("number")<CR><CR> ```
- ``` n  yol         & :setlocal <C-R>=<SNR>170_toggle("list")<CR><CR> ```
- ``` n  yoi         & :set <C-R>=<SNR>170_toggle("ignorecase")<CR><CR> ```
- ``` n  yoh         & :set <C-R>=<SNR>170_toggle("hlsearch")<CR><CR> ```
- ``` n  yod         & :<C-R>=&diff ? "diffoff" : "diffthis"<CR><CR> ```
- ``` n  yo|         & :setlocal <C-R>=<SNR>170_toggle("cursorcolumn")<CR><CR> ```
- ``` n  you         & :setlocal <C-R>=<SNR>170_toggle("cursorcolumn")<CR><CR> ```
- ``` n  yo_         & :setlocal <C-R>=<SNR>170_toggle("cursorline")<CR><CR> ```
- ``` n  yo-         & :setlocal <C-R>=<SNR>170_toggle("cursorline")<CR><CR> ```
- ``` n  yoc         & :setlocal <C-R>=<SNR>170_toggle("cursorline")<CR><CR> ```
- ``` n  yob         & :set background=<C-R>=&background == "dark" ? "light" : "dark"<CR><CR> ```
- ``` n  ySS           <Plug>YSsurround ```
- ``` n  ySs           <Plug>YSsurround ```
- ``` n  yss           <Plug>Yssurround ```
- ``` n  yS            <Plug>YSurround ```
- ``` n  ys            <Plug>Ysurround ```
- ``` n  y<C-G>      & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> ```
- ``` n  z/          * :if AutoHighlightToggle()|set hls|endif<CR> ```
- ``` nox{           * repmo#SelfKey('{', '}') ```
- ``` nox}           * repmo#SelfKey('}', '{') ```
- ``` n  <Plug>NetrwBrowseX * :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<CR> ```
- ``` n  <Plug>(MatchitNormalMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR> ```
- ``` n  <Plug>(MatchitNormalMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR> ```
- ``` n  <Plug>(MatchitNormalBackward) * :<C-U>call matchit#Match_wrapper('',0,'n')<CR> ```
- ``` n  <Plug>(MatchitNormalForward) * :<C-U>call matchit#Match_wrapper('',1,'n')<CR> ```
- ``` n  <Plug>(wildfire-quick-select) * :<C-U>call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR> ```
- ``` n  <Plug>(wildfire-fuel) * :<C-U>call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR> ```
- ``` n  <Plug>unimpaired_line_xml_decode * <SNR>170_TransformSetup("xml_decode")."_" ```
- ``` n  <Plug>unimpaired_xml_decode * <SNR>170_TransformSetup("xml_decode") ```
- ``` n  <Plug>unimpaired_line_xml_encode * <SNR>170_TransformSetup("xml_encode")."_" ```
- ``` n  <Plug>unimpaired_xml_encode * <SNR>170_TransformSetup("xml_encode") ```
- ``` n  <Plug>unimpaired_line_url_decode * <SNR>170_TransformSetup("url_decode")."_" ```
- ``` n  <Plug>unimpaired_url_decode * <SNR>170_TransformSetup("url_decode") ```
- ``` n  <Plug>unimpaired_line_url_encode * <SNR>170_TransformSetup("url_encode")."_" ```
- ``` n  <Plug>unimpaired_url_encode * <SNR>170_TransformSetup("url_encode") ```
- ``` n  <Plug>unimpaired_line_string_decode * <SNR>170_TransformSetup("string_decode")."_" ```
- ``` n  <Plug>unimpaired_string_decode * <SNR>170_TransformSetup("string_decode") ```
- ``` n  <Plug>unimpaired_line_string_encode * <SNR>170_TransformSetup("string_encode")."_" ```
- ``` n  <Plug>unimpaired_string_encode * <SNR>170_TransformSetup("string_encode") ```
- ``` n  <Plug>unimpairedPutBelow * :call <SNR>170_putline(']p', 'Below')<CR> ```
- ``` n  <Plug>unimpairedPutAbove * :call <SNR>170_putline('[p', 'Above')<CR> ```
- ``` n  <Plug>unimpairedPaste * :call <SNR>170_setup_paste()<CR> ```
- ```    <Plug>unimpairedMoveSelectionDown * :<C-U>call <SNR>170_MoveSelectionDown(v:count1)<CR> ```
- ```    <Plug>unimpairedMoveSelectionUp * :<C-U>call <SNR>170_MoveSelectionUp(v:count1)<CR> ```
- ``` n  <Plug>unimpairedMoveDown * :<C-U>call <SNR>170_Move('+',v:count1,'Down')<CR> ```
- ``` n  <Plug>unimpairedMoveUp * :<C-U>call <SNR>170_Move('--',v:count1,'Up')<CR> ```
- ``` n  <Plug>unimpairedBlankDown * :<C-U>call <SNR>170_BlankDown(v:count1)<CR> ```
- ``` n  <Plug>unimpairedBlankUp * :<C-U>call <SNR>170_BlankUp(v:count1)<CR> ```
- ``` n  <Plug>unimpairedContextNext * :<C-U>call <SNR>170_Context(0)<CR> ```
- ``` n  <Plug>unimpairedContextPrevious * :<C-U>call <SNR>170_Context(1)<CR> ```
- ``` n  <Plug>unimpairedDirectoryPrevious * :<C-U>edit <C-R>=<SNR>170_fnameescape(fnamemodify(<SNR>170_FileByOffset(-v:count1), ':.'))<CR><CR> ```
- ``` n  <Plug>unimpairedDirectoryNext * :<C-U>edit <C-R>=<SNR>170_fnameescape(fnamemodify(<SNR>170_FileByOffset(v:count1), ':.'))<CR><CR> ```
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
- ``` n  <Plug>YSurround * <SNR>169_opfunc2('setup') ```
- ``` n  <Plug>Ysurround * <SNR>169_opfunc('setup') ```
- ``` n  <Plug>YSsurround * <SNR>169_opfunc2('setup').'_' ```
- ``` n  <Plug>Yssurround * '^'.v:count1.<SNR>169_opfunc('setup').'g_' ```
- ``` n  <Plug>CSurround * :<C-U>call <SNR>169_changesurround(1)<CR> ```
- ``` n  <Plug>Csurround * :<C-U>call <SNR>169_changesurround()<CR> ```
- ``` n  <Plug>Dsurround * :<C-U>call <SNR>169_dosurround(<SNR>169_inputtarget())<CR> ```
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
- ``` n  <Plug>Sneak_, * :<C-U>call <SNR>167_rpt('', 1)<CR> ```
- ``` n  <Plug>Sneak_; * :<C-U>call <SNR>167_rpt('', 0)<CR> ```
- ``` n  <Plug>Sneak_S * :<C-U>call sneak#wrap('', 2, 1, 2, 1)<CR> ```
- ``` n  <Plug>Sneak_s * :<C-U>call sneak#wrap('', 2, 0, 2, 1)<CR> ```
- ``` n  <Plug>(sexp_capture_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 1, 1) | call <SNR>164_repeat_set("\<Plug>(sexp_capture_next_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_capture_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 0, 1) | call <SNR>164_repeat_set("\<Plug>(sexp_capture_prev_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_emit_tail_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 1, 0) | call <SNR>164_repeat_set("\<Plug>(sexp_emit_tail_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_emit_head_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 0, 0) | call <SNR>164_repeat_set("\<Plug>(sexp_emit_head_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_swap_element_forward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 1, 0) | call <SNR>164_repeat_set("\<Plug>(sexp_swap_element_forward)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_swap_element_backward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 0, 0) | call <SNR>164_repeat_set("\<Plug>(sexp_swap_element_backward)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_swap_list_forward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 1, 1) | call <SNR>164_repeat_set("\<Plug>(sexp_swap_list_forward)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_swap_list_backward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 0, 1) | call <SNR>164_repeat_set("\<Plug>(sexp_swap_list_backward)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_splice_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#splice_list(b:sexp_count) | call <SNR>164_repeat_set("\<Plug>(sexp_splice_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_convolute) * :<C-U>let b:sexp_count = v:count | call sexp#convolute(b:sexp_count, 'n') | call <SNR>164_repeat_set("\<Plug>(sexp_convolute)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_raise_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'n', 'sexp#select_current_element', 'n', 1) | call <SNR>164_repeat_set("\<Plug>(sexp_raise_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_raise_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'n', 'sexp#select_current_list', 'n', 0, 0) | call <SNR>164_repeat_set("\<Plug>(sexp_raise_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_insert_at_list_tail) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#insert_at_list_terminal(1) | call <SNR>164_repeat_set("\<Plug>(sexp_insert_at_list_tail)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_insert_at_list_head) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#insert_at_list_terminal(0) | call <SNR>164_repeat_set("\<Plug>(sexp_insert_at_list_head)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_curly_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '{', '}', 1, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_curly_tail_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_curly_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '{', '}', 0, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_curly_head_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_square_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '[', ']', 1, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_square_tail_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_square_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '[', ']', 0, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_square_head_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_round_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '(', ')', 1, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_round_tail_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_round_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '(', ')', 0, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_round_head_wrap_element)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_curly_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '{', '}', 1, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_curly_tail_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_curly_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '{', '}', 0, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_curly_head_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_square_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '[', ']', 1, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_square_tail_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_square_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '[', ']', 0, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_square_head_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_round_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '(', ')', 1, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_round_tail_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_round_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '(', ')', 0, g:sexp_insert_after_wrap) | call <SNR>164_repeat_set("\<Plug>(sexp_round_head_wrap_list)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_indent_top) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#indent(1, b:sexp_count) | call <SNR>164_repeat_set("\<Plug>(sexp_indent_top)", b:sexp_count)<CR> ```
- ``` n  <Plug>(sexp_indent) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#indent(0, b:sexp_count) | call <SNR>164_repeat_set("\<Plug>(sexp_indent)", b:sexp_count)<CR> ```
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
- ``` n  <Plug>(RepeatDot) * :<C-U>if !repeat#run(v:count)|echoerr repeat#errmsg()|endif<CR> ```
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
- ``` n  <Plug>(abolish-coerce-word) * <SNR>106_coerce(nr2char(getchar())).'iw' ```
- ``` n  <Plug>(abolish-coerce) * <SNR>106_coerce(nr2char(getchar())) ```
- ``` n  <Plug>NERDCommenterAltDelims * :call <SNR>64_SwitchToAlternativeDelimiters(1)<CR> ```
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
- ``` n  <Plug>(neosnippet_jump)   g<C-H><Plug>(neosnippet_jump) ```
- ``` n  <Plug>(neosnippet_expand)   g<C-H><Plug>(neosnippet_expand) ```
- ``` n  <Plug>(neosnippet_jump_or_expand)   g<C-H><Plug>(neosnippet_jump_or_expand) ```
- ``` n  <Plug>(neosnippet_expand_or_jump)   g<C-H><Plug>(neosnippet_expand_or_jump) ```
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
- ``` n  <Plug>(ale_repeat_selection) * :ALERepeatSelection<CR> ```
- ``` n  <Plug>(ale_code_action) * :ALECodeAction<CR> ```
- ``` n  <Plug>(ale_rename) * :ALERename<CR> ```
- ``` n  <Plug>(ale_import) * :ALEImport<CR> ```
- ``` n  <Plug>(ale_documentation) * :ALEDocumentation<CR> ```
- ``` n  <Plug>(ale_hover) * :ALEHover<CR> ```
- ``` n  <Plug>(ale_find_references) * :ALEFindReferences<CR> ```
- ``` n  <Plug>(ale_go_to_type_definition_in_vsplit) * :ALEGoToTypeDefinitionIn -vsplit<CR> ```
- ``` n  <Plug>(ale_go_to_type_definition_in_split) * :ALEGoToTypeDefinition -split<CR> ```
- ``` n  <Plug>(ale_go_to_type_definition_in_tab) * :ALEGoToTypeDefinition -tab<CR> ```
- ``` n  <Plug>(ale_go_to_type_definition) * :ALEGoToTypeDefinition<CR> ```
- ``` n  <Plug>(ale_go_to_definition_in_vsplit) * :ALEGoToDefinition -vsplit<CR> ```
- ``` n  <Plug>(ale_go_to_definition_in_split) * :ALEGoToDefinition -split<CR> ```
- ``` n  <Plug>(ale_go_to_definition_in_tab) * :ALEGoToDefinition -tab<CR> ```
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
- ``` v  <C-B>       * :call CopyClip()<CR>`> ```
- ``` v  <C-D>d      * :<C-C>:update<CR> ```
- ``` v  <C-D>y      * :<C-C>:update<CR>:SyntasticCheck<CR> ```
- ``` v  <C-D>,      * :call NERDComment("x","Toggle")<CR>`> ```
- ``` v  <C-F>       * :<C-C>:q!<CR> ```
- ``` x  <C-G>       * :<C-U>call multiple_cursors#new("v", 0)<CR> ```
- ``` s  <C-H>       * <C-G>"_c ```
- ``` x  <C-H>       * 4h ```
- ``` x  <Tab>       * :call UltiSnips#SaveLastVisualSelection()<CR>gvs ```
- ``` s  <Tab>       * <Esc>:call UltiSnips#ExpandSnippetOrJump()<CR> ```
- ``` v  <NL>        * 4j ```
- ``` v  <C-K>       * 4k ```
- ``` v  <C-L>       * 4l ```
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
- ```    <Space>hi     :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR> ```
- ``` v  <Space>vl   * <Esc>:call TmuxRepeat("repl")<CR>gv ```
- ``` v  <Space>vk   * <Esc>:call TmuxRepeat("visual")<CR>gv ```
- ``` v  <Space>vj   * <Esc>:call TmuxRepeat("file")<CR>gv ```
- ``` x  <Space>ef     :call ExtractFoldMarker()<CR> ```
- ``` x  <Space>ev     :call ExtractVariableVisual()<CR> ```
- ``` x  <Space>em     :call ExtractMethod()<CR> ```
- ```    <Space><Space>e   <Plug>(easymotion-bd-e) ```
- ```    <Space><Space>w   <Plug>(easymotion-bd-w) ```
- ``` x  <Space>x    * :normal mzg&`zzz<CR> ```
- ``` v  <Space>(    * :call InsertQuoteVisualMode("paren")<CR> ```
- ``` v  <Space>{    * :call InsertQuoteVisualMode("curlybracket")<CR> ```
- ``` v  <Space>[    * :call InsertQuoteVisualMode("bracket")<CR> ```
- ``` v  <Space>`    * :call InsertQuoteVisualMode("back")<CR> ```
- ``` v  <Space>'    * :call InsertQuoteVisualMode("single")<CR<CR> ```
- ``` v  <Space>"    * :call InsertQuoteVisualMode("double")<CR> ```
- ```    <Space>z    * nea ```
- ``` v  <Space>r    * :'<,'>s@\C\<<C-R><C-W>\>@<C-R><C-W>@g<Left><Left> ```
- ``` v  <Space>g    * :'<,'>%s@\C\<<C-R><C-W>\>@@g<Left><Left> ```
- ```    <Space>sudo * :w !sudo tee % &>/dev/null<CR><CR><CR> ```
- ``` v  <Space>b    * :w !tmux set-buffer "$(cat)"<CR><CR> ```
- ``` v  <Space>=    * 4+ ```
- ``` v  <Space>-    * 4- ```
- ``` x  %             <Plug>(MatchitVisualForward) ```
- ``` x  &&          * :normal mzg&`zzz<CR> ```
- ``` x  &           * :&&<CR> ```
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
- ``` v  J           * :m '> + <CR> gv ```
- ``` v  K           * :m '< -- <CR> gv ```
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
- ``` v  gs          * :call CopyClip()<CR> :!bash $ZPWR_TMUX/google.sh google <CR>`> ```
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
- ``` x  <Plug>unimpaired_xml_decode * <SNR>170_TransformSetup("xml_decode") ```
- ``` x  <Plug>unimpaired_xml_encode * <SNR>170_TransformSetup("xml_encode") ```
- ``` x  <Plug>unimpaired_url_decode * <SNR>170_TransformSetup("url_decode") ```
- ``` x  <Plug>unimpaired_url_encode * <SNR>170_TransformSetup("url_encode") ```
- ``` x  <Plug>unimpaired_string_decode * <SNR>170_TransformSetup("string_decode") ```
- ``` x  <Plug>unimpaired_string_encode * <SNR>170_TransformSetup("string_encode") ```
- ```    <Plug>unimpairedMoveSelectionDown * :<C-U>call <SNR>170_MoveSelectionDown(v:count1)<CR> ```
- ```    <Plug>unimpairedMoveSelectionUp * :<C-U>call <SNR>170_MoveSelectionUp(v:count1)<CR> ```
- ``` x  <Plug>unimpairedContextNext * :<C-U>exe 'normal! gv'|call <SNR>170_Context(0)<CR> ```
- ``` x  <Plug>unimpairedContextPrevious * :<C-U>exe 'normal! gv'|call <SNR>170_Context(1)<CR> ```
- ``` v  <Plug>VgSurround * :<C-U>call <SNR>169_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR> ```
- ``` v  <Plug>VSurround * :<C-U>call <SNR>169_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR> ```
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
- ``` x  <Plug>Sneak_, * :<C-U>call <SNR>167_rpt(visualmode(), 1)<CR> ```
- ``` x  <Plug>Sneak_; * :<C-U>call <SNR>167_rpt(visualmode(), 0)<CR> ```
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
- ``` v  <Plug>(abolish-coerce) * <SNR>106_coerce(nr2char(getchar())) ```
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
- ``` x  <Plug>(neosnippet_register_oneshot_snippet) * :<C-U>call neosnippet#mappings#_register_oneshot_snippet()<CR> ```
- ``` x  <Plug>(neosnippet_expand_target) * :<C-U>call neosnippet#mappings#_expand_target()<CR> ```
- ``` x  <Plug>(neosnippet_get_selected_text) * :call neosnippet#helpers#get_selected_text(visualmode(), 1)<CR> ```
- ``` x  <Plug>(neosnippet_jump)   <C-G><Plug>(neosnippet_jump) ```
- ``` x  <Plug>(neosnippet_expand)   <C-G><Plug>(neosnippet_expand) ```
- ``` x  <Plug>(neosnippet_jump_or_expand)   <C-G><Plug>(neosnippet_jump_or_expand) ```
- ``` x  <Plug>(neosnippet_expand_or_jump)   <C-G><Plug>(neosnippet_expand_or_jump) ```
- ``` s  <Plug>(neosnippet_jump) * neosnippet#mappings#jump_impl() ```
- ``` s  <Plug>(neosnippet_expand) * neosnippet#mappings#expand_impl() ```
- ``` s  <Plug>(neosnippet_jump_or_expand) * neosnippet#mappings#jump_or_expand_impl() ```
- ``` s  <Plug>(neosnippet_expand_or_jump) * neosnippet#mappings#expand_or_jump_impl() ```
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
- ``` v  <RightMouse> * :call CopyClip()<CR>`> ```
- ``` v  <C-Up>      * :m '< -- <CR> gv ```
- ``` v  <C-Down>    * :m '> + <CR> gv ```
- ``` v  <C-Left>    * <gv ```
- ``` v  <C-Right>   * >gv ```
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
- ``` c  <C-T>       * <SNR>160_transpose() ```
- ``` c  <C-U>       * <SNR>160_ctrl_u() ```
- ``` c  <C-X><C-A>  * <C-A> ```
- ``` c  <C-Y>       * pumvisible() ? "\<C-Y>" : "\<C-R>-" ```
