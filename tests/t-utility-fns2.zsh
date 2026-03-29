#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test utility functions (pre, post, jd, rm, zarg, etc.)
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
    autoload -Uz zargs
}

#--------------------------------------------------------------
# pre - prefix all output lines
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

@test 'pre with multi-word prefix returns 0' {
    run pre "START" "echo test"
    assert $state equals 0
}

#--------------------------------------------------------------
# post - postfix all output lines
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

@test 'post output contains command output' {
    run post "SUFFIX" "echo uniqueword"
    assert "$output" contains uniqueword
}

@test 'post postfixes every line' {
    run post ":END" "printf 'line1\nline2\n'"
    assert "$output" contains "line1 :END"
    assert "$output" contains "line2 :END"
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

@test 'jd with single dir creates it' {
    local tmpdir
    tmpdir="/tmp/zpwr_jd_test_$$"
    run jd "$tmpdir"
    assert $state equals 0
    run test -d "$tmpdir"
    assert $state equals 0
    command rm -rf "$tmpdir"
}

@test 'jd with nested path creates whole tree' {
    local tmpdir
    tmpdir="/tmp/zpwr_jd_nested_$$/a/b/c"
    run jd "$tmpdir"
    assert $state equals 0
    run test -d "$tmpdir"
    assert $state equals 0
    command rm -rf "/tmp/zpwr_jd_nested_$$"
}

@test 'jd with multiple dirs creates all' {
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

@test 'jd with existing dir returns 0' {
    local tmpdir
    tmpdir=$(mktemp -d)
    run jd "$tmpdir"
    assert $state equals 0
    command rm -rf "$tmpdir"
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

@test 'rm on existing file deletes it' {
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
# c - zpwrCat wrapper
#--------------------------------------------------------------
@test 'c exists as function' {
    run zpwrExists c
    assert $state equals 0
}

@test 'c on test file returns 0' {
    run c "$TEST_FILE"
    assert $state equals 0
}


#--------------------------------------------------------------
# return2 - redirect stderr to /dev/tty
#--------------------------------------------------------------
@test 'return2 returns 0 in zsh' {
    run zsh -c 'exec 2>/dev/tty' 2>/dev/null
    if [[ $state -ne 0 ]]; then
        skip "/dev/tty not available in test environment"
    fi
    run return2
    assert $state equals 0
}

#--------------------------------------------------------------
# color2 - redirect stderr through color filter
#--------------------------------------------------------------
@test 'color2 returns 0 in zsh' {
    run color2
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

@test 'zpwrSearch with term and file output is not empty' {
    run zpwrSearch "line" "$TEST_FILE"
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrFordir - run cmd in each dir
#--------------------------------------------------------------
@test 'zpwrFordir exists' {
    run zpwrExists zpwrFordir
    assert $state equals 0
}

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

@test 'zpwrFordir with cmd and dir runs cmd in dir' {
    run zpwrFordir "pwd" "$ZPWR"
    assert "$output" contains "$ZPWR"
}

@test 'zpwrFordir with multiple dirs runs in each' {
    run zpwrFordir "pwd" "$ZPWR" "$ZPWR_SCRIPTS"
    assert "$output" contains "$ZPWR"
    assert "$output" contains "$ZPWR_SCRIPTS"
}

#--------------------------------------------------------------
# zpwrPrintMap - pretty print associative arrays
#--------------------------------------------------------------
@test 'zpwrPrintMap exists' {
    run zpwrExists zpwrPrintMap
    assert $state equals 0
}

@test 'zpwrPrintMap no args returns 1' {
    run zpwrPrintMap
    assert $state equals 1
}

@test 'zpwrPrintMap no args output contains usage' {
    run zpwrPrintMap 2>&1
    assert "$output" contains usage
}

@test 'zpwrPrintMap with ZPWR_VERBS returns 0' {
    run zpwrPrintMap ZPWR_VERBS
    assert $state equals 0
}

@test 'zpwrPrintMap with ZPWR_VERBS output is not empty' {
    run zpwrPrintMap ZPWR_VERBS
    assert "$output" is_not_empty
}

@test 'zpwrPrintMap with ZPWR_VERBS output contains about' {
    run zpwrPrintMap ZPWR_VERBS
    assert "$output" contains about
}

@test 'zpwrPrintMap with ZPWR_VERBS output contains ZPWR_VERBS' {
    run zpwrPrintMap ZPWR_VERBS
    assert "$output" contains ZPWR_VERBS
}

#--------------------------------------------------------------
# zpwrEnvVars / zpwrEnvVarsAll (non-interactive; just existence)
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
# zpwrGitReposFile
#--------------------------------------------------------------
@test 'zpwrGitReposFile exists' {
    run zpwrExists zpwrGitReposFile
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrStaleZcompdump
#--------------------------------------------------------------
@test 'zpwrStaleZcompdump exists' {
    run zpwrExists zpwrStaleZcompdump
    assert $state equals 0
}

@test 'zpwrStaleZcompdump returns 0 when no stale dump' {
    run zpwrStaleZcompdump
    assert $state equals 0
}

#--------------------------------------------------------------
# cca - cat and cd (error cases only; no TTY needed for that)
#--------------------------------------------------------------
@test 'cca no args returns 1' {
    run cca
    assert $state equals 1
}

@test 'cca no args output contains usage' {
    run cca 2>&1
    assert "$output" contains usage
}

#--------------------------------------------------------------
# cv - vim edit and cd (error case)
#--------------------------------------------------------------
@test 'cv no args returns 1' {
    run cv
    assert $state equals 1
}

@test 'cv no args output contains usage' {
    run cv 2>&1
    assert "$output" contains usage
}

#--------------------------------------------------------------
# zpwrZshrcSearch
#--------------------------------------------------------------
@test 'zpwrZshrcSearch exists' {
    run zpwrExists zpwrZshrcSearch
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrZcompdump
#--------------------------------------------------------------
@test 'zpwrZcompdump exists' {
    run zpwrExists zpwrZcompdump
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrBackupHistfile
#--------------------------------------------------------------
@test 'zpwrBackupHistfile exists' {
    run zpwrExists zpwrBackupHistfile
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrDetachall
#--------------------------------------------------------------
@test 'zpwrDetachall exists' {
    run zpwrExists zpwrDetachall
    assert $state equals 0
}
