#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: perl -c on scripts/*.pl (beyond boxPrint), bash -n on install/*.sh, verb spots
##### Notes: Complements t-lib-batch4 (boxPrint.pl only)
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# scripts/*.pl — syntax (batch4 covers boxPrint.pl)
#--------------------------------------------------------------
@test 'banner.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/banner.pl" 2>&1
    assert $state equals 0
}

@test 'c.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/c.pl" 2>&1
    assert $state equals 0
}

@test 'escapeRemover.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/escapeRemover.pl" 2>&1
    assert $state equals 0
}

@test 'gitSdiffColorizer.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/gitSdiffColorizer.pl" 2>&1
    assert $state equals 0
}

@test 'minifySpaces.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/minifySpaces.pl" 2>&1
    assert $state equals 0
}

@test 'regexReplace.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/regexReplace.pl" 2>&1
    assert $state equals 0
}

@test 'sdiffColorizer.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/sdiffColorizer.pl" 2>&1
    assert $state equals 0
}

@test 'stdinSdiffColorizer.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/stdinSdiffColorizer.pl" 2>&1
    assert $state equals 0
}

#--------------------------------------------------------------
# install/*.sh — bash -n (installer stack)
#--------------------------------------------------------------
@test 'install/zpwrInstall.sh passes bash -n' {
    run bash -n "$ZPWR/install/zpwrInstall.sh"
    assert $state equals 0
}

@test 'install/common.sh passes bash -n' {
    run bash -n "$ZPWR/install/common.sh"
    assert $state equals 0
}

@test 'install/plugins_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/plugins_install.sh"
    assert $state equals 0
}

@test 'install/zsh_plugins_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/zsh_plugins_install.sh"
    assert $state equals 0
}

@test 'install/vim_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/vim_install.sh"
    assert $state equals 0
}

@test 'install/vim_plugins_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/vim_plugins_install.sh"
    assert $state equals 0
}

@test 'install/tmux_plugins_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/tmux_plugins_install.sh"
    assert $state equals 0
}

@test 'install/neovim_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/neovim_install.sh"
    assert $state equals 0
}

@test 'install/spacemacs_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/spacemacs_install.sh"
    assert $state equals 0
}

@test 'install/ycm_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/ycm_install.sh"
    assert $state equals 0
}

@test 'install/go_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/go_install.sh"
    assert $state equals 0
}

@test 'install/rustupinstall.sh passes bash -n' {
    run bash -n "$ZPWR/install/rustupinstall.sh"
    assert $state equals 0
}

@test 'install/npm.sh passes bash -n' {
    run bash -n "$ZPWR/install/npm.sh"
    assert $state equals 0
}

@test 'install/npm_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/npm_install.sh"
    assert $state equals 0
}

@test 'install/pip.sh passes bash -n' {
    run bash -n "$ZPWR/install/pip.sh"
    assert $state equals 0
}

@test 'install/pip3.sh passes bash -n' {
    run bash -n "$ZPWR/install/pip3.sh"
    assert $state equals 0
}

@test 'install/pip_install.sh passes bash -n' {
    run bash -n "$ZPWR/install/pip_install.sh"
    assert $state equals 0
}

@test 'install/gems.sh passes bash -n' {
    run bash -n "$ZPWR/install/gems.sh"
    assert $state equals 0
}

@test 'install/formulae.sh passes bash -n' {
    run bash -n "$ZPWR/install/formulae.sh"
    assert $state equals 0
}

@test 'install/taps.sh passes bash -n' {
    run bash -n "$ZPWR/install/taps.sh"
    assert $state equals 0
}

@test 'install/casks.sh passes bash -n' {
    run bash -n "$ZPWR/install/casks.sh"
    assert $state equals 0
}

@test 'install/mincasks.sh passes bash -n' {
    run bash -n "$ZPWR/install/mincasks.sh"
    assert $state equals 0
}

@test 'install/startMux.sh passes bash -n' {
    run bash -n "$ZPWR/install/startMux.sh"
    assert $state equals 0
}

@test 'install/.rpitokens.sh passes bash -n' {
    run bash -n "$ZPWR/install/.rpitokens.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — clean / regen / update cluster
#--------------------------------------------------------------
@test 'verb about registered' {
    run test -n "${ZPWR_VERBS[about]+x}"
    assert $state equals 0
}

@test 'verb envcounts registered' {
    run test -n "${ZPWR_VERBS[envcounts]+x}"
    assert $state equals 0
}

@test 'verb cleandirs registered' {
    run test -n "${ZPWR_VERBS[cleandirs]+x}"
    assert $state equals 0
}

@test 'verb cleanall registered' {
    run test -n "${ZPWR_VERBS[cleanall]+x}"
    assert $state equals 0
}

@test 'verb cleancache registered' {
    run test -n "${ZPWR_VERBS[cleancache]+x}"
    assert $state equals 0
}

@test 'verb cleantemp registered' {
    run test -n "${ZPWR_VERBS[cleantemp]+x}"
    assert $state equals 0
}

@test 'verb recompile registered' {
    run test -n "${ZPWR_VERBS[recompile]+x}"
    assert $state equals 0
}

@test 'verb regen registered' {
    run test -n "${ZPWR_VERBS[regen]+x}"
    assert $state equals 0
}

@test 'verb regenall registered' {
    run test -n "${ZPWR_VERBS[regenall]+x}"
    assert $state equals 0
}

@test 'verb regenconfiglinks registered' {
    run test -n "${ZPWR_VERBS[regenconfiglinks]+x}"
    assert $state equals 0
}

@test 'verb regenzsh registered' {
    run test -n "${ZPWR_VERBS[regenzsh]+x}"
    assert $state equals 0
}

@test 'verb regengitrepocache registered' {
    run test -n "${ZPWR_VERBS[regengitrepocache]+x}"
    assert $state equals 0
}

@test 'verb update registered' {
    run test -n "${ZPWR_VERBS[update]+x}"
    assert $state equals 0
}

@test 'verb updateall registered' {
    run test -n "${ZPWR_VERBS[updateall]+x}"
    assert $state equals 0
}

@test 'verb updatedeps registered' {
    run test -n "${ZPWR_VERBS[updatedeps]+x}"
    assert $state equals 0
}

@test 'verb updatezinit registered' {
    run test -n "${ZPWR_VERBS[updatezinit]+x}"
    assert $state equals 0
}

@test 'verb refreshzwc registered' {
    run test -n "${ZPWR_VERBS[refreshzwc]+x}"
    assert $state equals 0
}

@test 'verb cat registered' {
    run test -n "${ZPWR_VERBS[cat]+x}"
    assert $state equals 0
}

@test 'verb environmentcounts registered' {
    run test -n "${ZPWR_VERBS[environmentcounts]+x}"
    assert $state equals 0
}

@test 'verb subcommandscount registered' {
    run test -n "${ZPWR_VERBS[subcommandscount]+x}"
    assert $state equals 0
}

@test 'verb scriptcount registered' {
    run test -n "${ZPWR_VERBS[scriptcount]+x}"
    assert $state equals 0
}

@test 'verb autoloadcount registered' {
    run test -n "${ZPWR_VERBS[autoloadcount]+x}"
    assert $state equals 0
}

@test 'verb linecount registered' {
    run test -n "${ZPWR_VERBS[linecount]+x}"
    assert $state equals 0
}

@test 'verb gitreposfile registered' {
    run test -n "${ZPWR_VERBS[gitreposfile]+x}"
    assert $state equals 0
}

@test 'verb gitreposdirtyexec registered' {
    run test -n "${ZPWR_VERBS[gitreposdirtyexec]+x}"
    assert $state equals 0
}

@test 'verb gitreposexec registered' {
    run test -n "${ZPWR_VERBS[gitreposexec]+x}"
    assert $state equals 0
}

@test 'verb forgitlog registered' {
    run test -n "${ZPWR_VERBS[forgitlog]+x}"
    assert $state equals 0
}

@test 'verb book registered' {
    run test -n "${ZPWR_VERBS[book]+x}"
    assert $state equals 0
}

@test 'verb search registered' {
    run test -n "${ZPWR_VERBS[search]+x}"
    assert $state equals 0
}
