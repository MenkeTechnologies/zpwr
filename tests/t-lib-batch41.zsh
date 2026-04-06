#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrListFiles–zpwrModulesFZF autoload zsh -n
##### Notes: Continues batch40 after zpwrLint; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after travisbuild)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[travisbranch]' {
    run grep -Fq 'ZPWR_VERBS[travisbranch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[travispr]' {
    run grep -Fq 'ZPWR_VERBS[travispr]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[trc]' {
    run grep -Fq 'ZPWR_VERBS[trc]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[tty]' {
    run grep -Fq 'ZPWR_VERBS[tty]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[uninstall]' {
    run grep -Fq 'ZPWR_VERBS[uninstall]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch41 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_012.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_012.zsh"
    assert $state equals 0
}

@test 'wizard page_021.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_021.zsh"
    assert $state equals 0
}

@test 'wizard page_035.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_035.zsh"
    assert $state equals 0
}

@test 'wizard page_060.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_060.zsh"
    assert $state equals 0
}

@test 'wizard page_078.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_078.zsh"
    assert $state equals 0
}

@test 'wizard page_101.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_101.zsh"
    assert $state equals 0
}

@test 'wizard page_125.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_125.zsh"
    assert $state equals 0
}

@test 'wizard page_145.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_145.zsh"
    assert $state equals 0
}

@test 'wizard page_180.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_180.zsh"
    assert $state equals 0
}

@test 'wizard page_197.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_197.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrListFiles through zpwrModulesFZF)
#--------------------------------------------------------------
@test 'autoload common zpwrListFiles passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrListFiles"
    assert $state equals 0
}

@test 'autoload common zpwrListNoClear passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrListNoClear"
    assert $state equals 0
}

@test 'autoload common zpwrListVerbs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrListVerbs"
    assert $state equals 0
}

@test 'autoload common zpwrListVerbsColor passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrListVerbsColor"
    assert $state equals 0
}

@test 'autoload common zpwrLoadJenv passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLoadJenv"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzf"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEdit"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfEditNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfEditNoZLEC passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEC"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfEditNoZLEEmacs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEEmacs"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfEditNoZLEVim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEVim"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrLocateFzfNoZLEC passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLEC"
    assert $state equals 0
}

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

#--------------------------------------------------------------
# zpwrExists — batch41 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrListFiles returns 0' {
    run zpwrExists zpwrListFiles
    assert $state equals 0
}

@test 'zpwrExists zpwrListNoClear returns 0' {
    run zpwrExists zpwrListNoClear
    assert $state equals 0
}

@test 'zpwrExists zpwrListVerbsColor returns 0' {
    run zpwrExists zpwrListVerbsColor
    assert $state equals 0
}

@test 'zpwrExists zpwrLoadJenv returns 0' {
    run zpwrExists zpwrLoadJenv
    assert $state equals 0
}

@test 'zpwrExists zpwrLocateFzf returns 0' {
    run zpwrExists zpwrLocateFzf
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

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists ping nc returns 0' {
    run zpwrCommandExists ping nc
    assert $state equals 0
}

@test 'zpwrCommandExists netstat df returns 0' {
    run zpwrCommandExists netstat df
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'scripts init.sh exists' {
    run test -f "$ZPWR/scripts/init.sh"
    assert $state equals 0
}

@test 'tests test_lib.zsh exists' {
    run test -f "$ZPWR/tests/test_lib.zsh"
    assert $state equals 0
}

@test 'ci.yml workflow exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}
