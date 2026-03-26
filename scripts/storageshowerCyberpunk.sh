#!/usr/bin/env bash
# Cyberpunk-themed df display - full terminal width, compact, unicode

R=$'\e[0m'
C=$'\e[1;36m'
M=$'\e[1;35m'
G=$'\e[1;32m'
Y=$'\e[1;33m'
E=$'\e[1;31m'
D=$'\e[2m'
DM=$'\e[2;35m'
DC=$'\e[2;36m'
DG=$'\e[2;32m'
W=$'\e[1;37m'
m=$'\e[35m'
BG_M=$'\e[45;1;37m'
BG_R=$'\e[41;1;37m'
BG_Y=$'\e[43;1;30m'

node=$(hostname -s 2>/dev/null || echo "SYS")

# Get terminal width — read from /dev/tty to bypass script(1) pty
cols=0
# /dev/tty gives the real terminal size even inside script(1)
if (( cols == 0 )) || (( cols < 10 )); then
    cols_tty=$(stty size < /dev/tty 2>/dev/null) && cols=${cols_tty##* }
fi
if (( cols == 0 )) || (( cols < 10 )); then
    cols=$(tput cols 2>/dev/null || echo 0)
fi
if (( cols == 0 )) || (( cols < 10 )); then
    [[ -n "$COLUMNS" ]] && cols=$COLUMNS
fi
if (( cols == 0 )) || (( cols < 10 )); then
    cols=120
fi
(( cols < 40 )) && cols=40

# Separator
_line() {
    local w="$1"
    local out="${M}─"
    for (( i=1; i<w; i++ )); do out+="─"; done
    echo -n "${out}${R}"
}

# Header
ts=$(date '+%H:%M:%S')
dt=$(date '+%Y.%m.%d')

echo -e "${DM}⟦${DC}sys.${DG}init${DM}⟧${R} ${M}▶▶▶${R} ${BG_M} DISK MATRIX ${R} ${M}◀◀◀${R} ${DC}node:${C}${node^^}${R} ${DC}date:${C}${dt}${R} ${DC}clock:${C}${ts}${R} ${DM}⟫ scanning volumes…${R}"
echo -e "$(_line "$cols")"

# Layout widths — account for multi-byte unicode icons (3 display cols for icon)
right_fixed=24
mount_w=40
(( mount_w > cols / 3 )) && mount_w=$(( cols / 3 ))
bw=$(( cols - mount_w - right_fixed - 5 ))
(( bw < 10 )) && bw=10

# Status icons
ico_ok="${G}◈${R}"
ico_warn="${Y}⚠${R}"
ico_crit="${E}✖${R}"

df -H 2>/dev/null | awk 'NR>1 && /^\/dev/' | while IFS= read -r line; do
    pct=$(echo "$line" | awk '{print $5}')
    used=$(echo "$line" | awk '{print $3}')
    size=$(echo "$line" | awk '{print $2}')
    mount=$(echo "$line" | awk '{for(i=9;i<=NF;i++) printf "%s ",$i; print ""}' | sed 's/ *$//')

    pct_num="${pct%%%}"

    if (( pct_num >= 90 )); then
        cl="$E"; ico="$ico_crit"; hi="${BG_R}"
    elif (( pct_num >= 70 )); then
        cl="$Y"; ico="$ico_warn"; hi="${BG_Y}"
    else
        cl="$G"; ico="$ico_ok"; hi=""
    fi

    filled=$(( bw * pct_num / 100 ))
    (( filled == 0 && pct_num > 0 )) && filled=1
    empty=$(( bw - filled ))

    # Build bar with unicode block elements
    bar=""
    for (( i=0; i<filled; i++ )); do
        frac=$(( i * 100 / bw ))
        if (( frac < 30 )); then
            bar+="${cl}█"
        elif (( frac < 60 )); then
            bar+="${cl}▓"
        elif (( frac < 80 )); then
            bar+="${cl}▒"
        else
            bar+="${cl}░"
        fi
    done
    # Trailing arrow
    if (( filled > 0 && empty > 0 )); then
        bar+="${cl}▸"
        (( empty-- ))
    fi
    # Empty portion
    for (( i=0; i<empty; i++ )); do
        bar+="${D} "
    done
    bar+="${R}"

    # Truncate mount
    if (( ${#mount} > mount_w )); then
        mount="…${mount: -$((mount_w - 1))}"
    fi

    # Pct display
    if [[ -n "$hi" ]]; then
        pct_out="${hi} ${pct} ${R}"
    else
        pct_out="${cl} ${pct}${R}"
    fi

    # Padding
    mount_pad=$((mount_w - ${#mount}))
    mpad=""
    (( mount_pad > 0 )) && mpad=$(printf '%*s' "$mount_pad" "")

    used_pad=$((6 - ${#used}))
    upad=""
    (( used_pad > 0 )) && upad=$(printf '%*s' "$used_pad" "")

    echo -e " ${ico} ${m}${mount}${mpad}${R} ${DM}║${R}${bar}${DM}║${R}${pct_out} ${upad}${used} ${DC}/${R} ${size}"
done

echo -e "$(_line "$cols")"

# Footer
up=$(uptime 2>/dev/null | sed 's/.*up *\([^,]*\),.*/\1/' | xargs)
echo -e "${DM}⟦${DC}zpwr${DM}⊷${DC}cyberdeck${DM}⟧${R} ${M}◀◀◀${R} ${DM}uptime ${C}${up}${R} ${DM}│ ${DG}▣ all sectors scanned${R} ${DM}│ ◇ end of line${R}"
