#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrFasdFList–zpwrFordirUpdate autoload zsh -n
##### Notes: Continues batch36 after zpwrExpandOrCompleteWithDots; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after subcommandscount)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[taillog]' {
    run grep -Fq 'ZPWR_VERBS[taillog]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[logs]' {
    run grep -Fq 'ZPWR_VERBS[logs]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[test]' {
    run grep -Fq 'ZPWR_VERBS[test]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[tests]' {
    run grep -Fq 'ZPWR_VERBS[tests]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[testsall]' {
    run grep -Fq 'ZPWR_VERBS[testsall]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch37 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_008.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_008.zsh"
    assert $state equals 0
}

@test 'wizard page_015.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_015.zsh"
    assert $state equals 0
}

@test 'wizard page_026.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_026.zsh"
    assert $state equals 0
}

@test 'wizard page_050.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_050.zsh"
    assert $state equals 0
}

@test 'wizard page_062.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_062.zsh"
    assert $state equals 0
}

@test 'wizard page_098.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_098.zsh"
    assert $state equals 0
}

@test 'wizard page_112.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_112.zsh"
    assert $state equals 0
}

@test 'wizard page_128.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_128.zsh"
    assert $state equals 0
}

@test 'wizard page_168.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_168.zsh"
    assert $state equals 0
}

@test 'wizard page_192.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_192.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrFasdFList through zpwrFordirUpdate)
#--------------------------------------------------------------
@test 'autoload common zpwrFasdFList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFList"
    assert $state equals 0
}

@test 'autoload common zpwrFasdFListVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFListVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFasdFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFZF"
    assert $state equals 0
}

@test 'autoload common zpwrFigletfonts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFigletfonts"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfEditNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfEditNoZLEC passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEC"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfEditNoZLEEmacs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEEmacs"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfEditNoZLEVim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEVim"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfNoZLEC passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEC"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfNoZLEEmacs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEEmacs"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfNoZLEVim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEVim"
    assert $state equals 0
}

@test 'autoload common zpwrFlame passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFlame"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirs"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirsClean passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsClean"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirsDirty passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsDirty"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirsRefreshClean passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsRefreshClean"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirsRefreshDirty passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsRefreshDirty"
    assert $state equals 0
}

@test 'autoload common zpwrFordir passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFordir"
    assert $state equals 0
}

@test 'autoload common zpwrFordirUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFordirUpdate"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch37 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrFasdFList returns 0' {
    run zpwrExists zpwrFasdFList
    assert $state equals 0
}

@test 'zpwrExists zpwrFasdFZF returns 0' {
    run zpwrExists zpwrFasdFZF
    assert $state equals 0
}

@test 'zpwrExists zpwrFigletfonts returns 0' {
    run zpwrExists zpwrFigletfonts
    assert $state equals 0
}

@test 'zpwrExists zpwrFlame returns 0' {
    run zpwrExists zpwrFlame
    assert $state equals 0
}

@test 'zpwrExists zpwrForAllGitDirs returns 0' {
    run zpwrExists zpwrForAllGitDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrForAllGitDirsClean returns 0' {
    run zpwrExists zpwrForAllGitDirsClean
    assert $state equals 0
}

@test 'zpwrExists zpwrFindFzfNoZLE returns 0' {
    run zpwrExists zpwrFindFzfNoZLE
    assert $state equals 0
}

@test 'zpwrExists zpwrFindFzfEditNoZLEC returns 0' {
    run zpwrExists zpwrFindFzfEditNoZLEC
    assert $state equals 0
}

@test 'zpwrExists zpwrFindFzfEditNoZLEEmacs returns 0' {
    run zpwrExists zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'zpwrExists zpwrFordir returns 0' {
    run zpwrExists zpwrFordir
    assert $state equals 0
}

@test 'zpwrExists zpwrFordirUpdate returns 0' {
    run zpwrExists zpwrFordirUpdate
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists diff cmp returns 0' {
    run zpwrCommandExists diff cmp
    assert $state equals 0
}

@test 'zpwrCommandExists stat id returns 0' {
    run zpwrCommandExists stat id
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'autoload directory exists' {
    run test -d "$ZPWR/autoload"
    assert $state equals 0
}

@test 'tests directory exists' {
    run test -d "$ZPWR/tests"
    assert $state equals 0
}

@test 'README.md exists' {
    run test -f "$ZPWR/README.md"
    assert $state equals 0
}
