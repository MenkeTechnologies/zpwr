#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Sep 18 15:53:09 EDT 2019
##### Purpose: bash script to run zpwr subcommands
##### Notes:
#}}}***********************************************************

for verb in "$@" ; do
    case $verb in
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
        github) cmd="openmygh" #open github.com profile
            ;;
        getrc ) cmd="getrc" #update zpwr configs
            ;;
        *) cmd="bad$$"
            ;;
    esac

    if [[ "$cmd" == "bad$$" ]]; then
        prettyPrint "Unknown subcommand: '$verb'"
    else
        prettyPrint "Exec subcommand '$cmd'"
        eval "$cmd"
    fi

done
