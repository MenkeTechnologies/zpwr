#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jan 1 19:50:15 EST 2018
##### Purpose: bash script to show disk usage with cyberpunk TUI
##### Notes:
#}}}***********************************************************

# ── Colors ──────────────────────────────────────────────────
R=$'\e[0m'
DIM=$'\e[2m'
BOLD=$'\e[1m'

Blue=$'\e[38;5;27m'
Green=$'\e[38;5;48m'
Purple=$'\e[38;5;135m'
LPurple=$'\e[38;5;141m'
Royal=$'\e[38;5;63m'
DPurple=$'\e[38;5;99m'
White=$'\e[1;37m'

dBlue=$'\e[2;38;5;27m'
dGreen=$'\e[2;38;5;48m'
dPurple=$'\e[2;38;5;135m'

BG_HDR=$'\e[48;5;234m'
BG_CRIT=$'\e[48;5;63;1;37m'
BG_WARN=$'\e[48;5;141;1;30m'
BG_TITLE=$'\e[48;5;135;1;37m'
BG_HELP=$'\e[48;5;236m'

# ── Box chars ───────────────────────────────────────────────
BT='╔' BQ='╗' BB='╚' BD='╝' BH='═' BV='║' BVL='╠' BVR='╣'

node=$(hostname -s 2>/dev/null || echo "SYS")

# ── State defaults ──────────────────────────────────────────
sort_mode="mount"   # mount, pct, used, size
sort_rev=0          # 0=ascending, 1=descending
show_help=0         # help overlay
help_drawn=0        # 1=help currently rendered on screen
show_local=0        # 0=all, 1=only /dev/* mounts
paused=0            # pause refresh
force_redraw=0      # force full redraw next frame
refresh_rate=1      # seconds between refreshes
refresh_rates=(1 2 5 10)
refresh_idx=0       # index into refresh_rates
bar_style=0         # 0=gradient 1=solid 2=thin 3=ascii
bar_styles=("gradient" "solid" "thin" "ascii")
color_mode=0        # 0=default 1=green 2=blue 3=purple
color_modes=("default" "green" "blue" "purple")
thresh_warn=70      # warning threshold
thresh_crit=90      # critical threshold
show_bars=1         # toggle bar visibility
show_border=1       # toggle border
show_header=1       # toggle column header row
compact=0           # compact mode (narrow mount col)
units_mode=0        # 0=human(-H) 1=1K-blocks 2=1M-blocks
units_modes=("human" "1K" "1M")
df_flags=("-H" "-k" "-m")
filter_text=""      # grep filter on mount path
show_used=1         # toggle used/size columns
full_mount=0        # show full mount path (no truncation)

# ── Preferences file ───────────────────────────────────────
PREFS_FILE="$HOME/.storageshower.conf"

_save_prefs() {
    cat > "$PREFS_FILE" <<PREFS
# storageshowerCyberpunk preferences — auto-generated
sort_mode=$sort_mode
sort_rev=$sort_rev
show_local=$show_local
refresh_idx=$refresh_idx
refresh_rate=${refresh_rates[$refresh_idx]}
bar_style=$bar_style
color_mode=$color_mode
thresh_warn=$thresh_warn
thresh_crit=$thresh_crit
show_bars=$show_bars
show_border=$show_border
show_header=$show_header
compact=$compact
units_mode=$units_mode
show_used=$show_used
full_mount=$full_mount
PREFS
}

_load_prefs() {
    [[ -f "$PREFS_FILE" ]] || return 0
    while IFS='=' read -r key val; do
        [[ "$key" =~ ^#.*$ || -z "$key" ]] && continue
        val="${val%%#*}"   # strip inline comments
        val="${val%% *}"   # strip trailing spaces
        case "$key" in
            sort_mode)    sort_mode="$val" ;;
            sort_rev)     sort_rev="$val" ;;
            show_local)   show_local="$val" ;;
            refresh_idx)  refresh_idx="$val"
                          refresh_rate=${refresh_rates[$refresh_idx]:-1} ;;
            bar_style)    bar_style="$val" ;;
            color_mode)   color_mode="$val" ;;
            thresh_warn)  thresh_warn="$val" ;;
            thresh_crit)  thresh_crit="$val" ;;
            show_bars)    show_bars="$val" ;;
            show_border)  show_border="$val" ;;
            show_header)  show_header="$val" ;;
            compact)      compact="$val" ;;
            units_mode)   units_mode="$val" ;;
            show_used)    show_used="$val" ;;
            full_mount)   full_mount="$val" ;;
        esac
    done < "$PREFS_FILE"
}

_load_prefs

# ── Background stats collector ─────────────────────────────
_STATS_FILE=$(mktemp /tmp/storageshower_stats.XXXXXX)
_STATS_PID=""

# Initialize with defaults so first frame has something
cat > "$_STATS_FILE" <<'INIT'
load_avg="..."
mem_used=0
mem_total=0
mem_pct=0
cpu_count="?"
proc_count=0
swap_used="0"
kern="?"
arch="?"
user_name="?"
shell_name="?"
tty_name="?"
os_name="?"
os_ver="?"
net_ip="?"
disk_count_total=0
disk_count_dev=0
battery=""
git_branch=""
up="?"
INIT

_start_stats_collector() {
    (
        # Static stats — compute once
        _s_kern=$(uname -r 2>/dev/null | cut -d- -f1)
        _s_arch=$(uname -m 2>/dev/null)
        _s_user=$(whoami 2>/dev/null)
        _s_shell=$(basename "$SHELL" 2>/dev/null)
        _s_tty=$(tty 2>/dev/null | sed 's|/dev/||' || echo "?")
        _s_os_name=$(uname -s 2>/dev/null)
        _s_os_ver=$(sw_vers -productVersion 2>/dev/null || uname -r 2>/dev/null)
        _s_cpu=$(sysctl -n hw.ncpu 2>/dev/null || nproc 2>/dev/null || echo "?")
        _s_memtotal_bytes=$(sysctl -n hw.memsize 2>/dev/null || echo 0)
        _s_memtotal_g=$(( _s_memtotal_bytes / 1073741824 ))
        _s_pgsz=$(sysctl -n hw.pagesize 2>/dev/null || echo 4096)

        while true; do
            # Dynamic stats
            _d_up=$(uptime 2>/dev/null | sed 's/.*up *\([^,]*\),.*/\1/' | xargs)
            _d_load=$(sysctl -n vm.loadavg 2>/dev/null | awk '{print $2,$3,$4}' || uptime 2>/dev/null | sed 's/.*load average[s]*: *//' | cut -d, -f1-3)
            _d_procs=$(ps ax 2>/dev/null | wc -l | tr -d ' ')
            _d_swap=$(sysctl -n vm.swapusage 2>/dev/null | awk '{print $6}' || free -h 2>/dev/null | awk '/Swap/{print $3}' || echo "0")
            _d_ip=$(ipconfig getifaddr en0 2>/dev/null || ip -4 addr show 2>/dev/null | awk '/inet /{print $2; exit}' || echo "?")
            _d_dkt=$(df 2>/dev/null | awk 'NR>1' | wc -l | tr -d ' ')
            _d_dkd=$(df 2>/dev/null | awk 'NR>1 && /^\/dev/' | wc -l | tr -d ' ')

            # Memory
            _d_mem_used=0 _d_mem_pct=0
            if command -v vm_stat &>/dev/null; then
                _vmst=$(vm_stat 2>/dev/null)
                _act=$(echo "$_vmst" | awk -F: '/Pages active/{gsub(/[^0-9]/,"",$2); print $2}')
                _wir=$(echo "$_vmst" | awk -F: '/Pages wired/{gsub(/[^0-9]/,"",$2); print $2}')
                _ub=$(( (_act + _wir) * _s_pgsz ))
                _d_mem_used=$(( _ub / 1073741824 ))
                (( _s_memtotal_bytes > 0 )) && _d_mem_pct=$(( _ub * 100 / _s_memtotal_bytes ))
            elif [[ -f /proc/meminfo ]]; then
                _pmt=$(awk '/MemTotal/{print $2}' /proc/meminfo)
                _pma=$(awk '/MemAvailable/{print $2}' /proc/meminfo)
                _s_memtotal_g=$(( _pmt / 1048576 ))
                _d_mem_used=$(( (_pmt - _pma) / 1048576 ))
                (( _pmt > 0 )) && _d_mem_pct=$(( (_pmt - _pma) * 100 / _pmt ))
            fi

            # Battery
            _d_bat=""
            if command -v pmset &>/dev/null; then
                _d_bat=$(pmset -g batt 2>/dev/null | awk '/-/{gsub(/;/,""); print $3}')
            elif [[ -f /sys/class/power_supply/BAT0/capacity ]]; then
                _d_bat="$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)%"
            fi

            # Git
            _d_git=""
            if command -v git &>/dev/null && git rev-parse --is-inside-work-tree &>/dev/null 2>&1; then
                _d_git=$(git branch --show-current 2>/dev/null)
            fi

            # Write atomically via temp+rename
            _tmp="${_STATS_FILE}.tmp"
            cat > "$_tmp" <<STATS
load_avg="$_d_load"
mem_used=$_d_mem_used
mem_total=$_s_memtotal_g
mem_pct=$_d_mem_pct
cpu_count="$_s_cpu"
proc_count=$_d_procs
swap_used="$_d_swap"
kern="$_s_kern"
arch="$_s_arch"
user_name="$_s_user"
shell_name="$_s_shell"
tty_name="$_s_tty"
os_name="$_s_os_name"
os_ver="$_s_os_ver"
net_ip="$_d_ip"
disk_count_total=$_d_dkt
disk_count_dev=$_d_dkd
battery="$_d_bat"
git_branch="$_d_git"
up="$_d_up"
STATS
            mv -f "$_tmp" "$_STATS_FILE" 2>/dev/null
            sleep 3
        done
    ) &
    _STATS_PID=$!
}

_stop_stats_collector() {
    [[ -n "$_STATS_PID" ]] && kill "$_STATS_PID" 2>/dev/null && wait "$_STATS_PID" 2>/dev/null
    rm -f "$_STATS_FILE" "${_STATS_FILE}.tmp" 2>/dev/null
}

_start_stats_collector

# ── Terminal size — updated on SIGWINCH ─────────────────────
TERM_W=120 TERM_H=40
_update_size() {
    local s
    s=$(stty size < /dev/tty 2>/dev/null) && {
        TERM_H=${s%% *}; TERM_W=${s##* }
    } || {
        TERM_W=$(tput cols 2>/dev/null || echo "${COLUMNS:-120}")
        TERM_H=$(tput lines 2>/dev/null || echo "${LINES:-40}")
    }
    (( TERM_W < 40 )) && TERM_W=40
    (( TERM_H < 6 )) && TERM_H=6
}
trap _update_size WINCH
_update_size

# ── Helpers ─────────────────────────────────────────────────
_rep() { printf '%*s' "$2" '' | tr ' ' "$1"; }

_put() {
    local row="$1" content="$2" w="$3"
    local plain; plain=$(printf '%s' "$content" | sed $'s/\e\\[[0-9;]*m//g')
    local pad=$(( w - ${#plain} ))
    local out="$content"
    (( pad > 0 )) && out+="$(printf '%*s' "$pad" '')"
    printf "\e[%d;1H%s%s" "$row" "$out" "$R"
}

_banner() {
    local txt="$1" w="$2" bg="$3"
    local plain; plain=$(printf '%s' "$txt" | sed $'s/\e\\[[0-9;]*m//g')
    local pad=$(( w - ${#plain} ))
    (( pad < 0 )) && pad=0
    printf '%s' "${bg}${txt}$(printf '%*s' "$pad" '')${R}"
}

_row() {
    local r="$1" content="$2"
    local plain; plain=$(printf '%s' "$content" | sed $'s/\e\\[[0-9;]*m//g')
    local pad=$(( inner - ${#plain} ))
    (( pad < 0 )) && pad=0
    if (( show_border )); then
        printf "\e[%d;1H%s%s%s%s" "$r" "${Blue}${BV}${R}" "$content" "$(printf '%*s' "$pad" '')" "${Blue}${BV}${R}"
    else
        printf "\e[%d;1H %s%s " "$r" "$content" "$(printf '%*s' "$pad" '')"
    fi
}

# Draw a horizontal separator line (or blank if no border)
_sep() {
    local r="$1" left="$2" right="$3"
    if (( show_border )); then
        _put "$r" "${Blue}${left}$(_rep "$BH" "$inner")${right}" "$W"
    else
        _put "$r" "$(printf '%*s' "$W" '')" "$W"
    fi
}

# Apply color mode
# Handle a keypress — returns 0 if state changed, 1 if quit, 2 if no-op
_handle_key() {
    local k="$1"
    case "$k" in
        q|Q) if (( show_help )); then
                 show_help=0; help_drawn=0; force_redraw=1
             else
                 return 1
             fi ;;
        h|H) (( show_help = !show_help ))
             if (( show_help )); then
                 help_drawn=0
             else
                 help_drawn=0; force_redraw=1
             fi ;;
        p|P) (( paused = !paused )) ;;
        l|L) (( show_local = !show_local )) ;;
        r|R) (( sort_rev = !sort_rev )) ;;
        n|N) # cycle: mount▲ → mount▼ → (back to top)
             if [[ "$sort_mode" == "mount" ]]; then
                 (( sort_rev = !sort_rev ))
             else
                 sort_mode="mount"; sort_rev=0
             fi ;;
        u|U) # cycle: pct▲ → pct▼
             if [[ "$sort_mode" == "pct" ]]; then
                 (( sort_rev = !sort_rev ))
             else
                 sort_mode="pct"; sort_rev=0
             fi ;;
        s|S) # cycle: size▲ → size▼
             if [[ "$sort_mode" == "size" ]]; then
                 (( sort_rev = !sort_rev ))
             else
                 sort_mode="size"; sort_rev=0
             fi ;;
        b) (( bar_style = (bar_style + 1) % ${#bar_styles[@]} )) ;;
        c) (( color_mode = (color_mode + 1) % ${#color_modes[@]} )); _apply_colors ;;
        v|V) (( show_bars = !show_bars )) ;;
        t) # cycle warn threshold: 50 60 70 80
           local -a tw=(50 60 70 80)
           for i in "${!tw[@]}"; do
               if (( tw[i] == thresh_warn )); then
                   (( thresh_warn = tw[(i + 1) % ${#tw[@]}] ))
                   break
               fi
           done ;;
        T) # cycle crit threshold: 80 85 90 95
           local -a tc=(80 85 90 95)
           for i in "${!tc[@]}"; do
               if (( tc[i] == thresh_crit )); then
                   (( thresh_crit = tc[(i + 1) % ${#tc[@]}] ))
                   break
               fi
           done ;;
        f|F) # cycle refresh rate
           (( refresh_idx = (refresh_idx + 1) % ${#refresh_rates[@]} ))
           refresh_rate=${refresh_rates[$refresh_idx]} ;;
        d|D) (( show_used = !show_used )) ;;       # toggle used/size detail columns
        g|G) (( show_header = !show_header )) ;;    # toggle column header row
        x|X) (( show_border = !show_border )) ;;    # toggle border
        m|M) (( compact = !compact )) ;;             # toggle compact mount col
        w|W) (( full_mount = !full_mount )) ;;    # toggle full mount path
        i|I) (( units_mode = (units_mode + 1) % ${#units_modes[@]} )) ;;  # cycle units
        '/') # enter filter mode — read a search string
            printf "\e[%d;1H${BG_HDR}${Blue} filter: ${R}${BG_HDR}$(printf '%*s' $(( inner - 9 )) '')${R}" "$TH"
            stty echo 2>/dev/null
            printf "\e[%d;10H" "$TH"
            filter_text=""
            read -r -t10 filter_text 2>/dev/null || true
            stty -echo 2>/dev/null
            force_redraw=1 ;;
        0)  filter_text="" ;;  # clear filter
        *) return 2 ;;
    esac
    _save_prefs
    return 0
}

_apply_colors() {
    case $color_mode in
        0) # default
            Green=$'\e[38;5;48m'; Blue=$'\e[38;5;27m'
            Purple=$'\e[38;5;135m'; DPurple=$'\e[38;5;99m' ;;
        1) # green
            Green=$'\e[38;5;46m'; Blue=$'\e[38;5;34m'
            Purple=$'\e[38;5;28m'; DPurple=$'\e[38;5;22m' ;;
        2) # blue
            Green=$'\e[38;5;39m'; Blue=$'\e[38;5;27m'
            Purple=$'\e[38;5;75m'; DPurple=$'\e[38;5;63m' ;;
        3) # purple
            Green=$'\e[38;5;141m'; Blue=$'\e[38;5;135m'
            Purple=$'\e[38;5;99m'; DPurple=$'\e[38;5;57m' ;;
    esac
}

# Sort indicator arrow
_sort_arrow() {
    local col="$1"
    if [[ "$sort_mode" == "$col" ]]; then
        (( sort_rev )) && printf '%s' "▼" || printf '%s' "▲"
    fi
}

# ── Setup terminal ──────────────────────────────────────────
_saved_stty=$(stty -g 2>/dev/null)
_cleanup() {
    _stop_stats_collector
    _save_prefs
    # Disable mouse tracking, leave alt screen, show cursor
    printf "\e[?1049l\e[?25h\e[0m"
    [[ -n "$_saved_stty" ]] && stty "$_saved_stty" 2>/dev/null
}
trap '_cleanup' EXIT
trap '_cleanup; exit 0' INT TERM HUP
trap '_update_size' WINCH
printf "\e[?1049h\e[?25l"
stty -echo 2>/dev/null

# ── Collect disk data ───────────────────────────────────────
_get_disks() {
    local filter_cmd='NR>1'
    (( show_local )) && filter_cmd='NR>1 && /^\/dev/'
    local dflag="${df_flags[$units_mode]}"
    df $dflag 2>/dev/null | awk "$filter_cmd" | while IFS= read -r line; do
        local pct used size mount
        pct=$(echo "$line" | awk '{print $5}')
        used=$(echo "$line" | awk '{print $3}')
        size=$(echo "$line" | awk '{print $2}')
        mount=$(echo "$line" | awk '{for(i=9;i<=NF;i++) printf "%s ",$i; print ""}' | sed 's/ *$//')
        local pct_num="${pct%%%}"
        [[ "$pct_num" =~ ^[0-9]+$ ]] || continue
        # apply text filter
        if [[ -n "$filter_text" ]] && [[ "$mount" != *"$filter_text"* ]]; then
            continue
        fi
        printf '%s\t%s\t%s\t%s\t%s\n' "$pct_num" "$pct" "$used" "$size" "$mount"
    done
}

_sort_disks() {
    local data="$1"
    local sort_col sort_flags="-n"
    case "$sort_mode" in
        mount) sort_col=5; sort_flags="" ;;
        pct)   sort_col=1 ;;
        used)  sort_col=1 ;;  # sort by pct_num for used (best approx with -H units)
        size)  sort_col=1 ;;
        *)     sort_col=5; sort_flags="" ;;
    esac
    local rev_flag=""
    (( sort_rev )) && rev_flag="-r"
    echo "$data" | sort -t$'\t' $sort_flags $rev_flag -k"$sort_col","$sort_col"
}

# ── Help overlay ────────────────────────────────────────────
_draw_help() {
    local hw=74
    (( hw > inner - 4 )) && hw=$(( inner - 4 ))
    (( hw < 40 )) && hw=40
    local col_l=2 col_r=$(( hw / 2 ))
    local sx=$(( (inner - hw) / 2 + 1 ))
    local sy=$(( (TH - 24) / 2 ))
    (( sy < 2 )) && sy=2

    local r=$sy

    printf "\e[%d;%dH${BG_HELP}${Blue}${BT}$(_rep "$BH" $(( hw - 2 )))${BQ}${R}" "$r" "$sx"; (( r++ ))

    _help_row() {
        local txt="$1"
        local plain; plain=$(printf '%s' "$txt" | sed $'s/\e\\[[0-9;]*m//g')
        local pad=$(( hw - 2 - ${#plain} ))
        (( pad < 0 )) && pad=0
        printf "\e[%d;%dH${BG_HELP}${Blue}${BV}${R}${BG_HELP}%s%s${Blue}${BV}${R}" "$r" "$sx" "$txt" "$(printf '%*s' "$pad" '')"
        (( r++ ))
    }

    # Two-column helper: left text + right text on same row
    _help_2col() {
        local ltxt="$1" rtxt="$2"
        local lplain; lplain=$(printf '%s' "$ltxt" | sed $'s/\e\\[[0-9;]*m//g')
        local rplain; rplain=$(printf '%s' "$rtxt" | sed $'s/\e\\[[0-9;]*m//g')
        local lpad=$(( col_r - col_l - ${#lplain} ))
        (( lpad < 0 )) && lpad=0
        local total="${ltxt}$(printf '%*s' "$lpad" '')${rtxt}"
        local tplain; tplain=$(printf '%s' "$total" | sed $'s/\e\\[[0-9;]*m//g')
        local rpad=$(( hw - 2 - ${#tplain} ))
        (( rpad < 0 )) && rpad=0
        printf "\e[%d;%dH${BG_HELP}${Blue}${BV}${R}${BG_HELP}%s%s${Blue}${BV}${R}" "$r" "$sx" "$total" "$(printf '%*s' "$rpad" '')"
        (( r++ ))
    }

    _help_row "  ${White}${BOLD}⌨  DISK MATRIX — KEYBOARD SHORTCUTS${R}${BG_HELP}"
    _help_row ""
    _help_2col \
        "  ${Green}q${R}${BG_HELP}  Quit / close help" \
        "${Green}h${R}${BG_HELP}  Toggle this help"
    _help_2col \
        "  ${Green}p${R}${BG_HELP}  Pause / resume" \
        "${Green}l${R}${BG_HELP}  Local disks only"
    _help_2col \
        "  ${Green}r${R}${BG_HELP}  Reverse sort" \
        "${Green}/${R}${BG_HELP}  Filter mounts"
    _help_row "  ${Green}0${R}${BG_HELP}  Clear filter"
    _help_row ""
    _help_row "  ${Purple}${BOLD}SORT${R}${BG_HELP} ${dPurple}(press again to reverse)"
    _help_2col \
        "  ${Green}n${R}${BG_HELP}  By mount name" \
        "${Green}u${R}${BG_HELP}  By usage percent"
    _help_row "  ${Green}s${R}${BG_HELP}  By size"
    _help_row ""
    _help_row "  ${Purple}${BOLD}DISPLAY${R}${BG_HELP} ${dPurple}(cycle through options)"
    _help_2col \
        "  ${Green}b${R}${BG_HELP}  Bar: ${Purple}${bar_styles[$bar_style]}${R}${BG_HELP}" \
        "${Green}c${R}${BG_HELP}  Color: ${Purple}${color_modes[$color_mode]}${R}${BG_HELP}"
    _help_2col \
        "  ${Green}v${R}${BG_HELP}  Toggle bars" \
        "${Green}d${R}${BG_HELP}  Toggle used/size"
    _help_2col \
        "  ${Green}g${R}${BG_HELP}  Toggle col headers" \
        "${Green}x${R}${BG_HELP}  Toggle border"
    _help_2col \
        "  ${Green}m${R}${BG_HELP}  Compact mounts" \
        "${Green}w${R}${BG_HELP}  Full mount paths"
    _help_2col \
        "  ${Green}i${R}${BG_HELP}  Units: ${Purple}${units_modes[$units_mode]}${R}${BG_HELP}" \
        "${Green}f${R}${BG_HELP}  Refresh: ${Purple}${refresh_rate}s${R}${BG_HELP}"
    _help_2col \
        "  ${Green}t${R}${BG_HELP}  Warn: ${Purple}${thresh_warn}%${R}${BG_HELP}" \
        "${Green}T${R}${BG_HELP}  Crit: ${Purple}${thresh_crit}%${R}${BG_HELP}"
    _help_row ""
    _help_row ""
    _help_row "  ${dPurple}Press ${Green}h${R}${BG_HELP}${dPurple} or ${Green}q${R}${BG_HELP}${dPurple} to close${R}${BG_HELP}"
    _help_row ""

    printf "\e[%d;%dH${BG_HELP}${Blue}${BB}$(_rep "$BH" $(( hw - 2 )))${BD}${R}" "$r" "$sx"
}

# ── Main loop ───────────────────────────────────────────────
while true; do
    _update_size
    _apply_colors

    W=$TERM_W
    TH=$TERM_H
    inner=$(( W - 2 ))

    ts=$(date '+%H:%M:%S')
    dt=$(date '+%Y.%m.%d')

    # Read latest stats from background collector
    if [[ -f "$_STATS_FILE" ]]; then
        source "$_STATS_FILE" 2>/dev/null
    fi

    # Build adaptive stat segments for banners (added if space permits)
    _stat_seg() { echo -n " ${dPurple}│ ${dPurple}$1:${Blue}$2"; }

    hdr_stats=""
    hdr_stats+="$(_stat_seg load "$load_avg")"
    hdr_stats+="$(_stat_seg mem "${mem_used}/${mem_total}G(${mem_pct}%)")"
    hdr_stats+="$(_stat_seg cpu "$cpu_count")"

    if (( inner > 100 )); then
        hdr_stats+="$(_stat_seg procs "$proc_count")"
    fi
    if (( inner > 120 )); then
        hdr_stats+="$(_stat_seg swap "$swap_used")"
    fi
    if (( inner > 140 )); then
        hdr_stats+="$(_stat_seg kern "$kern")"
    fi
    if (( inner > 160 )); then
        hdr_stats+="$(_stat_seg arch "$arch")"
    fi

    ftr_extra=""
    ftr_extra+="$(_stat_seg up "$up")"
    if (( inner > 80 )); then
        ftr_extra+="$(_stat_seg user "$user_name")"
    fi
    if (( inner > 95 )); then
        ftr_extra+="$(_stat_seg ip "$net_ip")"
    fi
    if (( inner > 110 )); then
        ftr_extra+="$(_stat_seg os "${os_name} ${os_ver}")"
    fi
    if (( inner > 130 )); then
        ftr_extra+="$(_stat_seg shell "$shell_name")"
    fi
    if (( inner > 140 )); then
        ftr_extra+="$(_stat_seg tty "$tty_name")"
    fi
    if (( inner > 150 )); then
        ftr_extra+="$(_stat_seg disks "${disk_count_dev}/${disk_count_total}")"
    fi
    if (( inner > 160 )) && [[ -n "$battery" ]]; then
        ftr_extra+="$(_stat_seg bat "$battery")"
    fi
    if (( inner > 175 )) && [[ -n "$git_branch" ]]; then
        ftr_extra+="$(_stat_seg git "$git_branch")"
    fi
    if (( inner > 190 )); then
        ftr_extra+="$(_stat_seg term "${W}x${TH}")"
    fi

    # Layout
    pct_w=5 used_w=7 size_w=7
    if (( show_used )); then
        right_fixed=$(( pct_w + used_w + 1 + size_w + 2 ))
    else
        right_fixed=$(( pct_w + 2 ))
    fi
    if (( compact )); then
        mount_w=16
    else
        mount_w=$(( inner / 3 ))
        (( mount_w > 50 )) && mount_w=50
    fi
    (( mount_w < 12 )) && mount_w=12
    bw=$(( inner - mount_w - right_fixed - 5 ))
    (( bw < 8 )) && bw=8

    cur=1

    # When help is shown and already drawn, skip full redraw — just update clock
    if (( show_help && help_drawn && !force_redraw )); then
        ts=$(date '+%H:%M:%S')
        status=""
        (( paused )) && status+=" ${Royal}⏸ PAUSED${R}${BG_HDR}"
        (( show_local )) && status+=" ${Green}⊙ LOCAL${R}${BG_HDR}"
        [[ -n "$filter_text" ]] && status+=" ${Blue}⊘${dPurple}${filter_text}${R}${BG_HDR}"
        title=" ${Purple}▶▶▶ ${BG_TITLE} DISK MATRIX ${R}${BG_HDR} ${Purple}◀◀◀ ${dBlue}node:${Blue}${node^^} ${dBlue}date:${Blue}${dt} ${dBlue}clock:${Blue}${ts}${status}${hdr_stats} ${dPurple}│ ${Green}h${dPurple}=help"
        _row 2 "$(_banner "$title" "$inner" "$BG_HDR")"

        key=""
        read -rsn1 -t"$refresh_rate" key 2>/dev/null || true
        if [[ -n "$key" ]]; then
            _handle_key "$key"
            (( $? == 1 )) && exit 0
        fi
        continue
    fi
    force_redraw=0

    # ── Top border ──
    _sep $cur "$BT" "$BQ"
    (( cur++ ))

    # ── Title banner ──
    status=""
    (( paused )) && status+=" ${Royal}⏸ PAUSED${R}${BG_HDR}"
    (( show_local )) && status+=" ${Green}⊙ LOCAL${R}${BG_HDR}"
    [[ -n "$filter_text" ]] && status+=" ${Blue}⊘${dPurple}${filter_text}${R}${BG_HDR}"
    title=" ${Purple}▶▶▶ ${BG_TITLE} DISK MATRIX ${R}${BG_HDR} ${Purple}◀◀◀ ${dBlue}node:${Blue}${node^^} ${dBlue}date:${Blue}${dt} ${dBlue}clock:${Blue}${ts}${status}${hdr_stats} ${dPurple}│ ${Green}h${dPurple}=help"
    _row $cur "$(_banner "$title" "$inner" "$BG_HDR")"
    (( cur++ ))

    # ── Header separator ──
    _sep $cur "$BVL" "$BVR"
    (( cur++ ))

    # ── Column headers ──
    if (( show_header )); then
        col_mount=$(printf "%-${mount_w}s" "MOUNT$(_sort_arrow mount)")
        col_bar=$(printf "%-${bw}s" "USAGE")
        col_pct=$(printf "%${pct_w}s" "PCT$(_sort_arrow pct)")
        if (( show_used )); then
            col_used=$(printf "%${used_w}s" "USED$(_sort_arrow used)")
            col_size=$(printf "%-${size_w}s" "SIZE$(_sort_arrow size)")
            _row $cur "   ${dPurple}${col_mount} │${col_bar}│${col_pct} ${col_used}${dPurple}/${R}${dPurple}${col_size}"
        else
            _row $cur "   ${dPurple}${col_mount} │${col_bar}│${col_pct}"
        fi
        (( cur++ ))

        # ── Column separator ──
        _sep $cur "$BVL" "$BVR"
        (( cur++ ))
    fi

    # ── Disk rows ──
    disk_data=$(_get_disks)
    sorted_data=$(_sort_disks "$disk_data")

    row_count=0
    while IFS=$'\t' read -r pct_num pct used size mount; do
        [[ -z "$pct_num" ]] && continue

        if (( pct_num >= thresh_crit )); then
            cl="$Royal"; hi="$BG_CRIT"; ico="${Royal}✖${R}"
        elif (( pct_num >= thresh_warn )); then
            cl="$LPurple"; hi="$BG_WARN"; ico="${LPurple}⚠${R}"
        else
            cl="$Green"; hi=""; ico="${Green}◈${R}"
        fi

        filled=$(( bw * pct_num / 100 ))
        (( filled == 0 && pct_num > 0 )) && filled=1
        empty=$(( bw - filled ))

        bar=""
        if (( show_bars )); then
            for (( i=0; i<filled; i++ )); do
                frac=$(( i * 100 / bw ))
                case $bar_style in
                    0) # gradient
                        if (( pct_num >= thresh_crit )); then bar+="${cl}█"
                        elif (( frac < 25 )); then  bar+="${Green}█"
                        elif (( frac < 50 )); then  bar+="${Blue}▓"
                        elif (( frac < 75 )); then  bar+="${Purple}▒"
                        else                        bar+="${DPurple}░"
                        fi ;;
                    1) bar+="${cl}█" ;;  # solid
                    2) bar+="${cl}▬" ;;  # thin
                    3) bar+="${cl}#" ;;  # ascii
                esac
            done
            (( filled > 0 && empty > 0 )) && { bar+="${cl}▸"; (( empty-- )); }
            for (( i=0; i<empty; i++ )); do
                case $bar_style in
                    0|1) bar+="${DIM} " ;;
                    2)   bar+="${DIM}·" ;;
                    3)   bar+="${DIM}-" ;;
                esac
            done
        else
            for (( i=0; i<bw; i++ )); do bar+="${DIM} "; done
        fi
        bar+="${R}"

        if (( !full_mount && ${#mount} > mount_w )); then
            mount="…${mount: -$((mount_w - 1))}"
        fi

        pct_fmt=$(printf '%*s' "$pct_w" "$pct")
        if [[ -n "$hi" ]]; then pct_out="${hi}${pct_fmt}${R}"
        else                     pct_out="${cl}${pct_fmt}${R}"
        fi

        used_fmt=$(printf '%*s' "$used_w" "$used")
        size_fmt=$(printf '%*s' "$size_w" "$size")

        mpad=$(( mount_w - ${#mount} ))
        mp=""; (( mpad > 0 )) && mp=$(printf '%*s' "$mpad" "")

        if (( show_used )); then
            row=" ${ico} ${Blue}${mount}${mp}${R} ${dPurple}│${R}${bar}${dPurple}│${R}${pct_out} ${Blue}${used_fmt}${dPurple}/${R}${Blue}${size_fmt}"
        else
            row=" ${ico} ${Blue}${mount}${mp}${R} ${dPurple}│${R}${bar}${dPurple}│${R}${pct_out}"
        fi
        _row $cur "$row"
        (( cur++ ))
        (( row_count++ ))
    done <<< "$sorted_data"

    # ── Empty bordered rows between last drive and footer ──
    for (( r=cur; r <= TH - 3; r++ )); do
        _row "$r" ""
    done

    # ── Footer separator ──
    _sep $(( TH - 2 )) "$BVL" "$BVR"

    # ── Footer banner ──
    footer=" ${dPurple}⟦${dBlue}zpwr${dPurple}⊷${Purple}cyberdeck${dPurple}⟧ ${Purple}◀◀◀ ${dGreen}▣${Blue}${row_count}${dPurple}vol │ ${dPurple}sort:${Purple}${sort_mode}$( (( sort_rev )) && echo '▼' || echo '▲')${R}${BG_HDR} ${dPurple}│ ${dPurple}${refresh_rate}s │ ${bar_styles[$bar_style]} │ ${color_modes[$color_mode]} │ ${units_modes[$units_mode]}${ftr_extra}"
    _row $(( TH - 1 )) "$(_banner "$footer" "$inner" "$BG_HDR")"

    # ── Bottom border ──
    _sep $TH "$BB" "$BD"

    # ── Help overlay — only draw once when toggled on ──
    if (( show_help && !help_drawn )); then
        _draw_help
        help_drawn=1
    fi

    # ── Input handling ──
    key=""
    read -rsn1 -t"$refresh_rate" key 2>/dev/null || true
    if [[ -n "$key" ]]; then
        _handle_key "$key"
        (( $? == 1 )) && exit 0
    fi

    # If paused, show indicator and tight loop on input only
    if (( paused )); then
        # Immediately redraw title with PAUSED indicator
        status=" ${Royal}⏸ PAUSED${R}${BG_HDR}"
        (( show_local )) && status+=" ${Green}⊙ LOCAL${R}${BG_HDR}"
        [[ -n "$filter_text" ]] && status+=" ${Blue}⊘${dPurple}${filter_text}${R}${BG_HDR}"
        title=" ${Purple}▶▶▶ ${BG_TITLE} DISK MATRIX ${R}${BG_HDR} ${Purple}◀◀◀ ${dBlue}node:${Blue}${node^^} ${dBlue}date:${Blue}${dt} ${dBlue}clock:${Blue}${ts}${status} ${dPurple}│ ${dPurple}sort:${Purple}${sort_mode}$( (( sort_rev )) && echo '▼' || echo '▲')${R}${BG_HDR} ${dPurple}│ ${Green}h${dPurple}=help"
        _row 2 "$(_banner "$title" "$inner" "$BG_HDR")"

        # Dim the border to signal frozen state
        if (( show_border )); then
            _put 1 "${DIM}${Blue}${BT}$(_rep "$BH" "$inner")${BQ}${R}" "$W"
            _put $TH "${DIM}${Blue}${BB}$(_rep "$BH" "$inner")${BD}${R}" "$W"
        fi

        while (( paused )); do
            key=""
            read -rsn1 -t1 key 2>/dev/null || true
            if [[ -n "$key" ]]; then
                _handle_key "$key"
                (( $? == 1 )) && exit 0
                break
            fi
            # Update clock in title while paused
            ts=$(date '+%H:%M:%S')
            title=" ${Purple}▶▶▶ ${BG_TITLE} DISK MATRIX ${R}${BG_HDR} ${Purple}◀◀◀ ${dBlue}node:${Blue}${node^^} ${dBlue}date:${Blue}${dt} ${dBlue}clock:${Blue}${ts}${status} ${dPurple}│ ${dPurple}sort:${Purple}${sort_mode}$( (( sort_rev )) && echo '▼' || echo '▲')${R}${BG_HDR} ${dPurple}│ ${Green}h${dPurple}=help"
            _row 2 "$(_banner "$title" "$inner" "$BG_HDR")"
        done
    fi
done
