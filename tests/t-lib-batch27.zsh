#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ci.yml apt/revolver/GITHUB_ENV/cache anchors; more short-name autoload zsh -n
##### Notes: Avoid grep patterns containing unescaped \$ — zunit run may expand them
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — packages, revolver, env, cache key
#--------------------------------------------------------------
@test 'ci.yml apt line includes net-tools' {
    run grep -Fq 'net-tools' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml apt line includes bc and screen' {
    run grep -Fq 'bc screen' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml apt line includes openssh-client' {
    run grep -Fq 'openssh-client' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml apt line includes unzip' {
    run grep -Fq 'unzip' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Install dependencies runs apt-get update' {
    run grep -Fq 'sudo apt-get update' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml curl fetches revolver from molovo' {
    run grep -Fq 'molovo/revolver' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml chmod u+x on revolver binary' {
    run grep -Fq 'chmod u+x .bin/revolver' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml sets TERM=xterm in GITHUB_ENV' {
    run grep -Fq 'TERM=xterm' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml sets LINES=40 in GITHUB_ENV' {
    run grep -Fq 'LINES=40' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml creates zcompcache directory' {
    run grep -Fq 'zcompcache' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml cache restore-keys lists zunit fallback' {
    run grep -Fq 'restore-keys:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml zunit cache key uses runner.os' {
    run grep -Fq 'runner.os' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml exports ZPWR into GITHUB_ENV' {
    run grep -Fq 'echo "ZPWR=' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml exports ZPWR_SCRIPTS into GITHUB_ENV' {
    run grep -Fq 'echo "ZPWR_SCRIPTS=' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Run tests cds to home zpwr' {
    run grep -Fq 'cd ~/.zpwr' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (short-name common, batch27 set)
#--------------------------------------------------------------
@test 'autoload common ce passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ce"
    assert $state equals 0
}

@test 'autoload common cg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/cg"
    assert $state equals 0
}

@test 'autoload common cgh passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/cgh"
    assert $state equals 0
}

@test 'autoload common dbz passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/dbz"
    assert $state equals 0
}

@test 'autoload common de passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/de"
    assert $state equals 0
}

@test 'autoload common dl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/dl"
    assert $state equals 0
}

@test 'autoload common docu passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/docu"
    assert $state equals 0
}

@test 'autoload common eb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/eb"
    assert $state equals 0
}

@test 'autoload common emm passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/emm"
    assert $state equals 0
}

@test 'autoload common f passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/f"
    assert $state equals 0
}

@test 'autoload common fff passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/fff"
    assert $state equals 0
}

@test 'autoload common ge passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ge"
    assert $state equals 0
}

@test 'autoload common gil passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/gil"
    assert $state equals 0
}

@test 'autoload common gsdc passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/gsdc"
    assert $state equals 0
}

@test 'autoload common gse passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/gse"
    assert $state equals 0
}

@test 'autoload common h passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/h"
    assert $state equals 0
}

@test 'autoload common ig passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ig"
    assert $state equals 0
}

@test 'autoload common ino passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ino"
    assert $state equals 0
}

@test 'autoload common j passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/j"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — helpers matching batch27 autoload set
#--------------------------------------------------------------
@test 'zpwrExists ce returns 0' {
    run zpwrExists ce
    assert $state equals 0
}

@test 'zpwrExists cg returns 0' {
    run zpwrExists cg
    assert $state equals 0
}

@test 'zpwrExists cgh returns 0' {
    run zpwrExists cgh
    assert $state equals 0
}

@test 'zpwrExists dbz returns 0' {
    run zpwrExists dbz
    assert $state equals 0
}

@test 'zpwrExists de returns 0' {
    run zpwrExists de
    assert $state equals 0
}

@test 'zpwrExists docu returns 0' {
    run zpwrExists docu
    assert $state equals 0
}

@test 'zpwrExists eb returns 0' {
    run zpwrExists eb
    assert $state equals 0
}

@test 'zpwrExists ge returns 0' {
    run zpwrExists ge
    assert $state equals 0
}

@test 'zpwrExists gil returns 0' {
    run zpwrExists gil
    assert $state equals 0
}

@test 'zpwrExists f returns 0' {
    run zpwrExists f
    assert $state equals 0
}

@test 'zpwrExists h returns 0' {
    run zpwrExists h
    assert $state equals 0
}

@test 'zpwrExists j returns 0' {
    run zpwrExists j
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — path utilities
#--------------------------------------------------------------
@test 'zpwrCommandExists mkdir mktemp dirname basename returns 0' {
    run zpwrCommandExists mkdir mktemp dirname basename
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository entrypoints
#--------------------------------------------------------------
@test 'tests test_lib.zsh exists' {
    run test -f "$ZPWR/tests/test_lib.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh exists' {
    run test -f "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'scripts init.sh exists' {
    run test -f "$ZPWR/scripts/init.sh"
    assert $state equals 0
}
