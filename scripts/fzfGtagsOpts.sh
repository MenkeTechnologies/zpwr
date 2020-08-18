#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
    test -z "$ZPWR_ENV_FILE" && export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
    source "$ZPWR_ENV_FILE" || {
        echo "cannot access $ZPWR_ENV_FILE" >&2
        exit 1
    }
fi

exists rpm && rpm_cmd='{ rpm -qi $file; rpm -qlp $file; }' || rpm_cmd="stat"
exists dpkg && deb_cmd='{ dpkg -I $file; dpkg -c $file; }' || deb_cmd="stat"

os="$(uname -s)"
if echo "$os" | grep -iq darwin; then
    nmcmd="nm"
elif echo "$os" | grep -iq linux; then
    nmcmd="nm -D"
else
    nmcmd="nm"
fi

casestr=$(cat<<EOF
            base=\${file##*/}
            case \$base in
                (*.txt)
                    $COLORIZER_FZF_FILE_TEXT 2>/dev/null;
                    ;;
                ([!.]*.*)
                    $COLORIZER_FZF_FILE 2>/dev/null;
                    ;;
                (.*.*)
                    $COLORIZER_FZF_FILE 2>/dev/null;
                    ;;
                (*)
                    $COLORIZER_FZF_FILE_DEFAULT 2>/dev/null;
                    ;;
            esac

EOF
    )

BAT_OFFSET=3
START_OFFSET=20
cat<<EOF

test -z \$file && file=\$(tr -s " " <<< {} | cut -d" " -f3 | sed "s@^~@$HOME@");
lineNum=\$(tr -s " " <<< {} | cut -d" " -f2);
lineNum=\$((lineNum + $BAT_OFFSET))
startNum=\$((lineNum - $START_OFFSET))
if (( startNum < 1)); then
    startNum=1
fi
if test -f \$file;then
    if print -r -- \$file | command egrep -iq "\\.[jw]ar\$";then jar tf \$file | $COLORIZER_FZF_JAVA;
    elif print -r -- \$file | command egrep -iq "\\.(tgz|tar|tar\\.gz)\$";then tar tf \$file | $COLORIZER_FZF_C;
    elif print -r -- \$file | command egrep -iq "\\.deb\$";then $deb_cmd | $COLORIZER_FZF_SH;
    elif print -r -- \$file | command egrep -iq "\\.rpm\$";then $rpm_cmd | $COLORIZER_FZF_SH;
    elif print -r -- \$file | command egrep -iq "\\.zip\$";then unzip -v -- \$file | $COLORIZER_FZF_C;
    elif print -r -- \$file | command egrep -iq "\\.(bzip|bz)\$";then bzip -c -d \$file | $COLORIZER_FZF_YAML;
    elif print -r -- \$file | command egrep -iq "\\.(bzip2|bz2)\$";then bzip2 -c -d \$file | $COLORIZER_FZF_YAML;
    elif print -r -- \$file | command egrep -iq "\\.(xzip|xz)\$";then xz -c -d \$file | $COLORIZER_FZF_YAML;
    elif print -r -- \$file | command egrep -iq "\\.(gzip|gz)\$";then gzip -c -d \$file | $COLORIZER_FZF_YAML;
    elif print -r -- \$file | command egrep -iq "\\.(so|dylib).*\$";then
        $ZPWR_FZF_CLEARLIST
        $nmcmd \$file | $COLORIZER_FZF_YAML
        xxd \$file | $COLORIZER_FZF_YAML
    else
EOF


cat<<EOF
        if LC_MESSAGES=C command grep -Hm1 "^" "\$file" | command grep -q "^Binary";then
            $ZPWR_FZF_CLEARLIST
            test -x \$file && objdump -d \$file | $COLORIZER_FZF_YAML
            xxd \$file | $COLORIZER_FZF_YAML
        else
            $casestr
        fi
    fi
fi | perl -ne "if (\$lineNum .. \$lineNum){s@\\\x1b\\\[[0-9;]+m@@g;s@(.*)@\\\x1b[$ZPWR_MARKER_COLOR\\\$1\\\x1b[0m@;print} elsif (\$startNum .. eof) {print;}"
EOF
