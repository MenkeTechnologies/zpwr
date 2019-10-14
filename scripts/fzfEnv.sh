#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: 
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes allowed
#}}}***********************************************************

isZsh(){
    if command ps -p $$ | command grep -q zsh; then
        return 0
    else
        return 1
    fi
}


if isZsh; then
    exists(){
        #alternative is command -v
        type "$1" &>/dev/null || return 1 && \
        type "$1" 2>/dev/null | \
        command grep -qv "suffix alias" 2>/dev/null
    }

else
    exists(){
        #alternative is command -v
        type "$1" >/dev/null 2>&1
    }
fi

cat<<EOF
line={};
line=\$(echo \$line| sed "s@[]\\\[^\$.*/]@\\\\\\&@g")
cmdType=\$(grep -m1 -a " \$line\$" ${ALL_ENV}Key.txt | awk "{print \\\$1}")
file=\$(grep -m1 -a " \$line\$" ${ALL_ENV}Key.txt | awk "{print \\\$2}")

echo "line:_\${line}_, cmdType:_\${cmdType}_ file:_\${file}_" >> $LOGFILE

case \$cmdType in
    command)
        if test -f \$file;then
            if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
                "$SCRIPTS/clearList.sh" -- \$file| fold -80 | head -500
                test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
                xxd \$file | $COLORIZER_FZF_YAML
            else
                $COLORIZER_FZF_FILE 2>/dev/null
            fi
        else
            "$SCRIPTS/clearList.sh" -- \$file | fold -80
        fi
        return 0
        ;;
esac

{
case \$cmdType in
    alias)
        command grep -m1 -Fa "alias \$file" "${ALL_ENV}Value.txt"
        ;;
    param)
        command grep -m1 -Fa "export \$file" "${ALL_ENV}Value.txt"
        ;;
    builtin)
        command grep -m1 -Fa "\$file" | grep -F "shell builtin" "${ALL_ENV}Value.txt"
        ;;
    resword)
        command grep -m1 -Fa "\$file" | grep -F "reserved word" "${ALL_ENV}Value.txt"
        ;;
    command)
        if test -f \$file;then
            if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
                "$SCRIPTS/clearList.sh" -- \$file| fold -80 | head -500
                test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
                xxd \$file | $COLORIZER_FZF_YAML
            else
                $COLORIZER_FZF_FILE 2>/dev/null
            fi
        else
            "$SCRIPTS/clearList.sh" -- \$file | fold -80
        fi
        ;;
    func)
        file=\$(echo \$file | sed "s@[]\\\[^\$.*/]@\\\\\\&@g")
        echo "after escaping regex chars file is _\${file}_" >> $LOGFILE
        command grep -m1 -a "^\$file is a shell function" "${ALL_ENV}Value.txt"
        command sed -n "/^\${file} () {/,/^}\$/p" "${ALL_ENV}Value.txt" | fold -80
        ;;
esac
} | cowsay | ponysay | "$SCRIPTS/splitReg.sh" -- ---------- lolcat

EOF
