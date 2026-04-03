#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ZPWR_VERBS registry invariant, multi-arg helpers, scripts/*.zsh zsh -n
##### Notes: Behavioral checks over redundant single-verb registration greps
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Verb map: loaded keys vs unique keys in env/zpwr.zsh (dynamic threshold)
#--------------------------------------------------------------
@test 'ZPWR_VERBS loaded is at least 95 percent of unique keys in zpwr.zsh' {
    local uniq loaded min_ok
    uniq=$(awk -F'[][]' '/ZPWR_VERBS\[/ {print $2}' "$ZPWR/env/zpwr.zsh" | sort -u | wc -l | tr -d ' ')
    loaded="${#ZPWR_VERBS[@]}"
    min_ok=$(( uniq * 95 / 100 ))
    run test "$loaded" -ge "$min_ok"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — multi-arg (uses $commands in zsh)
#--------------------------------------------------------------
@test 'zpwrCommandExists four core tools returns 0' {
    run zpwrCommandExists zsh git perl python3
    assert $state equals 0
}

@test 'zpwrCommandExists text pipeline tools returns 0' {
    run zpwrCommandExists sed awk grep cut sort
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — multiple loaded functions
#--------------------------------------------------------------
@test 'zpwrExists zpwrPrettyPrint zpwrLogColor zpwrIsZsh returns 0' {
    run zpwrExists zpwrPrettyPrint zpwrLogColor zpwrIsZsh
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts/*.zsh — parse-only (top-level and macOnly)
#--------------------------------------------------------------
@test 'all top-level scripts/*.zsh pass zsh -n' {
    local f
    for f in "$ZPWR/scripts"/*.zsh; do
        run zsh -n "$f"
        assert $state equals 0
    done
}

@test 'scripts/macOnly/mountInstall.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/mountInstall.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Install metadata
#--------------------------------------------------------------
@test 'install/zpwr.yml exists and is non-empty' {
    run test -s "$ZPWR/install/zpwr.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Docs + workflow anchors (catch accidental renames)
#--------------------------------------------------------------
@test 'README.md has Diagnostics section heading' {
    run grep -q '^## Diagnostics' "$ZPWR/README.md"
    assert $state equals 0
}

@test 'ci.yml sets strategy fail-fast' {
    run grep -q 'fail-fast' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}
