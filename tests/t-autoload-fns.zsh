#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Mar 28 00:00:00 EST 2026
##### Purpose: zsh script to test autoloaded utility functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# tac - reverse lines
#--------------------------------------------------------------
@test 'tac reverses three lines' {
    local tmpfile
    tmpfile=$(mktemp)
    printf 'alpha\nbeta\ngamma\n' > "$tmpfile"
    run tac "$tmpfile"
    assert $state equals 0
    local first
    first=$(tac "$tmpfile" | head -n 1)
    assert "$first" equals gamma
    command rm -f "$tmpfile"
}

@test 'tac reverses two lines' {
    local tmpfile
    tmpfile=$(mktemp)
    printf 'first\nsecond\n' > "$tmpfile"
    run tac "$tmpfile"
    assert $state equals 0
    local first
    first=$(tac "$tmpfile" | head -n 1)
    assert "$first" equals second
    command rm -f "$tmpfile"
}

@test 'tac on single line is identity' {
    local tmpfile
    tmpfile=$(mktemp)
    printf 'onlyone\n' > "$tmpfile"
    run tac "$tmpfile"
    assert $state equals 0
    assert "$output" contains onlyone
    command rm -f "$tmpfile"
}

@test 'tac preserves all lines' {
    local tmpfile
    tmpfile=$(mktemp)
    printf 'a\nb\nc\nd\ne\n' > "$tmpfile"
    local count
    count=$(tac "$tmpfile" | wc -l | tr -d ' ')
    [[ "$count" -eq 5 ]]
    assert $? equals 0
    command rm -f "$tmpfile"
}

@test 'tac reverses test file' {
    run tac "$TEST_FILE"
    assert $state equals 0
    local first
    first=$(tac "$TEST_FILE" | head -n 1)
    assert "$first" equals line2
}

#--------------------------------------------------------------
# zpwrUrlSafe - base64 + URL safe chars
#--------------------------------------------------------------
@test 'zpwrUrlSafe returns 0' {
    run zpwrUrlSafe <<< "hello world"
    assert $state equals 0
}

@test 'zpwrUrlSafe output is not empty' {
    run zpwrUrlSafe <<< "hello world"
    assert "$output" is_not_empty
}

@test 'zpwrUrlSafe output has no plus signs' {
    out=$(echo "test+data/with=special" | zpwrUrlSafe)
    [[ "$out" != *"+"* ]]
    assert $? equals 0
}

@test 'zpwrUrlSafe output has no slashes' {
    out=$(echo "test+data/with=special" | zpwrUrlSafe)
    [[ "$out" != *"/"* ]]
    assert $? equals 0
}

@test 'zpwrUrlSafe output has no equals' {
    out=$(echo "test" | zpwrUrlSafe)
    [[ "$out" != *"="* ]]
    assert $? equals 0
}

#--------------------------------------------------------------
# zpwrRelPath - relative path calculation
#--------------------------------------------------------------
@test 'zpwrRelPath no args returns 1' {
    run zpwrRelPath
    assert $state equals 1
}

@test 'zpwrRelPath on existing file returns 0' {
    run zpwrRelPath "$ZPWR_LIB"
    assert $state equals 0
}

@test 'zpwrRelPath output contains filename' {
    run zpwrRelPath "$ZPWR_LIB"
    assert "$output" contains lib.sh
}

@test 'zpwrRelPath output contains scripts' {
    run zpwrRelPath "$ZPWR/scripts/lib.sh"
    assert "$output" contains scripts
}

@test 'zpwrRelPath on ZPWR dir returns 0' {
    run zpwrRelPath "$ZPWR/scripts"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrTimer - time a command
#--------------------------------------------------------------
@test 'zpwrTimer no args returns 1' {
    run zpwrTimer
    assert $state equals 1
}

@test 'zpwrTimer echo returns 0' {
    run zpwrTimer echo hello
    assert $state equals 0
}

@test 'zpwrTimer output contains cmd output' {
    run zpwrTimer echo timertest
    assert "$output" contains timertest
}

@test 'zpwrTimer pwd returns 0' {
    run zpwrTimer pwd
    assert $state equals 0
}

@test 'zpwrTimer pwd output contains PWD' {
    run zpwrTimer pwd
    assert "$output" contains "$PWD"
}

@test 'zpwrTimer true returns 0' {
    run zpwrTimer true
    assert $state equals 0
}


#--------------------------------------------------------------
# zpwrAutoloadCount / zpwrAutoloadList
#--------------------------------------------------------------
@test 'zpwrAutoloadCount returns 0' {
    run zpwrAutoloadCount
    assert $state equals 0
}

@test 'zpwrAutoloadCount output is a number' {
    out=$(zpwrAutoloadCount)
    [[ "$out" =~ ^[0-9]+$ ]]
    assert $? equals 0
}

@test 'zpwrAutoloadCount output is greater than 100' {
    out=$(zpwrAutoloadCount)
    (( out > 100 ))
    assert $? equals 0
}

@test 'zpwrAutoloadList returns 0' {
    run zpwrAutoloadList
    assert $state equals 0
}

@test 'zpwrAutoloadList output is not empty' {
    run zpwrAutoloadList
    assert "$output" is_not_empty
}

@test 'zpwrAutoloadList contains zpwrAbout' {
    run zpwrAutoloadList
    assert "$output" contains zpwrAbout
}

@test 'zpwrAutoloadList contains zpwrTimer' {
    run zpwrAutoloadList
    assert "$output" contains zpwrTimer
}

@test 'zpwrAutoloadList contains tac' {
    run zpwrAutoloadList
    assert "$output" contains tac
}

@test 'zpwrAutoloadList contains zpwrColorTest' {
    run zpwrAutoloadList
    assert "$output" contains zpwrColorTest
}

@test 'zpwrAutoloadList contains zpwrDedupPaths' {
    run zpwrAutoloadList
    assert "$output" contains zpwrDedupPaths
}

#--------------------------------------------------------------
# zpwrScriptCount / zpwrScriptList
#--------------------------------------------------------------
@test 'zpwrScriptCount returns 0' {
    run zpwrScriptCount
    assert $state equals 0
}

@test 'zpwrScriptCount output is a number' {
    out=$(zpwrScriptCount)
    [[ "$out" =~ ^[0-9]+$ ]]
    assert $? equals 0
}

@test 'zpwrScriptCount output is greater than 50' {
    out=$(zpwrScriptCount)
    (( out > 50 ))
    assert $? equals 0
}

@test 'zpwrScriptList returns 0' {
    run zpwrScriptList
    assert $state equals 0
}

@test 'zpwrScriptList output contains .sh' {
    run zpwrScriptList
    assert "$output" contains .sh
}

@test 'zpwrScriptList output contains .zsh' {
    run zpwrScriptList
    assert "$output" contains .zsh
}

@test 'zpwrScriptList output contains .for' {
    run zpwrScriptList
    assert "$output" contains .for
}

@test 'zpwrScriptList output contains .py' {
    run zpwrScriptList
    assert "$output" contains .py
}

#--------------------------------------------------------------
# zpwrNumVerbs / zpwrListVerbs
#--------------------------------------------------------------
@test 'zpwrNumVerbs returns 0' {
    run zpwrNumVerbs
    assert $state equals 0
}

@test 'zpwrNumVerbs output is a number' {
    out=$(zpwrNumVerbs)
    [[ "$out" =~ ^[0-9]+$ ]]
    assert $? equals 0
}

@test 'zpwrNumVerbs output is greater than 50' {
    out=$(zpwrNumVerbs)
    (( out > 50 ))
    assert $? equals 0
}

@test 'zpwrListVerbs returns 0' {
    run zpwrListVerbs
    assert $state equals 0
}

@test 'zpwrListVerbs contains about' {
    run zpwrListVerbs
    assert "$output" contains about
}

@test 'zpwrListVerbs contains update' {
    run zpwrListVerbs
    assert "$output" contains update
}

@test 'zpwrListVerbs contains timer' {
    run zpwrListVerbs
    assert "$output" contains timer
}

@test 'zpwrListVerbs contains reload' {
    run zpwrListVerbs
    assert "$output" contains reload
}

@test 'zpwrListVerbs contains banner' {
    run zpwrListVerbs
    assert "$output" contains banner
}

@test 'zpwrListVerbs contains cd' {
    run zpwrListVerbs
    assert "$output" contains cd
}

@test 'zpwrListVerbs contains clone' {
    run zpwrListVerbs
    assert "$output" contains clone
}

@test 'zpwrListVerbs contains scripts' {
    run zpwrListVerbs
    assert "$output" contains scripts
}

@test 'zpwrListVerbs contains envcounts' {
    run zpwrListVerbs
    assert "$output" contains envcounts
}

@test 'zpwrListVerbs contains relpath' {
    run zpwrListVerbs
    assert "$output" contains relpath
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

@test 'zpwrListFiles output contains zpwrAbout' {
    run zpwrListFiles
    assert "$output" contains zpwrAbout
}

#--------------------------------------------------------------
# zpwrDedupPaths
#--------------------------------------------------------------
@test 'zpwrDedupPaths returns 0' {
    run zpwrDedupPaths
    assert $state equals 0
}

@test 'zpwrDedupPaths PATH has no duplicates' {
    zpwrDedupPaths
    local dupes
    dupes=$(echo "${PATH//:/$'\n'}" | sort | uniq -d)
    [[ -z "$dupes" ]]
    assert $? equals 0
}

#--------------------------------------------------------------
# zpwrColorTest
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
# zpwrAllRemotes
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
# zpwrPrintMap
#--------------------------------------------------------------
@test 'zpwrPrintMap no args returns 1' {
    run zpwrPrintMap
    assert $state equals 1
}

@test 'zpwrPrintMap no args output contains usage' {
    run zpwrPrintMap 2>&1
    assert "$output" contains usage
}

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

#--------------------------------------------------------------
# zpwrArrayToJson
#--------------------------------------------------------------
@test 'zpwrArrayToJson no args returns 1' {
    run zpwrArrayToJson
    assert $state equals 1
}

@test 'zpwrArrayToJson ZPWR_VERBS returns 0' {
    run zpwrArrayToJson ZPWR_VERBS
    assert $state equals 0
}

@test 'zpwrArrayToJson ZPWR_VERBS output is not empty' {
    run zpwrArrayToJson ZPWR_VERBS
    assert "$output" is_not_empty
}

@test 'zpwrArrayToJson ZPWR_VERBS output is valid JSON' {
    out=$(zpwrArrayToJson ZPWR_VERBS 2>/dev/null)
    run python3 -c "import json, sys; json.loads(sys.stdin.read())" <<< "$out"
    assert $state equals 0
}

@test 'zpwrArrayToJson ZPWR_VERBS output contains about' {
    run zpwrArrayToJson ZPWR_VERBS
    assert "$output" contains about
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
# zpwrPrettyPrintBox
#--------------------------------------------------------------
@test 'zpwrPrettyPrintBox returns 0' {
    run zpwrPrettyPrintBox test
    assert $state equals 0
}

@test 'zpwrPrettyPrintBox output is not empty' {
    run zpwrPrettyPrintBox test
    assert "$output" is_not_empty
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
