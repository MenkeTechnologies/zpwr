#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ci.yml regression greps, bash -n on scripts trees, extra verbs
##### Notes: Complements t-lib-batch2 workflow checks and batch7 install/perl
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — cache path + Ubuntu job shape
#--------------------------------------------------------------
@test 'ci.yml hashFiles uses zpwr/.github/workflows path' {
    run grep -qF "hashFiles('zpwr/.github/workflows/ci.yml')" "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml checkout uses path zpwr' {
    run grep -q 'path: zpwr' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml sets DEBIAN_FRONTEND' {
    run grep -q 'DEBIAN_FRONTEND' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml installs netcat-openbsd' {
    run grep -q 'netcat-openbsd' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references fetch-depth' {
    run grep -q 'fetch-depth' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references GIT_TERMINAL_PROMPT' {
    run grep -q 'GIT_TERMINAL_PROMPT' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml runs zunit on tests/*.zsh' {
    run grep -Fq 'tests/*.zsh' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references MenkeTechnologies/zunit' {
    run grep -q 'MenkeTechnologies/zunit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts/*.sh — bash -n (top-level and macOnly)
#--------------------------------------------------------------
@test 'all top-level scripts/*.sh pass bash -n' {
    local f
    for f in "$ZPWR/scripts"/*.sh; do
        run bash -n "$f"
        assert $state equals 0
    done
}

@test 'all scripts/macOnly/*.sh pass bash -n' {
    local f
    for f in "$ZPWR/scripts/macOnly"/*.sh; do
        run bash -n "$f"
        assert $state equals 0
    done
}

#--------------------------------------------------------------
# ZPWR_VERBS — tmux / session / navigation
#--------------------------------------------------------------
@test 'verb attach registered' {
    run test -n "${ZPWR_VERBS[attach]+x}"
    assert $state equals 0
}

@test 'verb detach registered' {
    run test -n "${ZPWR_VERBS[detach]+x}"
    assert $state equals 0
}

@test 'verb killmux registered' {
    run test -n "${ZPWR_VERBS[killmux]+x}"
    assert $state equals 0
}

@test 'verb hometmux registered' {
    run test -n "${ZPWR_VERBS[hometmux]+x}"
    assert $state equals 0
}

@test 'verb killremote registered' {
    run test -n "${ZPWR_VERBS[killremote]+x}"
    assert $state equals 0
}

@test 'verb google registered' {
    run test -n "${ZPWR_VERBS[google]+x}"
    assert $state equals 0
}

@test 'verb openurl registered' {
    run test -n "${ZPWR_VERBS[openurl]+x}"
    assert $state equals 0
}

@test 'verb trc registered' {
    run test -n "${ZPWR_VERBS[trc]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — backup / banner / counts
#--------------------------------------------------------------
@test 'verb backup registered' {
    run test -n "${ZPWR_VERBS[backup]+x}"
    assert $state equals 0
}

@test 'verb banner registered' {
    run test -n "${ZPWR_VERBS[banner]+x}"
    assert $state equals 0
}

@test 'verb cleanlog registered' {
    run test -n "${ZPWR_VERBS[cleanlog]+x}"
    assert $state equals 0
}

@test 'verb cleandirsandtemp registered' {
    run test -n "${ZPWR_VERBS[cleandirsandtemp]+x}"
    assert $state equals 0
}

@test 'verb cleanrefreshupdate registered' {
    run test -n "${ZPWR_VERBS[cleanrefreshupdate]+x}"
    assert $state equals 0
}

@test 'verb regenkeybindings registered' {
    run test -n "${ZPWR_VERBS[regenkeybindings]+x}"
    assert $state equals 0
}

@test 'verb regenctags registered' {
    run test -n "${ZPWR_VERBS[regenctags]+x}"
    assert $state equals 0
}

@test 'verb regenhistory registered' {
    run test -n "${ZPWR_VERBS[regenhistory]+x}"
    assert $state equals 0
}

@test 'verb regenenvcache registered' {
    run test -n "${ZPWR_VERBS[regenenvcache]+x}"
    assert $state equals 0
}

@test 'verb updatedepsclean registered' {
    run test -n "${ZPWR_VERBS[updatedepsclean]+x}"
    assert $state equals 0
}

@test 'verb gitcommits registered' {
    run test -n "${ZPWR_VERBS[gitcommits]+x}"
    assert $state equals 0
}

@test 'verb gitsearch registered' {
    run test -n "${ZPWR_VERBS[gitsearch]+x}"
    assert $state equals 0
}

@test 'verb gitremotes registered' {
    run test -n "${ZPWR_VERBS[gitremotes]+x}"
    assert $state equals 0
}

@test 'verb gitconfig registered' {
    run test -n "${ZPWR_VERBS[gitconfig]+x}"
    assert $state equals 0
}

@test 'verb githubzpwr registered' {
    run test -n "${ZPWR_VERBS[githubzpwr]+x}"
    assert $state equals 0
}

@test 'verb gh registered' {
    run test -n "${ZPWR_VERBS[gh]+x}"
    assert $state equals 0
}

@test 'verb vimall registered' {
    run test -n "${ZPWR_VERBS[vimall]+x}"
    assert $state equals 0
}

@test 'verb vimscripts registered' {
    run test -n "${ZPWR_VERBS[vimscripts]+x}"
    assert $state equals 0
}

@test 'verb vimtests registered' {
    run test -n "${ZPWR_VERBS[vimtests]+x}"
    assert $state equals 0
}

@test 'verb vrc registered' {
    run test -n "${ZPWR_VERBS[vrc]+x}"
    assert $state equals 0
}

@test 'verb zrc registered' {
    run test -n "${ZPWR_VERBS[zrc]+x}"
    assert $state equals 0
}
