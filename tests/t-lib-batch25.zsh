#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: Single-letter ZPWR_VERBS, env/zpwr.zsh conditional blocks, ci.yml cache anchors
##### Notes: systemd/pi/ZPWR_PYSCRIPTS verbs use skip when unregistered; see env/zpwr.zsh
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — zunit cache
#--------------------------------------------------------------
@test 'ci.yml names Ensure zunit executable bit step' {
    run grep -q 'Ensure zunit executable bit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml sets cache-zunit step id' {
    run grep -q 'id: cache-zunit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml gates Build zunit on cache miss' {
    run grep -q 'steps.cache-zunit.outputs.cache-hit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml clones MenkeTechnologies zunit shallow' {
    run grep -q 'git clone --depth 1 https://github.com/MenkeTechnologies/zunit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml Ensure zunit step chmod targets zunit-bin zunit' {
    run zsh -c "grep -A1 'Ensure zunit executable bit' \"$ZPWR/.github/workflows/ci.yml\" | grep -q chmod"
    assert $state equals 0
}

#--------------------------------------------------------------
# env/zpwr.zsh — single-letter verb assignments (source anchors)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[c] zpwrCat' {
    run grep -q "ZPWR_VERBS\[c\]='zpwrCat=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[f] zpwrCd' {
    run grep -q "ZPWR_VERBS\[f\]='zpwrCd=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[r] zpwrCdUp' {
    run grep -q "ZPWR_VERBS\[r\]='zpwrCdUp=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[ls] zpwrListNoClear' {
    run grep -q "ZPWR_VERBS\[ls\]='zpwrListNoClear=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[to] toggle external ip' {
    run grep -q "ZPWR_VERBS\[to\]='to=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[toggle] with to=' {
    run grep -q "ZPWR_VERBS\[toggle\]='to=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — single-letter and toggle
#--------------------------------------------------------------
@test 'verb c registered' {
    run test -n "${ZPWR_VERBS[c]+x}"
    assert $state equals 0
}

@test 'verb f registered' {
    run test -n "${ZPWR_VERBS[f]+x}"
    assert $state equals 0
}

@test 'verb r registered' {
    run test -n "${ZPWR_VERBS[r]+x}"
    assert $state equals 0
}

@test 'verb ls registered' {
    run test -n "${ZPWR_VERBS[ls]+x}"
    assert $state equals 0
}

@test 'verb to registered' {
    run test -n "${ZPWR_VERBS[to]+x}"
    assert $state equals 0
}

@test 'verb toggle registered' {
    run test -n "${ZPWR_VERBS[toggle]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (cd, list, to, execpy, tor)
#--------------------------------------------------------------
@test 'autoload common zpwrCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCd"
    assert $state equals 0
}

@test 'autoload common zpwrCdUp passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCdUp"
    assert $state equals 0
}

@test 'autoload common zpwrListNoClear passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrListNoClear"
    assert $state equals 0
}

@test 'autoload common to passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/to"
    assert $state equals 0
}

@test 'autoload common zpwrExecpy passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecpy"
    assert $state equals 0
}

@test 'autoload common zpwrTorip passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTorip"
    assert $state equals 0
}

@test 'autoload common zpwrToriprenew passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrToriprenew"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — navigation and exec helpers
#--------------------------------------------------------------
@test 'zpwrExists zpwrCd returns 0' {
    run zpwrExists zpwrCd
    assert $state equals 0
}

@test 'zpwrExists zpwrCdUp returns 0' {
    run zpwrExists zpwrCdUp
    assert $state equals 0
}

@test 'zpwrExists zpwrListNoClear returns 0' {
    run zpwrExists zpwrListNoClear
    assert $state equals 0
}

@test 'zpwrExists zpwrExecpy returns 0' {
    run zpwrExists zpwrExecpy
    assert $state equals 0
}

@test 'zpwrExists zpwrTorip returns 0' {
    run zpwrExists zpwrTorip
    assert $state equals 0
}

#--------------------------------------------------------------
# env/zpwr.zsh — conditional systemd / pi / python scripts (source anchors)
#--------------------------------------------------------------
@test 'env zpwr.zsh gates systemd verbs on zpwrCommandExists systemctl' {
    run grep -q 'if zpwrCommandExists systemctl' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh assigns ZPWR_VERBS[restart] under systemd' {
    run grep -q "ZPWR_VERBS\[restart\]=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh assigns ZPWR_VERBS[serviceup] under systemd' {
    run grep -q "ZPWR_VERBS\[serviceup\]=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh assigns ZPWR_VERBS[servicedown] under systemd' {
    run grep -q "ZPWR_VERBS\[servicedown\]=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh gates pi verbs on zpwrExists pi' {
    run grep -q 'if zpwrExists pi' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh assigns ZPWR_VERBS[pi] under pi' {
    run grep -q "ZPWR_VERBS\[pi\]=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh assigns ZPWR_VERBS[ping] under pi' {
    run grep -q "ZPWR_VERBS\[ping\]=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh gates start verbs on ZPWR_PYSCRIPTS directory' {
    run grep -Fq 'if [[ -d' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh assigns ZPWR_VERBS[start] under py scripts' {
    run grep -q "ZPWR_VERBS\[start\]=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh assigns ZPWR_VERBS[starttabs] under py scripts' {
    run grep -q "ZPWR_VERBS\[starttabs\]=" "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Conditional ZPWR_VERBS — skip when host omits optional tools
#--------------------------------------------------------------
@test 'verb restart registered when systemctl available' {
    if ! (( ${+ZPWR_VERBS[restart]} )); then skip "systemctl not available"; fi
    run test -n "${ZPWR_VERBS[restart]+x}"
    assert $state equals 0
}

@test 'verb serviceup registered when systemctl available' {
    if ! (( ${+ZPWR_VERBS[serviceup]} )); then skip "systemctl not available"; fi
    run test -n "${ZPWR_VERBS[serviceup]+x}"
    assert $state equals 0
}

@test 'verb servicedown registered when systemctl available' {
    if ! (( ${+ZPWR_VERBS[servicedown]} )); then skip "systemctl not available"; fi
    run test -n "${ZPWR_VERBS[servicedown]+x}"
    assert $state equals 0
}

@test 'verb pi registered when pi command exists' {
    if ! (( ${+ZPWR_VERBS[pi]} )); then skip "pi command not available"; fi
    run test -n "${ZPWR_VERBS[pi]+x}"
    assert $state equals 0
}

@test 'verb ping registered when pi command exists' {
    if ! (( ${+ZPWR_VERBS[ping]} )); then skip "pi command not available"; fi
    run test -n "${ZPWR_VERBS[ping]+x}"
    assert $state equals 0
}

@test 'verb start registered when ZPWR_PYSCRIPTS directory exists' {
    if ! (( ${+ZPWR_VERBS[start]} )); then skip "ZPWR_PYSCRIPTS not available"; fi
    run test -n "${ZPWR_VERBS[start]+x}"
    assert $state equals 0
}

@test 'verb starttabs registered when ZPWR_PYSCRIPTS directory exists' {
    if ! (( ${+ZPWR_VERBS[starttabs]} )); then skip "ZPWR_PYSCRIPTS not available"; fi
    run test -n "${ZPWR_VERBS[starttabs]+x}"
    assert $state equals 0
}
