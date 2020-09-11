#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes allowed
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$zpwrBaseDir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="$(dirname "$zpwrBaseDir")"
        if [[ "$zpwrBaseDir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
        echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
        exit 1
    fi

    unset zpwrBaseDir
fi

# []\[^$.*/] = this regex matches any of ][^$.*/ characters
# 3 backslashes \\ => \ after heredoc, \$ => $ after heredoc, \\\$ => \$ after heredoc
# \$ needed bc inside double quotes when passed to perl
cat<<EOF
line={};
line=\$(echo \$line| perl -pe "s@[]\\\[^\\\$.*/]@quotemeta(\\\$&)@ge")
file=\$line

function stdinExists(){
    local in arg
    in="\$(cat)"
    arg="\$1"
    if [[ -n "\$in" ]]; then
        echo "\$in"
    else
        echo "No input found for \$arg!"
    fi
}

export -p |
command perl -ne "BEGIN{@a=();};push@a,\\\$_ if m{^export \$file=} ... (m{^export .*=} or eof ); END { \\\$c=0;do {++\\\$c;print if (\\\$c==1 or ( ! m{^export .*=} ) ) } for @a; }" |
stdinExists "\$file"

EOF
