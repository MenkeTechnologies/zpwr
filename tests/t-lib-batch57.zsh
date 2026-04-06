#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; tail scripts/*.sh + macOnly/*.sh zsh -n
##### Notes: Continues batch56 after goclean; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after goclean)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[google]' {
    run grep -Fq 'ZPWR_VERBS[google]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[openurl]' {
    run grep -Fq 'ZPWR_VERBS[openurl]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[pstreemonitor]' {
    run grep -Fq 'ZPWR_VERBS[pstreemonitor]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[regengtagspygments]' {
    run grep -Fq 'ZPWR_VERBS[regengtagspygments]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[regengtagstype]' {
    run grep -Fq 'ZPWR_VERBS[regengtagstype]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch57 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_015.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_015.zsh"
    assert $state equals 0
}

@test 'wizard page_042.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_042.zsh"
    assert $state equals 0
}

@test 'wizard page_062.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_062.zsh"
    assert $state equals 0
}

@test 'wizard page_080.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_080.zsh"
    assert $state equals 0
}

@test 'wizard page_102.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_102.zsh"
    assert $state equals 0
}

@test 'wizard page_122.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_122.zsh"
    assert $state equals 0
}

@test 'wizard page_143.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_143.zsh"
    assert $state equals 0
}

@test 'wizard page_175.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_175.zsh"
    assert $state equals 0
}

@test 'wizard page_196.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_196.zsh"
    assert $state equals 0
}

@test 'wizard page_208.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_208.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (tail of top-level *.sh)
#--------------------------------------------------------------
@test 'scripts watchServiceFSWatchGit.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/watchServiceFSWatchGit.sh"
    assert $state equals 0
}

@test 'scripts watchServiceFSWatchLS-ALH.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/watchServiceFSWatchLS-ALH.sh"
    assert $state equals 0
}

@test 'scripts watchServiceFSWatchPiDesktop.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/watchServiceFSWatchPiDesktop.sh"
    assert $state equals 0
}

@test 'scripts watchServiceFSWatchPiWeb.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/watchServiceFSWatchPiWeb.sh"
    assert $state equals 0
}

@test 'scripts watchServiceFSWatchRustCompile.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/watchServiceFSWatchRustCompile.sh"
    assert $state equals 0
}

@test 'scripts watchtree1.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/watchtree1.sh"
    assert $state equals 0
}

@test 'scripts watchtree1Color.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/watchtree1Color.sh"
    assert $state equals 0
}

@test 'scripts watchtree2.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/watchtree2.sh"
    assert $state equals 0
}

@test 'scripts zpwrBannerSleep.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/zpwrBannerSleep.sh"
    assert $state equals 0
}

@test 'scripts zpwrRunner.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/zpwrRunner.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts/macOnly — zsh -n (first 10 *.sh alphabetically)
#--------------------------------------------------------------
@test 'scripts macOnly combo.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/combo.sh"
    assert $state equals 0
}

@test 'scripts macOnly commandToColors.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/commandToColors.sh"
    assert $state equals 0
}

@test 'scripts macOnly figletLooper.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/figletLooper.sh"
    assert $state equals 0
}

@test 'scripts macOnly figletRandomFont.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/figletRandomFont.sh"
    assert $state equals 0
}

@test 'scripts macOnly figletRandomFontOnce.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/figletRandomFontOnce.sh"
    assert $state equals 0
}

@test 'scripts macOnly figletRotater.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/figletRotater.sh"
    assert $state equals 0
}

@test 'scripts macOnly getPath.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/getPath.sh"
    assert $state equals 0
}

@test 'scripts macOnly gradleShadowJar.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/gradleShadowJar.sh"
    assert $state equals 0
}

@test 'scripts macOnly istatsShower.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/istatsShower.sh"
    assert $state equals 0
}

@test 'scripts macOnly keyboardMaestro.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/keyboardMaestro.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch57 (kill / intercept / history verb cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrKillLsofVerbAccept returns 0' {
    run zpwrExists zpwrKillLsofVerbAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrKillLsofVerbEdit returns 0' {
    run zpwrExists zpwrKillLsofVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrKillPSVerbAccept returns 0' {
    run zpwrExists zpwrKillPSVerbAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrKillPSVerbEdit returns 0' {
    run zpwrExists zpwrKillPSVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrKillRemote returns 0' {
    run zpwrExists zpwrKillRemote
    assert $state equals 0
}

@test 'zpwrExists zpwrInterceptDelete returns 0' {
    run zpwrExists zpwrInterceptDelete
    assert $state equals 0
}

@test 'zpwrExists zpwrInterceptSurround returns 0' {
    run zpwrExists zpwrInterceptSurround
    assert $state equals 0
}

@test 'zpwrExists zpwrHistoryVerbAccept returns 0' {
    run zpwrExists zpwrHistoryVerbAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrHistoryVerbEdit returns 0' {
    run zpwrExists zpwrHistoryVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrHistfile returns 0' {
    run zpwrExists zpwrHistfile
    assert $state equals 0
}

@test 'zpwrExists zpwrGoogle returns 0' {
    run zpwrExists zpwrGoogle
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
