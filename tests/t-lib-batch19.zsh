#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env/fzf/execglob verb clusters, locate verbs, CI zunit step anchors
##### Notes: Short keys (e, ev, for, fp) are deliberate ZPWR_VERBS aliases
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — zunit build path
#--------------------------------------------------------------
@test 'ci.yml has Cache zunit binary step' {
    run grep -q 'Cache zunit binary' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml has Build zunit step' {
    run grep -q 'Build zunit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml has Add zunit to PATH step' {
    run grep -q 'Add zunit to PATH' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml has Set up ZPWR environment step' {
    run grep -q 'Set up ZPWR environment' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (env fzf, exec glob, locate)
#--------------------------------------------------------------
@test 'autoload common zpwrFzfEnv passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnv"
    assert $state equals 0
}

@test 'autoload common zpwrFzfEnvVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnvVerbAccept"
    assert $state equals 0
}

@test 'autoload common zpwrFzfEnvVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnvVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrEnvVars passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEnvVars"
    assert $state equals 0
}

@test 'autoload common zpwrEnvVarsAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEnvVarsAll"
    assert $state equals 0
}

@test 'autoload common zpwrExecGlob passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecGlob"
    assert $state equals 0
}

@test 'autoload common zpwrExecGlobParallel passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecGlobParallel"
    assert $state equals 0
}

@test 'autoload common zpwrFigletfonts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFigletfonts"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfEditNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLE"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — env / exec / fzf env
#--------------------------------------------------------------
@test 'zpwrExists zpwrEnvVars returns 0' {
    run zpwrExists zpwrEnvVars
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfEnv returns 0' {
    run zpwrExists zpwrFzfEnv
    assert $state equals 0
}

@test 'zpwrExists zpwrExecGlob returns 0' {
    run zpwrExists zpwrExecGlob
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — snapshot alias, env UI, exec glob, fortune aliases, find/locate, for*
#--------------------------------------------------------------
@test 'verb save registered' {
    run test -n "${ZPWR_VERBS[save]+x}"
    assert $state equals 0
}

@test 'verb envaccept registered' {
    run test -n "${ZPWR_VERBS[envaccept]+x}"
    assert $state equals 0
}

@test 'verb envedit registered' {
    run test -n "${ZPWR_VERBS[envedit]+x}"
    assert $state equals 0
}

@test 'verb envvars registered' {
    run test -n "${ZPWR_VERBS[envvars]+x}"
    assert $state equals 0
}

@test 'verb ev registered' {
    run test -n "${ZPWR_VERBS[ev]+x}"
    assert $state equals 0
}

@test 'verb envvarsall registered' {
    run test -n "${ZPWR_VERBS[envvarsall]+x}"
    assert $state equals 0
}

@test 'verb eva registered' {
    run test -n "${ZPWR_VERBS[eva]+x}"
    assert $state equals 0
}

@test 'verb e registered' {
    run test -n "${ZPWR_VERBS[e]+x}"
    assert $state equals 0
}

@test 'verb execglob registered' {
    run test -n "${ZPWR_VERBS[execglob]+x}"
    assert $state equals 0
}

@test 'verb execglobparallel registered' {
    run test -n "${ZPWR_VERBS[execglobparallel]+x}"
    assert $state equals 0
}

@test 'verb envcachesearch registered' {
    run test -n "${ZPWR_VERBS[envcachesearch]+x}"
    assert $state equals 0
}

@test 'verb figletfonts registered' {
    run test -n "${ZPWR_VERBS[figletfonts]+x}"
    assert $state equals 0
}

@test 'verb wisdom registered' {
    run test -n "${ZPWR_VERBS[wisdom]+x}"
    assert $state equals 0
}

@test 'verb quote registered' {
    run test -n "${ZPWR_VERBS[quote]+x}"
    assert $state equals 0
}

@test 'verb heatmap registered' {
    run test -n "${ZPWR_VERBS[heatmap]+x}"
    assert $state equals 0
}

@test 'verb rank registered' {
    run test -n "${ZPWR_VERBS[rank]+x}"
    assert $state equals 0
}

@test 'verb findsearch registered' {
    run test -n "${ZPWR_VERBS[findsearch]+x}"
    assert $state equals 0
}

@test 'verb findsearchedit registered' {
    run test -n "${ZPWR_VERBS[findsearchedit]+x}"
    assert $state equals 0
}

@test 'verb fordir registered' {
    run test -n "${ZPWR_VERBS[fordir]+x}"
    assert $state equals 0
}

@test 'verb fordirupdate registered' {
    run test -n "${ZPWR_VERBS[fordirupdate]+x}"
    assert $state equals 0
}

@test 'verb for registered' {
    run test -n "${ZPWR_VERBS[for]+x}"
    assert $state equals 0
}

@test 'verb for10 registered' {
    run test -n "${ZPWR_VERBS[for10]+x}"
    assert $state equals 0
}

@test 'verb fp registered' {
    run test -n "${ZPWR_VERBS[fp]+x}"
    assert $state equals 0
}

@test 'verb locatesearch registered' {
    run test -n "${ZPWR_VERBS[locatesearch]+x}"
    assert $state equals 0
}

@test 'verb locatesearchedit registered' {
    run test -n "${ZPWR_VERBS[locatesearchedit]+x}"
    assert $state equals 0
}
