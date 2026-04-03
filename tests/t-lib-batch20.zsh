#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: git/github short verbs, regen/git-file autoload zsh -n, vim/emacs search verb cluster
##### Notes: hc/hd/ghz mirror GitHub create/delete/zpwr repo shortcuts in env/zpwr.zsh
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — more step anchors
#--------------------------------------------------------------
@test 'ci.yml has Set terminal size variables step' {
    run grep -q 'Set terminal size variables' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml has Install test tools step' {
    run grep -q 'Install test tools' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (git config, GitHub open, regen, tags)
#--------------------------------------------------------------
@test 'autoload common zpwrGitConfig passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitConfig"
    assert $state equals 0
}

@test 'autoload common zpwrGitIgnores passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitIgnores"
    assert $state equals 0
}

@test 'autoload common zpwrChangeGitEmail passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitEmail"
    assert $state equals 0
}

@test 'autoload common zpwrGitReposFile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitReposFile"
    assert $state equals 0
}

@test 'autoload common zpwrOpenmygh passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpenmygh"
    assert $state equals 0
}

@test 'autoload common zpwrGitCheckoutRebasePush passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitCheckoutRebasePush"
    assert $state equals 0
}

@test 'autoload common zpwrCommits passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCommits"
    assert $state equals 0
}

@test 'autoload common zpwrRegenPowerlineLink passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenPowerlineLink"
    assert $state equals 0
}

@test 'autoload common zpwrEditTag passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditTag"
    assert $state equals 0
}

@test 'autoload common zpwrLargestGitFiles passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLargestGitFiles"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — git / GitHub entrypoints
#--------------------------------------------------------------
@test 'zpwrExists zpwrGitConfig returns 0' {
    run zpwrExists zpwrGitConfig
    assert $state equals 0
}

@test 'zpwrExists zpwrOpenmygh returns 0' {
    run zpwrExists zpwrOpenmygh
    assert $state equals 0
}

@test 'zpwrExists zpwrChangeGitEmail returns 0' {
    run zpwrExists zpwrChangeGitEmail
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — GitHub short keys, git tag/clear, vim/emacs search, regen
#--------------------------------------------------------------
@test 'verb ghz registered' {
    run test -n "${ZPWR_VERBS[ghz]+x}"
    assert $state equals 0
}

@test 'verb hc registered' {
    run test -n "${ZPWR_VERBS[hc]+x}"
    assert $state equals 0
}

@test 'verb hd registered' {
    run test -n "${ZPWR_VERBS[hd]+x}"
    assert $state equals 0
}

@test 'verb gitupdatetag registered' {
    run test -n "${ZPWR_VERBS[gitupdatetag]+x}"
    assert $state equals 0
}

@test 'verb gitedittag registered' {
    run test -n "${ZPWR_VERBS[gitedittag]+x}"
    assert $state equals 0
}

@test 'verb gitclearcommit registered' {
    run test -n "${ZPWR_VERBS[gitclearcommit]+x}"
    assert $state equals 0
}

@test 'verb who registered' {
    run test -n "${ZPWR_VERBS[who]+x}"
    assert $state equals 0
}

@test 'verb emacsallserver registered' {
    run test -n "${ZPWR_VERBS[emacsallserver]+x}"
    assert $state equals 0
}

@test 'verb emacsscriptedit registered' {
    run test -n "${ZPWR_VERBS[emacsscriptedit]+x}"
    assert $state equals 0
}

@test 'verb emacsalledit registered' {
    run test -n "${ZPWR_VERBS[emacsalledit]+x}"
    assert $state equals 0
}

@test 'verb emacsautoload registered' {
    run test -n "${ZPWR_VERBS[emacsautoload]+x}"
    assert $state equals 0
}

@test 'verb vimlocatesearch registered' {
    run test -n "${ZPWR_VERBS[vimlocatesearch]+x}"
    assert $state equals 0
}

@test 'verb vimlocatesearchedit registered' {
    run test -n "${ZPWR_VERBS[vimlocatesearchedit]+x}"
    assert $state equals 0
}

@test 'verb vimfilesearchedit registered' {
    run test -n "${ZPWR_VERBS[vimfilesearchedit]+x}"
    assert $state equals 0
}

@test 'verb vimfindsearch registered' {
    run test -n "${ZPWR_VERBS[vimfindsearch]+x}"
    assert $state equals 0
}

@test 'verb vimfindsearchedit registered' {
    run test -n "${ZPWR_VERBS[vimfindsearchedit]+x}"
    assert $state equals 0
}

@test 'verb vimwordsearch registered' {
    run test -n "${ZPWR_VERBS[vimwordsearch]+x}"
    assert $state equals 0
}

@test 'verb vimwordsearchedit registered' {
    run test -n "${ZPWR_VERBS[vimwordsearchedit]+x}"
    assert $state equals 0
}

@test 'verb emacswordsearch registered' {
    run test -n "${ZPWR_VERBS[emacswordsearch]+x}"
    assert $state equals 0
}

@test 'verb emacswordsearchedit registered' {
    run test -n "${ZPWR_VERBS[emacswordsearchedit]+x}"
    assert $state equals 0
}

@test 'verb regenpowerline registered' {
    run test -n "${ZPWR_VERBS[regenpowerline]+x}"
    assert $state equals 0
}

@test 'verb scripttopdf registered' {
    run test -n "${ZPWR_VERBS[scripttopdf]+x}"
    assert $state equals 0
}

@test 'verb regengitdirtyrepocache registered' {
    run test -n "${ZPWR_VERBS[regengitdirtyrepocache]+x}"
    assert $state equals 0
}

@test 'verb gitglobalconfig registered' {
    run test -n "${ZPWR_VERBS[gitglobalconfig]+x}"
    assert $state equals 0
}

@test 'verb gitglobalignores registered' {
    run test -n "${ZPWR_VERBS[gitglobalignores]+x}"
    assert $state equals 0
}

@test 'verb gitclearfile registered' {
    run test -n "${ZPWR_VERBS[gitclearfile]+x}"
    assert $state equals 0
}
