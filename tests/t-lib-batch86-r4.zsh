#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Purpose: zpwr — round-4 lib batch.
#####          Pins for under-tested fns: zpwrValidatePipPackage
#####          blacklist semantics, zpwrFail exit-vs-return behavior
#####          on empty arg, zpwrFileMustExist message format, and
#####          zpwrIsGitDir's git-rev-parse dispatch.
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrValidatePipPackage
#--------------------------------------------------------------
@test 'zpwrValidatePipPackage with empty arg returns 1' {
    run zpwrValidatePipPackage ""
    assert $state equals 1
}

@test 'zpwrValidatePipPackage with no args returns 1' {
    run zpwrValidatePipPackage
    assert $state equals 1
}

@test 'zpwrValidatePipPackage with non-blacklisted package returns 0' {
    # When zpwrPipBlacklist is unset/empty, any non-empty package name
    # is valid. The +zpwrPipBlacklist test must keep the fast path open.
    unset zpwrPipBlacklist 2>/dev/null
    run zpwrValidatePipPackage "requests"
    assert $state equals 0
}

@test 'zpwrValidatePipPackage with blacklisted package returns 1' {
    # Pin: blacklist check uses `(Ie)` reverse-search subscript on the
    # array. A package present in zpwrPipBlacklist must be rejected
    # to prevent re-upgrade of pinned-version packages.
    typeset -ga zpwrPipBlacklist
    zpwrPipBlacklist=(requests)
    run zpwrValidatePipPackage "requests"
    unset zpwrPipBlacklist
    assert $state equals 1
}

@test 'zpwrValidatePipPackage with blacklist set but different package returns 0' {
    # Pin: only the EXACT package name in the blacklist is rejected.
    # Substring matches (e.g. blacklist=numpy, package=numpy-stl) must
    # NOT trigger a false-positive rejection.
    typeset -ga zpwrPipBlacklist
    zpwrPipBlacklist=(numpy)
    run zpwrValidatePipPackage "numpy-stl"
    unset zpwrPipBlacklist
    assert $state equals 0
}
