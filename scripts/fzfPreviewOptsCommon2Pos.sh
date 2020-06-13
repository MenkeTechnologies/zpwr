#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep  5 22:34:56 EDT 2019
##### Purpose: bash script to
##### Notes: no single quotes
#}}}***********************************************************

source "$ZPWR_SCRIPTS/lib.sh" || {
    echo "cannot access lib.sh" >&2
    exit 1
}

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


cat<<EOF
test -z \$file && file=\$(echo {} | cut -d" " -f2 | sed "s@^~@$HOME@");
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
        "$ZPWR_SCRIPTS/clearList.sh" -- \$file | fold -80 | head -500; 
            $nmcmd \$file | $COLORIZER_FZF_YAML
            xxd \$file | $COLORIZER_FZF_YAML
    else
EOF
