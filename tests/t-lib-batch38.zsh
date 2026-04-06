#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrFortune–zpwrFzvim autoload zsh -n
##### Notes: Continues batch37 after zpwrFordirUpdate; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after testsall)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[testall]' {
    run grep -Fq 'ZPWR_VERBS[testall]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[timeline]' {
    run grep -Fq 'ZPWR_VERBS[timeline]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[today]' {
    run grep -Fq 'ZPWR_VERBS[today]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[activity]' {
    run grep -Fq 'ZPWR_VERBS[activity]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[timer]' {
    run grep -Fq 'ZPWR_VERBS[timer]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch38 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_009.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_009.zsh"
    assert $state equals 0
}

@test 'wizard page_016.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_016.zsh"
    assert $state equals 0
}

@test 'wizard page_028.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_028.zsh"
    assert $state equals 0
}

@test 'wizard page_054.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_054.zsh"
    assert $state equals 0
}

@test 'wizard page_065.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_065.zsh"
    assert $state equals 0
}

@test 'wizard page_097.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_097.zsh"
    assert $state equals 0
}

@test 'wizard page_118.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_118.zsh"
    assert $state equals 0
}

@test 'wizard page_135.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_135.zsh"
    assert $state equals 0
}

@test 'wizard page_172.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_172.zsh"
    assert $state equals 0
}

@test 'wizard page_199.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_199.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrFortune through zpwrFzvim)
#--------------------------------------------------------------
@test 'autoload common zpwrFortune passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFortune"
    assert $state equals 0
}

@test 'autoload common zpwrFuncRank passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFuncRank"
    assert $state equals 0
}

@test 'autoload common zpwrFzfAllKeybind passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfAllKeybind"
    assert $state equals 0
}

@test 'autoload common zpwrFzfCommits passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfCommits"
    assert $state equals 0
}

@test 'autoload common zpwrFzfDirSearch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfDirSearch"
    assert $state equals 0
}

@test 'autoload common zpwrFzfDirsearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfDirsearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFzfEnv passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnv"
    assert $state equals 0
}

@test 'autoload common zpwrFzfEnvVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnvVerbAccept"
    assert $state equals 0
}

@test 'autoload common zpwrFzfEnvVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnvVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrFzfFileSearch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFileSearch"
    assert $state equals 0
}

@test 'autoload common zpwrFzfFilesearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFilesearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFzfFilesearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrFzfSurround passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfSurround"
    assert $state equals 0
}

@test 'autoload common zpwrFzfVimKeybind passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfVimKeybind"
    assert $state equals 0
}

@test 'autoload common zpwrFzfWordsearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfWordsearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFzfWordsearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrFzfZList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZList"
    assert $state equals 0
}

@test 'autoload common zpwrFzfZListVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZListVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFzfZshKeybind passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZshKeybind"
    assert $state equals 0
}

@test 'autoload common zpwrFzvim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzvim"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch38 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrFortune returns 0' {
    run zpwrExists zpwrFortune
    assert $state equals 0
}

@test 'zpwrExists zpwrFuncRank returns 0' {
    run zpwrExists zpwrFuncRank
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfAllKeybind returns 0' {
    run zpwrExists zpwrFzfAllKeybind
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfCommits returns 0' {
    run zpwrExists zpwrFzfCommits
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfDirSearch returns 0' {
    run zpwrExists zpwrFzfDirSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfEnv returns 0' {
    run zpwrExists zpwrFzfEnv
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfFileSearch returns 0' {
    run zpwrExists zpwrFzfFileSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfSurround returns 0' {
    run zpwrExists zpwrFzfSurround
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfZList returns 0' {
    run zpwrExists zpwrFzfZList
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfWordsearchVerb returns 0' {
    run zpwrExists zpwrFzfWordsearchVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrFzvim returns 0' {
    run zpwrExists zpwrFzvim
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists mv cp returns 0' {
    run zpwrCommandExists mv cp
    assert $state equals 0
}

@test 'zpwrCommandExists ln readlink returns 0' {
    run zpwrCommandExists ln readlink
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'docs README.md exists' {
    run test -f "$ZPWR/docs/README.md"
    assert $state equals 0
}

@test 'env zpwr.zsh file exists' {
    run test -f "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'install zpwr.yml exists' {
    run test -f "$ZPWR/install/zpwr.yml"
    assert $state equals 0
}
