#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: repo markers, install/s, test harness zsh -n, extra ZPWR_VERBS
##### Notes: Portable checks (macOS + Linux); no Linux-only binaries
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Repo layout + one-line installer
#--------------------------------------------------------------
@test '.zpwr_root exists' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'docs/wizard_pages directory exists' {
    run test -d "$ZPWR/docs/wizard_pages"
    assert $state equals 0
}

@test 'install/s passes bash -n' {
    run bash -n "$ZPWR/install/s"
    assert $state equals 0
}

@test 'tests/test_lib.zsh passes zsh -n' {
    run zsh -n "$ZPWR/tests/test_lib.zsh"
    assert $state equals 0
}

@test 'env/zpwr.zsh still defines ZPWR_VERBS keys' {
    run grep -q 'ZPWR_VERBS\[' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists / zpwrCommandExists — lib helpers always loaded
#--------------------------------------------------------------
@test 'zpwrExists zpwrExists returns 0' {
    run zpwrExists zpwrExists
    assert $state equals 0
}

@test 'zpwrExists zpwrCommandExists returns 0' {
    run zpwrExists zpwrCommandExists
    assert $state equals 0
}

@test 'zpwrExists zpwrIsZsh returns 0' {
    run zpwrExists zpwrIsZsh
    assert $state equals 0
}

@test 'zpwrCommandExists env returns 0' {
    run zpwrCommandExists env
    assert $state equals 0
}

@test 'zpwrCommandExists date returns 0' {
    run zpwrCommandExists date
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — home / navigation / verbs UI
#--------------------------------------------------------------
@test 'verb forked registered' {
    run test -n "${ZPWR_VERBS[forked]+x}"
    assert $state equals 0
}

@test 'verb homeenv registered' {
    run test -n "${ZPWR_VERBS[homeenv]+x}"
    assert $state equals 0
}

@test 'verb homescripts registered' {
    run test -n "${ZPWR_VERBS[homescripts]+x}"
    assert $state equals 0
}

@test 'verb hometest registered' {
    run test -n "${ZPWR_VERBS[hometest]+x}"
    assert $state equals 0
}

@test 'verb hometests registered' {
    run test -n "${ZPWR_VERBS[hometests]+x}"
    assert $state equals 0
}

@test 'verb verbsfzf registered' {
    run test -n "${ZPWR_VERBS[verbsfzf]+x}"
    assert $state equals 0
}

@test 'verb verbslist registered' {
    run test -n "${ZPWR_VERBS[verbslist]+x}"
    assert $state equals 0
}

@test 'verb verbsedit registered' {
    run test -n "${ZPWR_VERBS[verbsedit]+x}"
    assert $state equals 0
}

@test 'verb verbscount registered' {
    run test -n "${ZPWR_VERBS[verbscount]+x}"
    assert $state equals 0
}

@test 'verb verbs registered' {
    run test -n "${ZPWR_VERBS[verbs]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — git / GitHub extended
#--------------------------------------------------------------
@test 'verb gitcommit registered' {
    run test -n "${ZPWR_VERBS[gitcommit]+x}"
    assert $state equals 0
}

@test 'verb gitupdatefordir registered' {
    run test -n "${ZPWR_VERBS[gitupdatefordir]+x}"
    assert $state equals 0
}

@test 'verb gitforalldir registered' {
    run test -n "${ZPWR_VERBS[gitforalldir]+x}"
    assert $state equals 0
}

@test 'verb gitfordirmain registered' {
    run test -n "${ZPWR_VERBS[gitfordirmain]+x}"
    assert $state equals 0
}

@test 'verb gitfordirdevelop registered' {
    run test -n "${ZPWR_VERBS[gitfordirdevelop]+x}"
    assert $state equals 0
}

@test 'verb githubcreate registered' {
    run test -n "${ZPWR_VERBS[githubcreate]+x}"
    assert $state equals 0
}

@test 'verb githubdelete registered' {
    run test -n "${ZPWR_VERBS[githubdelete]+x}"
    assert $state equals 0
}

@test 'verb gitignore registered' {
    run test -n "${ZPWR_VERBS[gitignore]+x}"
    assert $state equals 0
}

@test 'verb gitlargest registered' {
    run test -n "${ZPWR_VERBS[gitlargest]+x}"
    assert $state equals 0
}

@test 'verb gitremotes registered' {
    run test -n "${ZPWR_VERBS[gitremotes]+x}"
    assert $state equals 0
}

@test 'verb gitclearcache registered' {
    run test -n "${ZPWR_VERBS[gitclearcache]+x}"
    assert $state equals 0
}

@test 'verb gitcontribcount registered' {
    run test -n "${ZPWR_VERBS[gitcontribcount]+x}"
    assert $state equals 0
}

@test 'verb gitcommits registered' {
    run test -n "${ZPWR_VERBS[gitcommits]+x}"
    assert $state equals 0
}

@test 'verb gitwho registered' {
    run test -n "${ZPWR_VERBS[gitwho]+x}"
    assert $state equals 0
}

@test 'verb gitcontribs registered' {
    run test -n "${ZPWR_VERBS[gitcontribs]+x}"
    assert $state equals 0
}
