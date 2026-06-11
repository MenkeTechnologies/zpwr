#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Jun 10 00:00:00 EST 2026
##### Purpose: zsh script to test zpwrRename sed-driven file renamer
##### Notes: targets dir-skip invariant, non-match no-op, spaced-name quoting
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrRename SEARCH <file...>
#   $1 = sed script (match-detect via `sed -n "$1"p`, transform via `sed -E "$1"`)
#   skips directories, mv's matching regular files to their transformed name.
#--------------------------------------------------------------

@test 'zpwrRename no args returns 1' {
    run zpwrRename
    assert $state equals 1
}

@test 'zpwrRename one arg returns 1' {
    run zpwrRename 's@a@b@'
    assert $state equals 1
}

@test 'zpwrRename no args output contains usage' {
    run zpwrRename 2>&1
    assert "$output" contains usage
}

# Invariant: a directory argument must be skipped, never renamed.
# `test -d "$file" && continue` guards this; a regression that drops the
# guard would mv the directory and silently break the tree.
@test 'zpwrRename skips directories' {
    local d base
    base="/tmp/zpwr_rename_dir_$$"
    d="$base/foodir"
    command mkdir -p "$d"
    ( cd "$base" && zpwrRename 's@foo@bar@' 'foodir' ) &>/dev/null
    run test -d "$d"
    assert $state equals 0
    run test -d "$base/bardir"
    assert $state equals 1
    command rm -rf "$base"
}

# Quoting invariant: a filename containing a space must round-trip through
# the inner `$(echo "$file" | sed ...)` mv target without word-splitting.
# Naive unquoted `mv $file $(...)` would split "a foo.txt" into two args.
@test 'zpwrRename renames a file whose name contains a space' {
    local base
    base="/tmp/zpwr_rename_space_$$"
    command mkdir -p "$base"
    print -r -- x > "$base/a foo.txt"
    ( cd "$base" && zpwrRename 's@foo@bar@' 'a foo.txt' ) &>/dev/null
    run test -f "$base/a bar.txt"
    assert $state equals 0
    run test -f "$base/a foo.txt"
    assert $state equals 1
    command rm -rf "$base"
}

# Off-by-target invariant: when the search pattern matches no line in the
# file *name* under `sed -n "$1"p` addressing, the file must be left intact.
# Uses an address-based sed script (/zzz/) so the match count is genuinely 0.
@test 'zpwrRename leaves non-matching file untouched' {
    local base
    base="/tmp/zpwr_rename_nomatch_$$"
    command mkdir -p "$base"
    print -r -- x > "$base/keep.txt"
    ( cd "$base" && zpwrRename '/zzz/s@keep@moved@' 'keep.txt' ) &>/dev/null
    run test -f "$base/keep.txt"
    assert $state equals 0
    run test -f "$base/moved.txt"
    assert $state equals 1
    command rm -rf "$base"
}
