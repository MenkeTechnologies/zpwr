#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: docs tree + CI metadata, autoload zsh -n spot checks, emacs/vim/zsh verb clusters
##### Notes: Complements batch14 (docs generators); keeps heavy autoload-all suites separate
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .gitignore — keep docs/README tracked despite global ignores
#--------------------------------------------------------------
@test '.gitignore un-ignores docs directory' {
    run grep -q '^!docs/' "$ZPWR/.gitignore"
    assert $state equals 0
}

@test '.gitignore un-ignores docs README' {
    run grep -q '^!docs/README.md' "$ZPWR/.gitignore"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/README.md — tree guide
#--------------------------------------------------------------
@test 'docs/README.md exists' {
    run test -f "$ZPWR/docs/README.md"
    assert $state equals 0
}

@test 'docs/README.md references wizard_pages' {
    run grep -q 'wizard_pages' "$ZPWR/docs/README.md"
    assert $state equals 0
}

@test 'docs/README.md references zunit' {
    run grep -q zunit "$ZPWR/docs/README.md"
    assert $state equals 0
}

@test 'docs/README.md references Diagnostics in top README' {
    run grep -qi 'Diagnostics' "$ZPWR/docs/README.md"
    assert $state equals 0
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — runner matrix (anchors)
#--------------------------------------------------------------
@test 'ci.yml uses ubuntu-latest' {
    run grep -q 'ubuntu-latest' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml defines zsh-version matrix' {
    run grep -q 'zsh-version' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml defines strategy matrix' {
    run grep -q 'matrix:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb table size (dynamic floor)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines at least 400 ZPWR_VERBS assignments' {
    local n
    n=$(grep -c 'ZPWR_VERBS\[' "$ZPWR/env/zpwr.zsh")
    run test "$n" -ge 400
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n spot checks (syntax only; full tree in t-autoload-*)
#--------------------------------------------------------------
@test 'autoload common zpwrTest passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTest"
    assert $state equals 0
}

@test 'autoload common zpwrWizard passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrWizard"
    assert $state equals 0
}

@test 'autoload common zpwrDoctor passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDoctor"
    assert $state equals 0
}

@test 'autoload common zpwrBindVerbs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindVerbs"
    assert $state equals 0
}

@test 'autoload common zpwrMatrix passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrMatrix"
    assert $state equals 0
}

@test 'autoload common zpwrFortune passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFortune"
    assert $state equals 0
}

@test 'autoload comps _zpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwr"
    assert $state equals 0
}

@test 'autoload linux zpwrLinuxPlugins passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrLinuxPlugins"
    assert $state equals 0
}

@test 'autoload darwin zpwrDarwinBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/zpwrDarwinBanner"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — emacs cluster (subset)
#--------------------------------------------------------------
@test 'verb emacsall registered' {
    run test -n "${ZPWR_VERBS[emacsall]+x}"
    assert $state equals 0
}

@test 'verb emacsconfig registered' {
    run test -n "${ZPWR_VERBS[emacsconfig]+x}"
    assert $state equals 0
}

@test 'verb emacstests registered' {
    run test -n "${ZPWR_VERBS[emacstests]+x}"
    assert $state equals 0
}

@test 'verb emacstokens registered' {
    run test -n "${ZPWR_VERBS[emacstokens]+x}"
    assert $state equals 0
}

@test 'verb emacsrecent registered' {
    run test -n "${ZPWR_VERBS[emacsrecent]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — vim cluster (subset)
#--------------------------------------------------------------
@test 'verb vimconfig registered' {
    run test -n "${ZPWR_VERBS[vimconfig]+x}"
    assert $state equals 0
}

@test 'verb vimrecent registered' {
    run test -n "${ZPWR_VERBS[vimrecent]+x}"
    assert $state equals 0
}

@test 'verb vimtests registered' {
    run test -n "${ZPWR_VERBS[vimtests]+x}"
    assert $state equals 0
}

@test 'verb vimtokens registered' {
    run test -n "${ZPWR_VERBS[vimtokens]+x}"
    assert $state equals 0
}

@test 'verb vimcd registered' {
    run test -n "${ZPWR_VERBS[vimcd]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — zsh introspection + OMZ-style paths
#--------------------------------------------------------------
@test 'verb zshplugincount registered' {
    run test -n "${ZPWR_VERBS[zshplugincount]+x}"
    assert $state equals 0
}

@test 'verb zshpluginlist registered' {
    run test -n "${ZPWR_VERBS[zshpluginlist]+x}"
    assert $state equals 0
}

@test 'verb modules registered' {
    run test -n "${ZPWR_VERBS[modules]+x}"
    assert $state equals 0
}

@test 'verb options registered' {
    run test -n "${ZPWR_VERBS[options]+x}"
    assert $state equals 0
}

@test 'verb plugins registered' {
    run test -n "${ZPWR_VERBS[plugins]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — open helpers
#--------------------------------------------------------------
@test 'verb open registered' {
    run test -n "${ZPWR_VERBS[open]+x}"
    assert $state equals 0
}

@test 'verb opencommand registered' {
    run test -n "${ZPWR_VERBS[opencommand]+x}"
    assert $state equals 0
}
