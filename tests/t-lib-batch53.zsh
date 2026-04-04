#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; scripts/*.sh zsh -n (fzfEnv–indenterAndDuplicateLineDeleter)
##### Notes: Continues batch52 after zpz; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after zpz)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[zrc]' {
    run grep -Fq 'ZPWR_VERBS[zrc]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zshplugincount]' {
    run grep -Fq 'ZPWR_VERBS[zshplugincount]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zshpluginlist]' {
    run grep -Fq 'ZPWR_VERBS[zshpluginlist]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zshsearch]' {
    run grep -Fq 'ZPWR_VERBS[zshsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zstyle]' {
    run grep -Fq 'ZPWR_VERBS[zstyle]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch53 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_011.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_011.zsh"
    assert $state equals 0
}

@test 'wizard page_037.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_037.zsh"
    assert $state equals 0
}

@test 'wizard page_053.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_053.zsh"
    assert $state equals 0
}

@test 'wizard page_076.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_076.zsh"
    assert $state equals 0
}

@test 'wizard page_094.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_094.zsh"
    assert $state equals 0
}

@test 'wizard page_116.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_116.zsh"
    assert $state equals 0
}

@test 'wizard page_136.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_136.zsh"
    assert $state equals 0
}

@test 'wizard page_167.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_167.zsh"
    assert $state equals 0
}

@test 'wizard page_188.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_188.zsh"
    assert $state equals 0
}

@test 'wizard page_204.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_204.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (20 *.sh after fzfAgOpts alphabetically)
#--------------------------------------------------------------
@test 'scripts fzfEnv.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfEnv.sh"
    assert $state equals 0
}

@test 'scripts fzfEnvCurrent.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfEnvCurrent.sh"
    assert $state equals 0
}

@test 'scripts fzfEnvVerbs.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfEnvVerbs.sh"
    assert $state equals 0
}

@test 'scripts fzfGitOpts.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfGitOpts.sh"
    assert $state equals 0
}

@test 'scripts fzfGitSearchOpts.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfGitSearchOpts.sh"
    assert $state equals 0
}

@test 'scripts fzfGtagsOpts.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfGtagsOpts.sh"
    assert $state equals 0
}

@test 'scripts fzfMan.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfMan.sh"
    assert $state equals 0
}

@test 'scripts fzfPreviewOpts.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfPreviewOpts.sh"
    assert $state equals 0
}

@test 'scripts fzfPreviewOpts2Pos.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfPreviewOpts2Pos.sh"
    assert $state equals 0
}

@test 'scripts fzfPreviewOptsCommon.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfPreviewOptsCommon.sh"
    assert $state equals 0
}

@test 'scripts fzfPreviewOptsCommon2Pos.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfPreviewOptsCommon2Pos.sh"
    assert $state equals 0
}

@test 'scripts fzfPreviewOptsCtrlT.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfPreviewOptsCtrlT.sh"
    assert $state equals 0
}

@test 'scripts fzfPreviewOptsPony.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfPreviewOptsPony.sh"
    assert $state equals 0
}

@test 'scripts genericDisplayer.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/genericDisplayer.sh"
    assert $state equals 0
}

@test 'scripts genericDisplayerLolcat.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/genericDisplayerLolcat.sh"
    assert $state equals 0
}

@test 'scripts gitgo.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/gitgo.sh"
    assert $state equals 0
}

@test 'scripts gitRemoteRepoInformation.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/gitRemoteRepoInformation.sh"
    assert $state equals 0
}

@test 'scripts goForward.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/goForward.sh"
    assert $state equals 0
}

@test 'scripts headerSummarizer.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/headerSummarizer.sh"
    assert $state equals 0
}

@test 'scripts indenterAndDuplicateLineDeleter.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/indenterAndDuplicateLineDeleter.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch53 (fzf env / fordir / toriprenew cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrFzfEnv returns 0' {
    run zpwrExists zpwrFzfEnv
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfSurround returns 0' {
    run zpwrExists zpwrFzfSurround
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfVimKeybind returns 0' {
    run zpwrExists zpwrFzfVimKeybind
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfFileSearch returns 0' {
    run zpwrExists zpwrFzfFileSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfDirSearch returns 0' {
    run zpwrExists zpwrFzfDirSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfAllKeybind returns 0' {
    run zpwrExists zpwrFzfAllKeybind
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfEnvVerbAccept returns 0' {
    run zpwrExists zpwrFzfEnvVerbAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfEnvVerbEdit returns 0' {
    run zpwrExists zpwrFzfEnvVerbEdit
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

@test 'zpwrExists zpwrForAllGitDirs returns 0' {
    run zpwrExists zpwrForAllGitDirs
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists pgrep pkill returns 0' {
    run zpwrCommandExists pgrep pkill
    assert $state equals 0
}

@test 'zpwrCommandExists vim git returns 0' {
    run zpwrCommandExists vim git
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
