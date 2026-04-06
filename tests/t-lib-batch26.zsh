#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ci.yml apt/curl/build/verify anchors; short-name autoload zsh -n; repo layout
##### Notes: Complements batch12–25 workflow greps; autoloads are syntax-only spot checks
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — packages, curl, zunit build, verify
#--------------------------------------------------------------
@test 'ci.yml installs zsh vim perl python3 curl git base line' {
    run grep -q 'zsh vim perl python3 curl git' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml installs iputils-ping' {
    run grep -q 'iputils-ping' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml curl uses retry-delay' {
    run grep -q 'retry-delay' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Build zunit runs ./build.zsh' {
    run grep -q './build.zsh' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Build zunit cds into zunit-src' {
    run grep -q 'cd zunit-src' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Build zunit uses command cp into cache' {
    run grep -q 'command cp zunit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Build zunit mkdirs zunit-bin cache' {
    run grep -q 'mkdir -p ~/.zpwr/.cache/zunit-bin' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Verify zunit runs test -x on cached binary' {
    run grep -Fq 'test -x' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Verify zunit runs zunit --version' {
    run grep -q 'zunit --version' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Create directories includes forkedRepos' {
    run grep -q 'forkedRepos' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Create directories includes Downloads' {
    run grep -q 'Downloads' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml zinit stub names MenkeTechnologies fzf plugin' {
    run grep -q 'MenkeTechnologies---fzf' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# env/zpwr.zsh — bannercounts verb anchor
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[bannercounts]' {
    run grep -q "ZPWR_VERBS\[bannercounts\]=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (short-name common helpers)
#--------------------------------------------------------------
@test 'autoload common a passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/a"
    assert $state equals 0
}

@test 'autoload common b passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/b"
    assert $state equals 0
}

@test 'autoload common c passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/c"
    assert $state equals 0
}

@test 'autoload common cd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/cd"
    assert $state equals 0
}

@test 'autoload common d passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/d"
    assert $state equals 0
}

@test 'autoload common e passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/e"
    assert $state equals 0
}

@test 'autoload common ff passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ff"
    assert $state equals 0
}

@test 'autoload common hc passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/hc"
    assert $state equals 0
}

@test 'autoload common hd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/hd"
    assert $state equals 0
}

@test 'autoload common gcl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/gcl"
    assert $state equals 0
}

@test 'autoload common cv passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/cv"
    assert $state equals 0
}

@test 'autoload common color2 passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/color2"
    assert $state equals 0
}

@test 'autoload common apz passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/apz"
    assert $state equals 0
}

@test 'autoload common asg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/asg"
    assert $state equals 0
}

@test 'autoload common cca passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/cca"
    assert $state equals 0
}

@test 'autoload common digs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/digs"
    assert $state equals 0
}

@test 'autoload common fp passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/fp"
    assert $state equals 0
}

@test 'autoload common fm passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/fm"
    assert $state equals 0
}

@test 'autoload common zpwrBannerCounts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBannerCounts"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — short-name and banner helper
#--------------------------------------------------------------
@test 'zpwrExists a returns 0' {
    run zpwrExists a
    assert $state equals 0
}

@test 'zpwrExists b returns 0' {
    run zpwrExists b
    assert $state equals 0
}

@test 'zpwrExists c returns 0' {
    run zpwrExists c
    assert $state equals 0
}

@test 'zpwrExists d returns 0' {
    run zpwrExists d
    assert $state equals 0
}

@test 'zpwrExists hc returns 0' {
    run zpwrExists hc
    assert $state equals 0
}

@test 'zpwrExists hd returns 0' {
    run zpwrExists hd
    assert $state equals 0
}

@test 'zpwrExists gcl returns 0' {
    run zpwrExists gcl
    assert $state equals 0
}

@test 'zpwrExists ff returns 0' {
    run zpwrExists ff
    assert $state equals 0
}

@test 'zpwrExists cca returns 0' {
    run zpwrExists cca
    assert $state equals 0
}

@test 'zpwrExists cv returns 0' {
    run zpwrExists cv
    assert $state equals 0
}

@test 'zpwrExists em returns 0' {
    run zpwrExists em
    assert $state equals 0
}

@test 'zpwrExists fm returns 0' {
    run zpwrExists fm
    assert $state equals 0
}

@test 'zpwrExists zpwrBannerCounts returns 0' {
    run zpwrExists zpwrBannerCounts
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — archive tools used in CI / ecosystem
#--------------------------------------------------------------
@test 'zpwrCommandExists rsync zip unzip returns 0' {
    run zpwrCommandExists rsync zip unzip
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'repo has .zpwr_root marker' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'install zpwr.yml exists' {
    run test -f "$ZPWR/install/zpwr.yml"
    assert $state equals 0
}

@test 'scripts lib.sh exists' {
    run test -f "$ZPWR/scripts/lib.sh"
    assert $state equals 0
}

@test 'autoload common is a directory' {
    run test -d "$ZPWR/autoload/common"
    assert $state equals 0
}
