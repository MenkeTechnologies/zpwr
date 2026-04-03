#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: CI on:/pull_request anchors, cat/jenv autoload zsh -n, remaining ZPWR_VERBS keys
##### Notes: Skips systemd-only and zpwrExists(pi) verbs; see env/zpwr.zsh conditionals
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — triggers
#--------------------------------------------------------------
@test 'ci.yml starts with on block' {
    run grep -q '^on:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml enables pull_request' {
    run grep -q 'pull_request' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml targets main and dev branches' {
    run grep -q 'main, dev' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (cat helpers, jenv, vim autoload, login count)
#--------------------------------------------------------------
@test 'autoload common zpwrCat passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCat"
    assert $state equals 0
}

@test 'autoload common zpwrCatNvimOrVimInfo passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCatNvimOrVimInfo"
    assert $state equals 0
}

@test 'autoload common zpwrLoadJenv passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLoadJenv"
    assert $state equals 0
}

@test 'autoload common zpwrVimAutoload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAutoload"
    assert $state equals 0
}

@test 'autoload common zpwrLoginCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLoginCount"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — cat / jenv / vim autoload
#--------------------------------------------------------------
@test 'zpwrExists zpwrCat returns 0' {
    run zpwrExists zpwrCat
    assert $state equals 0
}

@test 'zpwrExists zpwrLoadJenv returns 0' {
    run zpwrExists zpwrLoadJenv
    assert $state equals 0
}

@test 'zpwrExists zpwrVimAutoload returns 0' {
    run zpwrExists zpwrVimAutoload
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — all/fwd/rvs, cat pipeline, home*, logs, send/auto, timer/tokens/man
#--------------------------------------------------------------
@test 'verb all registered' {
    run test -n "${ZPWR_VERBS[all]+x}"
    assert $state equals 0
}

@test 'verb fwd registered' {
    run test -n "${ZPWR_VERBS[fwd]+x}"
    assert $state equals 0
}

@test 'verb rvs registered' {
    run test -n "${ZPWR_VERBS[rvs]+x}"
    assert $state equals 0
}

@test 'verb catcd registered' {
    run test -n "${ZPWR_VERBS[catcd]+x}"
    assert $state equals 0
}

@test 'verb catviminfo registered' {
    run test -n "${ZPWR_VERBS[catviminfo]+x}"
    assert $state equals 0
}

@test 'verb catnviminforecentf registered' {
    run test -n "${ZPWR_VERBS[catnviminforecentf]+x}"
    assert $state equals 0
}

@test 'verb catrecentfviminfo registered' {
    run test -n "${ZPWR_VERBS[catrecentfviminfo]+x}"
    assert $state equals 0
}

@test 'verb man registered' {
    run test -n "${ZPWR_VERBS[man]+x}"
    assert $state equals 0
}

@test 'verb timer registered' {
    run test -n "${ZPWR_VERBS[timer]+x}"
    assert $state equals 0
}

@test 'verb tokens registered' {
    run test -n "${ZPWR_VERBS[tokens]+x}"
    assert $state equals 0
}

@test 'verb vimautoload registered' {
    run test -n "${ZPWR_VERBS[vimautoload]+x}"
    assert $state equals 0
}

@test 'verb homeautoload registered' {
    run test -n "${ZPWR_VERBS[homeautoload]+x}"
    assert $state equals 0
}

@test 'verb homeautoloadcommon registered' {
    run test -n "${ZPWR_VERBS[homeautoloadcommon]+x}"
    assert $state equals 0
}

@test 'verb homecomps registered' {
    run test -n "${ZPWR_VERBS[homecomps]+x}"
    assert $state equals 0
}

@test 'verb homeexercism registered' {
    run test -n "${ZPWR_VERBS[homeexercism]+x}"
    assert $state equals 0
}

@test 'verb homeinstall registered' {
    run test -n "${ZPWR_VERBS[homeinstall]+x}"
    assert $state equals 0
}

@test 'verb homelocal registered' {
    run test -n "${ZPWR_VERBS[homelocal]+x}"
    assert $state equals 0
}

@test 'verb loadjenv registered' {
    run test -n "${ZPWR_VERBS[loadjenv]+x}"
    assert $state equals 0
}

@test 'verb logdebug registered' {
    run test -n "${ZPWR_VERBS[logdebug]+x}"
    assert $state equals 0
}

@test 'verb logdebugconsole registered' {
    run test -n "${ZPWR_VERBS[logdebugconsole]+x}"
    assert $state equals 0
}

@test 'verb logerrorconsole registered' {
    run test -n "${ZPWR_VERBS[logerrorconsole]+x}"
    assert $state equals 0
}

@test 'verb loginfoconsole registered' {
    run test -n "${ZPWR_VERBS[loginfoconsole]+x}"
    assert $state equals 0
}

@test 'verb logtrace registered' {
    run test -n "${ZPWR_VERBS[logtrace]+x}"
    assert $state equals 0
}

@test 'verb logtraceconsole registered' {
    run test -n "${ZPWR_VERBS[logtraceconsole]+x}"
    assert $state equals 0
}

@test 'verb pir registered' {
    run test -n "${ZPWR_VERBS[pir]+x}"
    assert $state equals 0
}

@test 'verb startsend registered' {
    run test -n "${ZPWR_VERBS[startsend]+x}"
    assert $state equals 0
}

@test 'verb startsendfull registered' {
    run test -n "${ZPWR_VERBS[startsendfull]+x}"
    assert $state equals 0
}

@test 'verb startauto registered' {
    run test -n "${ZPWR_VERBS[startauto]+x}"
    assert $state equals 0
}

@test 'verb stopauto registered' {
    run test -n "${ZPWR_VERBS[stopauto]+x}"
    assert $state equals 0
}

@test 'verb stopsend registered' {
    run test -n "${ZPWR_VERBS[stopsend]+x}"
    assert $state equals 0
}
