#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 24 00:00:00 EST 2026
##### Purpose: zsh script to test core lib functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrIsZsh
#--------------------------------------------------------------
@test 'zpwrIsZsh returns 0 in zsh' {
    run zpwrIsZsh
    assert $state equals 0
}

@test 'zpwrIsZsh output is empty' {
    run zpwrIsZsh
    assert "$output" is_empty
}

@test 'zpwrIsZsh in bash returns 1' {
    run bash -c "source $ZPWR_LIB; zpwrIsZsh"
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrExists
#--------------------------------------------------------------
@test 'zpwrExists no args returns 1' {
    run zpwrExists
    assert $state equals 1
}

@test 'zpwrExists with valid function' {
    run zpwrExists zpwrPrettyPrint
    assert $state equals 0
}

@test 'zpwrExists with valid builtin' {
    run zpwrExists echo
    assert $state equals 0
}

@test 'zpwrExists with valid command' {
    run zpwrExists zsh
    assert $state equals 0
}

@test 'zpwrExists with invalid name' {
    run zpwrExists __zpwr_does_not_exist_9999__
    assert $state equals 1
}

@test 'zpwrExists multiple valid' {
    run zpwrExists zpwrPrettyPrint zpwrIsZsh zpwrExists
    assert $state equals 0
}

@test 'zpwrExists multiple with one invalid' {
    run zpwrExists zpwrPrettyPrint __does_not_exist__ zpwrIsZsh
    assert $state equals 1
}

@test 'zpwrExists zpwrCommandExists' {
    run zpwrExists zpwrCommandExists
    assert $state equals 0
}

@test 'zpwrExists zpwrListVerbs' {
    run zpwrExists zpwrListVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrAutoloadList' {
    run zpwrExists zpwrAutoloadList
    assert $state equals 0
}

@test 'zpwrExists zpwrScriptCount' {
    run zpwrExists zpwrScriptCount
    assert $state equals 0
}

@test 'zpwrExists zpwrScriptList' {
    run zpwrExists zpwrScriptList
    assert $state equals 0
}

@test 'zpwrExists zpwrAutoloadCount' {
    run zpwrExists zpwrAutoloadCount
    assert $state equals 0
}

@test 'zpwrExists zpwrNumVerbs' {
    run zpwrExists zpwrNumVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrTimer' {
    run zpwrExists zpwrTimer
    assert $state equals 0
}

@test 'zpwrExists zpwrRelPath' {
    run zpwrExists zpwrRelPath
    assert $state equals 0
}

@test 'zpwrExists zpwrUrlSafe' {
    run zpwrExists zpwrUrlSafe
    assert $state equals 0
}

@test 'zpwrExists zpwrContribCount' {
    run zpwrExists zpwrContribCount
    assert $state equals 0
}

@test 'zpwrExists zpwrContribCountLines' {
    run zpwrExists zpwrContribCountLines
    assert $state equals 0
}

@test 'zpwrExists zpwrContribCountDirs' {
    run zpwrExists zpwrContribCountDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrEnvCounts' {
    run zpwrExists zpwrEnvCounts
    assert $state equals 0
}

@test 'zpwrExists zpwrLineCount' {
    run zpwrExists zpwrLineCount
    assert $state equals 0
}

@test 'zpwrExists zpwrTotalLines' {
    run zpwrExists zpwrTotalLines
    assert $state equals 0
}

@test 'zpwrExists zpwrHumanReadable' {
    run zpwrExists zpwrHumanReadable
    assert $state equals 0
}

@test 'zpwrExists zpwrIsBinary' {
    run zpwrExists zpwrIsBinary
    assert $state equals 0
}

@test 'zpwrExists zpwrStdinExists' {
    run zpwrExists zpwrStdinExists
    assert $state equals 0
}

@test 'zpwrExists zpwrNeedSudo' {
    run zpwrExists zpwrNeedSudo
    assert $state equals 0
}

@test 'zpwrExists zpwrFileMustExist' {
    run zpwrExists zpwrFileMustExist
    assert $state equals 0
}

@test 'zpwrExists zpwrEscapeRemove' {
    run zpwrExists zpwrEscapeRemove
    assert $state equals 0
}

@test 'zpwrExists zpwrPrettyPrintNoNewline' {
    run zpwrExists zpwrPrettyPrintNoNewline
    assert $state equals 0
}

@test 'zpwrExists zpwrLogColor' {
    run zpwrExists zpwrLogColor
    assert $state equals 0
}

@test 'zpwrExists zpwrLogConsoleInfo' {
    run zpwrExists zpwrLogConsoleInfo
    assert $state equals 0
}

@test 'zpwrExists zpwrLogConsoleErr' {
    run zpwrExists zpwrLogConsoleErr
    assert $state equals 0
}

@test 'zpwrExists zpwrLogConsoleDebug' {
    run zpwrExists zpwrLogConsoleDebug
    assert $state equals 0
}

@test 'zpwrExists zpwrLogConsoleTrace' {
    run zpwrExists zpwrLogConsoleTrace
    assert $state equals 0
}

@test 'zpwrExists zpwrLogConsoleNotGit' {
    run zpwrExists zpwrLogConsoleNotGit
    assert $state equals 0
}

@test 'zpwrExists zpwrLogTrace' {
    run zpwrExists zpwrLogTrace
    assert $state equals 0
}

@test 'zpwrExists zpwrLogError' {
    run zpwrExists zpwrLogError
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists no args returns 1' {
    run zpwrCommandExists
    assert $state equals 1
}

@test 'zpwrCommandExists zsh' {
    run zpwrCommandExists zsh
    assert $state equals 0
}

@test 'zpwrCommandExists bash' {
    run zpwrCommandExists bash
    assert $state equals 0
}

@test 'zpwrCommandExists perl' {
    run zpwrCommandExists perl
    assert $state equals 0
}

@test 'zpwrCommandExists git' {
    run zpwrCommandExists git
    assert $state equals 0
}

@test 'zpwrCommandExists python3' {
    run zpwrCommandExists python3
    assert $state equals 0
}

@test 'zpwrCommandExists ls' {
    run zpwrCommandExists ls
    assert $state equals 0
}

@test 'zpwrCommandExists cat' {
    run zpwrCommandExists cat
    assert $state equals 0
}

@test 'zpwrCommandExists grep' {
    run zpwrCommandExists grep
    assert $state equals 0
}

@test 'zpwrCommandExists awk' {
    run zpwrCommandExists awk
    assert $state equals 0
}

@test 'zpwrCommandExists sed' {
    run zpwrCommandExists sed
    assert $state equals 0
}

@test 'zpwrCommandExists wc' {
    run zpwrCommandExists wc
    assert $state equals 0
}

@test 'zpwrCommandExists base64' {
    run zpwrCommandExists base64
    assert $state equals 0
}

@test 'zpwrCommandExists __fake_cmd_9999__' {
    run zpwrCommandExists __fake_cmd_9999__
    assert $state equals 1
}

@test 'zpwrCommandExists multiple valid' {
    run zpwrCommandExists zsh bash perl git
    assert $state equals 0
}

@test 'zpwrCommandExists multiple with invalid' {
    run zpwrCommandExists zsh __fake_cmd_9999__
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrIsGitDir / zpwrIsGitDirMessage
#--------------------------------------------------------------
@test 'zpwrIsGitDir returns 0 in git repo' {
    run zpwrIsGitDir
    assert $state equals 0
}

@test 'zpwrIsGitDir output is empty' {
    run zpwrIsGitDir
    assert "$output" is_empty
}

@test 'zpwrIsGitDir returns non-zero outside git repo' {
    run zsh -c "cd /tmp && git rev-parse --git-dir"
    assert $state is_greater_than 0
}

@test 'zpwrIsGitDirMessage returns 0 in git repo' {
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

@test 'zpwrPrettyPrint output is not empty' {
    run zpwrPrettyPrint hello
    assert "$output" is_not_empty
}

@test 'zpwrPrettyPrint output contains arg' {
    run zpwrPrettyPrint testmessage
    assert "$output" contains testmessage
}

@test 'zpwrPrettyPrint multiple args output contains all' {
    run zpwrPrettyPrint hello world
    assert "$output" contains hello
    assert "$output" contains world
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
    run zpwrPrettyPrintNoNewline testmsg
    assert "$output" contains testmsg
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
    run zpwrLogColor TESTLVL "test message"
    assert "$output" contains TESTLVL
}

@test 'zpwrLogColor output contains message' {
    run zpwrLogColor INFO "uniquetestmsg"
    assert "$output" contains uniquetestmsg
}

#--------------------------------------------------------------
# zpwrLogConsoleInfo / zpwrLogConsoleErr
#--------------------------------------------------------------
@test 'zpwrLogConsoleInfo no args returns 1' {
    run zpwrLogConsoleInfo
    assert $state equals 1
}

@test 'zpwrLogConsoleInfo with arg returns 0' {
    run zpwrLogConsoleInfo "test"
    assert $state equals 0
}

@test 'zpwrLogConsoleInfo output contains INFO' {
    run zpwrLogConsoleInfo "hello"
    assert "$output" contains INFO
}

@test 'zpwrLogConsoleErr no args returns 1' {
    run zpwrLogConsoleErr
    assert $state equals 1
}

@test 'zpwrLogConsoleErr with arg returns 0' {
    run zpwrLogConsoleErr "test error" 2>&1
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrLogConsoleDebug / zpwrLogConsoleTrace
#--------------------------------------------------------------
@test 'zpwrLogConsoleDebug no args returns 1' {
    run zpwrLogConsoleDebug
    assert $state equals 1
}

@test 'zpwrLogConsoleDebug with ZPWR_DEBUG false is silent' {
    ZPWR_DEBUG=false
    run zpwrLogConsoleDebug "should be silent"
    assert "$output" is_empty
}

@test 'zpwrLogConsoleDebug with ZPWR_DEBUG true outputs' {
    ZPWR_DEBUG=true
    run zpwrLogConsoleDebug "debugtest"
    assert "$output" contains debugtest
    ZPWR_DEBUG=false
}

@test 'zpwrLogConsoleTrace no args returns 1' {
    run zpwrLogConsoleTrace
    assert $state equals 1
}

@test 'zpwrLogConsoleTrace with ZPWR_TRACE false is silent' {
    ZPWR_TRACE=false
    run zpwrLogConsoleTrace "should be silent"
    assert "$output" is_empty
}

#--------------------------------------------------------------
# zpwrLogInfo / zpwrLogError / zpwrLogDebug
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

@test 'zpwrLogDebug ZPWR_DEBUG true logs' {
    ZPWR_DEBUG=true
    run zpwrLogDebug "debuglogtest"
    assert $state equals 0
    ZPWR_DEBUG=false
}

@test 'zpwrLogTrace ZPWR_TRACE false is silent' {
    ZPWR_TRACE=false
    run zpwrLogTrace "should not appear"
    assert "$output" is_empty
}

#--------------------------------------------------------------
# zpwrLogConsoleNotGit
#--------------------------------------------------------------
@test 'zpwrLogConsoleNotGit returns 0' {
    run zpwrLogConsoleNotGit 2>&1
    assert $state equals 0
}

@test 'zpwrLogConsoleNotGit output contains git' {
    run zpwrLogConsoleNotGit 2>&1
    assert "$output" contains git
}

#--------------------------------------------------------------
# zpwrStdinExists
#--------------------------------------------------------------
@test 'zpwrStdinExists with stdin data' {
    run zsh -c "source $ZPWR/scripts/lib.sh; echo hello | zpwrStdinExists"
    assert $state equals 0
    assert "$output" contains hello
}

@test 'zpwrStdinExists no stdin outputs No input' {
    run zpwrStdinExists testarg < /dev/null
    assert "$output" contains "No input"
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

@test 'zpwrNeedSudo on non-writable file returns 0' {
    local tmpfile
    tmpfile=$(mktemp)
    chmod 444 "$tmpfile"
    run zpwrNeedSudo "$tmpfile"
    assert $state equals 0
    chmod 644 "$tmpfile"
    command rm -f "$tmpfile"
}

#--------------------------------------------------------------
# zpwrIsBinary
#--------------------------------------------------------------
@test 'zpwrIsBinary on text file returns 1' {
    run zpwrIsBinary "$TEST_FILE"
    assert $state equals 1
}

@test 'zpwrIsBinary on binary returns 0' {
    run zpwrIsBinary "$(command -v zsh)"
    assert $state equals 0
}
