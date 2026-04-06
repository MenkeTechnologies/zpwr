#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: README/CI anchors, fzf/kill/comps autoload zsh -n, process/network verb clusters
##### Notes: Complements batch16 (fzf completion file); kill/lsof mirror PS/lsof UIs
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# README — contributor entry point
#--------------------------------------------------------------
@test 'README.md has Contributing section' {
    run grep -q '^## Contributing' "$ZPWR/README.md"
    assert $state equals 0
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — checkout → ~/.zpwr and test env
#--------------------------------------------------------------
@test 'ci.yml copies checkout tree to home zpwr' {
    run grep -q 'cp -a zpwr' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml exports ZPWR_SCRIPTS in GITHUB_ENV' {
    run grep -q 'ZPWR_SCRIPTS=' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml creates directories expected by tests' {
    run grep -q 'Create directories expected by tests' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (into-fzf, kill verbs, comps)
#--------------------------------------------------------------
@test 'autoload common zpwrIntoFzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrIntoFzf"
    assert $state equals 0
}

@test 'autoload common zpwrIntoFzfAg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrIntoFzfAg"
    assert $state equals 0
}

@test 'autoload common zpwrKillPSVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillPSVerbAccept"
    assert $state equals 0
}

@test 'autoload common zpwrKillLsofVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillLsofVerbAccept"
    assert $state equals 0
}

@test 'autoload comps _zpwrExists passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwrExists"
    assert $state equals 0
}

@test 'autoload comps _zpwrPrintMap passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwrPrintMap"
    assert $state equals 0
}

@test 'autoload common zpwrMycurl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrMycurl"
    assert $state equals 0
}

@test 'autoload common zpwrUpload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpload"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — fzf / kill entrypoints
#--------------------------------------------------------------
@test 'zpwrExists zpwrIntoFzf returns 0' {
    run zpwrExists zpwrIntoFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrKillPSVerbAccept returns 0' {
    run zpwrExists zpwrKillPSVerbAccept
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — kill / lsof / list / snapshot aliases / navigation
#--------------------------------------------------------------
@test 'verb kill registered' {
    run test -n "${ZPWR_VERBS[kill]+x}"
    assert $state equals 0
}

@test 'verb killedit registered' {
    run test -n "${ZPWR_VERBS[killedit]+x}"
    assert $state equals 0
}

@test 'verb lsof registered' {
    run test -n "${ZPWR_VERBS[lsof]+x}"
    assert $state equals 0
}

@test 'verb lsofedit registered' {
    run test -n "${ZPWR_VERBS[lsofedit]+x}"
    assert $state equals 0
}

@test 'verb list registered' {
    run test -n "${ZPWR_VERBS[list]+x}"
    assert $state equals 0
}

@test 'verb listening registered' {
    run test -n "${ZPWR_VERBS[listening]+x}"
    assert $state equals 0
}

@test 'verb cruft registered' {
    run test -n "${ZPWR_VERBS[cruft]+x}"
    assert $state equals 0
}

@test 'verb return2 registered' {
    run test -n "${ZPWR_VERBS[return2]+x}"
    assert $state equals 0
}

@test 'verb repo registered' {
    run test -n "${ZPWR_VERBS[repo]+x}"
    assert $state equals 0
}

@test 'verb snap registered' {
    run test -n "${ZPWR_VERBS[snap]+x}"
    assert $state equals 0
}

@test 'verb upload registered' {
    run test -n "${ZPWR_VERBS[upload]+x}"
    assert $state equals 0
}

@test 'verb urlsafe registered' {
    run test -n "${ZPWR_VERBS[urlsafe]+x}"
    assert $state equals 0
}

@test 'verb curl registered' {
    run test -n "${ZPWR_VERBS[curl]+x}"
    assert $state equals 0
}

@test 'verb pastecommand registered' {
    run test -n "${ZPWR_VERBS[pastecommand]+x}"
    assert $state equals 0
}

@test 'verb pastebuffer registered' {
    run test -n "${ZPWR_VERBS[pastebuffer]+x}"
    assert $state equals 0
}

@test 'verb pastestring registered' {
    run test -n "${ZPWR_VERBS[pastestring]+x}"
    assert $state equals 0
}
