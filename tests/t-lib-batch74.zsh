#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (decompile/deps/callers/detach/digs); wizard_pages; zpwrPathaudit..zpwrRegenCtags zsh -n; pathaudit/print/regen zpwrExists
##### Notes: Continues batch73; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (deps + detach + digs)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[decompile]' {
    run grep -Fq 'ZPWR_VERBS[decompile]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[deps]' {
    run grep -Fq 'ZPWR_VERBS[deps]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[callers]' {
    run grep -Fq 'ZPWR_VERBS[callers]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[detach]' {
    run grep -Fq 'ZPWR_VERBS[detach]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[digs]' {
    run grep -Fq 'ZPWR_VERBS[digs]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch74 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_003.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_003.zsh"
    assert $state equals 0
}

@test 'wizard page_013.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_013.zsh"
    assert $state equals 0
}

@test 'wizard page_023.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_023.zsh"
    assert $state equals 0
}

@test 'wizard page_033.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_033.zsh"
    assert $state equals 0
}

@test 'wizard page_043.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_043.zsh"
    assert $state equals 0
}

@test 'wizard page_063.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_063.zsh"
    assert $state equals 0
}

@test 'wizard page_073.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_073.zsh"
    assert $state equals 0
}

@test 'wizard page_083.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_083.zsh"
    assert $state equals 0
}

@test 'wizard page_103.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_103.zsh"
    assert $state equals 0
}

@test 'wizard page_123.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_123.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrPathaudit through zpwrRegenCtags (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrPathaudit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPathaudit"
    assert $state equals 0
}

@test 'autoload common zpwrPirun passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPirun"
    assert $state equals 0
}

@test 'autoload common zpwrPoll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPoll"
    assert $state equals 0
}

@test 'autoload common zpwrPonyBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPonyBanner"
    assert $state equals 0
}

@test 'autoload common zpwrPorts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPorts"
    assert $state equals 0
}

@test 'autoload common zpwrPrecmd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPrecmd"
    assert $state equals 0
}

@test 'autoload common zpwrPreexec passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPreexec"
    assert $state equals 0
}

@test 'autoload common zpwrPrintMap passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPrintMap"
    assert $state equals 0
}

@test 'autoload common zpwrPstreemonitor passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPstreemonitor"
    assert $state equals 0
}

@test 'autoload common zpwrPygmentcolors passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPygmentcolors"
    assert $state equals 0
}

@test 'autoload common zpwrRationalizeDot passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRationalizeDot"
    assert $state equals 0
}

@test 'autoload common zpwrRecentfThenNvim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRecentfThenNvim"
    assert $state equals 0
}

@test 'autoload common zpwrRecompile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRecompile"
    assert $state equals 0
}

@test 'autoload common zpwrRecompileFiles passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRecompileFiles"
    assert $state equals 0
}

@test 'autoload common zpwrRecompileFpath passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRecompileFpath"
    assert $state equals 0
}

@test 'autoload common zpwrRefreshZwc passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRefreshZwc"
    assert $state equals 0
}

@test 'autoload common zpwrRegenAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenAll"
    assert $state equals 0
}

@test 'autoload common zpwrRegenAllKeybindingsCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenAllKeybindingsCache"
    assert $state equals 0
}

@test 'autoload common zpwrRegenConfigLinks passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenConfigLinks"
    assert $state equals 0
}

@test 'autoload common zpwrRegenCtags passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenCtags"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch74 (path P–R autoload cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrPathaudit returns 0' {
    run zpwrExists zpwrPathaudit
    assert $state equals 0
}

@test 'zpwrExists zpwrPirun returns 0' {
    run zpwrExists zpwrPirun
    assert $state equals 0
}

@test 'zpwrExists zpwrPoll returns 0' {
    run zpwrExists zpwrPoll
    assert $state equals 0
}

@test 'zpwrExists zpwrPonyBanner returns 0' {
    run zpwrExists zpwrPonyBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrPorts returns 0' {
    run zpwrExists zpwrPorts
    assert $state equals 0
}

@test 'zpwrExists zpwrPrecmd returns 0' {
    run zpwrExists zpwrPrecmd
    assert $state equals 0
}

@test 'zpwrExists zpwrPreexec returns 0' {
    run zpwrExists zpwrPreexec
    assert $state equals 0
}

@test 'zpwrExists zpwrPrintMap returns 0' {
    run zpwrExists zpwrPrintMap
    assert $state equals 0
}

@test 'zpwrExists zpwrPstreemonitor returns 0' {
    run zpwrExists zpwrPstreemonitor
    assert $state equals 0
}

@test 'zpwrExists zpwrPygmentcolors returns 0' {
    run zpwrExists zpwrPygmentcolors
    assert $state equals 0
}

@test 'zpwrExists zpwrRationalizeDot returns 0' {
    run zpwrExists zpwrRationalizeDot
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists mv cp returns 0' {
    run zpwrCommandExists mv cp
    assert $state equals 0
}

@test 'zpwrCommandExists sort uniq returns 0' {
    run zpwrCommandExists sort uniq
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
