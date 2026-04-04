#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrPrintMap–zpwrRegenSearchEnv autoload zsh -n
##### Notes: Continues batch42 after zpwrPreexec; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after updatedepsclean)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[updatezinit]' {
    run grep -Fq 'ZPWR_VERBS[updatezinit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[upload]' {
    run grep -Fq 'ZPWR_VERBS[upload]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[urlsafe]' {
    run grep -Fq 'ZPWR_VERBS[urlsafe]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[verbs]' {
    run grep -Fq 'ZPWR_VERBS[verbs]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[verbsedit]' {
    run grep -Fq 'ZPWR_VERBS[verbsedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch43 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_014.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_014.zsh"
    assert $state equals 0
}

@test 'wizard page_025.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_025.zsh"
    assert $state equals 0
}

@test 'wizard page_040.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_040.zsh"
    assert $state equals 0
}

@test 'wizard page_063.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_063.zsh"
    assert $state equals 0
}

@test 'wizard page_081.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_081.zsh"
    assert $state equals 0
}

@test 'wizard page_106.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_106.zsh"
    assert $state equals 0
}

@test 'wizard page_129.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_129.zsh"
    assert $state equals 0
}

@test 'wizard page_152.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_152.zsh"
    assert $state equals 0
}

@test 'wizard page_184.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_184.zsh"
    assert $state equals 0
}

@test 'wizard page_194.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_194.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrPrintMap through zpwrRegenSearchEnv)
#--------------------------------------------------------------
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

@test 'autoload common zpwrRegenGtagsCtags passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsCtags"
    assert $state equals 0
}

@test 'autoload common zpwrRegenGtagsPygments passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsPygments"
    assert $state equals 0
}

@test 'autoload common zpwrRegenGtagsType passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsType"
    assert $state equals 0
}

@test 'autoload common zpwrRegenHistory passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenHistory"
    assert $state equals 0
}

@test 'autoload common zpwrRegenMost passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenMost"
    assert $state equals 0
}

@test 'autoload common zpwrRegenPowerlineLink passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenPowerlineLink"
    assert $state equals 0
}

@test 'autoload common zpwrRegenSearchEnv passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenSearchEnv"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch43 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrPrintMap returns 0' {
    run zpwrExists zpwrPrintMap
    assert $state equals 0
}

@test 'zpwrExists zpwrRecompile returns 0' {
    run zpwrExists zpwrRecompile
    assert $state equals 0
}

@test 'zpwrExists zpwrRefreshZwc returns 0' {
    run zpwrExists zpwrRefreshZwc
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenAll returns 0' {
    run zpwrExists zpwrRegenAll
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

@test 'zpwrExists zpwrRelPath returns 0' {
    run zpwrExists zpwrRelPath
    assert $state equals 0
}

@test 'zpwrExists zpwrReplacer returns 0' {
    run zpwrExists zpwrReplacer
    assert $state equals 0
}

@test 'zpwrExists zpwrResolve returns 0' {
    run zpwrExists zpwrResolve
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenCtags returns 0' {
    run zpwrExists zpwrRegenCtags
    assert $state equals 0
}

@test 'zpwrExists zpwrRecompileFpath returns 0' {
    run zpwrExists zpwrRecompileFpath
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists perl python3 returns 0' {
    run zpwrCommandExists perl python3
    assert $state equals 0
}

@test 'zpwrCommandExists curl git returns 0' {
    run zpwrCommandExists curl git
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test '.zpwr_root marker exists' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'scripts lib.sh exists' {
    run test -f "$ZPWR/scripts/lib.sh"
    assert $state equals 0
}

@test 'license.md exists and is non-empty' {
    run test -s "$ZPWR/license.md"
    assert $state equals 0
}
