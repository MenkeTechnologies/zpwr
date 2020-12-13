#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Oct 11 21:57:17 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

function usage(){
{
    cat<<EOF
    Usage: $0 /path/to/oldfile /path/to/newfile <pids>
    Example: $0 /dev/pts/53 /dev/null 2345
EOF
} >&2
    exit 1

}

if [[ -z "$2" ]]; then
    usage
fi

if ! commandExists gdb; then
    echo "Unable to find gdb." >&2
    usage
fi

src="$1"
dst="$2"
shift
shift
pids=$*

for pid in ${pids:=$( /sbin/fuser $src | cut -d ':' -f 2 )}; do
    echo "src=$src dst=$dst and pids=$pids"
    {
        echo "attach $pid"
        echo "call open($dst, 66, 0666)"
        for ufd in $(LANG=C ls -l /proc/$pid/fd | grep "$src$" | awk '{print $9}'); do
            echo "call dup2(\$1,$ufd)"
        done
        echo 'call close($1)'
        echo 'detach'
        echo 'quit'
        sleep 5
    } | gdb -q -x -
done
