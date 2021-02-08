#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Feb  7 21:47:47 EST 2021
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

declare -a panes
declare -A paneInfo
local out cnt id winw winh pw ph pl pt h w t l o row col win

exec 2>> "$ZPWR_LOGFILE"

if ! zmodload zsh/curses; then
    echo "Could NOT load zsh/curses" >&2
    #exit 1
    
fi

win=stdscr

#zcurses addwin $win $LINES $COLUMNS 0 0 

while read id winw winh pw ph pl pr pt; do
    id=${id#%}
    panes+=(${id})
    paneInfo[${id}.w]="$pw"
    paneInfo[${id}.h]="$ph"
    paneInfo[${id}.t]="$pt"
    paneInfo[${id}.l]="$pl"
    paneInfo[${id}.r]="$pr"
    paneInfo[${id}.o]="$(tmux capture-pane -p -t "%$id")"
done < \
<(tmux lsp -F '#{pane_id} #{window_width} #{window_height} #{pane_width} #{pane_height} #{pane_left} #{pane_right} #{pane_top} ')

tmux resize-pane -Z

zcurses init

for id in ${panes[@]};do
    cnt=0
    h=$paneInfo[$id.h]
    w=$paneInfo[$id.w]
    t=$paneInfo[$id.t]
    l=$paneInfo[$id.l]
    r=$paneInfo[$id.r]
    o=$paneInfo[$id.o]

    
    #say zcurses move $win $t $l
    #say zcurses string $win "$o"
    #$id
    case $id in
        *)
            for num in ${(f)o}; do
                zcurses move $win $((t + cnt)) $l
                zcurses string $win $num
                ((++cnt))
            done

            ;;
    esac
    #zcurses string $win "$id"

    #for row in {0..$w}; do
        #for col in {0..$((h-1))}; do
            #out[$cnt]=$o[$((row + col))]
            #((++cnt))
        #done
        #((cnt+=$w))

    #done
done

zcurses refresh $win

#echo zcurses delwin $win
tmux capture-pane -J -p | thumbs -m

zcurses end

tmux resize-pane -Z
