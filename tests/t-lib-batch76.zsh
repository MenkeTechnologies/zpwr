#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (dfimage/exercism cluster); wizard_pages; zpwrRunner..zpwrSudoEditorRecentCd zsh -n; script/search/snapshot zpwrExists
##### Notes: Continues batch75; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (dfimage + exercism)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[dfimage]' {
    run grep -Fq 'ZPWR_VERBS[dfimage]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[exercism]' {
    run grep -Fq 'ZPWR_VERBS[exercism]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[exercismedit]' {
    run grep -Fq 'ZPWR_VERBS[exercismedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[homeexercism]' {
    run grep -Fq 'ZPWR_VERBS[homeexercism]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[exercismdownload]' {
    run grep -Fq 'ZPWR_VERBS[exercismdownload]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch76 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_009.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_009.zsh"
    assert $state equals 0
}

@test 'wizard page_019.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_019.zsh"
    assert $state equals 0
}

@test 'wizard page_039.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_039.zsh"
    assert $state equals 0
}

@test 'wizard page_049.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_049.zsh"
    assert $state equals 0
}

@test 'wizard page_069.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_069.zsh"
    assert $state equals 0
}

@test 'wizard page_079.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_079.zsh"
    assert $state equals 0
}

@test 'wizard page_099.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_099.zsh"
    assert $state equals 0
}

@test 'wizard page_119.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_119.zsh"
    assert $state equals 0
}

@test 'wizard page_139.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_139.zsh"
    assert $state equals 0
}

@test 'wizard page_169.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_169.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrRunner through zpwrSudoEditorRecentCd (zsh -n)
#--------------------------------------------------------------
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

@test 'autoload common zpwrSnapshot passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSnapshot"
    assert $state equals 0
}

@test 'autoload common zpwrSshRegain passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSshRegain"
    assert $state equals 0
}

@test 'autoload common zpwrStale passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStale"
    assert $state equals 0
}

@test 'autoload common zpwrStaleZcompdump passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStaleZcompdump"
    assert $state equals 0
}

@test 'autoload common zpwrStartAutoComplete passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStartAutoComplete"
    assert $state equals 0
}

@test 'autoload common zpwrStartSend passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStartSend"
    assert $state equals 0
}

@test 'autoload common zpwrStartSendFull passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStartSendFull"
    assert $state equals 0
}

@test 'autoload common zpwrStartup passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStartup"
    assert $state equals 0
}

@test 'autoload common zpwrStopAutoComplete passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStopAutoComplete"
    assert $state equals 0
}

@test 'autoload common zpwrStopSend passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStopSend"
    assert $state equals 0
}

@test 'autoload common zpwrStudy passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrStudy"
    assert $state equals 0
}

@test 'autoload common zpwrSudoEditorRecent passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoEditorRecent"
    assert $state equals 0
}

@test 'autoload common zpwrSudoEditorRecentCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoEditorRecentCd"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch76 (runner / script / search / send / study cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrRunner returns 0' {
    run zpwrExists zpwrRunner
    assert $state equals 0
}

@test 'zpwrExists zpwrScnew returns 0' {
    run zpwrExists zpwrScnew
    assert $state equals 0
}

@test 'zpwrExists zpwrScriptCount returns 0' {
    run zpwrExists zpwrScriptCount
    assert $state equals 0
}

@test 'zpwrExists zpwrScriptList returns 0' {
    run zpwrExists zpwrScriptList
    assert $state equals 0
}

@test 'zpwrExists zpwrScripts returns 0' {
    run zpwrExists zpwrScripts
    assert $state equals 0
}

@test 'zpwrExists zpwrSearch returns 0' {
    run zpwrExists zpwrSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrSelfInsert returns 0' {
    run zpwrExists zpwrSelfInsert
    assert $state equals 0
}

@test 'zpwrExists zpwrSnapshot returns 0' {
    run zpwrExists zpwrSnapshot
    assert $state equals 0
}

@test 'zpwrExists zpwrSshRegain returns 0' {
    run zpwrExists zpwrSshRegain
    assert $state equals 0
}

@test 'zpwrExists zpwrStale returns 0' {
    run zpwrExists zpwrStale
    assert $state equals 0
}

@test 'zpwrExists zpwrStaleZcompdump returns 0' {
    run zpwrExists zpwrStaleZcompdump
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists mkdir mktemp returns 0' {
    run zpwrCommandExists mkdir mktemp
    assert $state equals 0
}

@test 'zpwrCommandExists grep sed returns 0' {
    run zpwrCommandExists grep sed
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
