#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrRegenZshCompCache–zpwrSelfInsert autoload zsh -n
##### Notes: Continues batch43 after zpwrRegenSearchEnv; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after verbsedit)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[verbsfzf]' {
    run grep -Fq 'ZPWR_VERBS[verbsfzf]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[verbslist]' {
    run grep -Fq 'ZPWR_VERBS[verbslist]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[verbscount]' {
    run grep -Fq 'ZPWR_VERBS[verbscount]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimall]' {
    run grep -Fq 'ZPWR_VERBS[vimall]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimconfig]' {
    run grep -Fq 'ZPWR_VERBS[vimconfig]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch44 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_015.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_015.zsh"
    assert $state equals 0
}

@test 'wizard page_027.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_027.zsh"
    assert $state equals 0
}

@test 'wizard page_042.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_042.zsh"
    assert $state equals 0
}

@test 'wizard page_064.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_064.zsh"
    assert $state equals 0
}

@test 'wizard page_082.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_082.zsh"
    assert $state equals 0
}

@test 'wizard page_107.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_107.zsh"
    assert $state equals 0
}

@test 'wizard page_133.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_133.zsh"
    assert $state equals 0
}

@test 'wizard page_158.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_158.zsh"
    assert $state equals 0
}

@test 'wizard page_186.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_186.zsh"
    assert $state equals 0
}

@test 'wizard page_200.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_200.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrRegenZshCompCache through zpwrSelfInsert)
#--------------------------------------------------------------
@test 'autoload common zpwrRegenZshCompCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenZshCompCache"
    assert $state equals 0
}

@test 'autoload common zpwrRegexp-replace-single passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegexp-replace-single"
    assert $state equals 0
}

@test 'autoload common zpwrReload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReload"
    assert $state equals 0
}

@test 'autoload common zpwrRelPath passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRelPath"
    assert $state equals 0
}

@test 'autoload common zpwrRename passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRename"
    assert $state equals 0
}

@test 'autoload common zpwrReplacer passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReplacer"
    assert $state equals 0
}

@test 'autoload common zpwrReplay passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReplay"
    assert $state equals 0
}

@test 'autoload common zpwrReset passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReset"
    assert $state equals 0
}

@test 'autoload common zpwrResolve passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrResolve"
    assert $state equals 0
}

@test 'autoload common zpwrRestore passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRestore"
    assert $state equals 0
}

@test 'autoload common zpwrRestoreHistfile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRestoreHistfile"
    assert $state equals 0
}

@test 'autoload common zpwrRetryZcompdump passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRetryZcompdump"
    assert $state equals 0
}

@test 'autoload common zpwrRevealRecurse passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRevealRecurse"
    assert $state equals 0
}

@test 'autoload common zpwrRunner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRunner"
    assert $state equals 0
}

@test 'autoload common zpwrScnew passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrScnew"
    assert $state equals 0
}

@test 'autoload common zpwrScriptCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrScriptCount"
    assert $state equals 0
}

@test 'autoload common zpwrScriptList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrScriptList"
    assert $state equals 0
}

@test 'autoload common zpwrScripts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrScripts"
    assert $state equals 0
}

@test 'autoload common zpwrSearch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSearch"
    assert $state equals 0
}

@test 'autoload common zpwrSelfInsert passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSelfInsert"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch44 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrReload returns 0' {
    run zpwrExists zpwrReload
    assert $state equals 0
}

@test 'zpwrExists zpwrRename returns 0' {
    run zpwrExists zpwrRename
    assert $state equals 0
}

@test 'zpwrExists zpwrReset returns 0' {
    run zpwrExists zpwrReset
    assert $state equals 0
}

@test 'zpwrExists zpwrRestoreHistfile returns 0' {
    run zpwrExists zpwrRestoreHistfile
    assert $state equals 0
}

@test 'zpwrExists zpwrSearch returns 0' {
    run zpwrExists zpwrSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrSnapshot returns 0' {
    run zpwrExists zpwrSnapshot
    assert $state equals 0
}

@test 'zpwrExists zpwrStale returns 0' {
    run zpwrExists zpwrStale
    assert $state equals 0
}

@test 'zpwrExists zpwrStartup returns 0' {
    run zpwrExists zpwrStartup
    assert $state equals 0
}

@test 'zpwrExists zpwrRevealRecurse returns 0' {
    run zpwrExists zpwrRevealRecurse
    assert $state equals 0
}

@test 'zpwrExists zpwrScriptCount returns 0' {
    run zpwrExists zpwrScriptCount
    assert $state equals 0
}

@test 'zpwrExists zpwrScripts returns 0' {
    run zpwrExists zpwrScripts
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists hostname uname returns 0' {
    run zpwrCommandExists hostname uname
    assert $state equals 0
}

@test 'zpwrCommandExists id groups returns 0' {
    run zpwrCommandExists id groups
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
