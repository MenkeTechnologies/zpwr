#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: repo metadata, CI step anchors, fzf/comp_utils autoload zsh -n, verb clusters
##### Notes: Complements batch11 (license path); subcommands* aliases mirror verbs* UI
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Repo metadata
#--------------------------------------------------------------
@test 'license.md is non-empty' {
    run test -s "$ZPWR/license.md"
    assert $state equals 0
}

@test 'DESCRIPTION.md exists' {
    run test -f "$ZPWR/DESCRIPTION.md"
    assert $state equals 0
}

@test 'DESCRIPTION.md mentions ZPWR_VERBS' {
    run grep -q 'ZPWR_VERBS' "$ZPWR/DESCRIPTION.md"
    assert $state equals 0
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — named workflow and apt step
#--------------------------------------------------------------
@test 'ci.yml names workflow CI' {
    run grep -q '^name: CI' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml has Install dependencies step' {
    run grep -q 'Install dependencies' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (fzf, comp_utils, core verbs)
#--------------------------------------------------------------
@test 'autoload common zpwrUninstall passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUninstall"
    assert $state equals 0
}

@test 'autoload common zpwrUpdater passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdater"
    assert $state equals 0
}

@test 'autoload fzf _fzf_complete_zpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/fzf/_fzf_complete_zpwr"
    assert $state equals 0
}

@test 'autoload comp_utils __zpwr_aliases passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comp_utils/__zpwr_aliases"
    assert $state equals 0
}

@test 'autoload common zpwrGoogle passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGoogle"
    assert $state equals 0
}

@test 'autoload common zpwrSearch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrSearch"
    assert $state equals 0
}

@test 'autoload common zpwrRevealRecurse passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRevealRecurse"
    assert $state equals 0
}

@test 'autoload common zpwrReplacer passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReplacer"
    assert $state equals 0
}

@test 'autoload common zpwrPoll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPoll"
    assert $state equals 0
}

@test 'autoload common zpwrTimer passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTimer"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — autoloaded entrypoints
#--------------------------------------------------------------
@test 'zpwrExists zpwrGoogle returns 0' {
    run zpwrExists zpwrGoogle
    assert $state equals 0
}

@test 'zpwrExists zpwrSearch returns 0' {
    run zpwrExists zpwrSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrReplacer returns 0' {
    run zpwrExists zpwrReplacer
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — search / Tor / reveal / scripts / process / subcommands UI
#--------------------------------------------------------------
@test 'verb grep registered' {
    run test -n "${ZPWR_VERBS[grep]+x}"
    assert $state equals 0
}

@test 'verb torip registered' {
    run test -n "${ZPWR_VERBS[torip]+x}"
    assert $state equals 0
}

@test 'verb toriprenew registered' {
    run test -n "${ZPWR_VERBS[toriprenew]+x}"
    assert $state equals 0
}

@test 'verb reveal registered' {
    run test -n "${ZPWR_VERBS[reveal]+x}"
    assert $state equals 0
}

@test 'verb revealrecurse registered' {
    run test -n "${ZPWR_VERBS[revealrecurse]+x}"
    assert $state equals 0
}

@test 'verb scriptnew registered' {
    run test -n "${ZPWR_VERBS[scriptnew]+x}"
    assert $state equals 0
}

@test 'verb pstreemonitor registered' {
    run test -n "${ZPWR_VERBS[pstreemonitor]+x}"
    assert $state equals 0
}

@test 'verb wordsearchedit registered' {
    run test -n "${ZPWR_VERBS[wordsearchedit]+x}"
    assert $state equals 0
}

@test 'verb subcommands registered' {
    run test -n "${ZPWR_VERBS[subcommands]+x}"
    assert $state equals 0
}

@test 'verb subcommandsedit registered' {
    run test -n "${ZPWR_VERBS[subcommandsedit]+x}"
    assert $state equals 0
}

@test 'verb subcommandsfzf registered' {
    run test -n "${ZPWR_VERBS[subcommandsfzf]+x}"
    assert $state equals 0
}

@test 'verb subcommandslist registered' {
    run test -n "${ZPWR_VERBS[subcommandslist]+x}"
    assert $state equals 0
}

@test 'verb uncompile registered' {
    run test -n "${ZPWR_VERBS[uncompile]+x}"
    assert $state equals 0
}

@test 'verb gittotallines registered' {
    run test -n "${ZPWR_VERBS[gittotallines]+x}"
    assert $state equals 0
}
