#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: autoload layout, install/hooks/pre-push, ci.yml pins, clean verbs
##### Notes: sh -n on POSIX hook; portable zpwrCommandExists
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Autoload + install hook
#--------------------------------------------------------------
@test 'autoload/common directory exists' {
    run test -d "$ZPWR/autoload/common"
    assert $state equals 0
}

@test 'install/hooks/pre-push passes sh -n' {
    run sh -n "$ZPWR/install/hooks/pre-push"
    assert $state equals 0
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — action pins and env
#--------------------------------------------------------------
@test 'ci.yml uses actions/checkout@v4' {
    run grep -q 'actions/checkout@v4' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml uses actions/cache@v4' {
    run grep -q 'actions/cache@v4' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references revolver' {
    run grep -q revolver "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml appends GITHUB_PATH' {
    run grep -q GITHUB_PATH "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references COLUMNS and LINES' {
    run grep -q COLUMNS "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references zinit plugin stub path' {
    run grep -q '.zinit/plugins' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — filesystem / text (portable)
#--------------------------------------------------------------
@test 'zpwrCommandExists mv returns 0' {
    run zpwrCommandExists mv
    assert $state equals 0
}

@test 'zpwrCommandExists rm returns 0' {
    run zpwrCommandExists rm
    assert $state equals 0
}

@test 'zpwrCommandExists rmdir returns 0' {
    run zpwrCommandExists rmdir
    assert $state equals 0
}

@test 'zpwrCommandExists touch returns 0' {
    run zpwrCommandExists touch
    assert $state equals 0
}

@test 'zpwrCommandExists chmod returns 0' {
    run zpwrCommandExists chmod
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — clean / cache cluster
#--------------------------------------------------------------
@test 'verb cleangitcache registered' {
    run test -n "${ZPWR_VERBS[cleangitcache]+x}"
    assert $state equals 0
}

@test 'verb cleangitdirtycache registered' {
    run test -n "${ZPWR_VERBS[cleangitdirtycache]+x}"
    assert $state equals 0
}

@test 'verb cleanupdatedeps registered' {
    run test -n "${ZPWR_VERBS[cleanupdatedeps]+x}"
    assert $state equals 0
}

@test 'verb cleandirs registered' {
    run test -n "${ZPWR_VERBS[cleandirs]+x}"
    assert $state equals 0
}

@test 'verb cleancache registered' {
    run test -n "${ZPWR_VERBS[cleancache]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — apps / docs / tutorial
#--------------------------------------------------------------
@test 'verb alacritty registered' {
    run test -n "${ZPWR_VERBS[alacritty]+x}"
    assert $state equals 0
}

@test 'verb exercism registered' {
    run test -n "${ZPWR_VERBS[exercism]+x}"
    assert $state equals 0
}

@test 'verb tutorial registered' {
    run test -n "${ZPWR_VERBS[tutorial]+x}"
    assert $state equals 0
}

@test 'verb poll registered' {
    run test -n "${ZPWR_VERBS[poll]+x}"
    assert $state equals 0
}

@test 'verb wizard registered' {
    run test -n "${ZPWR_VERBS[wizard]+x}"
    assert $state equals 0
}

@test 'verb study registered' {
    run test -n "${ZPWR_VERBS[study]+x}"
    assert $state equals 0
}

@test 'verb book registered' {
    run test -n "${ZPWR_VERBS[book]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — git email / contrib variants
#--------------------------------------------------------------
@test 'verb gitemail registered' {
    run test -n "${ZPWR_VERBS[gitemail]+x}"
    assert $state equals 0
}

@test 'verb gitcemail registered' {
    run test -n "${ZPWR_VERBS[gitcemail]+x}"
    assert $state equals 0
}

@test 'verb gitaemail registered' {
    run test -n "${ZPWR_VERBS[gitaemail]+x}"
    assert $state equals 0
}

@test 'verb gitcontribcountdirs registered' {
    run test -n "${ZPWR_VERBS[gitcontribcountdirs]+x}"
    assert $state equals 0
}

@test 'verb gitcontribcountlines registered' {
    run test -n "${ZPWR_VERBS[gitcontribcountlines]+x}"
    assert $state equals 0
}

@test 'verb gitcommitcount registered' {
    run test -n "${ZPWR_VERBS[gitcommitcount]+x}"
    assert $state equals 0
}

@test 'verb githubcontribcount registered' {
    run test -n "${ZPWR_VERBS[githubcontribcount]+x}"
    assert $state equals 0
}

@test 'verb ghcontribcount registered' {
    run test -n "${ZPWR_VERBS[ghcontribcount]+x}"
    assert $state equals 0
}
