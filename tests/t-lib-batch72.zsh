#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (colortest256/zpwrCloneToForked/colorsdiff/color2/compile); wizard_pages; zpwrKillPSVerbEdit..zpwrLocateFzfNoZLEC zsh -n; kill/list/locate zpwrExists
##### Notes: Continues batch71; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (color + compile)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[colortest256]' {
    run grep -Fq 'ZPWR_VERBS[colortest256]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zpwrCloneToForked]' {
    run grep -Fq 'ZPWR_VERBS[zpwrCloneToForked]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[colorsdiff]' {
    run grep -Fq 'ZPWR_VERBS[colorsdiff]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[color2]' {
    run grep -Fq 'ZPWR_VERBS[color2]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[compile]' {
    run grep -Fq 'ZPWR_VERBS[compile]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch72 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_008.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_008.zsh"
    assert $state equals 0
}

@test 'wizard page_018.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_018.zsh"
    assert $state equals 0
}

@test 'wizard page_028.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_028.zsh"
    assert $state equals 0
}

@test 'wizard page_048.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_048.zsh"
    assert $state equals 0
}

@test 'wizard page_068.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_068.zsh"
    assert $state equals 0
}

@test 'wizard page_088.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_088.zsh"
    assert $state equals 0
}

@test 'wizard page_108.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_108.zsh"
    assert $state equals 0
}

@test 'wizard page_128.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_128.zsh"
    assert $state equals 0
}

@test 'wizard page_148.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_148.zsh"
    assert $state equals 0
}

@test 'wizard page_178.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_178.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrKillPSVerbEdit through zpwrLocateFzfNoZLEC (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrKillPSVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillPSVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrKillRemote passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillRemote"
    assert $state equals 0
}

@test 'autoload common zpwrLargestGitFiles passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLargestGitFiles"
    assert $state equals 0
}

@test 'autoload common zpwrLastWordDouble passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLastWordDouble"
    assert $state equals 0
}

@test 'autoload common zpwrLineCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLineCount"
    assert $state equals 0
}

@test 'autoload common zpwrLinkConf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLinkConf"
    assert $state equals 0
}

@test 'autoload common zpwrLint passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLint"
    assert $state equals 0
}

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

#--------------------------------------------------------------
# zpwrExists — batch72 (kill PS edit / list / lint / locate cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrKillPSVerbEdit returns 0' {
    run zpwrExists zpwrKillPSVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrKillRemote returns 0' {
    run zpwrExists zpwrKillRemote
    assert $state equals 0
}

@test 'zpwrExists zpwrLargestGitFiles returns 0' {
    run zpwrExists zpwrLargestGitFiles
    assert $state equals 0
}

@test 'zpwrExists zpwrLastWordDouble returns 0' {
    run zpwrExists zpwrLastWordDouble
    assert $state equals 0
}

@test 'zpwrExists zpwrLineCount returns 0' {
    run zpwrExists zpwrLineCount
    assert $state equals 0
}

@test 'zpwrExists zpwrLinkConf returns 0' {
    run zpwrExists zpwrLinkConf
    assert $state equals 0
}

@test 'zpwrExists zpwrLint returns 0' {
    run zpwrExists zpwrLint
    assert $state equals 0
}

@test 'zpwrExists zpwrListFiles returns 0' {
    run zpwrExists zpwrListFiles
    assert $state equals 0
}

@test 'zpwrExists zpwrListNoClear returns 0' {
    run zpwrExists zpwrListNoClear
    assert $state equals 0
}

@test 'zpwrExists zpwrListVerbs returns 0' {
    run zpwrExists zpwrListVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrListVerbsColor returns 0' {
    run zpwrExists zpwrListVerbsColor
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists awk sed returns 0' {
    run zpwrCommandExists awk sed
    assert $state equals 0
}

@test 'zpwrCommandExists find xargs returns 0' {
    run zpwrCommandExists find xargs
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
