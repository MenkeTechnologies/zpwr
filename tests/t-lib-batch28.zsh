#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ci.yml curl/revolver/cache detail; autoload/common short names batch28
##### Notes: Patterns starting with -- need grep --; .zpwr/local/.temp not .local/.temp
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — apt line, curl, dirs, cache key, verify
#--------------------------------------------------------------
@test 'ci.yml apt line includes rsync' {
    run grep -Fq 'rsync' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml apt line includes zip' {
    run grep -Fq 'zip' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml revolver curl uses curl -fsSL' {
    run grep -Fq 'curl -fsSL' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml revolver curl uses --retry 3' {
    run grep -Fq -- '--retry 3' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml revolver URL uses refs/heads' {
    run grep -Fq 'refs/heads' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml revolver URL uses raw.githubusercontent.com' {
    run grep -Fq 'raw.githubusercontent.com' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Set up ZPWR mkdirs .bin under home zpwr' {
    run grep -Fq 'mkdir -p .bin' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Create directories includes Desktop' {
    run grep -Fq 'Desktop' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Create directories includes zpwr local temp' {
    run grep -Fq '.zpwr/local/.temp' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Set terminal size sets COLUMNS=120' {
    run grep -Fq 'COLUMNS=120' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml zinit stub includes fzf plugin dir' {
    run grep -Fq '.zinit/plugins/fzf' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml zunit cache key pins v1-0.8.x' {
    run grep -Fq 'v1-0.8.x' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Verify zunit runs command -v zunit' {
    run grep -Fq 'command -v zunit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Cache zunit binary step sets path to zunit-bin cache' {
    run grep -Fq 'path: ~/.zpwr/.cache/zunit-bin' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (short-name common, batch28 set)
#--------------------------------------------------------------
@test 'autoload common jd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/jd"
    assert $state equals 0
}

@test 'autoload common kr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/kr"
    assert $state equals 0
}

@test 'autoload common lcm passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/lcm"
    assert $state equals 0
}

@test 'autoload common mg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/mg"
    assert $state equals 0
}

@test 'autoload common nz passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/nz"
    assert $state equals 0
}

@test 'autoload common o passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/o"
    assert $state equals 0
}

@test 'autoload common p passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/p"
    assert $state equals 0
}

@test 'autoload common em passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/em"
    assert $state equals 0
}

@test 'autoload common pg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/pg"
    assert $state equals 0
}

@test 'autoload common pre passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/pre"
    assert $state equals 0
}

@test 'autoload common post passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/post"
    assert $state equals 0
}

@test 'autoload common t passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/t"
    assert $state equals 0
}

@test 'autoload common we passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/we"
    assert $state equals 0
}

@test 'autoload common z passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/z"
    assert $state equals 0
}

@test 'autoload common va passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/va"
    assert $state equals 0
}

@test 'autoload common vb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/vb"
    assert $state equals 0
}

@test 'autoload common wg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/wg"
    assert $state equals 0
}

@test 'autoload common ww passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ww"
    assert $state equals 0
}

@test 'autoload common tac passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/tac"
    assert $state equals 0
}

@test 'autoload common tma passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/tma"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch28 autoload names
#--------------------------------------------------------------
@test 'zpwrExists jd returns 0' {
    run zpwrExists jd
    assert $state equals 0
}

@test 'zpwrExists kr returns 0' {
    run zpwrExists kr
    assert $state equals 0
}

@test 'zpwrExists lcm returns 0' {
    run zpwrExists lcm
    assert $state equals 0
}

@test 'zpwrExists mg returns 0' {
    run zpwrExists mg
    assert $state equals 0
}

@test 'zpwrExists nz returns 0' {
    run zpwrExists nz
    assert $state equals 0
}

@test 'zpwrExists o returns 0' {
    run zpwrExists o
    assert $state equals 0
}

@test 'zpwrExists p returns 0' {
    run zpwrExists p
    assert $state equals 0
}

@test 'zpwrExists em returns 0' {
    run zpwrExists em
    assert $state equals 0
}

@test 'zpwrExists pg returns 0' {
    run zpwrExists pg
    assert $state equals 0
}

@test 'zpwrExists pre returns 0' {
    run zpwrExists pre
    assert $state equals 0
}

@test 'zpwrExists post returns 0' {
    run zpwrExists post
    assert $state equals 0
}

@test 'zpwrExists va returns 0' {
    run zpwrExists va
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — core Unix tools
#--------------------------------------------------------------
@test 'zpwrCommandExists head tail wc returns 0' {
    run zpwrCommandExists head tail wc
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'top-level README.md exists' {
    run test -f "$ZPWR/README.md"
    assert $state equals 0
}

@test 'docs directory exists' {
    run test -d "$ZPWR/docs"
    assert $state equals 0
}

@test 'autoload common zpwrSearch file exists' {
    run test -f "$ZPWR/autoload/common/zpwrSearch"
    assert $state equals 0
}
