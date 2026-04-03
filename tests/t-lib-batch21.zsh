#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: diagnostics autoload zsh -n (trace/bench/flame/top), vim/emacs recent + ctags verbs
##### Notes: Short key `z` is a real ZPWR_VERBS entry (z frecency cd)
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — checkout + suite command
#--------------------------------------------------------------
@test 'ci.yml has Checkout repository step' {
    run grep -q 'Checkout repository' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml runs zunit on tests glob' {
    run grep -Fq 'zunit --verbose tests/*.zsh' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (trace, deps, bench, flame, top, intercept)
#--------------------------------------------------------------
@test 'autoload common zpwrTrace passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTrace"
    assert $state equals 0
}

@test 'autoload common zpwrDeps passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDeps"
    assert $state equals 0
}

@test 'autoload common zpwrBench passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBench"
    assert $state equals 0
}

@test 'autoload common zpwrFlame passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFlame"
    assert $state equals 0
}

@test 'autoload common zpwrStartup passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStartup"
    assert $state equals 0
}

@test 'autoload common zpwrWatch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrWatch"
    assert $state equals 0
}

@test 'autoload common zpwrZstyle passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrZstyle"
    assert $state equals 0
}

@test 'autoload common zpwrAnimate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAnimate"
    assert $state equals 0
}

@test 'autoload common zpwrDedupPaths passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDedupPaths"
    assert $state equals 0
}

@test 'autoload common zpwrTop passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTop"
    assert $state equals 0
}

@test 'autoload common zpwrNumVerbs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrNumVerbs"
    assert $state equals 0
}

@test 'autoload common zpwrInterceptSurround passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrInterceptSurround"
    assert $state equals 0
}

@test 'autoload common zpwrInterceptDelete passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrInterceptDelete"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — diagnostics entrypoints
#--------------------------------------------------------------
@test 'zpwrExists zpwrTrace returns 0' {
    run zpwrExists zpwrTrace
    assert $state equals 0
}

@test 'zpwrExists zpwrBench returns 0' {
    run zpwrExists zpwrBench
    assert $state equals 0
}

@test 'zpwrExists zpwrFlame returns 0' {
    run zpwrExists zpwrFlame
    assert $state equals 0
}

@test 'zpwrExists zpwrTop returns 0' {
    run zpwrExists zpwrTop
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — fzf file verbs, env long names, z, vim/emacs recent + ctags
#--------------------------------------------------------------
@test 'verb vimfilesearch registered' {
    run test -n "${ZPWR_VERBS[vimfilesearch]+x}"
    assert $state equals 0
}

@test 'verb vimfilesearchedit registered' {
    run test -n "${ZPWR_VERBS[vimfilesearchedit]+x}"
    assert $state equals 0
}

@test 'verb vimpluginlist registered' {
    run test -n "${ZPWR_VERBS[vimpluginlist]+x}"
    assert $state equals 0
}

@test 'verb filesearchedit registered' {
    run test -n "${ZPWR_VERBS[filesearchedit]+x}"
    assert $state equals 0
}

@test 'verb environmentvariables registered' {
    run test -n "${ZPWR_VERBS[environmentvariables]+x}"
    assert $state equals 0
}

@test 'verb environmentvariablesall registered' {
    run test -n "${ZPWR_VERBS[environmentvariablesall]+x}"
    assert $state equals 0
}

@test 'verb environmentcachesearch registered' {
    run test -n "${ZPWR_VERBS[environmentcachesearch]+x}"
    assert $state equals 0
}

@test 'verb z registered' {
    run test -n "${ZPWR_VERBS[z]+x}"
    assert $state equals 0
}

@test 'verb vimrecentsudo registered' {
    run test -n "${ZPWR_VERBS[vimrecentsudo]+x}"
    assert $state equals 0
}

@test 'verb vimrecentcd registered' {
    run test -n "${ZPWR_VERBS[vimrecentcd]+x}"
    assert $state equals 0
}

@test 'verb vimrecentsudocd registered' {
    run test -n "${ZPWR_VERBS[vimrecentsudocd]+x}"
    assert $state equals 0
}

@test 'verb emacsrecentsudo registered' {
    run test -n "${ZPWR_VERBS[emacsrecentsudo]+x}"
    assert $state equals 0
}

@test 'verb emacsrecentcd registered' {
    run test -n "${ZPWR_VERBS[emacsrecentcd]+x}"
    assert $state equals 0
}

@test 'verb emacsrecentsudocd registered' {
    run test -n "${ZPWR_VERBS[emacsrecentsudocd]+x}"
    assert $state equals 0
}

@test 'verb vimemacsconfig registered' {
    run test -n "${ZPWR_VERBS[vimemacsconfig]+x}"
    assert $state equals 0
}

@test 'verb vimalledit registered' {
    run test -n "${ZPWR_VERBS[vimalledit]+x}"
    assert $state equals 0
}

@test 'verb vimscriptedit registered' {
    run test -n "${ZPWR_VERBS[vimscriptedit]+x}"
    assert $state equals 0
}

@test 'verb vimsearch registered' {
    run test -n "${ZPWR_VERBS[vimsearch]+x}"
    assert $state equals 0
}

@test 'verb vimctags registered' {
    run test -n "${ZPWR_VERBS[vimctags]+x}"
    assert $state equals 0
}

@test 'verb vimgtags registered' {
    run test -n "${ZPWR_VERBS[vimgtags]+x}"
    assert $state equals 0
}

@test 'verb vimgtagsedit registered' {
    run test -n "${ZPWR_VERBS[vimgtagsedit]+x}"
    assert $state equals 0
}
