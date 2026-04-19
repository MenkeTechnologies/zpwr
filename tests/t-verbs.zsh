#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 24 00:00:00 EST 2026
##### Purpose: zsh script to test zpwr verb definitions and execution
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# ZPWR_VERBS map key presence
#--------------------------------------------------------------
@test 'ZPWR_VERBS[about]' {
    run test -n "${(qqq)ZPWR_VERBS[about]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[banner]' {
    run test -n "${(qqq)ZPWR_VERBS[banner]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannercounts]' {
    run test -n "${(qqq)ZPWR_VERBS[bannercounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadcount]' {
    run test -n "${(qqq)ZPWR_VERBS[autoloadcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadlist]' {
    run test -n "${(qqq)ZPWR_VERBS[autoloadlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[background]' {
    run test -n "${(qqq)ZPWR_VERBS[background]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cat]' {
    run test -n "${(qqq)ZPWR_VERBS[cat]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cd]' {
    run test -n "${(qqq)ZPWR_VERBS[cd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirs]' {
    run test -n "${(qqq)ZPWR_VERBS[cleandirs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest]' {
    run test -n "${(qqq)ZPWR_VERBS[colortest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compile]' {
    run test -n "${(qqq)ZPWR_VERBS[compile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[completions]' {
    run test -n "${(qqq)ZPWR_VERBS[completions]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[edit]' {
    run test -n "${(qqq)ZPWR_VERBS[edit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcounts]' {
    run test -n "${(qqq)ZPWR_VERBS[envcounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forward]' {
    run test -n "${(qqq)ZPWR_VERBS[forward]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[install]' {
    run test -n "${(qqq)ZPWR_VERBS[install]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitlog]' {
    run test -n "${(qqq)ZPWR_VERBS[forgitlog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbscount]' {
    run test -n "${(qqq)ZPWR_VERBS[verbscount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ps]' {
    run test -n "${(qqq)ZPWR_VERBS[ps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reload]' {
    run test -n "${(qqq)ZPWR_VERBS[reload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reverse]' {
    run test -n "${(qqq)ZPWR_VERBS[reverse]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripts]' {
    run test -n "${(qqq)ZPWR_VERBS[scripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptcount]' {
    run test -n "${(qqq)ZPWR_VERBS[scriptcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptlist]' {
    run test -n "${(qqq)ZPWR_VERBS[scriptlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tests]' {
    run test -n "${(qqq)ZPWR_VERBS[tests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[timer]' {
    run test -n "${(qqq)ZPWR_VERBS[timer]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gittotallines]' {
    run test -n "${(qqq)ZPWR_VERBS[gittotallines]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[update]' {
    run test -n "${(qqq)ZPWR_VERBS[update]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbscount] 2' {
    run test -n "${(qqq)ZPWR_VERBS[verbscount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbslist]' {
    run test -n "${(qqq)ZPWR_VERBS[verbslist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimall]' {
    run test -n "${(qqq)ZPWR_VERBS[vimall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[poll]' {
    run test -n "${(qqq)ZPWR_VERBS[poll]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cdup]' {
    run test -n "${(qqq)ZPWR_VERBS[cdup]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backup]' {
    run test -n "${(qqq)ZPWR_VERBS[backup]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanall]' {
    run test -n "${(qqq)ZPWR_VERBS[cleanall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanlog]' {
    run test -n "${(qqq)ZPWR_VERBS[cleanlog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clone]' {
    run test -n "${(qqq)ZPWR_VERBS[clone]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcount]' {
    run test -n "${(qqq)ZPWR_VERBS[gitcontribcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcounts] 2' {
    run test -n "${(qqq)ZPWR_VERBS[envcounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[linecount]' {
    run test -n "${(qqq)ZPWR_VERBS[linecount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[relpath]' {
    run test -n "${(qqq)ZPWR_VERBS[relpath]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[urlsafe]' {
    run test -n "${(qqq)ZPWR_VERBS[urlsafe]}"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwr verb execution
#--------------------------------------------------------------
@test 'zpwr autoloadcount returns 0' {
    run zpwr autoloadcount &>/dev/null
    assert $state equals 0
}

@test 'zpwr autoloadcount output is not empty' {
    run zpwr autoloadcount
    assert "$output" is_not_empty
}

@test 'zpwr autoloadlist returns 0' {
    run zpwr autoloadlist &>/dev/null
    assert $state equals 0
}

@test 'zpwr autoloadlist output contains zpwr' {
    run zpwr autoloadlist &>/dev/null
    assert "$output" is_not_empty
    assert "$output" contains zpwr
}

@test 'zpwr verbscount returns 0' {
    run zpwr verbscount &>/dev/null
    assert $state equals 0
}

@test 'zpwr verbscount matches ZPWR_VERBS size' {
    verbscount=$(zpwr verbscount 2>/dev/null)
    assert "$verbscount" equals $#ZPWR_VERBS
}

@test 'zpwr timer pwd returns 0' {
    run zpwr timer pwd
    assert $state equals 0
}

@test 'zpwr timer pwd output contains pwd result' {
    run zpwr timer pwd
    assert "$output" contains "$PWD"
}

@test 'zpwr scriptlist contains sh' {
    run zpwr scriptlist &>/dev/null
    assert $state equals 0
    assert "$output" contains .sh
}

@test 'zpwr scriptlist contains about.sh' {
    run zpwr scriptlist &>/dev/null
    assert "$output" contains about.sh
}

@test 'zpwr verbslist contains all key verbs' {
    run zpwr verbslist &>/dev/null
    assert $state equals 0
    assert "$output" contains about
    assert "$output" contains timer
    assert "$output" contains scripts
    assert "$output" contains poll
    assert "$output" contains update
}

@test 'zpwr -- verbslist returns 0' {
    run zpwr -- verbslist &>/dev/null
    assert $state equals 0
}

@test 'zpwr envcounts returns 0' {
    run zpwr envcounts &>/dev/null
    assert $state equals 0
}

@test 'zpwr envcounts output contains Commands' {
    run zpwr envcounts
    assert "$output" contains Commands
}

@test 'zpwr envcounts output contains ZPWR' {
    run zpwr envcounts
    assert "$output" contains ZPWR
}

@test 'zpwr gitcontribcount returns 0' {
    run zpwr gitcontribcount &>/dev/null
    assert $state equals 0
}

@test 'zpwr gitcontribcount output contains Contribution' {
    run zpwr gitcontribcount
    assert "$output" contains Contribution
}

@test 'zpwr gittotallines returns 0' {
    run zpwr gittotallines &>/dev/null
    assert $state equals 0
}

@test 'zpwr gittotallines output contains Total' {
    run zpwr gittotallines
    assert "$output" contains Total
}

@test 'zpwr ps returns 0' {
    run zpwr ps &>/dev/null
    assert $state equals 0
}

@test 'zpwr -V output is not empty' {
    run zpwr -V
    assert "$output" is_not_empty
}

@test 'ZPWR_VERBS[animate]' {
    run test -n "${(qqq)ZPWR_VERBS[animate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerlolcat]' {
    run test -n "${(qqq)ZPWR_VERBS[bannerlolcat]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerpony]' {
    run test -n "${(qqq)ZPWR_VERBS[bannerpony]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannernopony]' {
    run test -n "${(qqq)ZPWR_VERBS[bannernopony]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcleancache]' {
    run test -n "${(qqq)ZPWR_VERBS[cleangitcleancache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[creategif]' {
    run test -n "${(qqq)ZPWR_VERBS[creategif]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[curl]' {
    run test -n "${(qqq)ZPWR_VERBS[curl]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[deduppaths]' {
    run test -n "${(qqq)ZPWR_VERBS[deduppaths]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execpy]' {
    run test -n "${(qqq)ZPWR_VERBS[execpy]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearch]' {
    run test -n "${(qqq)ZPWR_VERBS[filesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearchedit]' {
    run test -n "${(qqq)ZPWR_VERBS[filesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[goclean]' {
    run test -n "${(qqq)ZPWR_VERBS[goclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[google]' {
    run test -n "${(qqq)ZPWR_VERBS[google]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[openurl]' {
    run test -n "${(qqq)ZPWR_VERBS[openurl]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pstreemonitor]' {
    run test -n "${(qqq)ZPWR_VERBS[pstreemonitor]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagspygments]' {
    run test -n "${(qqq)ZPWR_VERBS[regengtagspygments]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagstype]' {
    run test -n "${(qqq)ZPWR_VERBS[regengtagstype]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[replacer]' {
    run test -n "${(qqq)ZPWR_VERBS[replacer]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reset]' {
    run test -n "${(qqq)ZPWR_VERBS[reset]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[revealrecurse]' {
    run test -n "${(qqq)ZPWR_VERBS[revealrecurse]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptnew]' {
    run test -n "${(qqq)ZPWR_VERBS[scriptnew]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[search]' {
    run test -n "${(qqq)ZPWR_VERBS[search]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[torip]' {
    run test -n "${(qqq)ZPWR_VERBS[torip]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toriprenew]' {
    run test -n "${(qqq)ZPWR_VERBS[toriprenew]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatepull]' {
    run test -n "${(qqq)ZPWR_VERBS[updatepull]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearch]' {
    run test -n "${(qqq)ZPWR_VERBS[wordsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearchedit]' {
    run test -n "${(qqq)ZPWR_VERBS[wordsearchedit]}"
    assert $state equals 0
}

