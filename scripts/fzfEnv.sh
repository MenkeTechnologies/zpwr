#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes allowed
#}}}***********************************************************

if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
    test -z "$ZPWR_ENV_FILE" && export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
    source "$ZPWR_ENV_FILE" || {
        echo "cannot access $ZPWR_ENV_FILE" >&2
        exit 1
    }
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
                test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
                xxd \$file | $COLORIZER_FZF_YAML
            else
                $COLORIZER_FZF_FILE 2>/dev/null
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
        command grep -m1 -Fa "export \$file=" "${ZPWR_ENV}Value.txt"
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
                test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
                xxd \$file | $COLORIZER_FZF_YAML
            else
                $COLORIZER_FZF_FILE 2>/dev/null
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
} | cowsay | ponysay | "$ZPWR_SCRIPTS/splitReg.sh" -- ---------- lolcat

EOF
