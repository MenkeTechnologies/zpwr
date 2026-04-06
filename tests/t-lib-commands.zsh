#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: Broad zpwrCommandExists coverage (POSIX / CI-friendly tools)
##### Notes: Avoid GNU-only names (e.g. shuf) so macOS and Linux both pass
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Toolchain present in CI and typical dev machines
#--------------------------------------------------------------
@test 'zpwrCommandExists vim returns 0' {
    run zpwrCommandExists vim
    assert $state equals 0
}

@test 'zpwrCommandExists git returns 0' {
    run zpwrCommandExists git
    assert $state equals 0
}

@test 'zpwrCommandExists curl returns 0' {
    run zpwrCommandExists curl
    assert $state equals 0
}

@test 'zpwrCommandExists perl returns 0' {
    run zpwrCommandExists perl
    assert $state equals 0
}

@test 'zpwrCommandExists python3 returns 0' {
    run zpwrCommandExists python3
    assert $state equals 0
}

@test 'zpwrCommandExists bash returns 0' {
    run zpwrCommandExists bash
    assert $state equals 0
}

@test 'zpwrCommandExists sh returns 0' {
    run zpwrCommandExists sh
    assert $state equals 0
}

#--------------------------------------------------------------
# Text / stream (POSIX)
#--------------------------------------------------------------
@test 'zpwrCommandExists comm returns 0' {
    run zpwrCommandExists comm
    assert $state equals 0
}

@test 'zpwrCommandExists diff returns 0' {
    run zpwrCommandExists diff
    assert $state equals 0
}

@test 'zpwrCommandExists expand returns 0' {
    run zpwrCommandExists expand
    assert $state equals 0
}

@test 'zpwrCommandExists fmt returns 0' {
    run zpwrCommandExists fmt
    assert $state equals 0
}

@test 'zpwrCommandExists fold returns 0' {
    run zpwrCommandExists fold
    assert $state equals 0
}

@test 'zpwrCommandExists join returns 0' {
    run zpwrCommandExists join
    assert $state equals 0
}

@test 'zpwrCommandExists nl returns 0' {
    run zpwrCommandExists nl
    assert $state equals 0
}

@test 'zpwrCommandExists pr returns 0' {
    run zpwrCommandExists pr
    assert $state equals 0
}

@test 'zpwrCommandExists tsort returns 0' {
    run zpwrCommandExists tsort
    assert $state equals 0
}

#--------------------------------------------------------------
# Users / identity
#--------------------------------------------------------------
@test 'zpwrCommandExists whoami returns 0' {
    run zpwrCommandExists whoami
    assert $state equals 0
}

@test 'zpwrCommandExists groups returns 0' {
    run zpwrCommandExists groups
    assert $state equals 0
}

@test 'zpwrCommandExists logname returns 0' {
    run zpwrCommandExists logname
    assert $state equals 0
}

#--------------------------------------------------------------
# Paths / links
#--------------------------------------------------------------
@test 'zpwrCommandExists readlink returns 0' {
    run zpwrCommandExists readlink
    assert $state equals 0
}

@test 'zpwrCommandExists realpath returns 0' {
    run zpwrCommandExists realpath
    assert $state equals 0
}

#--------------------------------------------------------------
# Process / misc
#--------------------------------------------------------------
@test 'zpwrCommandExists kill returns 0' {
    run zpwrCommandExists kill
    assert $state equals 0
}

@test 'zpwrCommandExists ps returns 0' {
    run zpwrCommandExists ps
    assert $state equals 0
}

@test 'zpwrCommandExists tty returns 0' {
    run zpwrCommandExists tty
    assert $state equals 0
}

@test 'zpwrCommandExists stty returns 0' {
    run zpwrCommandExists stty
    assert $state equals 0
}

# Note: do not assert on the name "command" — zpwrCommandExists uses $commands
# (PATH-resolved binaries). On Linux there is often no /usr/bin/command, only
# the shell builtin, so $commands[command] is unset and the check returns 1.

@test 'zpwrCommandExists getconf returns 0' {
    run zpwrCommandExists getconf
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrLogConsoleHeader / zpwrLogColor edge levels
#--------------------------------------------------------------
@test 'zpwrLogConsoleHeader ERROR returns 0 and shows message' {
    run zpwrLogConsoleHeader ERROR "hdrerruniq001" 2>&1
    assert $state equals 0
    assert "$output" contains hdrerruniq001
}

@test 'zpwrLogConsoleHeader DEBUG returns 0 and shows message' {
    run zpwrLogConsoleHeader DEBUG "hdrdbguniq002" 2>&1
    assert $state equals 0
    assert "$output" contains hdrdbguniq002
}

@test 'zpwrLogColor unknown level still renders' {
    run zpwrLogColor CUSTOMLVL "customuniq003" 2>&1
    assert $state equals 0
    assert "$output" contains customuniq003
}

#--------------------------------------------------------------
# boxPrint.pl reachable
#--------------------------------------------------------------
@test 'scripts/boxPrint.pl exists' {
    run test -f "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
}

@test 'scripts/boxPrint.pl is executable or readable' {
    run test -r "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
}

#--------------------------------------------------------------
# Archives / compression (common on Linux and macOS)
#--------------------------------------------------------------
@test 'zpwrCommandExists tar returns 0' {
    run zpwrCommandExists tar
    assert $state equals 0
}

@test 'zpwrCommandExists gzip returns 0' {
    run zpwrCommandExists gzip
    assert $state equals 0
}

@test 'zpwrCommandExists gunzip returns 0' {
    run zpwrCommandExists gunzip
    assert $state equals 0
}

@test 'zpwrCommandExists zip returns 0' {
    run zpwrCommandExists zip
    assert $state equals 0
}

@test 'zpwrCommandExists unzip returns 0' {
    run zpwrCommandExists unzip
    assert $state equals 0
}

#--------------------------------------------------------------
# More file / string utilities
#--------------------------------------------------------------
@test 'zpwrCommandExists cmp returns 0' {
    run zpwrCommandExists cmp
    assert $state equals 0
}

@test 'zpwrCommandExists sum returns 0' {
    run zpwrCommandExists sum
    assert $state equals 0
}

@test 'zpwrCommandExists cksum returns 0' {
    run zpwrCommandExists cksum
    assert $state equals 0
}

@test 'zpwrCommandExists base64 returns 0' {
    run zpwrCommandExists base64
    assert $state equals 0
}

# (No jobs/wait/ulimit/umask tests: zpwrCommandExists uses $commands — on Linux
# these are typically builtins only, unlike macOS which often ships /usr/bin/*
# wrappers. Same class of failure as asserting on "command".)

#--------------------------------------------------------------
# zpwrLogConsoleHeader TRACE (parity with other levels)
#--------------------------------------------------------------
@test 'zpwrLogConsoleHeader TRACE returns 0 and shows message' {
    run zpwrLogConsoleHeader TRACE "hdrtraceuniq004" 2>&1
    assert $state equals 0
    assert "$output" contains hdrtraceuniq004
}

#--------------------------------------------------------------
# zpwrLogColor INFO one-liner (already covered elsewhere; sanity)
#--------------------------------------------------------------
@test 'zpwrLogColor INFO with message returns 0' {
    run zpwrLogColor INFO "colorinfouniq005" 2>&1
    assert $state equals 0
    assert "$output" contains colorinfouniq005
}
