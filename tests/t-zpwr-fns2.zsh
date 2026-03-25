#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 24 00:00:00 EST 2026
##### Purpose: zsh script to test additional zpwr autoload functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Function existence checks (batch)
#--------------------------------------------------------------
@test 'zpwrExists zpwrAllRemotes' {
    run zpwrExists zpwrAllRemotes
    assert $state equals 0
}

@test 'zpwrExists zpwrArrayToJson' {
    run zpwrExists zpwrArrayToJson
    assert $state equals 0
}

@test 'zpwrExists zpwrDedupPaths' {
    run zpwrExists zpwrDedupPaths
    assert $state equals 0
}

@test 'zpwrExists zpwrCdUp' {
    run zpwrExists zpwrCdUp
    assert $state equals 0
}

@test 'zpwrExists zpwrColorTest' {
    run zpwrExists zpwrColorTest
    assert $state equals 0
}

@test 'zpwrExists zpwrConfirm' {
    run zpwrExists zpwrConfirm
    assert $state equals 0
}

@test 'zpwrExists zpwrClipboard' {
    run zpwrExists zpwrClipboard
    assert $state equals 0
}

@test 'zpwrExists zpwrCat' {
    run zpwrExists zpwrCat
    assert $state equals 0
}

@test 'zpwrExists zpwrPoll' {
    run zpwrExists zpwrPoll
    assert $state equals 0
}

@test 'zpwrExists zpwrCd' {
    run zpwrExists zpwrCd
    assert $state equals 0
}

@test 'zpwrExists zpwrChpwd' {
    run zpwrExists zpwrChpwd
    assert $state equals 0
}

@test 'zpwrExists zpwrCommits' {
    run zpwrExists zpwrCommits
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanLog' {
    run zpwrExists zpwrCleanLog
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanDirs' {
    run zpwrExists zpwrCleanDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanTemp' {
    run zpwrExists zpwrCleanTemp
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanAll' {
    run zpwrExists zpwrCleanAll
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanCache' {
    run zpwrExists zpwrCleanCache
    assert $state equals 0
}

@test 'zpwrExists zpwrBackup' {
    run zpwrExists zpwrBackup
    assert $state equals 0
}

@test 'zpwrExists zpwrBannerCounts' {
    run zpwrExists zpwrBannerCounts
    assert $state equals 0
}

@test 'zpwrExists zpwrAnimate' {
    run zpwrExists zpwrAnimate
    assert $state equals 0
}

@test 'zpwrExists zpwrAlternateQuotes' {
    run zpwrExists zpwrAlternateQuotes
    assert $state equals 0
}

@test 'zpwrExists zpwrAllUpdates' {
    run zpwrExists zpwrAllUpdates
    assert $state equals 0
}

@test 'zpwrExists zpwrChangeQuotes' {
    run zpwrExists zpwrChangeQuotes
    assert $state equals 0
}

@test 'zpwrExists zpwrEditor' {
    run zpwrExists zpwrEditor
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsAll' {
    run zpwrExists zpwrEmacsAll
    assert $state equals 0
}

@test 'zpwrExists zpwrListFiles' {
    run zpwrExists zpwrListFiles
    assert $state equals 0
}

@test 'zpwrExists zpwrListVerbs' {
    run zpwrExists zpwrListVerbs
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

@test 'zpwrExists zpwrAbout' {
    run zpwrExists zpwrAbout
    assert $state equals 0
}

@test 'zpwrExists zpwrPrettyPrintBox' {
    run zpwrExists zpwrPrettyPrintBox
    assert $state equals 0
}

@test 'zpwrExists zpwrTimer' {
    run zpwrExists zpwrTimer
    assert $state equals 0
}

@test 'zpwrExists zpwrClearLine' {
    run zpwrExists zpwrClearLine
    assert $state equals 0
}

@test 'zpwrExists zpwrDeleteLastWord' {
    run zpwrExists zpwrDeleteLastWord
    assert $state equals 0
}

@test 'zpwrExists zpwrDfimage' {
    run zpwrExists zpwrDfimage
    assert $state equals 0
}

@test 'zpwrExists zpwrDockerWipe' {
    run zpwrExists zpwrDockerWipe
    assert $state equals 0
}

@test 'zpwrExists zpwrCreategif' {
    run zpwrExists zpwrCreategif
    assert $state equals 0
}

@test 'zpwrExists zpwrCreateAliasCache' {
    run zpwrExists zpwrCreateAliasCache
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrArrayToJson behavior
#--------------------------------------------------------------
@test 'zpwrArrayToJson no args returns 1' {
    run zpwrArrayToJson
    assert $state equals 1
}

@test 'zpwrArrayToJson no args output contains usage' {
    run zpwrArrayToJson 2>&1
    assert "$output" contains usage
}

@test 'zpwrArrayToJson with ZPWR_VERBS returns 0' {
    run zpwrArrayToJson ZPWR_VERBS
    assert $state equals 0
}

@test 'zpwrArrayToJson with ZPWR_VERBS output is not empty' {
    run zpwrArrayToJson ZPWR_VERBS
    assert "$output" is_not_empty
}

@test 'zpwrArrayToJson with ZPWR_VERBS output is valid JSON' {
    out=$(zpwrArrayToJson ZPWR_VERBS 2>/dev/null)
    run python3 -c "import json, sys; json.loads(sys.stdin.read())" <<< "$out"
    assert $state equals 0
}

@test 'zpwrArrayToJson with ZPWR_VERBS output contains about' {
    run zpwrArrayToJson ZPWR_VERBS
    assert "$output" contains about
}

#--------------------------------------------------------------
# zpwrDedupPaths behavior
#--------------------------------------------------------------
@test 'zpwrDedupPaths returns 0' {
    run zpwrDedupPaths
    assert $state equals 0
}

@test 'zpwrDedupPaths PATH has no duplicates after run' {
    zpwrDedupPaths
    local dupes
    dupes=$(echo "${PATH//:/$'\n'}" | sort | uniq -d)
    [[ -z "$dupes" ]]
    assert $? equals 0
}

#--------------------------------------------------------------
# zpwrAllRemotes behavior
#--------------------------------------------------------------
@test 'zpwrAllRemotes in git repo returns 0' {
    run zpwrAllRemotes &>/dev/null
    assert $state equals 0
}

@test 'zpwrAllRemotes output is not empty' {
    run zpwrAllRemotes &>/dev/null
    assert "$output" is_not_empty
}

@test 'zpwrAllRemotes output contains origin' {
    run zpwrAllRemotes &>/dev/null
    assert "$output" contains origin
}

#--------------------------------------------------------------
# zpwrListFiles behavior
#--------------------------------------------------------------
@test 'zpwrListFiles returns 0' {
    run zpwrListFiles &>/dev/null
    assert $state equals 0
}

@test 'zpwrListFiles output is not empty' {
    run zpwrListFiles &>/dev/null
    assert "$output" is_not_empty
}

@test 'zpwrListFiles output contains autoload function names' {
    run zpwrListFiles &>/dev/null
    assert "$output" contains zpwrAbout
}

@test 'zpwrListFiles output contains tac' {
    run zpwrListFiles &>/dev/null
    assert "$output" contains tac
}

#--------------------------------------------------------------
# zpwrTimer behavior
#--------------------------------------------------------------
@test 'zpwrTimer no args returns 1' {
    run zpwrTimer
    assert $state equals 1
}

@test 'zpwrTimer with cmd returns 0' {
    run zpwrTimer echo hello
    assert $state equals 0
}

@test 'zpwrTimer output is not empty' {
    run zpwrTimer echo hello
    assert "$output" is_not_empty
}

@test 'zpwrTimer output contains cmd output' {
    run zpwrTimer echo timertest
    assert "$output" contains timertest
}

#--------------------------------------------------------------
# zpwrAbout behavior
#--------------------------------------------------------------
@test 'zpwrAbout returns 0' {
    run zpwrAbout &>/dev/null
    assert $state equals 0
}

@test 'zpwrAbout output is not empty' {
    run zpwrAbout &>/dev/null
    assert "$output" is_not_empty
}

@test 'zpwrAbout output contains fetch' {
    run zpwrAbout &>/dev/null
    assert "$output" contains fetch
}

@test 'zpwrAbout output contains push' {
    run zpwrAbout &>/dev/null
    assert "$output" contains push
}

#--------------------------------------------------------------
# zpwrScriptCount / zpwrScriptList behavior
#--------------------------------------------------------------
@test 'zpwrScriptCount returns 0' {
    run zpwrScriptCount &>/dev/null
    assert $state equals 0
}

@test 'zpwrScriptList returns 0' {
    run zpwrScriptList &>/dev/null
    assert $state equals 0
}

@test 'zpwrScriptList output contains .sh' {
    run zpwrScriptList &>/dev/null
    assert "$output" contains .sh
}

@test 'zpwrScriptList output contains about.sh' {
    run zpwrScriptList &>/dev/null
    assert "$output" contains about.sh
}

#--------------------------------------------------------------
# zpwrBannerCounts behavior
#--------------------------------------------------------------
@test 'zpwrBannerCounts returns 0' {
    run zpwrBannerCounts &>/dev/null
    assert $state equals 0
}

@test 'zpwrBannerCounts output is not empty' {
    run zpwrBannerCounts &>/dev/null
    assert "$output" is_not_empty
}

@test 'zpwrBannerCounts output contains fetch' {
    run zpwrBannerCounts &>/dev/null
    assert "$output" contains fetch
}

#--------------------------------------------------------------
# zpwrPoll in non-git dir
#--------------------------------------------------------------
@test 'zpwrPoll outside git dir returns 1' {
    run zsh -c "ZPWR=$ZPWR; fpath=(\$ZPWR/autoload/*(/) \$fpath); autoload -z \$ZPWR/autoload/*/*(.:t); source $ZPWR_LIB; cd /tmp && zpwrPoll"
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrColorTest behavior
#--------------------------------------------------------------
@test 'zpwrColorTest returns 0' {
    run zpwrColorTest
    assert $state equals 0
}

@test 'zpwrColorTest output is not empty' {
    autoload -Uz colors && colors
    run zpwrColorTest
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrListVerbs behavior
#--------------------------------------------------------------
@test 'zpwrListVerbs returns 0' {
    run zpwrListVerbs &>/dev/null
    assert $state equals 0
}

@test 'zpwrListVerbs output contains about' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains about
}

@test 'zpwrListVerbs output contains update' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains update
}

@test 'zpwrListVerbs output contains timer' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains timer
}

@test 'zpwrListVerbs output contains poll' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains poll
}

@test 'zpwrListVerbs output contains vimall' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains vimall
}

@test 'zpwrListVerbs output contains reload' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains reload
}

@test 'zpwrListVerbs output contains clone' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains clone
}

@test 'zpwrListVerbs output contains backup' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains backup
}

@test 'zpwrListVerbs output contains envcounts' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains envcounts
}

@test 'zpwrListVerbs output contains gittotallines' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains gittotallines
}

@test 'zpwrListVerbs output contains relpath' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains relpath
}

@test 'zpwrListVerbs output contains urlsafe' {
    run zpwrListVerbs &>/dev/null
    assert "$output" contains urlsafe
}

#--------------------------------------------------------------
# zpwrAutoloadList additional checks
#--------------------------------------------------------------
@test 'zpwrAutoloadList contains zpwrColorTest' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains zpwrColorTest
}

@test 'zpwrAutoloadList contains zpwrAllRemotes' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains zpwrAllRemotes
}

@test 'zpwrAutoloadList contains zpwrDedupPaths' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains zpwrDedupPaths
}

@test 'zpwrAutoloadList contains zpwrArrayToJson' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains zpwrArrayToJson
}

@test 'zpwrAutoloadList contains zpwrPoll' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains zpwrPoll
}

@test 'zpwrAutoloadList contains zpwrBannerCounts' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains zpwrBannerCounts
}

@test 'zpwrAutoloadList contains xx' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains xx
}

@test 'zpwrAutoloadList contains j' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains j
}

@test 'zpwrAutoloadList contains b' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains b
}

@test 'zpwrAutoloadList contains tac' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains tac
}

@test 'zpwrAutoloadList contains va' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains va
}

@test 'zpwrAutoloadList contains d' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains d
}

@test 'zpwrAutoloadList contains h' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains h
}

@test 'zpwrAutoloadList contains p' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains p
}

@test 'zpwrAutoloadList contains r' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains r
}

@test 'zpwrAutoloadList contains f' {
    run zpwrAutoloadList &>/dev/null
    assert "$output" contains f
}
