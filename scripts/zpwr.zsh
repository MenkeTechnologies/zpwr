#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Sep 18 15:53:09 EDT 2019
##### Purpose: bash script to run zpwr subcommands
##### Notes: escape $ in comments for perl subs
#}}}***********************************************************

verb="$1"
shift
case $verb in
    trc) cmd="trc" #tmux.conf vim session
        ;;
    brc) cmd="brc" #shell aliases file vim session
        ;;
    vrc) cmd="vrc" #vimrc vim session
        ;;
    zrc) cmd="zrc" #zshrc vim session
        ;;
    color2) cmd="color2" #turn on stderr filter
        ;;
    return2) cmd="return2" #turn off stderr filter
        ;;
    man) cmd="fm" #fzf through man pages
        ;;
    backup) cmd="backup" #backup files
        ;;
    regen) cmd="regenAll" #regen all caches
        ;;
    regenkeybindings) cmd="regenAllKeybindingsCache" #regen all keybindings cache to ~/.zpwr/zpwr{All,Vim}Keybindings.txt
        ;;
    regenpowerline ) cmd="regenPowerlineLink" #regen powerline sym link to ~/.tmux/powerline
        ;;
    regengit) cmd="regenAllGitRepos" #regen list of all git repos to ~/.zpwr/zpwrGitDirs.txt
        ;;
    regentags) cmd="regenTags" #regen ctags files to ~ and ~/.zpwr/scripts
        ;;
    regenenv) cmd="regenSearchEnv" #regen search env to ~/.zpwr/zpwrEnv{Key,Value}.txt
        ;;
    regenzsh ) cmd="regenZshCompCache" #regen compsys cache to ~/.zcompdump
        ;;
    updatedeps) cmd="apz" #update all dependencies
        ;;
    start) cmd="tmm_notabs" #start with no tabs
        ;;
    starttabs) cmd="tmm_full" #start all tabs
        ;;
    attach) cmd="tmux attach-session" #attach to tmux session
        ;;
    detach) cmd="detachall" #detach from all tmux sessions
        ;;
    install) cmd="inst" #run configure, make and make install
        ;;
    digs) cmd="digs" #run series on networking commands on arg
        ;;
    ff) cmd="ff" #run 10 times for command
        ;;
    fff) cmd="fff" #run first arg times for command
        ;;
    figletfonts) cmd="figletfonts" #show all figlet fonts
        ;;
    home) cmd="cd $ZPWR_HIDDEN_DIR" #go to zpwr \$ZPWR_HIDDEN_DIR
        ;;
    hubcreate) cmd="hc" #create remote github repo
        ;;
    hubdelete) cmd="hd" #delete remote github repo
        ;;
    web) cmd="we" #cd to web dir
        ;;
    gitignore) cmd="gil" #vim ~/.git/info/exclude
        ;;
    taillog) cmd="lo" #tail -F \$ZPWR_LOGFILE
        ;;
    log) cmd="logg" #write to \$ZPWR_LOGFILE
        ;;
    update) cmd="getrc" #update zpwr custom configs
        ;;
    updateall) cmd="apz;getrc" #update zpwr custom configs and deps
        ;;
    search) cmd="s" #search google for args
        ;;
    info) cmd="clearList" #get info on command type with args
        ;;
    list) cmd="listNoClear" #list the files with no args
        ;;
    clearlist) cmd="clearList" #clear and list the files with no args
        ;;
    learnsearch) cmd="se" #search for learning in \$ZPWR_SCHEMA_NAME.\$ZPWR_TABLE_NAME
        ;;
    learn) cmd="learn" #save learning to \$ZPWR_SCHEMA_NAME.\$ZPWR_TABLE_NAME
        ;;
    clone) cmd="gcl" #clone and cd to arg
        ;;
    github) cmd="openmygh" #open github.com profile
        ;;
    opencommand) cmd="getOpenCommand" #get the command to open with system
        ;;
    makefile) cmd="j" #make a dir tree with file at end
        ;;
    makedir) cmd="jd" #make a dir tree
        ;;
    open) cmd="o" #open with system
        ;;
    background) cmd="b" #run arg in background
        ;;
    ps) cmd="p" #ps -ef | grep arg
        ;;
    pi) cmd="pi" #ping all LAN devices
        ;;
    pir) cmd="pir" #run command on all devices
        ;;
    pre) cmd="pre" #prefix all output
        ;;
    banner) cmd="about" #show $ZPWR_REPO_NAME banner
        ;;
    gitremotes) cmd="allRemotes" #list all git remotes
        ;;
    urlsafe) cmd="urlSafe" #base64 encode
        ;;
    upload) cmd="upload" #upload with curl
        ;;
    post) cmd="post" #postfix all output
        ;;
    pygmentcolors) cmd="pygmentcolors" #show all pygment colors
        ;;
    commits) cmd="commits" #search git commits with fzf
        ;;
    commit) cmd="gitCommitAndPush" #commit and push with arg message
        ;;
    colorsdiff) cmd="gsdc" #colorized side diff
        ;;
    prettyprint) cmd="prettyPrint" #pretty print with color
        ;;
    altprettyprint) cmd="alternatingPrettyPrint" #pretty with alternating color
        ;;
    totallines) cmd="totalLines" #count of total line count of git files
        ;;
    linecontribcount) cmd="lineContribCount" #count of lines contributed by author
        ;;
    logincount) cmd="loginCount" #count of logins by user
        ;;
    ghcontribcount) cmd="cgh" #count of github contribs in last year
        ;;
    contribcount) cmd="contribCount" #count of git contribs by author
        ;;
    cd) cmd="f" #cd to directory arg
        ;;
    scriptcount) cmd="scriptCount" #total number of scripts in \$ZPWR_SCRIPTS
        ;;
    scripts) cmd="sc" #cd to scripts directory
        ;;
    scriptToPDF) cmd="scriptToPDF" #convert script to PDF
        ;;
    cloneToForked) cmd="cloneToForked" #clone \$ZPWR_REPO_NAME to \$FORKED_DIR
        ;;
    reveal) cmd="reveal" #show remote repo in browser
        ;;
    killmux) cmd="tmux kill-server" #kill tmux server
        ;;
    to) cmd="to" #toggle external ip
        ;;
    www) cmd="www" #run command and sleep first arg seconds
        ;;
    fp) cmd="fp" #cd to ~/forkedRepos
        ;;
    zp) cmd="zp" #cd to \$ZPWR_REPO_NAME
        ;;
    recompile) cmd="recompile" #recompile all cache comps
        ;;
    grep) cmd="fz" #grep through pwd with ag into fzf
        ;;
    drivesearch) cmd="locateFzf" #search drive for file
        ;;
    vimsearch) cmd="fzfVimKeybind" #search vim keybindings
        ;;
    allsearch) cmd="fzfAllKeybind" #search all keybindings
        ;;
    envsearch) cmd="fzfEnv" #search all aliases, parameters, builtins, keywords and functions
        ;;
    zshsearch) cmd="zshrcsearch" #search zshrc for arg
        ;;
    zpz) cmd="zpz" #cd to \$ZPWR_REPO_NAME and git co, rebase and push
        ;;
    *) cmd="bad$$"
        ;;
esac

if [[ "$cmd" == "bad$$" ]]; then
    prettyPrint "Unknown subcommand: '$verb'"
else
    for exp in ${(s%;%)cmd}; do
        if alias $exp 1>/dev/null 2>&1;then
            prettyPrint "Eval subcommand '$exp'"
            eval "$exp"
        else
            prettyPrint "Exec subcommand '$exp'"
            ${=exp} $@
        fi
    done
fi

