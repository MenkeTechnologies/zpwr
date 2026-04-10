#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 24 00:00:00 EST 2026
##### Purpose: zsh script to test additional autoload functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrAutoloadCount
#--------------------------------------------------------------
@test 'zpwrAutoloadCount returns 0' {
    run zpwrAutoloadCount &>/dev/null
    assert $state equals 0
}

@test 'zpwrAutoloadCount output is not empty' {
    run zpwrAutoloadCount
    assert "$output" is_not_empty
}

@test 'zpwrAutoloadCount matches autoloadlist line count' {
    autoloadCount=$(zpwrAutoloadCount)
    listCount=$(zpwrAutoloadList | wc -l | tr -d ' ')
    [[ "$autoloadCount" -eq "$listCount" ]]
    assert $? equals 0
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

@test 'zpwrNumVerbs equals ZPWR_VERBS size' {
    run zpwrNumVerbs
    assert $state equals 0
    assert "$output" equals $#ZPWR_VERBS
}

#--------------------------------------------------------------
# zpwrRelPath
#--------------------------------------------------------------
@test 'zpwrRelPath no args returns 1' {
    run zpwrRelPath
    assert $state equals 1
}

@test 'zpwrRelPath non-existent path returns 1' {
    run zpwrRelPath /nonexistent_path_9999
    assert $state equals 1
}

@test 'zpwrRelPath on existing dir returns 0' {
    run zpwrRelPath "$ZPWR"
    assert $state equals 0
}

@test 'zpwrRelPath on existing file returns 0' {
    run zpwrRelPath "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'zpwrRelPath output is not empty for subdir' {
    run zpwrRelPath "$ZPWR/env"
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# zpwrUrlSafe
#--------------------------------------------------------------
@test 'zpwrUrlSafe returns 0' {
    run sh -c 'echo "hello world" | base64 | tr "+/=" "._-"'
    assert $state equals 0
}

@test 'zpwrUrlSafe output is not empty' {
    run sh -c 'echo "hello world" | base64 | tr "+/=" "._-"'
    assert "$output" is_not_empty
}

@test 'zpwrUrlSafe output contains no plus sign' {
    out=$(echo "hello world" | base64 | tr "+/=" "._-")
    run echo "$out"
    assert "$output" is_not_empty
    [[ "$out" != *"+"* ]]
    assert $? equals 0
}

@test 'zpwrUrlSafe output contains no slash' {
    out=$(echo "hello world" | base64 | tr "+/=" "._-")
    [[ "$out" != *"/"* ]]
    assert $? equals 0
}

@test 'zpwrUrlSafe output contains no equals sign' {
    out=$(echo "hello world" | base64 | tr "+/=" "._-")
    [[ "$out" != *"="* ]]
    assert $? equals 0
}

@test 'zpwrUrlSafe is deterministic' {
    out1=$(echo "testinput" | base64 | tr "+/=" "._-")
    out2=$(echo "testinput" | base64 | tr "+/=" "._-")
    assert "$out1" same_as "$out2"
}

#--------------------------------------------------------------
# zpwrLineCount
#--------------------------------------------------------------
@test 'zpwrLineCount no args returns 1' {
    run zpwrLineCount
    assert $state equals 1
}

@test 'zpwrLineCount one arg returns 1' {
    run zpwrLineCount "echo test"
    assert $state equals 1
}

@test 'zpwrLineCount with cmd and pattern returns 0' {
    run zpwrLineCount "zpwrAutoloadList" "zpwr"
    assert $state equals 0
}

@test 'zpwrLineCount output is a number' {
    out=$(zpwrLineCount "zpwrAutoloadList" "zpwr")
    run test "$out" -gt 0
    assert $state equals 0
}

@test 'zpwrLineCount no match returns 0 count' {
    out=$(zpwrLineCount "echo hello" "__no_match_xyz__")
    assert "$out" equals "0"
}

#--------------------------------------------------------------
# zpwrContribCountDirs (usage only; full run needs perlrs)
#--------------------------------------------------------------
@test 'zpwrContribCountDirs no args returns 1' {
    run zpwrContribCountDirs
    assert $state equals 1
}

@test 'zpwrContribCountDirs one arg returns 1' {
    run zpwrContribCountDirs "username"
    assert $state equals 1
}

#--------------------------------------------------------------
# zpwrEscapeRemove
#--------------------------------------------------------------
@test 'zpwrEscapeRemove strips ansi codes' {
    run zsh -c "source $ZPWR/scripts/lib.sh; printf '\x1b[1;32mhello\x1b[0m\n' | zpwrEscapeRemove"
    assert $state equals 0
    assert "$output" contains hello
}

@test 'zpwrEscapeRemove plain text passes through' {
    run zsh -c "source $ZPWR/scripts/lib.sh; echo 'plaintext' | zpwrEscapeRemove"
    assert "$output" contains plaintext
}

#--------------------------------------------------------------
# zpwrHumanReadable
#--------------------------------------------------------------
@test 'zpwrHumanReadable returns 0' {
    run zsh -c "source $ZPWR/scripts/lib.sh; echo '1024' | zpwrHumanReadable"
    assert $state equals 0
}

@test 'zpwrHumanReadable output is not empty' {
    run zsh -c "source $ZPWR/scripts/lib.sh; echo '1024' | zpwrHumanReadable"
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# darwin-specific autoload functions exist
#--------------------------------------------------------------
@test 'zpwrExists zpwrDarwinBanner' {
    run zpwrExists zpwrDarwinBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrScriptToPDF' {
    run zpwrExists zpwrScriptToPDF
    assert $state equals 0
}

#--------------------------------------------------------------
# fzf completion helpers exist
#--------------------------------------------------------------
@test 'zpwrExists _fzf_complete_git' {
    run zpwrExists _fzf_complete_git
    assert $state equals 0
}

@test 'zpwrExists _fzf_complete_vim' {
    run zpwrExists _fzf_complete_vim
    assert $state equals 0
}

@test 'zpwrExists _fzf_complete_z' {
    run zpwrExists _fzf_complete_z
    assert $state equals 0
}

@test 'zpwrExists ___fzf_complete_git_post' {
    run zpwrExists ___fzf_complete_git_post
    assert $state equals 0
}
