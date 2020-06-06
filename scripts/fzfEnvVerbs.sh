#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes allowed
#}}}***********************************************************

source "$ZPWR_SCRIPTS/lib.sh" || {
    echo "cannot access lib.sh" >&2
    exit 1
}

# []\[^$.*/] = this regex matches any of ][^$.*/ characters
# 3 backslashes \\ => \ after heredoc, \$ => $ after heredoc, \\\$ => \$ after heredoc
# \$ needed bc inside double quotes when passed to perl
cat<<EOF
line={};
line=\$(echo \$line | perl -ne "do{@ary=split /\\\s+/,\\\$1;print \\\$ary[0]} if m{^\\\S+\\\s+([\\\s\\\S]+)=\\\S+}" | perl -pe "s@[]\\\[^\\\$.*/]@quotemeta(\\\$&)@ge")

cmdType=\$(grep -m1 -a " \$line\$" ${ZPWR_ENV_KEY_FILE} | awk "{print \\\$1}")
file=\$(grep -m1 -a " \$line\$" ${ZPWR_ENV_KEY_FILE} | awk "{print \\\$2}")

if [[ \$ZPWR_DEBUG == true ]]; then
    echo "line:_\${line}_, cmdType:_\${cmdType}_ file:_\${file}_" >> $ZPWR_LOGFILE
fi


case \$cmdType in
    (command)
        if test -f \$file;then
            if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
                "$ZPWR_SCRIPTS/clearList.sh" -- \$file| fold -80 | head -500
                test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
                xxd \$file | $COLORIZER_FZF_YAML
            else
                $COLORIZER_FZF_FILE 2>/dev/null
            fi
        else
            "$ZPWR_SCRIPTS/clearList.sh" -- \$file | fold -80
        fi
        return 0
        ;;
esac

{
case \$cmdType in
    (alias)
        command grep -m1 -Fa "alias \$file=" "${ZPWR_ENV_VALUE_FILE}"
        ;;
    (param)
        command grep -m1 -Fa "export \$file=" "${ZPWR_ENV_VALUE_FILE}"
        ;;
    (builtin)
        command grep -m1 -Fa "\$file" | grep -F "is a shell builtin" "${ZPWR_ENV_VALUE_FILE}"
        ;;
    (resword)
        command grep -m1 -Fa "\$file" | grep -F "is a reserved word" "${ZPWR_ENV_VALUE_FILE}"
        ;;
    (command)
        if test -f \$file;then
            if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
                "$ZPWR_SCRIPTS/clearList.sh" -- \$file| fold -80 | head -500
                test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
                xxd \$file | $COLORIZER_FZF_YAML
            else
                $COLORIZER_FZF_FILE 2>/dev/null
            fi
        else
            "$ZPWR_SCRIPTS/clearList.sh" -- \$file | fold -80
        fi
        ;;
    (func)
        file=\$(echo \$file | perl -pe "s@[]\\\[^\$.*/]@quotemeta(\\\$&)@ge")
        if [[ \$ZPWR_DEBUG == true ]]; then
            echo "line:_\${line}_, cmdType:_\${cmdType}_ file:_\${file}_" >> $ZPWR_LOGFILE
        fi
        command grep -m1 -a "^\$file is a shell function" "${ZPWR_ENV_VALUE_FILE}"
        command perl -ne "print if /^\${file} \\\(\\\) \\\{/ .. /^\\\}\\\$/" "${ZPWR_ENV_VALUE_FILE}" | fold -80
        ;;
esac
} | ponysay -W 75 | "$ZPWR_SCRIPTS/splitReg.sh" -- ---------- lolcat

EOF
