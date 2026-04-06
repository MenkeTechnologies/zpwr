#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; install/*.sh zsh -n (first 20)
##### Notes: Continues batch49 after vimplugincount; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after vimplugincount)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[vimpluginlist]' {
    run grep -Fq 'ZPWR_VERBS[vimpluginlist]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vrc]' {
    run grep -Fq 'ZPWR_VERBS[vrc]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[whiletrue]' {
    run grep -Fq 'ZPWR_VERBS[whiletrue]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[whilesleep]' {
    run grep -Fq 'ZPWR_VERBS[whilesleep]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[watch]' {
    run grep -Fq 'ZPWR_VERBS[watch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch50 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_008.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_008.zsh"
    assert $state equals 0
}

@test 'wizard page_031.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_031.zsh"
    assert $state equals 0
}

@test 'wizard page_047.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_047.zsh"
    assert $state equals 0
}

@test 'wizard page_070.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_070.zsh"
    assert $state equals 0
}

@test 'wizard page_088.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_088.zsh"
    assert $state equals 0
}

@test 'wizard page_110.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_110.zsh"
    assert $state equals 0
}

@test 'wizard page_128.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_128.zsh"
    assert $state equals 0
}

@test 'wizard page_161.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_161.zsh"
    assert $state equals 0
}

@test 'wizard page_183.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_183.zsh"
    assert $state equals 0
}

@test 'wizard page_201.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_201.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# install — zsh -n (first 20 *.sh alphabetically)
#--------------------------------------------------------------
@test 'install casks.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/casks.sh"
    assert $state equals 0
}

@test 'install common.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/common.sh"
    assert $state equals 0
}

@test 'install formulae.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/formulae.sh"
    assert $state equals 0
}

@test 'install gems.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/gems.sh"
    assert $state equals 0
}

@test 'install go_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/go_install.sh"
    assert $state equals 0
}

@test 'install mincasks.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/mincasks.sh"
    assert $state equals 0
}

@test 'install neovim_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/neovim_install.sh"
    assert $state equals 0
}

@test 'install npm_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/npm_install.sh"
    assert $state equals 0
}

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

#--------------------------------------------------------------
# zpwrExists — batch50 autoload names (animate / banner / curl cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrAnimate returns 0' {
    run zpwrExists zpwrAnimate
    assert $state equals 0
}

@test 'zpwrExists zpwrBannerLolcat returns 0' {
    run zpwrExists zpwrBannerLolcat
    assert $state equals 0
}

@test 'zpwrExists zpwrPonyBanner returns 0' {
    run zpwrExists zpwrPonyBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrNoPonyBanner returns 0' {
    run zpwrExists zpwrNoPonyBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrCreategif returns 0' {
    run zpwrExists zpwrCreategif
    assert $state equals 0
}

@test 'zpwrExists zpwrDedupPaths returns 0' {
    run zpwrExists zpwrDedupPaths
    assert $state equals 0
}

@test 'zpwrExists zpwrExecpy returns 0' {
    run zpwrExists zpwrExecpy
    assert $state equals 0
}

@test 'zpwrExists zpwrGoogle returns 0' {
    run zpwrExists zpwrGoogle
    assert $state equals 0
}

@test 'zpwrExists zpwrGoclean returns 0' {
    run zpwrExists zpwrGoclean
    assert $state equals 0
}

@test 'zpwrExists zpwrOpen returns 0' {
    run zpwrExists zpwrOpen
    assert $state equals 0
}

@test 'zpwrExists zpwrReplacer returns 0' {
    run zpwrExists zpwrReplacer
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists bc screen returns 0' {
    run zpwrCommandExists bc screen
    assert $state equals 0
}

@test 'zpwrCommandExists zip unzip returns 0' {
    run zpwrCommandExists zip unzip
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
