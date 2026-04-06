#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; scripts/*.sh zsh -n (stopContainers–userRootRemover)
##### Notes: Continues batch55 after curl; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after curl)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[deduppaths]' {
    run grep -Fq 'ZPWR_VERBS[deduppaths]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[execpy]' {
    run grep -Fq 'ZPWR_VERBS[execpy]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[filesearch]' {
    run grep -Fq 'ZPWR_VERBS[filesearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[filesearchedit]' {
    run grep -Fq 'ZPWR_VERBS[filesearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[goclean]' {
    run grep -Fq 'ZPWR_VERBS[goclean]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch56 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_014.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_014.zsh"
    assert $state equals 0
}

@test 'wizard page_041.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_041.zsh"
    assert $state equals 0
}

@test 'wizard page_060.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_060.zsh"
    assert $state equals 0
}

@test 'wizard page_079.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_079.zsh"
    assert $state equals 0
}

@test 'wizard page_100.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_100.zsh"
    assert $state equals 0
}

@test 'wizard page_120.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_120.zsh"
    assert $state equals 0
}

@test 'wizard page_141.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_141.zsh"
    assert $state equals 0
}

@test 'wizard page_173.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_173.zsh"
    assert $state equals 0
}

@test 'wizard page_194.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_194.zsh"
    assert $state equals 0
}

@test 'wizard page_207.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_207.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (20 *.sh after startContainers alphabetically)
#--------------------------------------------------------------
@test 'scripts stopContainers.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/stopContainers.sh"
    assert $state equals 0
}

@test 'scripts sync.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/sync.sh"
    assert $state equals 0
}

@test 'scripts tailZOU.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/tailZOU.sh"
    assert $state equals 0
}

@test 'scripts templater.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/templater.sh"
    assert $state equals 0
}

@test 'scripts test.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/test.sh"
    assert $state equals 0
}

@test 'scripts textmessage.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/textmessage.sh"
    assert $state equals 0
}

@test 'scripts tgzLocalInstaller.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/tgzLocalInstaller.sh"
    assert $state equals 0
}

@test 'scripts timeConverter.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/timeConverter.sh"
    assert $state equals 0
}

@test 'scripts transfer.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/transfer.sh"
    assert $state equals 0
}

@test 'scripts updatePi.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/updatePi.sh"
    assert $state equals 0
}

@test 'scripts updater.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/updater.sh"
    assert $state equals 0
}

@test 'scripts updaterEmail.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/updaterEmail.sh"
    assert $state equals 0
}

@test 'scripts updaterForLaunchCtl.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/updaterForLaunchCtl.sh"
    assert $state equals 0
}

@test 'scripts updaterPipSudo.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/updaterPipSudo.sh"
    assert $state equals 0
}

@test 'scripts upLoadDS.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/upLoadDS.sh"
    assert $state equals 0
}

@test 'scripts upLoadPi.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/upLoadPi.sh"
    assert $state equals 0
}

@test 'scripts upLoadPi2.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/upLoadPi2.sh"
    assert $state equals 0
}

@test 'scripts uploadWebDS.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/uploadWebDS.sh"
    assert $state equals 0
}

@test 'scripts uploadWebPi.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/uploadWebPi.sh"
    assert $state equals 0
}

@test 'scripts userRootRemover.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/userRootRemover.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch56 (deps flame top wizard doctor cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrDeps returns 0' {
    run zpwrExists zpwrDeps
    assert $state equals 0
}

@test 'zpwrExists zpwrFlame returns 0' {
    run zpwrExists zpwrFlame
    assert $state equals 0
}

@test 'zpwrExists zpwrTop returns 0' {
    run zpwrExists zpwrTop
    assert $state equals 0
}

@test 'zpwrExists zpwrWizard returns 0' {
    run zpwrExists zpwrWizard
    assert $state equals 0
}

@test 'zpwrExists zpwrDoctor returns 0' {
    run zpwrExists zpwrDoctor
    assert $state equals 0
}

@test 'zpwrExists zpwrGitwho returns 0' {
    run zpwrExists zpwrGitwho
    assert $state equals 0
}

@test 'zpwrExists zpwrPorts returns 0' {
    run zpwrExists zpwrPorts
    assert $state equals 0
}

@test 'zpwrExists zpwrWatch returns 0' {
    run zpwrExists zpwrWatch
    assert $state equals 0
}

@test 'zpwrExists zpwrTimeline returns 0' {
    run zpwrExists zpwrTimeline
    assert $state equals 0
}

@test 'zpwrExists zpwrEnvCounts returns 0' {
    run zpwrExists zpwrEnvCounts
    assert $state equals 0
}

@test 'zpwrExists zpwrUncompile returns 0' {
    run zpwrExists zpwrUncompile
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists df du returns 0' {
    run zpwrCommandExists df du
    assert $state equals 0
}

@test 'zpwrCommandExists env printf returns 0' {
    run zpwrCommandExists env printf
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
