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
cmdType=\$(grep -m1 -a " \$line\$" ${ZPWR_ENV}Key.txt | awk "{print \\\$1}")
file=\$(grep -m1 -a " \$line\$" ${ZPWR_ENV}Key.txt | awk "{print \\\$2}")

if [[ \$ZPWR_DEBUG == true ]]; then
    echo "line:_\${line}_, cmdType:_\${cmdType}_ file:_\${file}_" >> $ZPWR_LOGFILE
fi


case \$cmdType in
    (command)
        if test -f \$file;then
            if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
                $ZPWR_FZF_CLEARLIST
                test -x \$file && objdump -d \$file | $FZF_COLORIZER_YAML
                xxd \$file | $FZF_COLORIZER_YAML
            else
                $FZF_COLORIZER_FILE 2>/dev/null
            fi
        else
            $ZPWR_FZF_CLEARLIST
        fi
        return 0
        ;;
esac

{
case \$cmdType in
    (alias)
        command grep -m1 -Fa "alias \$file=" "${ZPWR_ENV}Value.txt"
        ;;
    (param)
        command perl -ne "BEGIN{@a=();};push@a,\\\$_ if m{^export \$file=} ... (m{^export .*=} or /^======\$/); END { \\\$c=0;do {++\\\$c;print if (\\\$c==1 or ( ! m{export .*=} and ! /^======\$/ ) ) } for @a; }" "${ZPWR_ENV}Value.txt"
        ;;
    (builtin)
        command grep -m1 -Fa "\$file" | grep -F "is a shell builtin" "${ZPWR_ENV}Value.txt"
        ;;
    (resword)
        command grep -m1 -Fa "\$file" | grep -F "is a reserved word" "${ZPWR_ENV}Value.txt"
        ;;
    (command)
        if test -f \$file;then
            if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
                $ZPWR_FZF_CLEARLIST
                test -x \$file && objdump -d \$file | $FZF_COLORIZER_YAML
                xxd \$file | $FZF_COLORIZER_YAML
            else
                $FZF_COLORIZER_FILE 2>/dev/null
            fi
        else
            $ZPWR_FZF_CLEARLIST
        fi
        ;;
    (func)
        file=\$(echo \$file| perl -pe "s@[]\\\[^\$.*/]@quotemeta(\\\$&)@ge")
        if [[ \$ZPWR_DEBUG == true ]]; then
            echo "line:_\${line}_, cmdType:_\${cmdType}_ file:_\${file}_" >> $ZPWR_LOGFILE
        fi
        command grep -m1 -a "^\$file is a shell function" "${ZPWR_ENV}Value.txt"
        command perl -ne "print if /^\${file} \\\(\\\) \\\{/ .. /^\\\}\\\$/" "${ZPWR_ENV}Value.txt" | fold -80
        ;;
esac
}

EOF
