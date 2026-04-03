#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: Extra lib.sh command resolution + repo/CI metadata checks
##### Notes: Keeps commands portable; avoids builtins not in \$commands[]
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# CI / repo metadata (guards drift in workflow)
#--------------------------------------------------------------
@test 'GitHub Actions workflow file exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references zunit' {
    run grep -q zunit "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references Run tests step' {
    run grep -q 'Run tests' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml sets ZPWR in GITHUB_ENV' {
    run grep -q 'ZPWR=' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'zunit project config exists' {
    run test -f "$ZPWR/.zunit.yml"
    assert $state equals 0
}

@test 'tests directory has multiple zunit files' {
    local -a zf
    zf=( "$ZPWR"/tests/t-*.zsh(N) )
    run test "${#zf[@]}" -gt 20
    assert $state equals 0
}

#--------------------------------------------------------------
# Loaded environment sanity
#--------------------------------------------------------------
@test 'ZPWR is non-empty' {
    run test -n "$ZPWR"
    assert $state equals 0
}

@test 'ZPWR_LIB points at existing file' {
    run test -f "$ZPWR_LIB"
    assert $state equals 0
}

@test 'ZPWR_SCRIPTS points at existing dir' {
    run test -d "$ZPWR_SCRIPTS"
    assert $state equals 0
}

@test 'ZPWR_AUTOLOAD points at existing dir' {
    run test -d "$ZPWR_AUTOLOAD"
    assert $state equals 0
}

@test 'ZPWR_ENV points at existing dir' {
    run test -d "$ZPWR_ENV"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — session / terminal helpers
#--------------------------------------------------------------
@test 'zpwrCommandExists uptime returns 0' {
    run zpwrCommandExists uptime
    assert $state equals 0
}

@test 'zpwrCommandExists who returns 0' {
    run zpwrCommandExists who
    assert $state equals 0
}

@test 'zpwrCommandExists users returns 0' {
    run zpwrCommandExists users
    assert $state equals 0
}

@test 'zpwrCommandExists tput returns 0' {
    run zpwrCommandExists tput
    assert $state equals 0
}

@test 'zpwrCommandExists clear returns 0' {
    run zpwrCommandExists clear
    assert $state equals 0
}

@test 'zpwrCommandExists iconv returns 0' {
    run zpwrCommandExists iconv
    assert $state equals 0
}

@test 'zpwrCommandExists mesg returns 0' {
    run zpwrCommandExists mesg
    assert $state equals 0
}

@test 'zpwrCommandExists logger returns 0' {
    run zpwrCommandExists logger
    assert $state equals 0
}

@test 'zpwrCommandExists script returns 0' {
    run zpwrCommandExists script
    assert $state equals 0
}

@test 'zpwrCommandExists screen returns 0' {
    run zpwrCommandExists screen
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — text / patch tooling
#--------------------------------------------------------------
@test 'zpwrCommandExists patch returns 0' {
    run zpwrCommandExists patch
    assert $state equals 0
}

@test 'zpwrCommandExists ed returns 0' {
    run zpwrCommandExists ed
    assert $state equals 0
}

@test 'zpwrCommandExists ex returns 0' {
    run zpwrCommandExists ex
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — arithmetic / misc
#--------------------------------------------------------------
@test 'zpwrCommandExists bc returns 0' {
    run zpwrCommandExists bc
    assert $state equals 0
}

@test 'zpwrCommandExists expr returns 0' {
    run zpwrCommandExists expr
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — GNU / common Linux (also on macOS with same name)
#--------------------------------------------------------------
@test 'zpwrCommandExists mktemp returns 0' {
    run zpwrCommandExists mktemp
    assert $state equals 0
}

@test 'zpwrCommandExists getopt returns 0' {
    run zpwrCommandExists getopt
    assert $state equals 0
}

@test 'zpwrCommandExists install returns 0' {
    run zpwrCommandExists install
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — core zpwr entrypoints
#--------------------------------------------------------------
@test 'zpwrExists zpwrLogInfo returns 0' {
    run zpwrExists zpwrLogInfo
    assert $state equals 0
}

@test 'zpwrExists zpwrLogError returns 0' {
    run zpwrExists zpwrLogError
    assert $state equals 0
}

@test 'zpwrExists zpwrPrettyPrint returns 0' {
    run zpwrExists zpwrPrettyPrint
    assert $state equals 0
}

@test 'zpwrExists zpwrHumanReadable returns 0' {
    run zpwrExists zpwrHumanReadable
    assert $state equals 0
}

@test 'zpwrExists zpwrIsGitDir returns 0' {
    run zpwrExists zpwrIsGitDir
    assert $state equals 0
}

@test 'zpwrExists zpwrCommandExists returns 0' {
    run zpwrExists zpwrCommandExists
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrFileMustExist on support file
#--------------------------------------------------------------
@test 'zpwrFileMustExist testfile returns 0' {
    run zpwrFileMustExist "$TEST_FILE"
    assert $state equals 0
}

#--------------------------------------------------------------
# ci.yml feature flags (regression)
#--------------------------------------------------------------
@test 'ci.yml references actions/cache' {
    run grep -q 'actions/cache' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references concurrency' {
    run grep -q concurrency "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references timeout-minutes' {
    run grep -q timeout-minutes "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml references Verify zunit' {
    run grep -q 'Verify zunit' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — extra stream / text
#--------------------------------------------------------------
@test 'zpwrCommandExists rev returns 0' {
    run zpwrCommandExists rev
    assert $state equals 0
}

@test 'zpwrCommandExists column returns 0' {
    run zpwrCommandExists column
    assert $state equals 0
}

@test 'zpwrCommandExists printenv returns 0' {
    run zpwrCommandExists printenv
    assert $state equals 0
}

@test 'zpwrCommandExists link returns 0' {
    run zpwrCommandExists link
    assert $state equals 0
}

@test 'zpwrCommandExists unlink returns 0' {
    run zpwrCommandExists unlink
    assert $state equals 0
}

@test 'zpwrCommandExists mkfifo returns 0' {
    run zpwrCommandExists mkfifo
    assert $state equals 0
}

@test 'zpwrCommandExists pathchk returns 0' {
    run zpwrCommandExists pathchk
    assert $state equals 0
}

@test 'zpwrCommandExists yes returns 0' {
    run zpwrCommandExists yes
    assert $state equals 0
}

@test 'zpwrCommandExists sleep returns 0' {
    run zpwrCommandExists sleep
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — more lib helpers
#--------------------------------------------------------------
@test 'zpwrExists zpwrStdinExists returns 0' {
    run zpwrExists zpwrStdinExists
    assert $state equals 0
}

@test 'zpwrExists zpwrEscapeRemove returns 0' {
    run zpwrExists zpwrEscapeRemove
    assert $state equals 0
}

@test 'zpwrExists zpwrAlternatingPrettyPrint returns 0' {
    run zpwrExists zpwrAlternatingPrettyPrint
    assert $state equals 0
}

@test 'zpwrExists zpwrPerlRemoveSpaces returns 0' {
    run zpwrExists zpwrPerlRemoveSpaces
    assert $state equals 0
}

@test 'zpwrExists zpwrFail returns 0' {
    run zpwrExists zpwrFail
    assert $state equals 0
}

@test 'zpwrExists zpwrFileMustExist returns 0' {
    run zpwrExists zpwrFileMustExist
    assert $state equals 0
}

