#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Sep 18 15:53:09 EDT 2019
##### Purpose: bash script to run zpwr subcommands
##### Notes:
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
    backup) cmd="backup" #backup files
        ;;
    regen) cmd="regenAll" #regen all caches
        ;;
    regenkeybindings) cmd="regenAllKeybindingsCache" #regenAllKeybindingsCache
        ;;
    regenpowerline ) cmd="regenPowerlineLink" #regenPowerlineLink
        ;;
    regenzsh ) cmd="regenZshCompCache" #regenZshCompCache at ~/.zcompdump-hostname
        ;;
    updateall) cmd="apz" #update all
        ;;
    start) cmd="tmm_full" #start all tabs
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
    hc) cmd="hc" #create remote github repo
        ;;
    hd) cmd="hd" #delete remote github repo
        ;;
    taillog) cmd="lo" #tail -F $LOGFILE
        ;;
    log) cmd="logg" #write to $LOGFILE
        ;;
    getrc) cmd="getrc" #update zpwr configs
        ;;
    search) cmd="clearList" #search command type with args
        ;;
    clearlist) cmd="clearList" #clear and list the files with no args
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
    post) cmd="post" #postfix all output
        ;;
    pygmentcolors) cmd="pygmentcolors" #show all pygment colors
        ;;
    contribcount) cmd="contribcount" #count of git contribs grouped by author
        ;;
    scripts) cmd="sc" #cd to scripts directory
        ;;
    scriptToPDF) cmd="scriptToPDF" #convert script to PDF
        ;;
    cloneToForked) cmd="cloneToForked" #clone $REPO_NAME to $FORKED_DIR
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
    zp) cmd="zp" #cd to $REPO_NAME
        ;;
    zshsearch) cmd="zshrcsearch" #search zshrc for arg
        ;;
    zpz) cmd="zpz" #cd to $REPO_NAME and git co, rebase and push
        ;;
    *) cmd="bad$$"
        ;;
esac

if [[ "$cmd" == "bad$$" ]]; then
    prettyPrint "Unknown subcommand: '$verb'"
else
    if alias $cmd 1>/dev/null 2>&1;then
        prettyPrint "Eval subcommand '$cmd'"
        eval "$cmd"
    else
        prettyPrint "Exec subcommand '$cmd'"
        $cmd "$@"
    fi
fi

