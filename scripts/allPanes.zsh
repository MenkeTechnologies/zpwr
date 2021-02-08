#!/usr/bin/env bash
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
local out cnt id winw winh pw ph pl pt h w t l o row col
out=""

while read id winw winh pw ph pl pt; do
    id=${id#%}
    panes+=(${id})
    paneInfo[${id}.w]="$pw"
    paneInfo[${id}.h]="$ph"
    paneInfo[${id}.t]="$pt"
    paneInfo[${id}.l]="$pl"
    paneInfo[${id}.o]="$(tmux capture-pane -J -p -t "%$id")"
done < \
<(tmux lsp -F '#{pane_id} #{window_width} #{window_height}  #{pane_width} #{pane_height} #{pane_left} #{pane_top} ')

for id in ${panes[@]};do
    cnt=1
    h=$paneInfo[$id.h]
    w=$paneInfo[$id.w]
    t=$paneInfo[$id.t]
    l=$paneInfo[$id.l]
    o=$paneInfo[$id.o]

    print "$o"
    #for row in {0..$w}; do
        #for col in {0..$((h-1))}; do
            #out[$cnt]=$o[$((row + col))]
            #((++cnt))
        #done
        #((cnt+=$w))

    #done
done

print "$out"
