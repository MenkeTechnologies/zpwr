#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test safely callable autoload functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrAutoloadCount
#--------------------------------------------------------------
@test 'zpwrAutoloadCount returns 0' {
    run zpwrAutoloadCount
    assert $state equals 0
}

@test 'zpwrAutoloadCount output is not empty' {
    run zpwrAutoloadCount
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrAutoloadList
#--------------------------------------------------------------
@test 'zpwrAutoloadList returns 0' {
    run zpwrAutoloadList
    assert $state equals 0
}

@test 'zpwrAutoloadList output is not empty' {
    run zpwrAutoloadList
    assert "$output" is_not_empty
}

@test 'zpwrAutoloadList output contains zpwr' {
    run zpwrAutoloadList
    assert "$output" contains zpwr
}

#--------------------------------------------------------------
# zpwrScriptCount
#--------------------------------------------------------------
@test 'zpwrScriptCount returns 0' {
    run zpwrScriptCount
    assert $state equals 0
}

@test 'zpwrScriptCount output is not empty' {
    run zpwrScriptCount
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrScriptList
#--------------------------------------------------------------
@test 'zpwrScriptList returns 0' {
    run zpwrScriptList
    assert $state equals 0
}

@test 'zpwrScriptList output is not empty' {
    run zpwrScriptList
    assert "$output" is_not_empty
}

@test 'zpwrScriptList output contains .sh' {
    run zpwrScriptList
    assert "$output" contains .sh
}

@test 'zpwrScriptList output contains .zsh' {
    run zpwrScriptList
    assert "$output" contains .zsh
}

#--------------------------------------------------------------
# zpwrNumVerbs
#--------------------------------------------------------------
@test 'zpwrNumVerbs returns 0' {
    run zpwrNumVerbs
    assert $state equals 0
}

@test 'zpwrNumVerbs output is not empty' {
    run zpwrNumVerbs
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrListVerbs
#--------------------------------------------------------------
@test 'zpwrListVerbs returns 0' {
    run zpwrListVerbs
    assert $state equals 0
}

@test 'zpwrListVerbs output is not empty' {
    run zpwrListVerbs
    assert "$output" is_not_empty
}

@test 'zpwrListVerbs output contains about' {
    run zpwrListVerbs
    assert "$output" contains about
}

@test 'zpwrListVerbs output contains update' {
    run zpwrListVerbs
    assert "$output" contains update
}

@test 'zpwrListVerbs output contains timer' {
    run zpwrListVerbs
    assert "$output" contains timer
}

@test 'zpwrListVerbs output contains poll' {
    run zpwrListVerbs
    assert "$output" contains poll
}

@test 'zpwrListVerbs output contains cd' {
    run zpwrListVerbs
    assert "$output" contains cd
}

@test 'zpwrListVerbs output contains scripts' {
    run zpwrListVerbs
    assert "$output" contains scripts
}

@test 'zpwrListVerbs output contains vimall' {
    run zpwrListVerbs
    assert "$output" contains vimall
}

@test 'zpwrListVerbs output contains banner' {
    run zpwrListVerbs
    assert "$output" contains banner
}

#--------------------------------------------------------------
# zpwrListFiles
#--------------------------------------------------------------
@test 'zpwrListFiles returns 0' {
    run zpwrListFiles
    assert $state equals 0
}

@test 'zpwrListFiles output is not empty' {
    run zpwrListFiles
    assert "$output" is_not_empty
}

@test 'zpwrListFiles output contains zpwr' {
    run zpwrListFiles
    assert "$output" contains zpwr
}

#--------------------------------------------------------------
# zpwrContribCount
#--------------------------------------------------------------
@test 'zpwrContribCount returns 0' {
    run zpwrContribCount
    assert $state equals 0
}

@test 'zpwrContribCount output is not empty' {
    run zpwrContribCount
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrContribCountLines
#--------------------------------------------------------------
@test 'zpwrContribCountLines returns 0' {
    run zpwrContribCountLines
    assert $state equals 0
}

@test 'zpwrContribCountLines output is not empty' {
    run zpwrContribCountLines
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrContribCountDirs
#--------------------------------------------------------------
@test 'zpwrContribCountDirs returns 0' {
    run zpwrContribCountDirs 'MenkeTechnologies' "$HOME/.zpwr"
    assert $state equals 0
}

@test 'zpwrContribCountDirs output is not empty' {
    run zpwrContribCountDirs 'MenkeTechnologies' "$HOME/.zpwr"
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrLineCount
#--------------------------------------------------------------
@test 'zpwrLineCount returns 0' {
    run zpwrLineCount 'echo hello' 'hello'
    assert $state equals 0
}

@test 'zpwrLineCount output is not empty' {
    run zpwrLineCount 'echo hello' 'hello'
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrTotalLines
#--------------------------------------------------------------
@test 'zpwrTotalLines returns 0' {
    run zpwrTotalLines
    assert $state equals 0
}

@test 'zpwrTotalLines output is not empty' {
    run zpwrTotalLines
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrEnvCounts
#--------------------------------------------------------------
@test 'zpwrEnvCounts returns 0' {
    run zpwrEnvCounts
    assert $state equals 0
}

@test 'zpwrEnvCounts output is not empty' {
    run zpwrEnvCounts
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrRelPath
#--------------------------------------------------------------
@test 'zpwrRelPath with ZPWR returns 0' {
    run zpwrRelPath "$ZPWR/scripts/lib.sh"
    assert $state equals 0
}

@test 'zpwrRelPath output contains scripts' {
    run zpwrRelPath "$ZPWR/scripts/lib.sh"
    assert "$output" contains scripts
}

@test 'zpwrRelPath output contains lib.sh' {
    run zpwrRelPath "$ZPWR/scripts/lib.sh"
    assert "$output" contains lib.sh
}

#--------------------------------------------------------------
# zpwrUrlSafe
#--------------------------------------------------------------
@test 'zpwrUrlSafe with hello world returns 0' {
    run zpwrUrlSafe <<< "hello world"
    assert $state equals 0
}

@test 'zpwrUrlSafe output is not empty' {
    run zpwrUrlSafe <<< "hello world"
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrTimer
#--------------------------------------------------------------
@test 'zpwrTimer with pwd returns 0' {
    run zpwrTimer pwd
    assert $state equals 0
}

@test 'zpwrTimer output contains PWD' {
    run zpwrTimer pwd
    assert "$output" contains "$PWD"
}

@test 'zpwrTimer with echo returns 0' {
    run zpwrTimer echo hello
    assert $state equals 0
}

@test 'zpwrTimer echo output contains hello' {
    run zpwrTimer echo hello
    assert "$output" contains hello
}

#--------------------------------------------------------------
# zpwrPrettyPrint
#--------------------------------------------------------------
@test 'zpwrPrettyPrint test123 returns 0' {
    run zpwrPrettyPrint test123
    assert $state equals 0
}

@test 'zpwrPrettyPrint test123 output contains test123' {
    run zpwrPrettyPrint test123
    assert "$output" contains test123
}

@test 'zpwrPrettyPrint multiple words returns 0' {
    run zpwrPrettyPrint foo bar baz
    assert $state equals 0
}

@test 'zpwrPrettyPrint multiple words output contains foo' {
    run zpwrPrettyPrint foo bar baz
    assert "$output" contains foo
}

@test 'zpwrPrettyPrint multiple words output contains bar' {
    run zpwrPrettyPrint foo bar baz
    assert "$output" contains bar
}

@test 'zpwrPrettyPrint multiple words output contains baz' {
    run zpwrPrettyPrint foo bar baz
    assert "$output" contains baz
}

#--------------------------------------------------------------
# zpwrPrettyPrintBox
#--------------------------------------------------------------
@test 'zpwrPrettyPrintBox callable returns 0' {
    run zpwrPrettyPrintBox callable
    assert $state equals 0
}

@test 'zpwrPrettyPrintBox callable output is not empty' {
    run zpwrPrettyPrintBox callable
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrIsZsh
#--------------------------------------------------------------
@test 'zpwrIsZsh callable returns 0' {
    run zpwrIsZsh
    assert $state equals 0
}

@test 'zpwrIsZsh output is empty' {
    run zpwrIsZsh
    assert "$output" is_empty
}

#--------------------------------------------------------------
# zpwrIsGitDir
#--------------------------------------------------------------
@test 'zpwrIsGitDir in ZPWR returns 0' {
    run zpwrIsGitDir
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrLogInfo
#--------------------------------------------------------------
@test 'zpwrLogInfo test returns 0' {
    run zpwrLogInfo "test message"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrLogError
#--------------------------------------------------------------
@test 'zpwrLogError test returns 0' {
    run zpwrLogError "test error"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrLogConsoleInfo
#--------------------------------------------------------------
@test 'zpwrLogConsoleInfo test returns 0' {
    run zpwrLogConsoleInfo "info msg"
    assert $state equals 0
}

@test 'zpwrLogConsoleInfo output contains INFO' {
    run zpwrLogConsoleInfo "info msg"
    assert "$output" contains INFO
}

#--------------------------------------------------------------
# zpwrLogConsoleErr
#--------------------------------------------------------------
@test 'zpwrLogConsoleErr test returns 0' {
    run zpwrLogConsoleErr "err msg"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists zsh callable returns 0' {
    run zpwrCommandExists zsh
    assert $state equals 0
}

@test 'zpwrCommandExists bash callable returns 0' {
    run zpwrCommandExists bash
    assert $state equals 0
}

@test 'zpwrCommandExists git callable returns 0' {
    run zpwrCommandExists git
    assert $state equals 0
}

@test 'zpwrCommandExists perl callable returns 0' {
    run zpwrCommandExists perl
    assert $state equals 0
}

@test 'zpwrCommandExists python3 callable returns 0' {
    run zpwrCommandExists python3
    assert $state equals 0
}

@test 'zpwrCommandExists __nosuchcmd__ returns 1' {
    run zpwrCommandExists __nosuchcmd__
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrExists
#--------------------------------------------------------------
@test 'zpwrExists zpwrTimer callable returns 0' {
    run zpwrExists zpwrTimer
    assert $state equals 0
}

@test 'zpwrExists __nope__ returns 1' {
    run zpwrExists __nope__
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrLoginCount
#--------------------------------------------------------------
@test 'zpwrLoginCount returns 0' {
    run zpwrLoginCount
    assert $state equals 0
}

@test 'zpwrLoginCount output may be empty on macOS or CI' {
    run zpwrLoginCount
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrBannerCounts
#--------------------------------------------------------------
@test 'zpwrBannerCounts returns 0' {
    run zpwrBannerCounts
    assert $state equals 0
}

@test 'zpwrBannerCounts output is not empty' {
    run zpwrBannerCounts
    assert "$output" is_not_empty
}

@test 'zpwrBannerCounts output contains fetch' {
    run zpwrBannerCounts
    assert "$output" contains fetch
}

@test 'zpwrBannerCounts output contains push' {
    run zpwrBannerCounts
    assert "$output" contains push
}

#--------------------------------------------------------------
# zpwrAbout
#--------------------------------------------------------------
@test 'zpwrAbout returns 0' {
    run zpwrAbout
    assert $state equals 0
}

@test 'zpwrAbout output is not empty' {
    run zpwrAbout
    assert "$output" is_not_empty
}

@test 'zpwrAbout output contains fetch' {
    run zpwrAbout
    assert "$output" contains fetch
}

@test 'zpwrAbout output contains push' {
    run zpwrAbout
    assert "$output" contains push
}

#--------------------------------------------------------------
# zpwrDedupPaths
#--------------------------------------------------------------
@test 'zpwrDedupPaths returns 0' {
    run zpwrDedupPaths
    assert $state equals 0
}



#--------------------------------------------------------------
# zpwrPrintMap
#--------------------------------------------------------------
@test 'zpwrPrintMap ZPWR_VERBS returns 0' {
    run zpwrPrintMap ZPWR_VERBS
    assert $state equals 0
}

@test 'zpwrPrintMap ZPWR_VERBS output contains about' {
    run zpwrPrintMap ZPWR_VERBS
    assert "$output" contains about
}

@test 'zpwrPrintMap ZPWR_VERBS output contains cd' {
    run zpwrPrintMap ZPWR_VERBS
    assert "$output" contains cd
}

@test 'zpwrPrintMap ZPWR_VERBS output contains update' {
    run zpwrPrintMap ZPWR_VERBS
    assert "$output" contains update
}
