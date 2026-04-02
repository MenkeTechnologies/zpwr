#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Apr 02 00:00:00 EST 2026
##### Purpose: zsh script to test new zpwr verbs
##### Notes: tests -h flag, verb registration, and basic functionality
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

# ── VERB REGISTRATION ─────────────────────────────────────────

@test 'verb bench registered' {
    run test -n "${ZPWR_VERBS[bench]+x}"
    assert $state equals 0
}

@test 'verb top registered' {
    run test -n "${ZPWR_VERBS[top]+x}"
    assert $state equals 0
}

@test 'verb doctor registered' {
    run test -n "${ZPWR_VERBS[doctor]+x}"
    assert $state equals 0
}

@test 'verb flame registered' {
    run test -n "${ZPWR_VERBS[flame]+x}"
    assert $state equals 0
}

@test 'verb aliasrank registered' {
    run test -n "${ZPWR_VERBS[aliasrank]+x}"
    assert $state equals 0
}

@test 'verb funcrank registered' {
    run test -n "${ZPWR_VERBS[funcrank]+x}"
    assert $state equals 0
}

@test 'verb watch registered' {
    run test -n "${ZPWR_VERBS[watch]+x}"
    assert $state equals 0
}

@test 'verb replay registered' {
    run test -n "${ZPWR_VERBS[replay]+x}"
    assert $state equals 0
}

@test 'verb snapshot registered' {
    run test -n "${ZPWR_VERBS[snapshot]+x}"
    assert $state equals 0
}

@test 'verb restore registered' {
    run test -n "${ZPWR_VERBS[restore]+x}"
    assert $state equals 0
}

@test 'verb trace registered' {
    run test -n "${ZPWR_VERBS[trace]+x}"
    assert $state equals 0
}

@test 'verb deps registered' {
    run test -n "${ZPWR_VERBS[deps]+x}"
    assert $state equals 0
}

@test 'verb taillog registered' {
    run test -n "${ZPWR_VERBS[taillog]+x}"
    assert $state equals 0
}

@test 'verb wizard registered' {
    run test -n "${ZPWR_VERBS[wizard]+x}"
    assert $state equals 0
}

@test 'verb manual registered' {
    run test -n "${ZPWR_VERBS[manual]+x}"
    assert $state equals 0
}

@test 'verb tutorial registered' {
    run test -n "${ZPWR_VERBS[tutorial]+x}"
    assert $state equals 0
}

@test 'verb docs registered' {
    run test -n "${ZPWR_VERBS[docs]+x}"
    assert $state equals 0
}

@test 'verb study registered' {
    run test -n "${ZPWR_VERBS[study]+x}"
    assert $state equals 0
}

@test 'verb regenpdf registered' {
    run test -n "${ZPWR_VERBS[regenpdf]+x}"
    assert $state equals 0
}

# ── HELP FLAG TESTS ───────────────────────────────────────────

@test 'zpwrBench -h exits 0' {
    run zpwrBench -h
    assert $state equals 0
}

@test 'zpwrDoctor -h exits 0' {
    run zpwrDoctor -h
    assert $state equals 0
}

@test 'zpwrFlame -h exits 0' {
    run zpwrFlame -h
    assert $state equals 0
}

@test 'zpwrAliasRank -h exits 0' {
    run zpwrAliasRank -h
    assert $state equals 0
}

@test 'zpwrFuncRank -h exits 0' {
    run zpwrFuncRank -h
    assert $state equals 0
}

@test 'zpwrWatch -h exits 0' {
    run zpwrWatch -h
    assert $state equals 0
}

@test 'zpwrReplay -h exits 0' {
    run zpwrReplay -h
    assert $state equals 0
}

@test 'zpwrSnapshot -h exits 0' {
    run zpwrSnapshot -h
    assert $state equals 0
}

@test 'zpwrRestore -h exits 0' {
    run zpwrRestore -h
    assert $state equals 0
}

@test 'zpwrTrace -h exits 0' {
    run zpwrTrace -h
    assert $state equals 0
}

@test 'zpwrDeps -h exits 0' {
    run zpwrDeps -h
    assert $state equals 0
}

@test 'zpwrTailLog -h exits 0' {
    run zpwrTailLog -h
    assert $state equals 0
}

@test 'zpwrStudy -h exits 0' {
    run zpwrStudy -h
    assert $state equals 0
}

@test 'zpwrWizard -h exits 0' {
    run zpwrWizard -h
    assert $state equals 0
}

@test 'zpwrTop -h exits 0' {
    run zpwrTop -h
    assert $state equals 0
}

# ── WIZARD PAGES ──────────────────────────────────────────────

@test 'wizard pages directory exists' {
    run test -d "$ZPWR/docs/wizard_pages"
    assert $state equals 0
}

@test 'wizard has at least 100 pages' {
    local -i count=$(ls "$ZPWR/docs/wizard_pages"/page_*.zsh 2>/dev/null | wc -l)
    run test $count -ge 100
    assert $state equals 0
}

@test 'wizard page_001 exists' {
    run test -f "$ZPWR/docs/wizard_pages/page_001.zsh"
    assert $state equals 0
}

@test 'wizard page_001 has PAGE_TITLE' {
    run grep -c 'PAGE_TITLE=' "$ZPWR/docs/wizard_pages/page_001.zsh"
    assert $state equals 0
}

@test 'wizard page_001 has PAGE_CONTENT' {
    run grep -c 'PAGE_CONTENT()' "$ZPWR/docs/wizard_pages/page_001.zsh"
    assert $state equals 0
}

@test 'all wizard pages pass syntax check' {
    local -i errors=0
    for f in "$ZPWR/docs/wizard_pages"/page_*.zsh; do
        if ! zsh -n "$f" 2>/dev/null; then
            ((errors++))
        fi
    done
    run test $errors -eq 0
    assert $state equals 0
}

# ── COMPLETION GROUPS ─────────────────────────────────────────

@test 'zpwrDiagVerbs array exists after zpwrBindVerbs' {
    zpwrBindVerbs
    run test -n "${zpwrDiagVerbs+x}"
    assert $state equals 0
}

@test 'zpwrMonitorVerbs array exists after zpwrBindVerbs' {
    zpwrBindVerbs
    run test -n "${zpwrMonitorVerbs+x}"
    assert $state equals 0
}

# ── PDF AND DOCS ──────────────────────────────────────────────

@test 'genEncyclopediaTex.py exists' {
    run test -f "$ZPWR/docs/genEncyclopediaTex.py"
    assert $state equals 0
}

@test 'regenPDF.sh exists and is executable' {
    run test -x "$ZPWR/docs/regenPDF.sh"
    assert $state equals 0
}
