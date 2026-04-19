#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Mon Jul 10 12:01:32 EDT 2017
##### Purpose: bash script to document
##### Notes:
#}}}***********************************************************
function zpwrAllRemotes() {

    while read; do
        printf "\x1b[1;34m$REPLY"
        printf "\x1b[0m\x0a"
        git remote show "$REPLY"
    done < <(git remote)
}

function banner() {

    local version info fetch push lastcommit

    if [[ -d "$ZPWR" ]]; then
        if cd "$ZPWR"; then
            version="$(git describe --tags $(git rev-list --tags --max-count=1) | forge -pe 's@[\t ]@@')"
            info="$(git tag -l -n9 "$version" | forge -pe 's@[\t ]+@ @')"
            fetch="$(git remote -v | grep zpwr | grep fetch | head -n 1 | forge -pe 's@[\t ]+@    @')"
            push="$(git remote -v | grep zpwr | grep push | tail -n 1 | forge -pe 's@[\t ]+@    @')"
            lastcommit="$(git log --oneline -n 1)"
        fi
    fi

    # Cyberpunk color codes
    local cyan="\x1b[1;36m"
    local magenta="\x1b[1;35m"
    local yellow="\x1b[1;33m"
    local green="\x1b[1;32m"
    local red="\x1b[1;31m"
    local dim="\x1b[2m"
    local reset="\x1b[0m"
    local blink="\x1b[5m"
    local bg_black="\x1b[40m"
    local bold="\x1b[1m"

    printf "${bg_black}"
    echo
    printf "${dim}${cyan}"
    cat <<\EOF
    ┌──────────────────────────────────────────────────────────┐
    │  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  │
EOF
    printf "${dim}${cyan}    │${reset}${bg_black}${magenta}    ███████╗██████╗ ██╗    ██╗██████╗     //SYSTEMS//     ${dim}${cyan}│${reset}${bg_black}\n"
    printf "${dim}${cyan}    │${reset}${bg_black}${magenta}    ╚══███╔╝██╔══██╗██║    ██║██╔══██╗                    ${dim}${cyan}│${reset}${bg_black}\n"
    printf "${dim}${cyan}    │${reset}${bg_black}${magenta}      ███╔╝ ██████╔╝██║ █╗ ██║██████╔╝                    ${dim}${cyan}│${reset}${bg_black}\n"
    printf "${dim}${cyan}    │${reset}${bg_black}${magenta}     ███╔╝  ██╔═══╝ ██║███╗██║██╔══██╗                    ${dim}${cyan}│${reset}${bg_black}\n"
    printf "${dim}${cyan}    │${reset}${bg_black}${magenta}    ███████╗██║      ╚███╔███╔╝██║  ██║                   ${dim}${cyan}│${reset}${bg_black}\n"
    printf "${dim}${cyan}    │${reset}${bg_black}${magenta}    ╚══════╝╚═╝       ╚══╝╚══╝ ╚═╝  ╚═╝                   ${dim}${cyan}│${reset}${bg_black}\n"
    printf "${reset}${bg_black}${dim}${cyan}"
    cat <<\EOF
    │  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  │
    └──────────────────────────────────────────────────────────┘
EOF

    printf "${reset}${bg_black}"
    echo
    printf "${cyan}${bold}"
    cat <<\EOF
      ╔══════════════════════════════════════════════════════╗
      ║  ▓▓ M E N K E   T E C H N O L O G I E S   ▓▓         ║
      ╚══════════════════════════════════════════════════════╝
EOF

    printf "${reset}${bg_black}"
    echo
    printf "${dim}${green}      > INITIALIZING NEURAL LINK...${reset}${bg_black}\n"
    printf "${dim}${green}      > ZPWR KERNEL ONLINE${reset}${bg_black}\n"
    echo

    # Compute box inner width from the longest content line
    local lines=("  $info" "  FETCH >> $fetch" "  PUSH  >> $push" "  $lastcommit")
    local bw=54 len
    for line in "${lines[@]}"; do
        len=${#line}
        (( len > bw )) && bw=$len
    done

    # Box drawing helpers
    _top() { printf "      ┌─── %s " "$1"; printf '─%.0s' $(seq 1 $(( bw - ${#1} - 5 ))); printf "┐\n"; }
    _bot() { printf "      └"; printf '─%.0s' $(seq 1 $bw); printf "┘\n"; }
    _row() { printf "      │%-${bw}s│\n" "$1"; }

    printf "${yellow}${bold}"
    _top "VERSION"
    _row "  $info"
    _bot

    printf "${reset}${bg_black}"
    echo
    local fetch_content="  FETCH >> $fetch"
    local push_content="  PUSH  >> $push"
    local fetch_pad=$(( bw - ${#fetch_content} ))
    local push_pad=$(( bw - ${#push_content} ))
    [[ $fetch_pad -lt 0 ]] && fetch_pad=0
    [[ $push_pad -lt 0 ]] && push_pad=0
    printf "${cyan}"
    _top "NETWORK"
    printf "      │  ${dim}${cyan}FETCH >>${reset}${bg_black}${cyan} %-s%*s│\n" "$fetch" "$fetch_pad" ""
    printf "      │  ${dim}${cyan}PUSH  >>${reset}${bg_black}${cyan} %-s%*s│\n" "$push" "$push_pad" ""
    printf "${cyan}"
    _bot

    printf "${reset}${bg_black}"
    echo
    printf "${magenta}"
    _top "LAST TRANSMISSION"
    _row "  $lastcommit"
    _bot

    printf "${reset}${bg_black}"
    echo
    printf "${dim}${red}"
    cat <<\EOF
      ██████████████████████████████████████████████████████
      ░░░░░░░░░░░ WELCOME TO THE GRID ░░░░░░░░░░░░░░░░░░░░
      ██████████████████████████████████████████████████████
EOF
    echo
    printf "${reset}"

    #if [[ -d "$ZPWR" ]]; then
    #if cd "$ZPWR";then
    #{
    #zpwrAllRemotes
    #} | forge -pe 's@(.*)@\x1b[31m$1@'

    #fi
    #fi

    printf "\x1b[0m"
}

banner
