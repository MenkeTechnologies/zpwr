#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; macOnly tail + env/tmux + linux zsh -n
##### Notes: Continues batch57 after regengtagstype; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after regengtagstype)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[replacer]' {
    run grep -Fq 'ZPWR_VERBS[replacer]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[reset]' {
    run grep -Fq 'ZPWR_VERBS[reset]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[revealrecurse]' {
    run grep -Fq 'ZPWR_VERBS[revealrecurse]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[scriptnew]' {
    run grep -Fq 'ZPWR_VERBS[scriptnew]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[search]' {
    run grep -Fq 'ZPWR_VERBS[search]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch58 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_016.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_016.zsh"
    assert $state equals 0
}

@test 'wizard page_044.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_044.zsh"
    assert $state equals 0
}

@test 'wizard page_063.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_063.zsh"
    assert $state equals 0
}

@test 'wizard page_081.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_081.zsh"
    assert $state equals 0
}

@test 'wizard page_104.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_104.zsh"
    assert $state equals 0
}

@test 'wizard page_123.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_123.zsh"
    assert $state equals 0
}

@test 'wizard page_145.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_145.zsh"
    assert $state equals 0
}

@test 'wizard page_176.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_176.zsh"
    assert $state equals 0
}

@test 'wizard page_197.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_197.zsh"
    assert $state equals 0
}

@test 'wizard page_199.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_199.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts/macOnly — zsh -n (tail *.sh after keyboardMaestro)
#--------------------------------------------------------------
@test 'scripts macOnly menkeTechRandomFont.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/menkeTechRandomFont.sh"
    assert $state equals 0
}

@test 'scripts macOnly PIORun.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/PIORun.sh"
    assert $state equals 0
}

@test 'scripts macOnly postscriptToPDFCreator.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/postscriptToPDFCreator.sh"
    assert $state equals 0
}

@test 'scripts macOnly randomCow.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/randomCow.sh"
    assert $state equals 0
}

@test 'scripts macOnly resetWIFI.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/resetWIFI.sh"
    assert $state equals 0
}

@test 'scripts macOnly rsyncr.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/rsyncr.sh"
    assert $state equals 0
}

@test 'scripts macOnly say.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/say.sh"
    assert $state equals 0
}

@test 'scripts macOnly splitReg.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/splitReg.sh"
    assert $state equals 0
}

@test 'scripts macOnly tmuxer.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/tmuxer.sh"
    assert $state equals 0
}

@test 'scripts macOnly tor.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/tor.sh"
    assert $state equals 0
}

@test 'scripts macOnly tutorialConfigUpdater.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/tutorialConfigUpdater.sh"
    assert $state equals 0
}

@test 'scripts macOnly mountInstall.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/mountInstall.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# tmux / env / install — zsh -n
#--------------------------------------------------------------
@test 'tmux google.sh passes zsh -n' {
    run zsh -n "$ZPWR/tmux/google.sh"
    assert $state equals 0
}

@test 'install .rpitokens.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/.rpitokens.sh"
    assert $state equals 0
}

@test 'env .powerlevel9kconfig.sh passes zsh -n' {
    run zsh -n "$ZPWR/env/.powerlevel9kconfig.sh"
    assert $state equals 0
}

@test 'env .zpwr_env.sh passes zsh -n' {
    run zsh -n "$ZPWR/env/.zpwr_env.sh"
    assert $state equals 0
}

@test 'env .zpwr_re_env.sh passes zsh -n' {
    run zsh -n "$ZPWR/env/.zpwr_re_env.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/linux — zsh -n
#--------------------------------------------------------------
@test 'autoload linux scriptToPDF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/scriptToPDF"
    assert $state equals 0
}

@test 'autoload linux tailufw passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/tailufw"
    assert $state equals 0
}

@test 'autoload linux zpwrAttachSetup passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrAttachSetup"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch58 (get* / replacer / reset cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrGetGtags returns 0' {
    run zpwrExists zpwrGetGtags
    assert $state equals 0
}

@test 'zpwrExists zpwrGetGtagsEdit returns 0' {
    run zpwrExists zpwrGetGtagsEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrGetGHDelURL returns 0' {
    run zpwrExists zpwrGetGHDelURL
    assert $state equals 0
}

@test 'zpwrExists zpwrGetFound returns 0' {
    run zpwrExists zpwrGetFound
    assert $state equals 0
}

@test 'zpwrExists zpwrGetLocate returns 0' {
    run zpwrExists zpwrGetLocate
    assert $state equals 0
}

@test 'zpwrExists zpwrGetrc returns 0' {
    run zpwrExists zpwrGetrc
    assert $state equals 0
}

@test 'zpwrExists zpwrGetrcdev returns 0' {
    run zpwrExists zpwrGetrcdev
    assert $state equals 0
}

@test 'zpwrExists zpwrGetrcWidget returns 0' {
    run zpwrExists zpwrGetrcWidget
    assert $state equals 0
}

@test 'zpwrExists zpwrReplacer returns 0' {
    run zpwrExists zpwrReplacer
    assert $state equals 0
}

@test 'zpwrExists zpwrReset returns 0' {
    run zpwrExists zpwrReset
    assert $state equals 0
}

@test 'zpwrExists zpwrRevealRecurse returns 0' {
    run zpwrExists zpwrRevealRecurse
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists wc od returns 0' {
    run zpwrCommandExists wc od
    assert $state equals 0
}

@test 'zpwrCommandExists mkdir mktemp returns 0' {
    run zpwrCommandExists mkdir mktemp
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
