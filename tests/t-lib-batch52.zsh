#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; scripts/*.sh zsh -n (coolFormatter–fzfAgOpts)
##### Notes: Continues batch51 after tutorial; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after tutorial)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[docs]' {
    run grep -Fq 'ZPWR_VERBS[docs]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zp]' {
    run grep -Fq 'ZPWR_VERBS[zp]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zpwr]' {
    run grep -Fq 'ZPWR_VERBS[zpwr]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zpwrgithub]' {
    run grep -Fq 'ZPWR_VERBS[zpwrgithub]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zpz]' {
    run grep -Fq 'ZPWR_VERBS[zpz]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch52 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_010.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_010.zsh"
    assert $state equals 0
}

@test 'wizard page_035.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_035.zsh"
    assert $state equals 0
}

@test 'wizard page_051.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_051.zsh"
    assert $state equals 0
}

@test 'wizard page_074.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_074.zsh"
    assert $state equals 0
}

@test 'wizard page_092.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_092.zsh"
    assert $state equals 0
}

@test 'wizard page_114.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_114.zsh"
    assert $state equals 0
}

@test 'wizard page_134.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_134.zsh"
    assert $state equals 0
}

@test 'wizard page_165.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_165.zsh"
    assert $state equals 0
}

@test 'wizard page_187.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_187.zsh"
    assert $state equals 0
}

@test 'wizard page_203.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_203.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (20 *.sh after connectionShower alphabetically)
#--------------------------------------------------------------
@test 'scripts coolFormatter.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/coolFormatter.sh"
    assert $state equals 0
}

@test 'scripts CPU_Stresser.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/CPU_Stresser.sh"
    assert $state equals 0
}

@test 'scripts createScriptButDontOpenSublime.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/createScriptButDontOpenSublime.sh"
    assert $state equals 0
}

@test 'scripts createTextFile.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/createTextFile.sh"
    assert $state equals 0
}

@test 'scripts crossOSCommands.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/crossOSCommands.sh"
    assert $state equals 0
}

@test 'scripts crossOSExecute.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/crossOSExecute.sh"
    assert $state equals 0
}

@test 'scripts directoryContentsSize.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/directoryContentsSize.sh"
    assert $state equals 0
}

@test 'scripts dsDownloader.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/dsDownloader.sh"
    assert $state equals 0
}

@test 'scripts duplicateLineDeleter.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/duplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'scripts em-server.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/em-server.sh"
    assert $state equals 0
}

@test 'scripts encrypt.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/encrypt.sh"
    assert $state equals 0
}

@test 'scripts evilSkull.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/evilSkull.sh"
    assert $state equals 0
}

@test 'scripts eyes.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/eyes.sh"
    assert $state equals 0
}

@test 'scripts fdswap.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fdswap.sh"
    assert $state equals 0
}

@test 'scripts forDir.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/forDir.sh"
    assert $state equals 0
}

@test 'scripts forDirDev.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/forDirDev.sh"
    assert $state equals 0
}

@test 'scripts forDirMain.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/forDirMain.sh"
    assert $state equals 0
}

@test 'scripts forever.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/forever.sh"
    assert $state equals 0
}

@test 'scripts fsWatchLongRunning.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fsWatchLongRunning.sh"
    assert $state equals 0
}

@test 'scripts fzfAgOpts.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/fzfAgOpts.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch52 (zsh plugin / fzf / zcomp cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrZshPluginCount returns 0' {
    run zpwrExists zpwrZshPluginCount
    assert $state equals 0
}

@test 'zpwrExists zpwrZshPluginList returns 0' {
    run zpwrExists zpwrZshPluginList
    assert $state equals 0
}

@test 'zpwrExists zpwrZshrcSearch returns 0' {
    run zpwrExists zpwrZshrcSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrZstyle returns 0' {
    run zpwrExists zpwrZstyle
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfZListVerb returns 0' {
    run zpwrExists zpwrFzfZListVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfZshKeybind returns 0' {
    run zpwrExists zpwrFzfZshKeybind
    assert $state equals 0
}

@test 'zpwrExists zpwrZcompdump returns 0' {
    run zpwrExists zpwrZcompdump
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

@test 'zpwrExists zpwrFzfDirsearchVerb returns 0' {
    run zpwrExists zpwrFzfDirsearchVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfCommits returns 0' {
    run zpwrExists zpwrFzfCommits
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists head tail returns 0' {
    run zpwrCommandExists head tail
    assert $state equals 0
}

@test 'zpwrCommandExists stat file returns 0' {
    run zpwrCommandExists stat file
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
