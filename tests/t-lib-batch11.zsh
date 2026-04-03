#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: docs/regenPDF.sh, env alias file zsh -n, repo files, z* verbs
##### Notes: Portable; complements batch10 layout tests
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Docs + env alias bundle
#--------------------------------------------------------------
@test 'docs/regenPDF.sh passes bash -n' {
    run bash -n "$ZPWR/docs/regenPDF.sh"
    assert $state equals 0
}

@test 'env/.shell_aliases_functions.sh passes zsh -n' {
    run zsh -n "$ZPWR/env/.shell_aliases_functions.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Top-level repo files
#--------------------------------------------------------------
@test 'README.md exists' {
    run test -f "$ZPWR/README.md"
    assert $state equals 0
}

@test 'license.md exists' {
    run test -f "$ZPWR/license.md"
    assert $state equals 0
}

@test 'install/zpwrInstall.sh exists' {
    run test -f "$ZPWR/install/zpwrInstall.sh"
    assert $state equals 0
}

@test 'scripts/lib.sh exists' {
    run test -f "$ZPWR_LIB"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — text / links (portable)
#--------------------------------------------------------------
@test 'zpwrCommandExists ln returns 0' {
    run zpwrCommandExists ln
    assert $state equals 0
}

@test 'zpwrCommandExists link returns 0' {
    run zpwrCommandExists link
    assert $state equals 0
}

@test 'zpwrCommandExists unlink returns 0' {
    run zpwrCommandExists unlink
    assert $state equals 0
}

@test 'zpwrCommandExists mkfifo returns 0' {
    run zpwrCommandExists mkfifo
    assert $state equals 0
}

@test 'zpwrCommandExists pathchk returns 0' {
    run zpwrCommandExists pathchk
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — home / clone / zpwr github
#--------------------------------------------------------------
@test 'verb home registered' {
    run test -n "${ZPWR_VERBS[home]+x}"
    assert $state equals 0
}

@test 'verb zpwrCloneToForked registered' {
    run test -n "${ZPWR_VERBS[zpwrCloneToForked]+x}"
    assert $state equals 0
}

@test 'verb zpwrgithub registered' {
    run test -n "${ZPWR_VERBS[zpwrgithub]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — plugin counts
#--------------------------------------------------------------
@test 'verb emacsplugincount registered' {
    run test -n "${ZPWR_VERBS[emacsplugincount]+x}"
    assert $state equals 0
}

@test 'verb vimplugincount registered' {
    run test -n "${ZPWR_VERBS[vimplugincount]+x}"
    assert $state equals 0
}

@test 'verb zshplugincount registered' {
    run test -n "${ZPWR_VERBS[zshplugincount]+x}"
    assert $state equals 0
}

@test 'verb zshpluginlist registered' {
    run test -n "${ZPWR_VERBS[zshpluginlist]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — z / navigation / profiling
#--------------------------------------------------------------
@test 'verb z registered' {
    run test -n "${ZPWR_VERBS[z]+x}"
    assert $state equals 0
}

@test 'verb zcd registered' {
    run test -n "${ZPWR_VERBS[zcd]+x}"
    assert $state equals 0
}

@test 'verb zpz registered' {
    run test -n "${ZPWR_VERBS[zpz]+x}"
    assert $state equals 0
}

@test 'verb zprof registered' {
    run test -n "${ZPWR_VERBS[zprof]+x}"
    assert $state equals 0
}

@test 'verb zstyle registered' {
    run test -n "${ZPWR_VERBS[zstyle]+x}"
    assert $state equals 0
}

@test 'verb zcompdump registered' {
    run test -n "${ZPWR_VERBS[zcompdump]+x}"
    assert $state equals 0
}

@test 'verb zshsearch registered' {
    run test -n "${ZPWR_VERBS[zshsearch]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — counts / contrib (late map)
#--------------------------------------------------------------
@test 'verb logincount registered' {
    run test -n "${ZPWR_VERBS[logincount]+x}"
    assert $state equals 0
}

@test 'verb ghcontribcount registered' {
    run test -n "${ZPWR_VERBS[ghcontribcount]+x}"
    assert $state equals 0
}

@test 'verb githubcontribcount registered' {
    run test -n "${ZPWR_VERBS[githubcontribcount]+x}"
    assert $state equals 0
}

@test 'verb cleangitcleancache registered' {
    run test -n "${ZPWR_VERBS[cleangitcleancache]+x}"
    assert $state equals 0
}

@test 'verb regenall registered' {
    run test -n "${ZPWR_VERBS[regenall]+x}"
    assert $state equals 0
}

@test 'verb regenpdf registered' {
    run test -n "${ZPWR_VERBS[regenpdf]+x}"
    assert $state equals 0
}

@test 'verb regengtagspygments registered' {
    run test -n "${ZPWR_VERBS[regengtagspygments]+x}"
    assert $state equals 0
}

@test 'verb regengtagstype registered' {
    run test -n "${ZPWR_VERBS[regengtagstype]+x}"
    assert $state equals 0
}
