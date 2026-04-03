#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: autoload zsh -n (resolve/ports/timeline), alias verb keys for resolve/travis/tty
##### Notes: Many ZPWR_VERBS keys duplicate function names (which/whatis → zpwrResolve)
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Autoload — zsh -n (diagnostics / ports / history restore)
#--------------------------------------------------------------
@test 'autoload common zpwrPrintMap passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPrintMap"
    assert $state equals 0
}

@test 'autoload common zpwrResolve passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrResolve"
    assert $state equals 0
}

@test 'autoload common zpwrRelPath passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRelPath"
    assert $state equals 0
}

@test 'autoload common zpwrPygmentcolors passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPygmentcolors"
    assert $state equals 0
}

@test 'autoload common zpwrPorts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPorts"
    assert $state equals 0
}

@test 'autoload common zpwrTimeline passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTimeline"
    assert $state equals 0
}

@test 'autoload common zpwrTailLog passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTailLog"
    assert $state equals 0
}

@test 'autoload common zpwrRestoreHistfile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRestoreHistfile"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — resolve / map helpers
#--------------------------------------------------------------
@test 'zpwrExists zpwrPrintMap returns 0' {
    run zpwrExists zpwrPrintMap
    assert $state equals 0
}

@test 'zpwrExists zpwrResolve returns 0' {
    run zpwrExists zpwrResolve
    assert $state equals 0
}

@test 'zpwrExists zpwrRelPath returns 0' {
    run zpwrExists zpwrRelPath
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — resolve aliases, ps/net, I/O wrappers, snapshot aliases, Travis, tty
#--------------------------------------------------------------
@test 'verb printmap registered' {
    run test -n "${ZPWR_VERBS[printmap]+x}"
    assert $state equals 0
}

@test 'verb which registered' {
    run test -n "${ZPWR_VERBS[which]+x}"
    assert $state equals 0
}

@test 'verb whatis registered' {
    run test -n "${ZPWR_VERBS[whatis]+x}"
    assert $state equals 0
}

@test 'verb rerun registered' {
    run test -n "${ZPWR_VERBS[rerun]+x}"
    assert $state equals 0
}

@test 'verb restorehistory registered' {
    run test -n "${ZPWR_VERBS[restorehistory]+x}"
    assert $state equals 0
}

@test 'verb relpath registered' {
    run test -n "${ZPWR_VERBS[relpath]+x}"
    assert $state equals 0
}

@test 'verb rmconfiglinks registered' {
    run test -n "${ZPWR_VERBS[rmconfiglinks]+x}"
    assert $state equals 0
}

@test 'verb netstat registered' {
    run test -n "${ZPWR_VERBS[netstat]+x}"
    assert $state equals 0
}

@test 'verb pygmentcolors registered' {
    run test -n "${ZPWR_VERBS[pygmentcolors]+x}"
    assert $state equals 0
}

@test 'verb ps registered' {
    run test -n "${ZPWR_VERBS[ps]+x}"
    assert $state equals 0
}

@test 'verb post registered' {
    run test -n "${ZPWR_VERBS[post]+x}"
    assert $state equals 0
}

@test 'verb pre registered' {
    run test -n "${ZPWR_VERBS[pre]+x}"
    assert $state equals 0
}

@test 'verb logs registered' {
    run test -n "${ZPWR_VERBS[logs]+x}"
    assert $state equals 0
}

@test 'verb testsall registered' {
    run test -n "${ZPWR_VERBS[testsall]+x}"
    assert $state equals 0
}

@test 'verb load registered' {
    run test -n "${ZPWR_VERBS[load]+x}"
    assert $state equals 0
}

@test 'verb today registered' {
    run test -n "${ZPWR_VERBS[today]+x}"
    assert $state equals 0
}

@test 'verb activity registered' {
    run test -n "${ZPWR_VERBS[activity]+x}"
    assert $state equals 0
}

@test 'verb instrument registered' {
    run test -n "${ZPWR_VERBS[instrument]+x}"
    assert $state equals 0
}

@test 'verb dashboard registered' {
    run test -n "${ZPWR_VERBS[dashboard]+x}"
    assert $state equals 0
}

@test 'verb live registered' {
    run test -n "${ZPWR_VERBS[live]+x}"
    assert $state equals 0
}

@test 'verb toggle registered' {
    run test -n "${ZPWR_VERBS[toggle]+x}"
    assert $state equals 0
}

@test 'verb travis registered' {
    run test -n "${ZPWR_VERBS[travis]+x}"
    assert $state equals 0
}

@test 'verb travisbuild registered' {
    run test -n "${ZPWR_VERBS[travisbuild]+x}"
    assert $state equals 0
}

@test 'verb travisbranch registered' {
    run test -n "${ZPWR_VERBS[travisbranch]+x}"
    assert $state equals 0
}

@test 'verb travispr registered' {
    run test -n "${ZPWR_VERBS[travispr]+x}"
    assert $state equals 0
}

@test 'verb trc registered' {
    run test -n "${ZPWR_VERBS[trc]+x}"
    assert $state equals 0
}

@test 'verb tty registered' {
    run test -n "${ZPWR_VERBS[tty]+x}"
    assert $state equals 0
}
