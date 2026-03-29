#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Mar 28 00:00:00 EST 2026
##### Purpose: zsh script to test shell tool functions (pre, post, j, jd, xx, etc.)
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
    autoload -Uz zargs
}

#--------------------------------------------------------------
# pre - prefix output lines
#--------------------------------------------------------------
@test 'pre no args returns 1' {
    run pre
    assert $state equals 1
}

@test 'pre one arg returns 1' {
    run pre PREFIX
    assert $state equals 1
}

@test 'pre with prefix and cmd returns 0' {
    run pre ">>>" "echo hello"
    assert $state equals 0
}

@test 'pre output contains prefix' {
    run pre "MYPREFIX" "echo hello"
    assert "$output" contains MYPREFIX
}

@test 'pre output contains command output' {
    run pre ">>>" "echo uniqueword"
    assert "$output" contains uniqueword
}

@test 'pre prefixes every line' {
    run pre "P:" "printf 'line1\nline2\nline3\n'"
    assert "$output" contains "P: line1"
    assert "$output" contains "P: line2"
    assert "$output" contains "P: line3"
}

#--------------------------------------------------------------
# post - suffix output lines
#--------------------------------------------------------------
@test 'post no args returns 1' {
    run post
    assert $state equals 1
}

@test 'post one arg returns 1' {
    run post SUFFIX
    assert $state equals 1
}

@test 'post with suffix and cmd returns 0' {
    run post "SUFFIX" "echo hello"
    assert $state equals 0
}

@test 'post output contains suffix' {
    run post "MYSUFFIX" "echo hello"
    assert "$output" contains MYSUFFIX
}

@test 'post postfixes every line' {
    run post ":END" "printf 'line1\nline2\n'"
    assert "$output" contains "line1 :END"
    assert "$output" contains "line2 :END"
}

#--------------------------------------------------------------
# j - touch/create file
#--------------------------------------------------------------
@test 'j no args returns 1' {
    run j
    assert $state equals 1
}

@test 'j creates file' {
    local tmpfile
    tmpfile="/tmp/zpwr_j_test_$$"
    run j "$tmpfile"
    assert $state equals 0
    run test -f "$tmpfile"
    assert $state equals 0
    command rm -f "$tmpfile"
}

@test 'j creates nested path' {
    local tmpdir tmpfile
    tmpdir="/tmp/zpwr_j_nested_$$"
    tmpfile="$tmpdir/sub/testfile"
    run j "$tmpfile"
    assert $state equals 0
    run test -f "$tmpfile"
    assert $state equals 0
    command rm -rf "$tmpdir"
}

@test 'j creates multiple files' {
    local f1 f2
    f1="/tmp/zpwr_j_a_$$"
    f2="/tmp/zpwr_j_b_$$"
    run j "$f1" "$f2"
    assert $state equals 0
    run test -f "$f1"
    assert $state equals 0
    run test -f "$f2"
    assert $state equals 0
    command rm -f "$f1" "$f2"
}

#--------------------------------------------------------------
# jd - mkdir -p
#--------------------------------------------------------------
@test 'jd no args returns 1' {
    run jd
    assert $state equals 1
}

@test 'jd no args output contains usage' {
    run jd 2>&1
    assert "$output" contains usage
}

@test 'jd creates directory' {
    local tmpdir
    tmpdir="/tmp/zpwr_jd_test_$$"
    run jd "$tmpdir"
    assert $state equals 0
    run test -d "$tmpdir"
    assert $state equals 0
    command rm -rf "$tmpdir"
}

@test 'jd creates nested directories' {
    local tmpdir
    tmpdir="/tmp/zpwr_jd_nested_$$/a/b/c"
    run jd "$tmpdir"
    assert $state equals 0
    run test -d "$tmpdir"
    assert $state equals 0
    command rm -rf "/tmp/zpwr_jd_nested_$$"
}

@test 'jd creates multiple directories' {
    local d1 d2
    d1="/tmp/zpwr_jd_a_$$"
    d2="/tmp/zpwr_jd_b_$$"
    run jd "$d1" "$d2"
    assert $state equals 0
    run test -d "$d1"
    assert $state equals 0
    run test -d "$d2"
    assert $state equals 0
    command rm -rf "$d1" "$d2"
}

@test 'jd on existing dir returns 0' {
    local tmpdir
    tmpdir=$(mktemp -d)
    run jd "$tmpdir"
    assert $state equals 0
    command rm -rf "$tmpdir"
}

#--------------------------------------------------------------
# xx - repeat command
#--------------------------------------------------------------
@test 'xx no args returns 1' {
    run xx
    assert $state equals 1
}

@test 'xx no args output contains usage' {
    run xx 2>&1
    assert "$output" contains usage
}

@test 'xx with echo cmd returns 0' {
    run xx "echo xxtest" 1
    assert $state equals 0
}

@test 'xx runs cmd N times' {
    local tmpfile
    tmpfile=$(mktemp)
    xx "echo line >> $tmpfile" 5
    local count
    count=$(wc -l < "$tmpfile" | tr -d ' ')
    [[ "$count" -eq 5 ]]
    assert $? equals 0
    command rm -f "$tmpfile"
}

#--------------------------------------------------------------
# rm - verbose rm wrapper
#--------------------------------------------------------------
@test 'rm no args returns 1' {
    run rm
    assert $state equals 1
}

@test 'rm no args output contains usage' {
    run rm 2>&1
    assert "$output" contains usage
}

@test 'rm on existing file returns 0' {
    local tmpfile
    tmpfile=$(mktemp)
    run rm "$tmpfile"
    assert $state equals 0
}

@test 'rm deletes file' {
    local tmpfile
    tmpfile=$(mktemp)
    rm "$tmpfile" &>/dev/null
    run test -f "$tmpfile"
    assert $state equals 1
}

@test 'rm on non-existent file returns non-zero' {
    run rm "/tmp/zpwr_rm_nonexistent_$$_xyz"
    assert $state is_greater_than 0
}

#--------------------------------------------------------------
# zarg - zargs wrapper
#--------------------------------------------------------------
@test 'zarg no args returns 1' {
    run zarg
    assert $state equals 1
}

@test 'zarg one arg returns 1' {
    run zarg "*.txt"
    assert $state equals 1
}

@test 'zarg with glob and cmd returns 0' {
    run zarg "$ZPWR/tests/*.zsh" "echo {}"
    assert $state equals 0
}

@test 'zarg output contains matched filenames' {
    run zarg "$ZPWR/tests/*.zsh" "echo {}"
    assert "$output" contains .zsh
}

#--------------------------------------------------------------
# b - background command
#--------------------------------------------------------------
@test 'b no args returns 1' {
    run b
    assert $state equals 1
}

@test 'b no args output contains usage' {
    run b 2>&1
    assert "$output" contains usage
}

@test 'b with echo cmd returns 0' {
    run b "echo bgtest" &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# p - process listing
#--------------------------------------------------------------
@test 'p no args returns 0' {
    run p &>/dev/null
    assert $state equals 0
}

@test 'p output is not empty' {
    run p &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'p with zsh arg returns 0' {
    run p zsh &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrSearch - grep wrapper
#--------------------------------------------------------------
@test 'zpwrSearch exists' {
    run zpwrExists zpwrSearch
    assert $state equals 0
}

@test 'zpwrSearch with term and file returns 0' {
    run zpwrSearch "line" "$TEST_FILE"
    assert $state equals 0
}

@test 'zpwrSearch output contains matching content' {
    run zpwrSearch "line1" "$TEST_FILE"
    assert "$output" contains line1
}

#--------------------------------------------------------------
# zpwrFordir - run cmd in each dir
#--------------------------------------------------------------
@test 'zpwrFordir no args returns 1' {
    run zpwrFordir
    assert $state equals 1
}

@test 'zpwrFordir one arg returns 1' {
    run zpwrFordir "echo hello"
    assert $state equals 1
}

@test 'zpwrFordir with cmd and dir returns 0' {
    run zpwrFordir "echo hello" "$ZPWR"
    assert $state equals 0
}

@test 'zpwrFordir runs cmd in dir' {
    run zpwrFordir "pwd" "$ZPWR"
    assert "$output" contains "$ZPWR"
}

@test 'zpwrFordir with multiple dirs runs in each' {
    run zpwrFordir "pwd" "$ZPWR" "$ZPWR_SCRIPTS"
    assert "$output" contains "$ZPWR"
    assert "$output" contains "$ZPWR_SCRIPTS"
}

#--------------------------------------------------------------
# zpwrCdUp - cd up N levels
#--------------------------------------------------------------
@test 'zpwrCdUp exists' {
    run zpwrExists zpwrCdUp
    assert $state equals 0
}

@test 'zpwrCdUp no args goes up one level' {
    local orig parent
    orig="$PWD"
    parent="${PWD:h}"
    zpwrCdUp &>/dev/null
    [[ "$PWD" == "$parent" ]]
    assert $? equals 0
    cd "$orig"
}

@test 'zpwrCdUp 1 goes up one level' {
    local orig parent
    orig="$PWD"
    parent="${PWD:h}"
    zpwrCdUp 1 &>/dev/null
    [[ "$PWD" == "$parent" ]]
    assert $? equals 0
    cd "$orig"
}

@test 'zpwrCdUp 2 goes up two levels' {
    local orig grandparent
    orig="$PWD"
    grandparent="${${PWD:h}:h}"
    zpwrCdUp 2 &>/dev/null
    [[ "$PWD" == "$grandparent" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# color2 - redirect stderr through color filter
#--------------------------------------------------------------
@test 'color2 returns 0' {
    run color2
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrStaleZcompdump
#--------------------------------------------------------------
@test 'zpwrStaleZcompdump exists' {
    run zpwrExists zpwrStaleZcompdump
    assert $state equals 0
}

@test 'zpwrStaleZcompdump returns 0' {
    run zpwrStaleZcompdump
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrEnvVars / zpwrEnvVarsAll
#--------------------------------------------------------------
@test 'zpwrEnvVars exists' {
    run zpwrExists zpwrEnvVars
    assert $state equals 0
}

@test 'zpwrEnvVarsAll exists' {
    run zpwrExists zpwrEnvVarsAll
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrForAllGitDirs
#--------------------------------------------------------------
@test 'zpwrForAllGitDirs exists' {
    run zpwrExists zpwrForAllGitDirs
    assert $state equals 0
}

@test 'zpwrForAllGitDirs no args returns 1' {
    run zpwrForAllGitDirs
    assert $state equals 1
}

@test 'zpwrForAllGitDirsClean exists' {
    run zpwrExists zpwrForAllGitDirsClean
    assert $state equals 0
}

@test 'zpwrForAllGitDirsDirty exists' {
    run zpwrExists zpwrForAllGitDirsDirty
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrGitReposFile / zpwrBackupHistfile / zpwrDetachall
#--------------------------------------------------------------
@test 'zpwrGitReposFile exists' {
    run zpwrExists zpwrGitReposFile
    assert $state equals 0
}

@test 'zpwrBackupHistfile exists' {
    run zpwrExists zpwrBackupHistfile
    assert $state equals 0
}

@test 'zpwrDetachall exists' {
    run zpwrExists zpwrDetachall
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrZcompdump / zpwrZshrcSearch
#--------------------------------------------------------------
@test 'zpwrZcompdump exists' {
    run zpwrExists zpwrZcompdump
    assert $state equals 0
}

@test 'zpwrZshrcSearch exists' {
    run zpwrExists zpwrZshrcSearch
    assert $state equals 0
}

#--------------------------------------------------------------
# cca / cv error cases (no TTY needed)
#--------------------------------------------------------------
@test 'cca no args returns 1' {
    run cca
    assert $state equals 1
}

@test 'cca no args output contains usage' {
    run cca 2>&1
    assert "$output" contains usage
}

@test 'cv no args returns 1' {
    run cv
    assert $state equals 1
}

@test 'cv no args output contains usage' {
    run cv 2>&1
    assert "$output" contains usage
}
