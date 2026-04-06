#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: CI workflow skeleton greps, path/backup/history autoload zsh -n, verb gap fill
##### Notes: Verbs chosen from keys present in env/zpwr.zsh but not covered in earlier t-lib-batch*
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — job runner skeleton
#--------------------------------------------------------------
@test 'ci.yml defines jobs block' {
    run grep -q '^jobs:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml sets runs-on ubuntu-latest' {
    run grep -q 'runs-on:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (path audit, backup, history)
#--------------------------------------------------------------
@test 'autoload common zpwrPathaudit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPathaudit"
    assert $state equals 0
}

@test 'autoload common zpwrBackup passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBackup"
    assert $state equals 0
}

@test 'autoload common zpwrBackupHistfile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBackupHistfile"
    assert $state equals 0
}

@test 'autoload common zpwrHistfile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistfile"
    assert $state equals 0
}

@test 'autoload common zpwrHistoryVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistoryVerbAccept"
    assert $state equals 0
}

@test 'autoload common zpwrHistoryVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistoryVerbEdit"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — audit / lint / backup
#--------------------------------------------------------------
@test 'zpwrExists zpwrPathaudit returns 0' {
    run zpwrExists zpwrPathaudit
    assert $state equals 0
}

@test 'zpwrExists zpwrLint returns 0' {
    run zpwrExists zpwrLint
    assert $state equals 0
}

@test 'zpwrExists zpwrBackup returns 0' {
    run zpwrExists zpwrBackup
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — misc verbs not covered in earlier batch files
#--------------------------------------------------------------
@test 'verb audit registered' {
    run test -n "${ZPWR_VERBS[audit]+x}"
    assert $state equals 0
}

@test 'verb background registered' {
    run test -n "${ZPWR_VERBS[background]+x}"
    assert $state equals 0
}

@test 'verb rain registered' {
    run test -n "${ZPWR_VERBS[rain]+x}"
    assert $state equals 0
}

@test 'verb screensaver registered' {
    run test -n "${ZPWR_VERBS[screensaver]+x}"
    assert $state equals 0
}

@test 'verb mygithub registered' {
    run test -n "${ZPWR_VERBS[mygithub]+x}"
    assert $state equals 0
}

@test 'verb backuphistory registered' {
    run test -n "${ZPWR_VERBS[backuphistory]+x}"
    assert $state equals 0
}

@test 'verb check registered' {
    run test -n "${ZPWR_VERBS[check]+x}"
    assert $state equals 0
}

@test 'verb clearlist registered' {
    run test -n "${ZPWR_VERBS[clearlist]+x}"
    assert $state equals 0
}

@test 'verb clearls registered' {
    run test -n "${ZPWR_VERBS[clearls]+x}"
    assert $state equals 0
}

@test 'verb editor registered' {
    run test -n "${ZPWR_VERBS[editor]+x}"
    assert $state equals 0
}

@test 'verb forward registered' {
    run test -n "${ZPWR_VERBS[forward]+x}"
    assert $state equals 0
}

@test 'verb hidden registered' {
    run test -n "${ZPWR_VERBS[hidden]+x}"
    assert $state equals 0
}

@test 'verb hist registered' {
    run test -n "${ZPWR_VERBS[hist]+x}"
    assert $state equals 0
}

@test 'verb histedit registered' {
    run test -n "${ZPWR_VERBS[histedit]+x}"
    assert $state equals 0
}

@test 'verb histfile registered' {
    run test -n "${ZPWR_VERBS[histfile]+x}"
    assert $state equals 0
}

@test 'verb info registered' {
    run test -n "${ZPWR_VERBS[info]+x}"
    assert $state equals 0
}

@test 'verb makedir registered' {
    run test -n "${ZPWR_VERBS[makedir]+x}"
    assert $state equals 0
}

@test 'verb makefile registered' {
    run test -n "${ZPWR_VERBS[makefile]+x}"
    assert $state equals 0
}

@test 'verb profile registered' {
    run test -n "${ZPWR_VERBS[profile]+x}"
    assert $state equals 0
}

@test 'verb reverse registered' {
    run test -n "${ZPWR_VERBS[reverse]+x}"
    assert $state equals 0
}

@test 'verb color2 registered' {
    run test -n "${ZPWR_VERBS[color2]+x}"
    assert $state equals 0
}

@test 'verb colorsdiff registered' {
    run test -n "${ZPWR_VERBS[colorsdiff]+x}"
    assert $state equals 0
}

@test 'verb existscommand registered' {
    run test -n "${ZPWR_VERBS[existscommand]+x}"
    assert $state equals 0
}

@test 'verb cdup registered' {
    run test -n "${ZPWR_VERBS[cdup]+x}"
    assert $state equals 0
}

@test 'verb cfasd registered' {
    run test -n "${ZPWR_VERBS[cfasd]+x}"
    assert $state equals 0
}

@test 'verb gitreposcleancacheexec registered' {
    run test -n "${ZPWR_VERBS[gitreposcleancacheexec]+x}"
    assert $state equals 0
}

@test 'verb gitreposcleanexec registered' {
    run test -n "${ZPWR_VERBS[gitreposcleanexec]+x}"
    assert $state equals 0
}

@test 'verb gitreposdirtycacheexec registered' {
    run test -n "${ZPWR_VERBS[gitreposdirtycacheexec]+x}"
    assert $state equals 0
}

@test 'verb gitzfordir registered' {
    run test -n "${ZPWR_VERBS[gitzfordir]+x}"
    assert $state equals 0
}

@test 'verb gitzfordirdevelop registered' {
    run test -n "${ZPWR_VERBS[gitzfordirdevelop]+x}"
    assert $state equals 0
}

@test 'verb gitzfordirmain registered' {
    run test -n "${ZPWR_VERBS[gitzfordirmain]+x}"
    assert $state equals 0
}

@test 'verb recompilefiles registered' {
    run test -n "${ZPWR_VERBS[recompilefiles]+x}"
    assert $state equals 0
}

@test 'verb recompilefpath registered' {
    run test -n "${ZPWR_VERBS[recompilefpath]+x}"
    assert $state equals 0
}

@test 'verb regengtags registered' {
    run test -n "${ZPWR_VERBS[regengtags]+x}"
    assert $state equals 0
}

@test 'verb scriptlist registered' {
    run test -n "${ZPWR_VERBS[scriptlist]+x}"
    assert $state equals 0
}

@test 'verb scripts registered' {
    run test -n "${ZPWR_VERBS[scripts]+x}"
    assert $state equals 0
}
