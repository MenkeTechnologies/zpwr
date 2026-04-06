#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (exists/existscommand/emacs cluster); wizard_pages; zpwrSudoEmacsRecent..zpwrUncompile zsh -n; sudo-editor/tmux/top zpwrExists
##### Notes: Continues batch76; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (exists + emacs entry)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[exists]' {
    run grep -Fq 'ZPWR_VERBS[exists]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[existscommand]' {
    run grep -Fq 'ZPWR_VERBS[existscommand]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacstokens]' {
    run grep -Fq 'ZPWR_VERBS[emacstokens]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsconfig]' {
    run grep -Fq 'ZPWR_VERBS[emacsconfig]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsall]' {
    run grep -Fq 'ZPWR_VERBS[emacsall]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch77 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_007.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_007.zsh"
    assert $state equals 0
}

@test 'wizard page_017.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_017.zsh"
    assert $state equals 0
}

@test 'wizard page_027.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_027.zsh"
    assert $state equals 0
}

@test 'wizard page_037.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_037.zsh"
    assert $state equals 0
}

@test 'wizard page_047.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_047.zsh"
    assert $state equals 0
}

@test 'wizard page_057.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_057.zsh"
    assert $state equals 0
}

@test 'wizard page_067.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_067.zsh"
    assert $state equals 0
}

@test 'wizard page_087.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_087.zsh"
    assert $state equals 0
}

@test 'wizard page_107.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_107.zsh"
    assert $state equals 0
}

@test 'wizard page_127.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_127.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrSudoEmacsRecent through zpwrUncompile (zsh -n)
#--------------------------------------------------------------
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

@test 'autoload common zpwrTest passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTest"
    assert $state equals 0
}

@test 'autoload common zpwrTestAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTestAll"
    assert $state equals 0
}

@test 'autoload common zpwrTimeline passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTimeline"
    assert $state equals 0
}

@test 'autoload common zpwrTimer passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTimer"
    assert $state equals 0
}

@test 'autoload common zpwrTmux_capture_paner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTmux_capture_paner"
    assert $state equals 0
}

@test 'autoload common zpwrTmux_pane_words passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTmux_pane_words"
    assert $state equals 0
}

@test 'autoload common zpwrTop passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTop"
    assert $state equals 0
}

@test 'autoload common zpwrTorip passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTorip"
    assert $state equals 0
}

@test 'autoload common zpwrToriprenew passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrToriprenew"
    assert $state equals 0
}

@test 'autoload common zpwrTotalLines passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTotalLines"
    assert $state equals 0
}

@test 'autoload common zpwrTrace passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTrace"
    assert $state equals 0
}

@test 'autoload common zpwrTutsUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTutsUpdate"
    assert $state equals 0
}

@test 'autoload common zpwrUncompile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUncompile"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch77 (sudo editors / tmux / torip / trace cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrSudoEmacsRecent returns 0' {
    run zpwrExists zpwrSudoEmacsRecent
    assert $state equals 0
}

@test 'zpwrExists zpwrSudoEmacsRecentCd returns 0' {
    run zpwrExists zpwrSudoEmacsRecentCd
    assert $state equals 0
}

@test 'zpwrExists zpwrSudoVimRecent returns 0' {
    run zpwrExists zpwrSudoVimRecent
    assert $state equals 0
}

@test 'zpwrExists zpwrSudoVimRecentCd returns 0' {
    run zpwrExists zpwrSudoVimRecentCd
    assert $state equals 0
}

@test 'zpwrExists zpwrTabNum returns 0' {
    run zpwrExists zpwrTabNum
    assert $state equals 0
}

@test 'zpwrExists zpwrTabNumCmd returns 0' {
    run zpwrExists zpwrTabNumCmd
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

@test 'zpwrExists zpwrTimeline returns 0' {
    run zpwrExists zpwrTimeline
    assert $state equals 0
}

@test 'zpwrExists zpwrTimer returns 0' {
    run zpwrExists zpwrTimer
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
