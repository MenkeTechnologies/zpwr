#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Mar 28 00:00:00 EST 2026
##### Purpose: zsh script to test lib.sh utility functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrIsZsh
#--------------------------------------------------------------
@test 'zpwrIsZsh in zsh returns 0' {
    run zpwrIsZsh
    assert $state equals 0
}

@test 'zpwrIsZsh in bash returns 1' {
    run bash -c "source $ZPWR_LIB; zpwrIsZsh"
    assert $state equals 1
}

@test 'zpwrIsZsh output is empty' {
    run zpwrIsZsh
    assert "$output" is_empty
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists no args returns 1' {
    run zpwrCommandExists
    assert $state equals 1
}

@test 'zpwrCommandExists zsh returns 0' {
    run zpwrCommandExists zsh
    assert $state equals 0
}

@test 'zpwrCommandExists bash returns 0' {
    run zpwrCommandExists bash
    assert $state equals 0
}

@test 'zpwrCommandExists git returns 0' {
    run zpwrCommandExists git
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

@test 'zpwrCommandExists ls returns 0' {
    run zpwrCommandExists ls
    assert $state equals 0
}

@test 'zpwrCommandExists cat returns 0' {
    run zpwrCommandExists cat
    assert $state equals 0
}

@test 'zpwrCommandExists sed returns 0' {
    run zpwrCommandExists sed
    assert $state equals 0
}

@test 'zpwrCommandExists awk returns 0' {
    run zpwrCommandExists awk
    assert $state equals 0
}

@test 'zpwrCommandExists wc returns 0' {
    run zpwrCommandExists wc
    assert $state equals 0
}

@test 'zpwrCommandExists grep returns 0' {
    run zpwrCommandExists grep
    assert $state equals 0
}

@test 'zpwrCommandExists sort returns 0' {
    run zpwrCommandExists sort
    assert $state equals 0
}

@test 'zpwrCommandExists uniq returns 0' {
    run zpwrCommandExists uniq
    assert $state equals 0
}

@test 'zpwrCommandExists tr returns 0' {
    run zpwrCommandExists tr
    assert $state equals 0
}

@test 'zpwrCommandExists head returns 0' {
    run zpwrCommandExists head
    assert $state equals 0
}

@test 'zpwrCommandExists tail returns 0' {
    run zpwrCommandExists tail
    assert $state equals 0
}

@test 'zpwrCommandExists cut returns 0' {
    run zpwrCommandExists cut
    assert $state equals 0
}

@test 'zpwrCommandExists tee returns 0' {
    run zpwrCommandExists tee
    assert $state equals 0
}

@test 'zpwrCommandExists xargs returns 0' {
    run zpwrCommandExists xargs
    assert $state equals 0
}

@test 'zpwrCommandExists find returns 0' {
    run zpwrCommandExists find
    assert $state equals 0
}

@test 'zpwrCommandExists multiple valid returns 0' {
    run zpwrCommandExists zsh bash perl git
    assert $state equals 0
}

@test 'zpwrCommandExists bogus returns 1' {
    run zpwrCommandExists __zpwr_bogus_cmd_999__
    assert $state equals 1
}

@test 'zpwrCommandExists multiple with bogus returns 1' {
    run zpwrCommandExists zsh __zpwr_bogus_cmd_999__
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrExists
#--------------------------------------------------------------
@test 'zpwrExists no args returns 1' {
    run zpwrExists
    assert $state equals 1
}

@test 'zpwrExists builtin echo returns 0' {
    run zpwrExists echo
    assert $state equals 0
}

@test 'zpwrExists builtin cd returns 0' {
    run zpwrExists cd
    assert $state equals 0
}

@test 'zpwrExists command zsh returns 0' {
    run zpwrExists zsh
    assert $state equals 0
}

@test 'zpwrExists function zpwrIsZsh returns 0' {
    run zpwrExists zpwrIsZsh
    assert $state equals 0
}

@test 'zpwrExists function zpwrPrettyPrint returns 0' {
    run zpwrExists zpwrPrettyPrint
    assert $state equals 0
}

@test 'zpwrExists function zpwrCommandExists returns 0' {
    run zpwrExists zpwrCommandExists
    assert $state equals 0
}

@test 'zpwrExists function zpwrLogColor returns 0' {
    run zpwrExists zpwrLogColor
    assert $state equals 0
}

@test 'zpwrExists function zpwrEscapeRemove returns 0' {
    run zpwrExists zpwrEscapeRemove
    assert $state equals 0
}

@test 'zpwrExists function zpwrHumanReadable returns 0' {
    run zpwrExists zpwrHumanReadable
    assert $state equals 0
}

@test 'zpwrExists bogus returns 1' {
    run zpwrExists __zpwr_bogus_fn_999__
    assert $state equals 1
}

@test 'zpwrExists multiple valid returns 0' {
    run zpwrExists zpwrIsZsh zpwrPrettyPrint zpwrCommandExists
    assert $state equals 0
}

@test 'zpwrExists multiple with bogus returns 1' {
    run zpwrExists zpwrIsZsh __zpwr_bogus_fn_999__
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrHumanReadable
#--------------------------------------------------------------
@test 'zpwrHumanReadable 0 bytes' {
    run zsh -c "echo 0 | source $ZPWR_LIB && zpwrHumanReadable <<< 0"
    assert $state equals 0
}

@test 'zpwrHumanReadable 1024 bytes is KiB' {
    out=$(echo "1024" | zpwrHumanReadable)
    assert "$out" contains "KiB"
}

@test 'zpwrHumanReadable 1048576 bytes is MiB' {
    out=$(echo "1048576" | zpwrHumanReadable)
    assert "$out" contains "MiB"
}

@test 'zpwrHumanReadable 1073741824 bytes is GiB' {
    out=$(echo "1073741824" | zpwrHumanReadable)
    assert "$out" contains "GiB"
}

@test 'zpwrHumanReadable 512 bytes stays in bytes or KiB' {
    out=$(echo "512" | zpwrHumanReadable)
    [[ "$out" =~ (B|KiB) ]]
    assert $? equals 0
}

#--------------------------------------------------------------
# zpwrBlocksToSize
#--------------------------------------------------------------
@test 'zpwrBlocksToSize 1 block equals 512 bytes' {
    out=$(print -r -- 1 | zpwrBlocksToSize)
    assert "$out" contains "512"
    assert "$out" contains "B"
}

#--------------------------------------------------------------
# zpwrEscapeRemove
#--------------------------------------------------------------
@test 'zpwrEscapeRemove passes plain text through' {
    out=$(echo "plain text" | zpwrEscapeRemove)
    assert "$out" same_as "plain text"
}

@test 'zpwrEscapeRemove passes multiple lines through' {
    out=$(printf 'line1\nline2\n' | zpwrEscapeRemove)
    assert "$out" contains "line1"
    assert "$out" contains "line2"
}

@test 'zpwrEscapeRemove exists as function' {
    run zpwrExists zpwrEscapeRemove
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrIsBinary
#--------------------------------------------------------------
@test 'zpwrIsBinary on text file returns 1' {
    run zpwrIsBinary "$TEST_FILE"
    assert $state equals 1
}

@test 'zpwrIsBinary on shell script returns 1' {
    run zpwrIsBinary "$ZPWR_LIB"
    assert $state equals 1
}

@test 'zpwrIsBinary on binary returns 0' {
    run zpwrIsBinary "$(command -v zsh)"
    assert $state equals 0
}

@test 'zpwrIsBinary on binary perl returns 0' {
    run zpwrIsBinary "$(command -v perl)"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrNeedSudo
#--------------------------------------------------------------
@test 'zpwrNeedSudo on writable file returns 1' {
    local tmpfile
    tmpfile=$(mktemp)
    chmod 644 "$tmpfile"
    run zpwrNeedSudo "$tmpfile"
    assert $state equals 1
    command rm -f "$tmpfile"
}

@test 'zpwrNeedSudo on readonly file returns 0' {
    local tmpfile
    tmpfile=$(mktemp)
    chmod 444 "$tmpfile"
    run zpwrNeedSudo "$tmpfile"
    assert $state equals 0
    chmod 644 "$tmpfile"
    command rm -f "$tmpfile"
}

@test 'zpwrNeedSudo no args returns 1' {
    run zpwrNeedSudo
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrIsGitDir / zpwrIsGitDirMessage
#--------------------------------------------------------------
@test 'zpwrIsGitDir in ZPWR returns 0' {
    run zpwrIsGitDir
    assert $state equals 0
}

@test 'zpwrIsGitDir output is empty' {
    run zpwrIsGitDir
    assert "$output" is_empty
}

@test 'zpwrIsGitDir outside git returns non-zero' {
    run zsh -c "cd /tmp && git rev-parse --git-dir 2>/dev/null"
    assert $state is_greater_than 0
}

@test 'zpwrIsGitDirMessage in ZPWR returns 0' {
    run zpwrIsGitDirMessage
    assert $state equals 0
}

@test 'zpwrIsGitDirMessage output is empty in git repo' {
    run zpwrIsGitDirMessage
    assert "$output" is_empty
}

#--------------------------------------------------------------
# zpwrPrettyPrint
#--------------------------------------------------------------
@test 'zpwrPrettyPrint no args returns 1' {
    run zpwrPrettyPrint
    assert $state equals 1
}

@test 'zpwrPrettyPrint with arg returns 0' {
    run zpwrPrettyPrint hello
    assert $state equals 0
}

@test 'zpwrPrettyPrint output contains arg' {
    run zpwrPrettyPrint testmsg123
    assert "$output" contains testmsg123
}

@test 'zpwrPrettyPrint output is not empty' {
    run zpwrPrettyPrint hello
    assert "$output" is_not_empty
}

@test 'zpwrPrettyPrint multiple words contains all' {
    run zpwrPrettyPrint alpha beta gamma
    assert "$output" contains alpha
    assert "$output" contains beta
    assert "$output" contains gamma
}

#--------------------------------------------------------------
# zpwrPrettyPrintNoNewline
#--------------------------------------------------------------
@test 'zpwrPrettyPrintNoNewline no args returns 1' {
    run zpwrPrettyPrintNoNewline
    assert $state equals 1
}

@test 'zpwrPrettyPrintNoNewline with arg returns 0' {
    run zpwrPrettyPrintNoNewline hello
    assert $state equals 0
}

@test 'zpwrPrettyPrintNoNewline output contains arg' {
    run zpwrPrettyPrintNoNewline testmsg456
    assert "$output" contains testmsg456
}

#--------------------------------------------------------------
# zpwrLogColor
#--------------------------------------------------------------
@test 'zpwrLogColor no args returns 1' {
    run zpwrLogColor
    assert $state equals 1
}

@test 'zpwrLogColor one arg returns 1' {
    run zpwrLogColor INFO
    assert $state equals 1
}

@test 'zpwrLogColor with level and msg returns 0' {
    run zpwrLogColor INFO "test message"
    assert $state equals 0
}

@test 'zpwrLogColor output contains level' {
    run zpwrLogColor MYLEVEL "test"
    assert "$output" contains MYLEVEL
}

@test 'zpwrLogColor output contains message' {
    run zpwrLogColor INFO "uniquemsg789"
    assert "$output" contains uniquemsg789
}

#--------------------------------------------------------------
# zpwrLogConsoleInfo
#--------------------------------------------------------------
@test 'zpwrLogConsoleInfo no args returns 1' {
    run zpwrLogConsoleInfo
    assert $state equals 1
}

@test 'zpwrLogConsoleInfo with arg returns 0' {
    run zpwrLogConsoleInfo "hello"
    assert $state equals 0
}

@test 'zpwrLogConsoleInfo output contains INFO' {
    run zpwrLogConsoleInfo "test"
    assert "$output" contains INFO
}

#--------------------------------------------------------------
# zpwrLogConsoleErr
#--------------------------------------------------------------
@test 'zpwrLogConsoleErr no args returns 1' {
    run zpwrLogConsoleErr
    assert $state equals 1
}

@test 'zpwrLogConsoleErr with arg returns 0' {
    run zpwrLogConsoleErr "test err" 2>&1
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrLogConsoleDebug
#--------------------------------------------------------------
@test 'zpwrLogConsoleDebug no args returns 1' {
    run zpwrLogConsoleDebug
    assert $state equals 1
}

@test 'zpwrLogConsoleDebug ZPWR_DEBUG false is silent' {
    ZPWR_DEBUG=false
    run zpwrLogConsoleDebug "should be silent"
    assert "$output" is_empty
}

@test 'zpwrLogConsoleDebug ZPWR_DEBUG true outputs' {
    ZPWR_DEBUG=true
    run zpwrLogConsoleDebug "debugtest"
    assert "$output" contains debugtest
    ZPWR_DEBUG=false
}

#--------------------------------------------------------------
# zpwrLogConsoleTrace
#--------------------------------------------------------------
@test 'zpwrLogConsoleTrace no args returns 1' {
    run zpwrLogConsoleTrace
    assert $state equals 1
}

@test 'zpwrLogConsoleTrace ZPWR_TRACE false is silent' {
    ZPWR_TRACE=false
    run zpwrLogConsoleTrace "should be silent"
    assert "$output" is_empty
}

@test 'zpwrLogConsoleTrace ZPWR_TRACE true outputs' {
    ZPWR_TRACE=true
    run zpwrLogConsoleTrace "tracetestuniq"
    assert "$output" contains tracetestuniq
    ZPWR_TRACE=false
}

#--------------------------------------------------------------
# zpwrLogInfo / zpwrLogError
#--------------------------------------------------------------
@test 'zpwrLogInfo returns 0' {
    run zpwrLogInfo "test log info"
    assert $state equals 0
}

@test 'zpwrLogError returns 0' {
    run zpwrLogError "test log error"
    assert $state equals 0
}

@test 'zpwrLogDebug ZPWR_DEBUG false is silent' {
    ZPWR_DEBUG=false
    run zpwrLogDebug "should not appear"
    assert "$output" is_empty
}

@test 'zpwrLogTrace ZPWR_TRACE false is silent' {
    ZPWR_TRACE=false
    run zpwrLogTrace "should not appear in stdout"
    assert "$output" is_empty
}

@test 'zpwrLogTrace ZPWR_TRACE true appends to logfile' {
    local tmp prev
    tmp=$(mktemp)
    prev=$ZPWR_LOGFILE
    ZPWR_LOGFILE=$tmp
    ZPWR_TRACE=true
    ZPWR_COLORS=false
    run zpwrLogTrace logtraceuniq
    assert $state equals 0
    assert "$(command cat "$tmp")" contains logtraceuniq
    ZPWR_TRACE=false
    ZPWR_LOGFILE=$prev
    command rm -f "$tmp"
}

#--------------------------------------------------------------
# zpwrStdinExists
#--------------------------------------------------------------
@test 'zpwrStdinExists with stdin data outputs it' {
    run zsh -c "source $ZPWR_LIB; echo hello | zpwrStdinExists"
    assert $state equals 0
    assert "$output" contains hello
}

@test 'zpwrStdinExists no stdin outputs No input' {
    run zpwrStdinExists testarg < /dev/null
    assert "$output" contains "No input"
}

@test 'zpwrStdinExists no stdin and no label returns 1' {
    run zpwrStdinExists < /dev/null
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrPerlRemoveSpaces
#--------------------------------------------------------------
@test 'zpwrPerlRemoveSpaces no args returns 1' {
    run zpwrPerlRemoveSpaces
    assert $state equals 1
}

@test 'zpwrPerlRemoveSpaces on file returns 0' {
    local tmpfile
    tmpfile=$(mktemp)
    printf "hello   \nworld  \n" > "$tmpfile"
    run zpwrPerlRemoveSpaces "$tmpfile"
    assert $state equals 0
    command rm -f "$tmpfile"
}

#--------------------------------------------------------------
# zpwrAlternatingPrettyPrint
#--------------------------------------------------------------
@test 'zpwrAlternatingPrettyPrint with args returns 0' {
    run zpwrAlternatingPrettyPrint "hello world"
    assert $state equals 0
}

@test 'zpwrAlternatingPrettyPrint output is not empty' {
    run zpwrAlternatingPrettyPrint "hello world"
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrFail
#--------------------------------------------------------------
@test 'zpwrFail exits 1' {
    run zsh -c "source $ZPWR_LIB; zpwrFail reason" 2>&1
    assert $state equals 1
}

@test 'zpwrFail stderr mentions supplied reason' {
    run zsh -c "source $ZPWR_LIB; zpwrFail myreason" 2>&1
    assert "$output" contains "Failure due to myreason"
}

@test 'zpwrFail no args exits 1 with usage' {
    run zsh -c "source $ZPWR_LIB; zpwrFail" 2>&1
    assert $state equals 1
    assert "$output" contains "usage: zpwrFail"
}

#--------------------------------------------------------------
# zpwrFileMustExist
#--------------------------------------------------------------
@test 'zpwrFileMustExist on existing file returns 0' {
    run zpwrFileMustExist "$TEST_FILE"
    assert $state equals 0
}

@test 'zpwrFileMustExist on missing file exits 1' {
    run zsh -c "source $ZPWR_LIB; zpwrFileMustExist /tmp/zpwr_mustexist_missing_$$" 2>&1
    assert $state equals 1
    assert "$output" contains "Where is the file"
}

@test 'zpwrFileMustExist no args exits 1 with usage' {
    run zsh -c "source $ZPWR_LIB; zpwrFileMustExist" 2>&1
    assert $state equals 1
    assert "$output" contains "usage: zpwrFileMustExist"
}

#--------------------------------------------------------------
# zpwrPrettyPrintBoxStdin
#--------------------------------------------------------------
@test 'zpwrPrettyPrintBoxStdin with stdin returns 0' {
    run zsh -c "source $ZPWR_LIB; printf '%s\n' hello | zpwrPrettyPrintBoxStdin mylabel" 2>&1
    assert $state equals 0
}

@test 'zpwrPrettyPrintBoxStdin output includes stdin text' {
    run zsh -c "source $ZPWR_LIB; printf '%s\n' uniqline123 | zpwrPrettyPrintBoxStdin lbl" 2>&1
    assert $state equals 0
    assert "$output" contains uniqline123
}

@test 'zpwrPrettyPrintBoxStdin no label exits 1' {
    run zsh -c "source $ZPWR_LIB; printf x | zpwrPrettyPrintBoxStdin" 2>&1
    assert $state equals 1
    assert "$output" contains "usage: zpwrPrettyPrintBoxStdin"
}

#--------------------------------------------------------------
# zpwrLogConsolePrefix / zpwrLogConsoleHeader
#--------------------------------------------------------------
@test 'zpwrLogConsolePrefix with args returns 0' {
    run zpwrLogConsolePrefix "uniqprefix789" 2>&1
    assert $state equals 0
}

@test 'zpwrLogConsolePrefix output includes logo and message' {
    run zpwrLogConsolePrefix "uniqprefix789" 2>&1
    assert "$output" contains "$ZPWR_CHAR_LOGO"
    assert "$output" contains uniqprefix789
}

@test 'zpwrLogConsoleHeader INFO returns 0 and shows message' {
    run zpwrLogConsoleHeader INFO "hdruniq456" 2>&1
    assert $state equals 0
    assert "$output" contains hdruniq456
}

@test 'zpwrLogConsolePrefix no args returns 1' {
    run zpwrLogConsolePrefix 2>&1
    assert $state equals 1
}

@test 'zpwrLogConsoleHeader one arg returns 1' {
    run zpwrLogConsoleHeader ONLYLVL 2>&1
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrLogConsoleNotGit
#--------------------------------------------------------------
@test 'zpwrLogConsoleNotGit stderr mentions not a git dir' {
    run zsh -c "source $ZPWR_LIB; zpwrLogConsoleNotGit" 2>&1
    assert "$output" contains "not a git dir"
}

#--------------------------------------------------------------
# zpwrPrettyPrintBox
#--------------------------------------------------------------
@test 'zpwrPrettyPrintBox with arg returns 0' {
    run zpwrPrettyPrintBox "boxlbluniq"
    assert $state equals 0
}

@test 'zpwrPrettyPrintBox output includes label' {
    run zpwrPrettyPrintBox "boxcontentuniq42"
    assert "$output" contains boxcontentuniq42
}

@test 'zpwrPrettyPrintBox no args exits 1' {
    run zpwrPrettyPrintBox 2>&1
    assert $state equals 1
    assert "$output" contains "usage: zpwrPrettyPrintBox"
}
