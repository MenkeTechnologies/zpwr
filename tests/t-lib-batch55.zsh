#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; scripts/*.sh zsh -n (pingordieBridge–startContainers)
##### Notes: Continues batch54 after bannerlolcat; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after bannerlolcat)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[bannerpony]' {
    run grep -Fq 'ZPWR_VERBS[bannerpony]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[bannernopony]' {
    run grep -Fq 'ZPWR_VERBS[bannernopony]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleangitcleancache]' {
    run grep -Fq 'ZPWR_VERBS[cleangitcleancache]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[creategif]' {
    run grep -Fq 'ZPWR_VERBS[creategif]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[curl]' {
    run grep -Fq 'ZPWR_VERBS[curl]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch55 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_013.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_013.zsh"
    assert $state equals 0
}

@test 'wizard page_039.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_039.zsh"
    assert $state equals 0
}

@test 'wizard page_057.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_057.zsh"
    assert $state equals 0
}

@test 'wizard page_071.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_071.zsh"
    assert $state equals 0
}

@test 'wizard page_098.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_098.zsh"
    assert $state equals 0
}

@test 'wizard page_118.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_118.zsh"
    assert $state equals 0
}

@test 'wizard page_139.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_139.zsh"
    assert $state equals 0
}

@test 'wizard page_170.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_170.zsh"
    assert $state equals 0
}

@test 'wizard page_191.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_191.zsh"
    assert $state equals 0
}

@test 'wizard page_206.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_206.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (20 *.sh after pingordie alphabetically)
#--------------------------------------------------------------
@test 'scripts pingordieBridge.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/pingordieBridge.sh"
    assert $state equals 0
}

@test 'scripts pingordieBridgeVPN.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/pingordieBridgeVPN.sh"
    assert $state equals 0
}

@test 'scripts powerTo.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/powerTo.sh"
    assert $state equals 0
}

@test 'scripts printHeader.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/printHeader.sh"
    assert $state equals 0
}

@test 'scripts pydfShower.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/pydfShower.sh"
    assert $state equals 0
}

@test 'scripts readFIFO.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/readFIFO.sh"
    assert $state equals 0
}

@test 'scripts redText.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/redText.sh"
    assert $state equals 0
}

@test 'scripts remoteRepoMonitorDaemon.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/remoteRepoMonitorDaemon.sh"
    assert $state equals 0
}

@test 'scripts removeSpaces.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/removeSpaces.sh"
    assert $state equals 0
}

@test 'scripts rpiDownloader.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/rpiDownloader.sh"
    assert $state equals 0
}

@test 'scripts rpiSoftwareUpdater.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/rpiSoftwareUpdater.sh"
    assert $state equals 0
}

@test 'scripts saygoogle.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/saygoogle.sh"
    assert $state equals 0
}

@test 'scripts secureDelete.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/secureDelete.sh"
    assert $state equals 0
}

@test 'scripts shebangChanger.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/shebangChanger.sh"
    assert $state equals 0
}

@test 'scripts sixLangDisplayer.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/sixLangDisplayer.sh"
    assert $state equals 0
}

@test 'scripts sortedArrayCounter.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/sortedArrayCounter.sh"
    assert $state equals 0
}

@test 'scripts splitReg.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/splitReg.sh"
    assert $state equals 0
}

@test 'scripts sshTunnelVnc.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/sshTunnelVnc.sh"
    assert $state equals 0
}

@test 'scripts sshTunnelVnc2.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/sshTunnelVnc2.sh"
    assert $state equals 0
}

@test 'scripts startContainers.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/startContainers.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch55 (for-all-git-dirs / fortune / bench cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrForAllGitDirsClean returns 0' {
    run zpwrExists zpwrForAllGitDirsClean
    assert $state equals 0
}

@test 'zpwrExists zpwrForAllGitDirsDirty returns 0' {
    run zpwrExists zpwrForAllGitDirsDirty
    assert $state equals 0
}

@test 'zpwrExists zpwrForAllGitDirsRefreshClean returns 0' {
    run zpwrExists zpwrForAllGitDirsRefreshClean
    assert $state equals 0
}

@test 'zpwrExists zpwrForAllGitDirsRefreshDirty returns 0' {
    run zpwrExists zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
}

@test 'zpwrExists zpwrFortune returns 0' {
    run zpwrExists zpwrFortune
    assert $state equals 0
}

@test 'zpwrExists zpwrMatrix returns 0' {
    run zpwrExists zpwrMatrix
    assert $state equals 0
}

@test 'zpwrExists zpwrStudy returns 0' {
    run zpwrExists zpwrStudy
    assert $state equals 0
}

@test 'zpwrExists zpwrLint returns 0' {
    run zpwrExists zpwrLint
    assert $state equals 0
}

@test 'zpwrExists zpwrPathaudit returns 0' {
    run zpwrExists zpwrPathaudit
    assert $state equals 0
}

@test 'zpwrExists zpwrBench returns 0' {
    run zpwrExists zpwrBench
    assert $state equals 0
}

@test 'zpwrExists zpwrTrace returns 0' {
    run zpwrExists zpwrTrace
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists mv cp returns 0' {
    run zpwrCommandExists mv cp
    assert $state equals 0
}

@test 'zpwrCommandExists perl python3 returns 0' {
    run zpwrCommandExists perl python3
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
