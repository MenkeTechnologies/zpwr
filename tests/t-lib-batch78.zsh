#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (emacsallserver..emacsplugincount); wizard_pages; zpwrUninstall..zpwrVimAutoload zsh -n; update/upload/verbs/vim zpwrExists
##### Notes: Continues batch77; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (emacs server + plugin count)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[emacsallserver]' {
    run grep -Fq 'ZPWR_VERBS[emacsallserver]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsalledit]' {
    run grep -Fq 'ZPWR_VERBS[emacsalledit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsautoload]' {
    run grep -Fq 'ZPWR_VERBS[emacsautoload]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacscd]' {
    run grep -Fq 'ZPWR_VERBS[emacscd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsplugincount]' {
    run grep -Fq 'ZPWR_VERBS[emacsplugincount]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch78 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_011.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_011.zsh"
    assert $state equals 0
}

@test 'wizard page_021.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_021.zsh"
    assert $state equals 0
}

@test 'wizard page_031.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_031.zsh"
    assert $state equals 0
}

@test 'wizard page_041.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_041.zsh"
    assert $state equals 0
}

@test 'wizard page_051.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_051.zsh"
    assert $state equals 0
}

@test 'wizard page_061.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_061.zsh"
    assert $state equals 0
}

@test 'wizard page_071.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_071.zsh"
    assert $state equals 0
}

@test 'wizard page_081.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_081.zsh"
    assert $state equals 0
}

@test 'wizard page_101.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_101.zsh"
    assert $state equals 0
}

@test 'wizard page_121.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_121.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrUninstall through zpwrVimAutoload (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrUninstall passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUninstall"
    assert $state equals 0
}

@test 'autoload common zpwrUnlinkConf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUnlinkConf"
    assert $state equals 0
}

@test 'autoload common zpwrUp8widget passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUp8widget"
    assert $state equals 0
}

@test 'autoload common zpwrUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdate"
    assert $state equals 0
}

@test 'autoload common zpwrUpdateAllGitDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateAllGitDirs"
    assert $state equals 0
}

@test 'autoload common zpwrUpdateDeps passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateDeps"
    assert $state equals 0
}

@test 'autoload common zpwrUpdateDepsClean passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateDepsClean"
    assert $state equals 0
}

@test 'autoload common zpwrUpdater passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdater"
    assert $state equals 0
}

@test 'autoload common zpwrUpload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpload"
    assert $state equals 0
}

@test 'autoload common zpwrUrlSafe passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUrlSafe"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsEditNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsEditNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsFZF"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsWidget passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsWidget"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsWidgetAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsWidgetAccept"
    assert $state equals 0
}

@test 'autoload common zpwrVimAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAll"
    assert $state equals 0
}

@test 'autoload common zpwrVimAllEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllEdit"
    assert $state equals 0
}

@test 'autoload common zpwrVimAllWidget passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllWidget"
    assert $state equals 0
}

@test 'autoload common zpwrVimAllWidgetAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllWidgetAccept"
    assert $state equals 0
}

@test 'autoload common zpwrVimAutoload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAutoload"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch78 (uninstall / update / verbs / vim-all cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrUninstall returns 0' {
    run zpwrExists zpwrUninstall
    assert $state equals 0
}

@test 'zpwrExists zpwrUnlinkConf returns 0' {
    run zpwrExists zpwrUnlinkConf
    assert $state equals 0
}

@test 'zpwrExists zpwrUp8widget returns 0' {
    run zpwrExists zpwrUp8widget
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdate returns 0' {
    run zpwrExists zpwrUpdate
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdateAllGitDirs returns 0' {
    run zpwrExists zpwrUpdateAllGitDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdateDeps returns 0' {
    run zpwrExists zpwrUpdateDeps
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdateDepsClean returns 0' {
    run zpwrExists zpwrUpdateDepsClean
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdater returns 0' {
    run zpwrExists zpwrUpdater
    assert $state equals 0
}

@test 'zpwrExists zpwrUpload returns 0' {
    run zpwrExists zpwrUpload
    assert $state equals 0
}

@test 'zpwrExists zpwrUrlSafe returns 0' {
    run zpwrExists zpwrUrlSafe
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsEditNoZLE returns 0' {
    run zpwrExists zpwrVerbsEditNoZLE
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists zip unzip returns 0' {
    run zpwrCommandExists zip unzip
    assert $state equals 0
}

@test 'zpwrCommandExists column pr returns 0' {
    run zpwrCommandExists column pr
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'ci.yml workflow exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'tests test_lib.zsh exists' {
    run test -f "$ZPWR/tests/test_lib.zsh"
    assert $state equals 0
}

@test 'install zpwr.yml exists' {
    run test -f "$ZPWR/install/zpwr.yml"
    assert $state equals 0
}
