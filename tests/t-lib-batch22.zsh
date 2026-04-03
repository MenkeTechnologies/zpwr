#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: zpwrMatrix battle flags, OMZ/link/regen autoload zsh -n, emacs/env verb coverage
##### Notes: Complements batch15 (zpwrMatrix zsh -n); adds --battle/--player2/--gamedir anchors
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrMatrix — tmux typing battle flags (source anchors)
#--------------------------------------------------------------
@test 'zpwrMatrix source documents --battle' {
    run grep -q -- '--battle' "$ZPWR/autoload/common/zpwrMatrix"
    assert $state equals 0
}

@test 'zpwrMatrix source documents --player2' {
    run grep -q -- '--player2' "$ZPWR/autoload/common/zpwrMatrix"
    assert $state equals 0
}

@test 'zpwrMatrix source documents --gamedir' {
    run grep -q -- '--gamedir' "$ZPWR/autoload/common/zpwrMatrix"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (OMZ, link/unlink, regen, rationalize)
#--------------------------------------------------------------
@test 'autoload common zpwrOmzOverrides passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOmzOverrides"
    assert $state equals 0
}

@test 'autoload common zpwrLinkConf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLinkConf"
    assert $state equals 0
}

@test 'autoload common zpwrUnlinkConf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUnlinkConf"
    assert $state equals 0
}

@test 'autoload common zpwrReset passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReset"
    assert $state equals 0
}

@test 'autoload common zpwrReload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReload"
    assert $state equals 0
}

@test 'autoload common zpwrRegenAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenAll"
    assert $state equals 0
}

@test 'autoload common zpwrRationalizeDot passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRationalizeDot"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — matrix + link/unlink
#--------------------------------------------------------------
@test 'zpwrExists zpwrMatrix returns 0' {
    run zpwrExists zpwrMatrix
    assert $state equals 0
}

@test 'zpwrExists zpwrLinkConf returns 0' {
    run zpwrExists zpwrLinkConf
    assert $state equals 0
}

@test 'zpwrExists zpwrUnlinkConf returns 0' {
    run zpwrExists zpwrUnlinkConf
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — banner, env short names, exercism, emacs cluster, flame alias, rename, install
#--------------------------------------------------------------
@test 'verb bannernopony registered' {
    run test -n "${ZPWR_VERBS[bannernopony]+x}"
    assert $state equals 0
}

@test 'verb environmentvars registered' {
    run test -n "${ZPWR_VERBS[environmentvars]+x}"
    assert $state equals 0
}

@test 'verb environmentvarsall registered' {
    run test -n "${ZPWR_VERBS[environmentvarsall]+x}"
    assert $state equals 0
}

@test 'verb exercismdownload registered' {
    run test -n "${ZPWR_VERBS[exercismdownload]+x}"
    assert $state equals 0
}

@test 'verb exercismedit registered' {
    run test -n "${ZPWR_VERBS[exercismedit]+x}"
    assert $state equals 0
}

@test 'verb emacscd registered' {
    run test -n "${ZPWR_VERBS[emacscd]+x}"
    assert $state equals 0
}

@test 'verb emacsctags registered' {
    run test -n "${ZPWR_VERBS[emacsctags]+x}"
    assert $state equals 0
}

@test 'verb emacsemacsconfig registered' {
    run test -n "${ZPWR_VERBS[emacsemacsconfig]+x}"
    assert $state equals 0
}

@test 'verb emacsfilesearch registered' {
    run test -n "${ZPWR_VERBS[emacsfilesearch]+x}"
    assert $state equals 0
}

@test 'verb emacsfilesearchedit registered' {
    run test -n "${ZPWR_VERBS[emacsfilesearchedit]+x}"
    assert $state equals 0
}

@test 'verb emacsfindsearch registered' {
    run test -n "${ZPWR_VERBS[emacsfindsearch]+x}"
    assert $state equals 0
}

@test 'verb emacsfindsearchedit registered' {
    run test -n "${ZPWR_VERBS[emacsfindsearchedit]+x}"
    assert $state equals 0
}

@test 'verb emacsgtags registered' {
    run test -n "${ZPWR_VERBS[emacsgtags]+x}"
    assert $state equals 0
}

@test 'verb emacsgtagsedit registered' {
    run test -n "${ZPWR_VERBS[emacsgtagsedit]+x}"
    assert $state equals 0
}

@test 'verb emacslocatesearch registered' {
    run test -n "${ZPWR_VERBS[emacslocatesearch]+x}"
    assert $state equals 0
}

@test 'verb emacslocatesearchedit registered' {
    run test -n "${ZPWR_VERBS[emacslocatesearchedit]+x}"
    assert $state equals 0
}

@test 'verb emacspluginlist registered' {
    run test -n "${ZPWR_VERBS[emacspluginlist]+x}"
    assert $state equals 0
}

@test 'verb emacsscripts registered' {
    run test -n "${ZPWR_VERBS[emacsscripts]+x}"
    assert $state equals 0
}

@test 'verb emacszpwr registered' {
    run test -n "${ZPWR_VERBS[emacszpwr]+x}"
    assert $state equals 0
}

@test 'verb flamechart registered' {
    run test -n "${ZPWR_VERBS[flamechart]+x}"
    assert $state equals 0
}

@test 'verb changename registered' {
    run test -n "${ZPWR_VERBS[changename]+x}"
    assert $state equals 0
}

@test 'verb changenamezpwr registered' {
    run test -n "${ZPWR_VERBS[changenamezpwr]+x}"
    assert $state equals 0
}

@test 'verb cleancompcache registered' {
    run test -n "${ZPWR_VERBS[cleancompcache]+x}"
    assert $state equals 0
}

@test 'verb gitignores registered' {
    run test -n "${ZPWR_VERBS[gitignores]+x}"
    assert $state equals 0
}

@test 'verb install registered' {
    run test -n "${ZPWR_VERBS[install]+x}"
    assert $state equals 0
}
