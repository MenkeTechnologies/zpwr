#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (emacstests/envaccept..ev); wizard_pages; install/*.sh tail + macOnly zsh -n; fzf-env/fortune cluster zpwrExists
##### Notes: Continues batch82; 20 syntax checks = install/npm.sh..zsh_plugins_install.sh (15) + first 5 sorted scripts/macOnly/*.sh; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (emacstests + env fzf)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[emacstests]' {
    run grep -Fq 'ZPWR_VERBS[emacstests]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[envaccept]' {
    run grep -Fq 'ZPWR_VERBS[envaccept]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[envedit]' {
    run grep -Fq 'ZPWR_VERBS[envedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[envvars]' {
    run grep -Fq 'ZPWR_VERBS[envvars]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[ev]' {
    run grep -Fq 'ZPWR_VERBS[ev]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch83 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_001.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_001.zsh"
    assert $state equals 0
}

@test 'wizard page_011.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_011.zsh"
    assert $state equals 0
}

@test 'wizard page_021.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_021.zsh"
    assert $state equals 0
}

@test 'wizard page_031.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_031.zsh"
    assert $state equals 0
}

@test 'wizard page_041.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_041.zsh"
    assert $state equals 0
}

@test 'wizard page_051.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_051.zsh"
    assert $state equals 0
}

@test 'wizard page_061.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_061.zsh"
    assert $state equals 0
}

@test 'wizard page_071.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_071.zsh"
    assert $state equals 0
}

@test 'wizard page_081.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_081.zsh"
    assert $state equals 0
}

@test 'wizard page_091.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_091.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# install — npm.sh through zsh_plugins_install.sh (zsh -n)
#--------------------------------------------------------------
@test 'install npm.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/npm.sh"
    assert $state equals 0
}

@test 'install pip_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/pip_install.sh"
    assert $state equals 0
}

@test 'install pip.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/pip.sh"
    assert $state equals 0
}

@test 'install pip3.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/pip3.sh"
    assert $state equals 0
}

@test 'install plugins_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/plugins_install.sh"
    assert $state equals 0
}

@test 'install rustupinstall.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/rustupinstall.sh"
    assert $state equals 0
}

@test 'install spacemacs_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/spacemacs_install.sh"
    assert $state equals 0
}

@test 'install startMux.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/startMux.sh"
    assert $state equals 0
}

@test 'install taps.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/taps.sh"
    assert $state equals 0
}

@test 'install tmux_plugins_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/tmux_plugins_install.sh"
    assert $state equals 0
}

@test 'install vim_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/vim_install.sh"
    assert $state equals 0
}

@test 'install vim_plugins_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/vim_plugins_install.sh"
    assert $state equals 0
}

@test 'install ycm_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/ycm_install.sh"
    assert $state equals 0
}

@test 'install zpwrInstall.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/zpwrInstall.sh"
    assert $state equals 0
}

@test 'install zsh_plugins_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/zsh_plugins_install.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts/macOnly — first five sorted (zsh -n)
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

#--------------------------------------------------------------
# zpwrExists — batch83 (fzf env verbs + env counts + bench cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrFzfEnvVerbAccept returns 0' {
    run zpwrExists zpwrFzfEnvVerbAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfEnvVerbEdit returns 0' {
    run zpwrExists zpwrFzfEnvVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrEnvVarsAll returns 0' {
    run zpwrExists zpwrEnvVarsAll
    assert $state equals 0
}

@test 'zpwrExists zpwrEnvCounts returns 0' {
    run zpwrExists zpwrEnvCounts
    assert $state equals 0
}

@test 'zpwrExists zpwrExecGlobParallel returns 0' {
    run zpwrExists zpwrExecGlobParallel
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

@test 'zpwrExists zpwrFortune returns 0' {
    run zpwrExists zpwrFortune
    assert $state equals 0
}

@test 'zpwrExists zpwrMatrix returns 0' {
    run zpwrExists zpwrMatrix
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
@test 'zpwrCommandExists perl python3 returns 0' {
    run zpwrCommandExists perl python3
    assert $state equals 0
}

@test 'zpwrCommandExists diff cmp returns 0' {
    run zpwrCommandExists diff cmp
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
