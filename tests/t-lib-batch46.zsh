#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrTest–zpwrUpdateDepsClean autoload zsh -n
##### Notes: Continues batch45 after zpwrTailLog; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after vimautoload)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[vimcd]' {
    run grep -Fq 'ZPWR_VERBS[vimcd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimrecent]' {
    run grep -Fq 'ZPWR_VERBS[vimrecent]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimrecentsudo]' {
    run grep -Fq 'ZPWR_VERBS[vimrecentsudo]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimrecentcd]' {
    run grep -Fq 'ZPWR_VERBS[vimrecentcd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimrecentsudocd]' {
    run grep -Fq 'ZPWR_VERBS[vimrecentsudocd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch46 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_004.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_004.zsh"
    assert $state equals 0
}

@test 'wizard page_022.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_022.zsh"
    assert $state equals 0
}

@test 'wizard page_039.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_039.zsh"
    assert $state equals 0
}

@test 'wizard page_058.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_058.zsh"
    assert $state equals 0
}

@test 'wizard page_077.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_077.zsh"
    assert $state equals 0
}

@test 'wizard page_099.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_099.zsh"
    assert $state equals 0
}

@test 'wizard page_119.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_119.zsh"
    assert $state equals 0
}

@test 'wizard page_151.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_151.zsh"
    assert $state equals 0
}

@test 'wizard page_171.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_171.zsh"
    assert $state equals 0
}

@test 'wizard page_191.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_191.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrTest through zpwrUpdateDepsClean)
#--------------------------------------------------------------
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

@test 'autoload common zpwrUninstall passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUninstall"
    assert $state equals 0
}

@test 'autoload common zpwrUnlinkConf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUnlinkConf"
    assert $state equals 0
}

@test 'autoload common zpwrUp8widget passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUp8widget"
    assert $state equals 0
}

@test 'autoload common zpwrUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdate"
    assert $state equals 0
}

@test 'autoload common zpwrUpdateAllGitDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateAllGitDirs"
    assert $state equals 0
}

@test 'autoload common zpwrUpdateDeps passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateDeps"
    assert $state equals 0
}

@test 'autoload common zpwrUpdateDepsClean passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateDepsClean"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch46 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrTimeline returns 0' {
    run zpwrExists zpwrTimeline
    assert $state equals 0
}

@test 'zpwrExists zpwrTimer returns 0' {
    run zpwrExists zpwrTimer
    assert $state equals 0
}

@test 'zpwrExists zpwrTop returns 0' {
    run zpwrExists zpwrTop
    assert $state equals 0
}

@test 'zpwrExists zpwrTrace returns 0' {
    run zpwrExists zpwrTrace
    assert $state equals 0
}

@test 'zpwrExists zpwrTorip returns 0' {
    run zpwrExists zpwrTorip
    assert $state equals 0
}

@test 'zpwrExists zpwrToriprenew returns 0' {
    run zpwrExists zpwrToriprenew
    assert $state equals 0
}

@test 'zpwrExists zpwrTutsUpdate returns 0' {
    run zpwrExists zpwrTutsUpdate
    assert $state equals 0
}

@test 'zpwrExists zpwrUncompile returns 0' {
    run zpwrExists zpwrUncompile
    assert $state equals 0
}

@test 'zpwrExists zpwrUninstall returns 0' {
    run zpwrExists zpwrUninstall
    assert $state equals 0
}

@test 'zpwrExists zpwrUnlinkConf returns 0' {
    run zpwrExists zpwrUnlinkConf
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdate returns 0' {
    run zpwrExists zpwrUpdate
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists sync uptime returns 0' {
    run zpwrCommandExists sync uptime
    assert $state equals 0
}

@test 'zpwrCommandExists expr dd returns 0' {
    run zpwrCommandExists expr dd
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
