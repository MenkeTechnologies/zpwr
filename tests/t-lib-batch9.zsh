#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: python3 compile on scripts/*.py, ci.yml extras, verbs, zpwrCommandExists
##### Notes: Complements batch7 perl and batch8 bash -n on shell trees
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# scripts/*.py — syntax (compile-only)
#--------------------------------------------------------------
@test 'mantozshcomp.py passes python3 -m py_compile' {
    run python3 -m py_compile "$ZPWR_SCRIPTS/mantozshcomp.py"
    assert $state equals 0
}

@test 'help2comp.py passes python3 -m py_compile' {
    run python3 -m py_compile "$ZPWR_SCRIPTS/help2comp.py"
    assert $state equals 0
}

@test 'boiler_gen.py passes python3 -m py_compile' {
    run python3 -m py_compile "$ZPWR_SCRIPTS/boiler_gen.py"
    assert $state equals 0
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — more regression greps
#--------------------------------------------------------------
@test 'ci.yml sets permissions contents read' {
    run grep -q 'permissions:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references contents: read' {
    run grep -q 'contents: read' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references curl retry' {
    run grep -q '\-\-retry' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references connect-timeout' {
    run grep -q 'connect-timeout' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references ubuntu-latest' {
    run grep -q 'ubuntu-latest' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references workflow_dispatch' {
    run grep -q 'workflow_dispatch' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references cancel-in-progress' {
    run grep -q 'cancel-in-progress' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references chmod zunit' {
    run grep -q 'chmod' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — common userland (CI-friendly)
#--------------------------------------------------------------
@test 'zpwrCommandExists timeout returns 0' {
    run zpwrCommandExists timeout
    assert $state equals 0
}

@test 'zpwrCommandExists which returns 0' {
    run zpwrCommandExists which
    assert $state equals 0
}

@test 'zpwrCommandExists nice returns 0' {
    run zpwrCommandExists nice
    assert $state equals 0
}

@test 'zpwrCommandExists printf returns 0' {
    run zpwrCommandExists printf
    assert $state equals 0
}

@test 'zpwrCommandExists readlink returns 0' {
    run zpwrCommandExists readlink
    assert $state equals 0
}

@test 'zpwrCommandExists dirname returns 0' {
    run zpwrCommandExists dirname
    assert $state equals 0
}

@test 'zpwrCommandExists basename returns 0' {
    run zpwrCommandExists basename
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — shortcuts and misc
#--------------------------------------------------------------
@test 'verb a registered' {
    run test -n "${ZPWR_VERBS[a]+x}"
    assert $state equals 0
}

@test 'verb zp registered' {
    run test -n "${ZPWR_VERBS[zp]+x}"
    assert $state equals 0
}

@test 'verb zpwr registered' {
    run test -n "${ZPWR_VERBS[zpwr]+x}"
    assert $state equals 0
}

@test 'verb poll registered' {
    run test -n "${ZPWR_VERBS[poll]+x}"
    assert $state equals 0
}

@test 'verb rename registered' {
    run test -n "${ZPWR_VERBS[rename]+x}"
    assert $state equals 0
}

@test 'verb reload registered' {
    run test -n "${ZPWR_VERBS[reload]+x}"
    assert $state equals 0
}

@test 'verb uninstall registered' {
    run test -n "${ZPWR_VERBS[uninstall]+x}"
    assert $state equals 0
}

@test 'verb animate registered' {
    run test -n "${ZPWR_VERBS[animate]+x}"
    assert $state equals 0
}

@test 'verb curl registered' {
    run test -n "${ZPWR_VERBS[curl]+x}"
    assert $state equals 0
}

@test 'verb deduppaths registered' {
    run test -n "${ZPWR_VERBS[deduppaths]+x}"
    assert $state equals 0
}

@test 'verb reset registered' {
    run test -n "${ZPWR_VERBS[reset]+x}"
    assert $state equals 0
}

@test 'verb replacer registered' {
    run test -n "${ZPWR_VERBS[replacer]+x}"
    assert $state equals 0
}

@test 'verb updatepull registered' {
    run test -n "${ZPWR_VERBS[updatepull]+x}"
    assert $state equals 0
}

@test 'verb onchange registered' {
    run test -n "${ZPWR_VERBS[onchange]+x}"
    assert $state equals 0
}

@test 'verb web registered' {
    run test -n "${ZPWR_VERBS[web]+x}"
    assert $state equals 0
}

@test 'verb whiletrue registered' {
    run test -n "${ZPWR_VERBS[whiletrue]+x}"
    assert $state equals 0
}

@test 'verb whilesleep registered' {
    run test -n "${ZPWR_VERBS[whilesleep]+x}"
    assert $state equals 0
}

@test 'verb filesearch registered' {
    run test -n "${ZPWR_VERBS[filesearch]+x}"
    assert $state equals 0
}

@test 'verb wordsearch registered' {
    run test -n "${ZPWR_VERBS[wordsearch]+x}"
    assert $state equals 0
}

@test 'verb execpy registered' {
    run test -n "${ZPWR_VERBS[execpy]+x}"
    assert $state equals 0
}

@test 'verb goclean registered' {
    run test -n "${ZPWR_VERBS[goclean]+x}"
    assert $state equals 0
}

@test 'verb bannerlolcat registered' {
    run test -n "${ZPWR_VERBS[bannerlolcat]+x}"
    assert $state equals 0
}

@test 'verb bannerpony registered' {
    run test -n "${ZPWR_VERBS[bannerpony]+x}"
    assert $state equals 0
}

@test 'verb creategif registered' {
    run test -n "${ZPWR_VERBS[creategif]+x}"
    assert $state equals 0
}
