#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: docs generators, ZPWR_VARS/REPO, wizard page samples, forgit verb cluster
##### Notes: Complements batch11 (regenPDF) and batch13 (verb ratio)
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# docs — Python / TeX sources
#--------------------------------------------------------------
@test 'docs/genEncyclopediaTex.py passes python3 -m py_compile' {
    run python3 -m py_compile "$ZPWR/docs/genEncyclopediaTex.py"
    assert $state equals 0
}

@test 'docs/zpwr-encyclopedia.tex exists' {
    run test -f "$ZPWR/docs/zpwr-encyclopedia.tex"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VARS / repo identity (after test_lib load)
#--------------------------------------------------------------
@test 'ZPWR_VARS is association parameter' {
    run test "${parameters[ZPWR_VARS]}" = association
    assert $state equals 0
}

@test 'ZPWR_VARS VERB_0 is set' {
    run test -n "${ZPWR_VARS[VERB_0]+x}"
    assert $state equals 0
}

@test 'ZPWR_REPO_NAME is set' {
    run test -n "${ZPWR_REPO_NAME+x}" && test -n "$ZPWR_REPO_NAME"
    assert $state equals 0
}

#--------------------------------------------------------------
# Project root marker
#--------------------------------------------------------------
@test '.zpwr_root mentions project root detection' {
    run grep -q 'project root' "$ZPWR/.zpwr_root"
    assert $state equals 0
}

#--------------------------------------------------------------
# wizard_pages — stratified zsh -n sample (not full tree; see t-new-verbs)
#--------------------------------------------------------------
@test 'wizard sample pages pass zsh -n' {
    local f
    for f in \
        "$ZPWR/docs/wizard_pages/page_001.zsh" \
        "$ZPWR/docs/wizard_pages/page_050.zsh" \
        "$ZPWR/docs/wizard_pages/page_100.zsh" \
        "$ZPWR/docs/wizard_pages/page_150.zsh" \
        "$ZPWR/docs/wizard_pages/page_200.zsh"
    do
        run zsh -n "$f"
        assert $state equals 0
    done
}

#--------------------------------------------------------------
# ZPWR_VERBS — forgit::* cluster (complete)
#--------------------------------------------------------------
@test 'verb forgitadd registered' {
    run test -n "${ZPWR_VERBS[forgitadd]+x}"
    assert $state equals 0
}

@test 'verb forgitclean registered' {
    run test -n "${ZPWR_VERBS[forgitclean]+x}"
    assert $state equals 0
}

@test 'verb forgitdiff registered' {
    run test -n "${ZPWR_VERBS[forgitdiff]+x}"
    assert $state equals 0
}

@test 'verb forgitignore registered' {
    run test -n "${ZPWR_VERBS[forgitignore]+x}"
    assert $state equals 0
}

@test 'verb forgitignoreclean registered' {
    run test -n "${ZPWR_VERBS[forgitignoreclean]+x}"
    assert $state equals 0
}

@test 'verb forgitignoreget registered' {
    run test -n "${ZPWR_VERBS[forgitignoreget]+x}"
    assert $state equals 0
}

@test 'verb forgitignorelist registered' {
    run test -n "${ZPWR_VERBS[forgitignorelist]+x}"
    assert $state equals 0
}

@test 'verb forgitignoreupdate registered' {
    run test -n "${ZPWR_VERBS[forgitignoreupdate]+x}"
    assert $state equals 0
}

@test 'verb forgitinfo registered' {
    run test -n "${ZPWR_VERBS[forgitinfo]+x}"
    assert $state equals 0
}

@test 'verb forgitlog registered' {
    run test -n "${ZPWR_VERBS[forgitlog]+x}"
    assert $state equals 0
}

@test 'verb forgitreset registered' {
    run test -n "${ZPWR_VERBS[forgitreset]+x}"
    assert $state equals 0
}

@test 'verb forgitrestore registered' {
    run test -n "${ZPWR_VERBS[forgitrestore]+x}"
    assert $state equals 0
}

@test 'verb forgitstash registered' {
    run test -n "${ZPWR_VERBS[forgitstash]+x}"
    assert $state equals 0
}

@test 'verb forgitwarn registered' {
    run test -n "${ZPWR_VERBS[forgitwarn]+x}"
    assert $state equals 0
}
