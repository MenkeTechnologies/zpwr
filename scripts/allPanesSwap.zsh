#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Feb  7 21:47:47 EST 2021
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

exec 2>> "$ZPWR_LOGFILE"
printf "" > $ZPWR_TEMPFILE
declare -a ZPWR_PANES
declare -A ZPWR_PANE_INFO
local line out cnt id winw winh pw ph pl pt h w t l o row col win wid type ary socket fdc err=0
local capture="$ZPWR_TMUX_CAPTURE-$(date +%s).txt"

if ! zmodload zsh/curses; then
    tmux display-message "Could NOT load zsh/curses"
    err=1
fi

if ! zmodload zsh/net/socket; then
    tmux display-message "Could NOT load zsh/net/socket"
    err=1
fi

if [[ -z "$3" ]]; then
    tmux display-message "usage: allPanesSwap.zsh <win_id> <single/multi> <socket>"
    exit 1
fi

wid="$1"
type="$2"
socket="$3"

zsocket $socket
fdc=$REPLY

if (( err )); then
    print -u $fdc err
fi

win=stdscr
# zcurses addwin $win $LINES $COLUMNS 0 0 

while read id winw winh pw ph pl pr pt; do
    id=${id#%}
    ZPWR_PANES+=(${id})
    ZPWR_PANE_INFO[${id}.w]="$pw"
    ZPWR_PANE_INFO[${id}.h]="$ph"
    ZPWR_PANE_INFO[${id}.t]="$pt"
    ZPWR_PANE_INFO[${id}.l]="$pl"
    ZPWR_PANE_INFO[${id}.r]="$pr"
    ZPWR_PANE_INFO[${id}.o]="$(tmux capture-pane -p -t "%$id")"
done < \
<(tmux lsp -t "$wid" -F '#{pane_id} #{window_width} #{window_height} #{pane_width} #{pane_height} #{pane_left} #{pane_right} #{pane_top} ')

#tmux wait-for -U fingerl1

zcurses init
zcurses clear $win

for id in ${ZPWR_PANES[@]};do
    cnt=0
    h=$ZPWR_PANE_INFO[$id.h]
    w=$ZPWR_PANE_INFO[$id.w]
    t=$ZPWR_PANE_INFO[$id.t]
    l=$ZPWR_PANE_INFO[$id.l]
    r=$ZPWR_PANE_INFO[$id.r]
    o=$ZPWR_PANE_INFO[$id.o]
    # keep trailing space
    o="$o."
    ary=("${(@f)${o}}")


    for line in "${ary[@]}"; do
        zcurses move $win $((t + cnt)) $l
        zcurses string $win "$line"
        ((++cnt))
    done

done

zcurses refresh $win

tmux capture-pane -J -p > "$capture"

if [[ $type == single ]]; then
    cat "$capture" | thumbs -t "$ZPWR_TEMPFILE"
else
    cat "$capture" | thumbs -m -t "$ZPWR_TEMPFILE"
fi

out="${(j. .)${(f)$(<$ZPWR_TEMPFILE)}}"

tmux set-buffer "$out"
print -rn -- "$out" | ${=ZPWR_COPY_CMD}

zcurses end

if [[ -z $out ]]; then
    print -u $fdc empty
else
    print -u $fdc full
fi
