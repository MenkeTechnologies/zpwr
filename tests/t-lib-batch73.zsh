#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (compilefpath..copycommand); wizard_pages; zpwrLocateFzfNoZLEEmacs..zpwrPasteToStdout zsh -n; locate/matrix/open zpwrExists
##### Notes: Continues batch72; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (compile variants + copy)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[compilefpath]' {
    run grep -Fq 'ZPWR_VERBS[compilefpath]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[compilefiles]' {
    run grep -Fq 'ZPWR_VERBS[compilefiles]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[comps]' {
    run grep -Fq 'ZPWR_VERBS[comps]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[completions]' {
    run grep -Fq 'ZPWR_VERBS[completions]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[copycommand]' {
    run grep -Fq 'ZPWR_VERBS[copycommand]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch73 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_012.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_012.zsh"
    assert $state equals 0
}

@test 'wizard page_022.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_022.zsh"
    assert $state equals 0
}

@test 'wizard page_032.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_032.zsh"
    assert $state equals 0
}

@test 'wizard page_052.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_052.zsh"
    assert $state equals 0
}

@test 'wizard page_072.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_072.zsh"
    assert $state equals 0
}

@test 'wizard page_092.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_092.zsh"
    assert $state equals 0
}

@test 'wizard page_112.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_112.zsh"
    assert $state equals 0
}

@test 'wizard page_132.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_132.zsh"
    assert $state equals 0
}

@test 'wizard page_152.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_152.zsh"
    assert $state equals 0
}

@test 'wizard page_198.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_198.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrLocateFzfNoZLEEmacs through zpwrPasteToStdout (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrLocateFzfNoZLEEmacs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLEEmacs"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfNoZLEVim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLEVim"
    assert $state equals 0
}

@test 'autoload common zpwrLoginCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLoginCount"
    assert $state equals 0
}

@test 'autoload common zpwrLsoffzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLsoffzf"
    assert $state equals 0
}

@test 'autoload common zpwrMagicEnter passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrMagicEnter"
    assert $state equals 0
}

@test 'autoload common zpwrMatrix passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrMatrix"
    assert $state equals 0
}

@test 'autoload common zpwrModulesFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrModulesFZF"
    assert $state equals 0
}

@test 'autoload common zpwrMycurl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrMycurl"
    assert $state equals 0
}

@test 'autoload common zpwrNoPonyBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrNoPonyBanner"
    assert $state equals 0
}

@test 'autoload common zpwrNumVerbs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrNumVerbs"
    assert $state equals 0
}

@test 'autoload common zpwrNvimThenRecentf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrNvimThenRecentf"
    assert $state equals 0
}

@test 'autoload common zpwrOmzOverrides passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOmzOverrides"
    assert $state equals 0
}

@test 'autoload common zpwrOpen passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpen"
    assert $state equals 0
}

@test 'autoload common zpwrOpenExercism passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpenExercism"
    assert $state equals 0
}

@test 'autoload common zpwrOpenmygh passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpenmygh"
    assert $state equals 0
}

@test 'autoload common zpwrOptionsFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOptionsFZF"
    assert $state equals 0
}

@test 'autoload common zpwrOverridePromptDir passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOverridePromptDir"
    assert $state equals 0
}

@test 'autoload common zpwrParseRecentf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrParseRecentf"
    assert $state equals 0
}

@test 'autoload common zpwrPasteToBuffer passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPasteToBuffer"
    assert $state equals 0
}

@test 'autoload common zpwrPasteToStdout passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPasteToStdout"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch73 (locate tail / matrix / open / paste cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrLocateFzfNoZLEEmacs returns 0' {
    run zpwrExists zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
}

@test 'zpwrExists zpwrLocateFzfNoZLEVim returns 0' {
    run zpwrExists zpwrLocateFzfNoZLEVim
    assert $state equals 0
}

@test 'zpwrExists zpwrLoginCount returns 0' {
    run zpwrExists zpwrLoginCount
    assert $state equals 0
}

@test 'zpwrExists zpwrLsoffzf returns 0' {
    run zpwrExists zpwrLsoffzf
    assert $state equals 0
}

@test 'zpwrExists zpwrMagicEnter returns 0' {
    run zpwrExists zpwrMagicEnter
    assert $state equals 0
}

@test 'zpwrExists zpwrMatrix returns 0' {
    run zpwrExists zpwrMatrix
    assert $state equals 0
}

@test 'zpwrExists zpwrModulesFZF returns 0' {
    run zpwrExists zpwrModulesFZF
    assert $state equals 0
}

@test 'zpwrExists zpwrMycurl returns 0' {
    run zpwrExists zpwrMycurl
    assert $state equals 0
}

@test 'zpwrExists zpwrNoPonyBanner returns 0' {
    run zpwrExists zpwrNoPonyBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrNumVerbs returns 0' {
    run zpwrExists zpwrNumVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrNvimThenRecentf returns 0' {
    run zpwrExists zpwrNvimThenRecentf
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists gzip gunzip returns 0' {
    run zpwrCommandExists gzip gunzip
    assert $state equals 0
}

@test 'zpwrCommandExists basename dirname returns 0' {
    run zpwrCommandExists basename dirname
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
