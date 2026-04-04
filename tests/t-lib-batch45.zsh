#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrSnapshot–zpwrTailLog autoload zsh -n
##### Notes: Continues batch44 after zpwrSelfInsert; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after vimconfig)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[vimemacsconfig]' {
    run grep -Fq 'ZPWR_VERBS[vimemacsconfig]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimscripts]' {
    run grep -Fq 'ZPWR_VERBS[vimscripts]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimscriptedit]' {
    run grep -Fq 'ZPWR_VERBS[vimscriptedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimalledit]' {
    run grep -Fq 'ZPWR_VERBS[vimalledit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimautoload]' {
    run grep -Fq 'ZPWR_VERBS[vimautoload]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch45 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_003.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_003.zsh"
    assert $state equals 0
}

@test 'wizard page_018.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_018.zsh"
    assert $state equals 0
}

@test 'wizard page_034.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_034.zsh"
    assert $state equals 0
}

@test 'wizard page_055.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_055.zsh"
    assert $state equals 0
}

@test 'wizard page_075.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_075.zsh"
    assert $state equals 0
}

@test 'wizard page_095.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_095.zsh"
    assert $state equals 0
}

@test 'wizard page_115.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_115.zsh"
    assert $state equals 0
}

@test 'wizard page_146.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_146.zsh"
    assert $state equals 0
}

@test 'wizard page_166.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_166.zsh"
    assert $state equals 0
}

@test 'wizard page_189.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_189.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrSnapshot through zpwrTailLog)
#--------------------------------------------------------------
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

@test 'autoload common zpwrSudoEmacsRecent passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoEmacsRecent"
    assert $state equals 0
}

@test 'autoload common zpwrSudoEmacsRecentCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoEmacsRecentCd"
    assert $state equals 0
}

@test 'autoload common zpwrSudoVimRecent passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoVimRecent"
    assert $state equals 0
}

@test 'autoload common zpwrSudoVimRecentCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoVimRecentCd"
    assert $state equals 0
}

@test 'autoload common zpwrTabNum passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTabNum"
    assert $state equals 0
}

@test 'autoload common zpwrTabNumCmd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTabNumCmd"
    assert $state equals 0
}

@test 'autoload common zpwrTailLog passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTailLog"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch45 autoload names
#--------------------------------------------------------------
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

@test 'zpwrExists zpwrStartup returns 0' {
    run zpwrExists zpwrStartup
    assert $state equals 0
}

@test 'zpwrExists zpwrStudy returns 0' {
    run zpwrExists zpwrStudy
    assert $state equals 0
}

@test 'zpwrExists zpwrStopSend returns 0' {
    run zpwrExists zpwrStopSend
    assert $state equals 0
}

@test 'zpwrExists zpwrStartSend returns 0' {
    run zpwrExists zpwrStartSend
    assert $state equals 0
}

@test 'zpwrExists zpwrTabNum returns 0' {
    run zpwrExists zpwrTabNum
    assert $state equals 0
}

@test 'zpwrExists zpwrTailLog returns 0' {
    run zpwrExists zpwrTailLog
    assert $state equals 0
}

@test 'zpwrExists zpwrTest returns 0' {
    run zpwrExists zpwrTest
    assert $state equals 0
}

@test 'zpwrExists zpwrTestAll returns 0' {
    run zpwrExists zpwrTestAll
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists sleep printf returns 0' {
    run zpwrCommandExists sleep printf
    assert $state equals 0
}

@test 'zpwrCommandExists ls cat returns 0' {
    run zpwrCommandExists ls cat
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
