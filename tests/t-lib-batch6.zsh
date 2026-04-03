#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env / zpwr.zsh syntax checks + extra ZPWR_VERBS spot tests
##### Notes: bash shebang files use bash -n; zsh files use zsh -n
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Env and verb map files — parse-only (no execute)
#--------------------------------------------------------------
@test '.zpwr_env.sh passes bash -n' {
    run bash -n "$ZPWR_ENV_FILE"
    assert $state equals 0
}

@test '.zpwr_re_env.sh passes bash -n' {
    run bash -n "$ZPWR_RE_ENV_FILE"
    assert $state equals 0
}

@test 'env/zpwr.zsh passes zsh -n' {
    run zsh -n "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env/grc.zsh passes zsh -n' {
    run zsh -n "$ZPWR/env/grc.zsh"
    assert $state equals 0
}

@test 'env/.p10k.zsh passes zsh -n' {
    run zsh -n "$ZPWR/env/.p10k.zsh"
    assert $state equals 0
}

@test 'scripts/init.sh passes bash -n' {
    run bash -n "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Repo paths expected by installers and tests
#--------------------------------------------------------------
@test 'scripts/lib.sh is a regular file' {
    run test -f "$ZPWR_LIB"
    assert $state equals 0
}

@test 'install directory exists' {
    run test -d "$ZPWR/install"
    assert $state equals 0
}

@test '.zpwr_root marker exists' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'env/zpwr.zsh contains ZPWR_VERBS assignments' {
    run grep -q 'ZPWR_VERBS\[' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — diagnostics / tooling (spot checks)
#--------------------------------------------------------------
@test 'verb bench registered' {
    run test -n "${ZPWR_VERBS[bench]+x}"
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

@test 'verb lint registered' {
    run test -n "${ZPWR_VERBS[lint]+x}"
    assert $state equals 0
}

@test 'verb ports registered' {
    run test -n "${ZPWR_VERBS[ports]+x}"
    assert $state equals 0
}

@test 'verb stale registered' {
    run test -n "${ZPWR_VERBS[stale]+x}"
    assert $state equals 0
}

@test 'verb top registered' {
    run test -n "${ZPWR_VERBS[top]+x}"
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

@test 'verb timeline registered' {
    run test -n "${ZPWR_VERBS[timeline]+x}"
    assert $state equals 0
}

@test 'verb gitwho registered' {
    run test -n "${ZPWR_VERBS[gitwho]+x}"
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

@test 'verb resolve registered' {
    run test -n "${ZPWR_VERBS[resolve]+x}"
    assert $state equals 0
}

@test 'verb pathaudit registered' {
    run test -n "${ZPWR_VERBS[pathaudit]+x}"
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

@test 'verb startup registered' {
    run test -n "${ZPWR_VERBS[startup]+x}"
    assert $state equals 0
}

@test 'verb study registered' {
    run test -n "${ZPWR_VERBS[study]+x}"
    assert $state equals 0
}

@test 'verb wizard registered' {
    run test -n "${ZPWR_VERBS[wizard]+x}"
    assert $state equals 0
}

@test 'verb matrix registered' {
    run test -n "${ZPWR_VERBS[matrix]+x}"
    assert $state equals 0
}

@test 'verb fortune registered' {
    run test -n "${ZPWR_VERBS[fortune]+x}"
    assert $state equals 0
}

@test 'verb test registered' {
    run test -n "${ZPWR_VERBS[test]+x}"
    assert $state equals 0
}

@test 'verb testall registered' {
    run test -n "${ZPWR_VERBS[testall]+x}"
    assert $state equals 0
}
