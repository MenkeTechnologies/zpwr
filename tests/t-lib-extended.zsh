#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: Extended behavioral tests for scripts/lib.sh and zpwrWizard
##### Notes: Complements t-lib-fns.zsh; keeps coverage for logging and CLI paths
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrLogConsoleInfo / zpwrLogConsoleErr usage
#--------------------------------------------------------------
@test 'zpwrLogConsoleInfo no args returns 1' {
    run zpwrLogConsoleInfo 2>&1
    assert $state equals 1
}

@test 'zpwrLogConsoleInfo with message returns 0' {
    run zpwrLogConsoleInfo "infouniqext001" 2>&1
    assert $state equals 0
    assert "$output" contains infouniqext001
}

@test 'zpwrLogConsoleErr with message returns 0' {
    run zpwrLogConsoleErr "erruniqext002" 2>&1
    assert $state equals 0
    assert "$output" contains erruniqext002
}

#--------------------------------------------------------------
# zpwrLog usage and file append (plain log, no ANSI file path)
#--------------------------------------------------------------
@test 'zpwrLog INFO msg appends to logfile when ZPWR_COLORS false' {
    local tmp prev
    tmp=$(mktemp)
    prev=$ZPWR_LOGFILE
    ZPWR_LOGFILE=$tmp
    ZPWR_COLORS=false
    run zpwrLog INFO "logappenduniq003"
    assert $state equals 0
    assert "$(command cat "$tmp")" contains logappenduniq003
    assert "$(command cat "$tmp")" contains INFO
    ZPWR_LOGFILE=$prev
    command rm -f "$tmp"
}

@test 'zpwrLog ERROR msg appends to logfile when ZPWR_COLORS false' {
    local tmp prev
    tmp=$(mktemp)
    prev=$ZPWR_LOGFILE
    ZPWR_LOGFILE=$tmp
    ZPWR_COLORS=false
    run zpwrLog ERROR "errfileuniq004"
    assert $state equals 0
    assert "$(command cat "$tmp")" contains errfileuniq004
    ZPWR_LOGFILE=$prev
    command rm -f "$tmp"
}

@test 'zpwrLog stdin appends to logfile when ZPWR_COLORS false' {
    local tmp prev
    tmp=$(mktemp)
    prev=$ZPWR_LOGFILE
    ZPWR_LOGFILE=$tmp
    ZPWR_COLORS=false
    run printf 'stdinplainuniq005' \| zpwrLog 2>&1
    assert $state equals 0
    assert "$(command cat "$tmp")" contains stdinplainuniq005
    ZPWR_LOGFILE=$prev
    command rm -f "$tmp"
}

@test 'zpwrLog usage error when only level with ZPWR_COLORS true' {
    run zsh -c "source $ZPWR_LIB; export ZPWR_COLORS=true; zpwrLog INFO" 2>&1
    assert $state equals 1
}

@test 'zpwrLog single token INFO with ZPWR_COLORS false exits 0 (no strict usage)' {
    run zsh -c "source $ZPWR_LIB; export ZPWR_COLORS=false; zpwrLog INFO" 2>&1
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrLogDebug / zpwrLogTrace to logfile
#--------------------------------------------------------------
@test 'zpwrLogDebug ZPWR_DEBUG true writes to logfile plain' {
    local tmp prev
    tmp=$(mktemp)
    prev=$ZPWR_LOGFILE
    ZPWR_LOGFILE=$tmp
    ZPWR_DEBUG=true
    ZPWR_COLORS=false
    run zpwrLogDebug "dbgfileuniq006"
    assert $state equals 0
    assert "$(command cat "$tmp")" contains dbgfileuniq006
    ZPWR_DEBUG=false
    ZPWR_LOGFILE=$prev
    command rm -f "$tmp"
}

@test 'zpwrLogTrace ZPWR_TRACE true writes to logfile plain' {
    local tmp prev
    tmp=$(mktemp)
    prev=$ZPWR_LOGFILE
    ZPWR_LOGFILE=$tmp
    ZPWR_TRACE=true
    ZPWR_COLORS=false
    run zpwrLogTrace "trcfileuniq007"
    assert $state equals 0
    assert "$(command cat "$tmp")" contains trcfileuniq007
    ZPWR_TRACE=false
    ZPWR_LOGFILE=$prev
    command rm -f "$tmp"
}

#--------------------------------------------------------------
# zpwrLogColor levels (console)
#--------------------------------------------------------------
@test 'zpwrLogColor ERROR with message returns 0' {
    run zpwrLogColor ERROR "colorerruniq008" 2>&1
    assert $state equals 0
    assert "$output" contains colorerruniq008
}

@test 'zpwrLogColor DEBUG with message returns 0' {
    run zpwrLogColor DEBUG "colordebuguniq009" 2>&1
    assert $state equals 0
    assert "$output" contains colordebuguniq009
}

@test 'zpwrLogColor TRACE with message returns 0' {
    run zpwrLogColor TRACE "colortraceuniq010" 2>&1
    assert $state equals 0
    assert "$output" contains colortraceuniq010
}

@test 'zpwrLogColor STDIN with message returns 0' {
    run zpwrLogColor STDIN "colorstdinuniq011" 2>&1
    assert $state equals 0
    assert "$output" contains colorstdinuniq011
}

#--------------------------------------------------------------
# zpwrPrettyPrintNoNewline
#--------------------------------------------------------------
@test 'zpwrPrettyPrintNoNewline no args returns 1' {
    run zpwrPrettyPrintNoNewline 2>&1
    assert $state equals 1
}

@test 'zpwrPrettyPrintNoNewline multiple words returns 0' {
    run zpwrPrettyPrintNoNewline one two three 2>&1
    assert $state equals 0
    assert "$output" contains one
    assert "$output" contains three
}

#--------------------------------------------------------------
# zpwrHumanReadable (extra edges)
#--------------------------------------------------------------
@test 'zpwrHumanReadable 1 byte' {
    local out
    out=$(echo "1" | zpwrHumanReadable)
    assert "$out" contains B
}

@test 'zpwrHumanReadable 1023 bytes' {
    local out
    out=$(echo "1023" | zpwrHumanReadable)
    assert "$out" is_not_empty
}

@test 'zpwrHumanReadable 1025 bytes' {
    local out
    out=$(echo "1025" | zpwrHumanReadable)
    assert "$out" is_not_empty
}

@test 'zpwrHumanReadable 10485760 bytes is MiB range' {
    local out
    out=$(echo "10485760" | zpwrHumanReadable)
    assert "$out" contains MiB
}

#--------------------------------------------------------------
# zpwrEscapeRemove
#--------------------------------------------------------------
@test 'zpwrEscapeRemove strips simple ANSI sequence' {
    local out
    out=$(printf '\x1b[38;5;51mplain\x1b[0m\n' | zpwrEscapeRemove)
    assert "$out" contains plain
}

#--------------------------------------------------------------
# zpwrStdinExists
#--------------------------------------------------------------
@test 'zpwrStdinExists with stdin shows No input for empty when label passed' {
    run zpwrStdinExists myarg < /dev/null
    assert "$output" contains "No input"
    assert "$output" contains myarg
}

#--------------------------------------------------------------
# zpwrIsGitDirMessage (in repo)
#--------------------------------------------------------------
@test 'zpwrIsGitDirMessage in ZPWR returns 0' {
    run zpwrIsGitDirMessage 2>&1
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists (extra commands)
#--------------------------------------------------------------
@test 'zpwrCommandExists env returns 0' {
    run zpwrCommandExists env
    assert $state equals 0
}

@test 'zpwrCommandExists dirname returns 0' {
    run zpwrCommandExists dirname
    assert $state equals 0
}

@test 'zpwrCommandExists basename returns 0' {
    run zpwrCommandExists basename
    assert $state equals 0
}

@test 'zpwrCommandExists mktemp returns 0' {
    run zpwrCommandExists mktemp
    assert $state equals 0
}

@test 'zpwrCommandExists printf returns 0' {
    run zpwrCommandExists printf
    assert $state equals 0
}

@test 'zpwrCommandExists test returns 0' {
    run zpwrCommandExists test
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists (bash) — suffix alias guard is zsh-only
#--------------------------------------------------------------
@test 'zpwrExists true returns 0 in bash' {
    run bash -c "source $ZPWR_LIB; zpwrExists true"
    assert $state equals 0
}

@test 'zpwrExists false returns 0 in bash' {
    run bash -c "source $ZPWR_LIB; zpwrExists false"
    assert $state equals 0
}

@test 'zpwrExists multiple with bogus first returns 1 in bash' {
    run bash -c "source $ZPWR_LIB; zpwrExists __zpwr_bogus_fn_999__ echo"
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrAlternatingPrettyPrint stdin path
#--------------------------------------------------------------
@test 'zpwrAlternatingPrettyPrint stdin with delimiter outputs lines' {
    local out
    out=$(print -r -- "a${ZPWR_DELIMITER_CHAR}b" | zpwrAlternatingPrettyPrint)
    assert "$out" is_not_empty
}

#--------------------------------------------------------------
# zpwrWizard CLI (regression: help must stay stable for CI)
#--------------------------------------------------------------
@test 'zpwrWizard -h exits 0' {
    run zpwrWizard -h
    assert $state equals 0
}

@test 'zpwrWizard --help exits 0' {
    run zpwrWizard --help
    assert $state equals 0
}

@test 'zpwrWizard -h mentions ENCYCLOPEDIA' {
    run zpwrWizard -h
    assert "$output" contains ENCYCLOPEDIA
}

@test 'zpwrWizard -h mentions USAGE' {
    run zpwrWizard -h
    assert "$output" contains USAGE
}

@test 'zpwrWizard -h mentions OPTIONS' {
    run zpwrWizard -h
    assert "$output" contains OPTIONS
}

@test 'zpwrWizard -h mentions STATUS' {
    run zpwrWizard -h
    assert "$output" contains STATUS
}

#--------------------------------------------------------------
# zpwrPrettyPrint
#--------------------------------------------------------------
@test 'zpwrPrettyPrint no args returns 1' {
    run zpwrPrettyPrint 2>&1
    assert $state equals 1
}

@test 'zpwrPrettyPrint with message returns 0' {
    run zpwrPrettyPrint "ppuniqext012" 2>&1
    assert $state equals 0
    assert "$output" contains ppuniqext012
}

#--------------------------------------------------------------
# zpwrLogInfo / zpwrLogError with colors to logfile
#--------------------------------------------------------------
@test 'zpwrLogInfo appends colored run to logfile when ZPWR_COLORS true' {
    local tmp prev
    tmp=$(mktemp)
    prev=$ZPWR_LOGFILE
    ZPWR_LOGFILE=$tmp
    ZPWR_COLORS=true
    run zpwrLogInfo "infocoluniq013"
    assert $state equals 0
    assert "$(command cat "$tmp")" contains infocoluniq013
    ZPWR_LOGFILE=$prev
    ZPWR_COLORS=false
    command rm -f "$tmp"
}

@test 'zpwrLogError appends colored run to logfile when ZPWR_COLORS true' {
    local tmp prev
    tmp=$(mktemp)
    prev=$ZPWR_LOGFILE
    ZPWR_LOGFILE=$tmp
    ZPWR_COLORS=true
    run zpwrLogError "errcoluniq014"
    assert $state equals 0
    assert "$(command cat "$tmp")" contains errcoluniq014
    ZPWR_LOGFILE=$prev
    ZPWR_COLORS=false
    command rm -f "$tmp"
}

#--------------------------------------------------------------
# zpwrCommandExists (broader POSIX / userland)
#--------------------------------------------------------------
@test 'zpwrCommandExists mkdir returns 0' {
    run zpwrCommandExists mkdir
    assert $state equals 0
}

@test 'zpwrCommandExists chmod returns 0' {
    run zpwrCommandExists chmod
    assert $state equals 0
}

@test 'zpwrCommandExists cp returns 0' {
    run zpwrCommandExists cp
    assert $state equals 0
}

@test 'zpwrCommandExists mv returns 0' {
    run zpwrCommandExists mv
    assert $state equals 0
}

@test 'zpwrCommandExists ln returns 0' {
    run zpwrCommandExists ln
    assert $state equals 0
}

@test 'zpwrCommandExists touch returns 0' {
    run zpwrCommandExists touch
    assert $state equals 0
}

@test 'zpwrCommandExists file returns 0' {
    run zpwrCommandExists file
    assert $state equals 0
}

@test 'zpwrCommandExists stat returns 0' {
    run zpwrCommandExists stat
    assert $state equals 0
}

@test 'zpwrCommandExists id returns 0' {
    run zpwrCommandExists id
    assert $state equals 0
}

@test 'zpwrCommandExists uname returns 0' {
    run zpwrCommandExists uname
    assert $state equals 0
}

@test 'zpwrCommandExists hostname returns 0' {
    run zpwrCommandExists hostname
    assert $state equals 0
}

@test 'zpwrCommandExists date returns 0' {
    run zpwrCommandExists date
    assert $state equals 0
}

@test 'zpwrCommandExists sleep returns 0' {
    run zpwrCommandExists sleep
    assert $state equals 0
}

@test 'zpwrCommandExists yes returns 0' {
    run zpwrCommandExists yes
    assert $state equals 0
}

@test 'zpwrCommandExists paste returns 0' {
    run zpwrCommandExists paste
    assert $state equals 0
}

@test 'zpwrCommandExists split returns 0' {
    run zpwrCommandExists split
    assert $state equals 0
}

@test 'zpwrCommandExists od returns 0' {
    run zpwrCommandExists od
    assert $state equals 0
}

@test 'zpwrCommandExists dd returns 0' {
    run zpwrCommandExists dd
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists (zsh) builtins
#--------------------------------------------------------------
@test 'zpwrExists type returns 0' {
    run zpwrExists type
    assert $state equals 0
}

@test 'zpwrExists print returns 0' {
    run zpwrExists print
    assert $state equals 0
}

@test 'zpwrExists zpwrWizard returns 0' {
    run zpwrExists zpwrWizard
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrIsZsh / bash zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists zsh in bash subshell returns 0' {
    run bash -c "source $ZPWR_LIB; zpwrCommandExists zsh"
    assert $state equals 0
}

@test 'zpwrCommandExists ls in bash subshell returns 0' {
    run bash -c "source $ZPWR_LIB; zpwrCommandExists ls"
    assert $state equals 0
}
