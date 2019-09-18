#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Sep 18 15:53:09 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

verb="$1"
shift


case $verb in
    regen) cmd="regenAll"
        ;;
    regenkeybindings) cmd="regenAllKeybindingsCache"
        ;;
    regenpowerline ) cmd="regenPowerlineLink"
        ;;
    regenzsh ) cmd="regenZshCompCache"
        ;;
    updateall) cmd="apz"
        ;;
    start) cmd="tmm_full"
        ;;
    attach) cmd="tmux attach-session"
        ;;
    detach) cmd="detachall"
        ;;
    getrc ) cmd="getrc"
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

