#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: Additional lib.sh / path / tooling coverage
##### Notes: Complements t-lib-commands.zsh; keep commands portable Linux+macOS
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Repo bootstrap scripts
#--------------------------------------------------------------
@test 'scripts/init.sh exists' {
    run test -f "$ZPWR/scripts/init.sh"
    assert $state equals 0
}

@test 'scripts/init.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/init.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Core path / disk commands
#--------------------------------------------------------------
@test 'zpwrCommandExists du returns 0' {
    run zpwrCommandExists du
    assert $state equals 0
}

@test 'zpwrCommandExists df returns 0' {
    run zpwrCommandExists df
    assert $state equals 0
}

@test 'zpwrCommandExists seq returns 0' {
    run zpwrCommandExists seq
    assert $state equals 0
}

@test 'zpwrCommandExists uname returns 0' {
    run zpwrCommandExists uname
    assert $state equals 0
}

@test 'zpwrCommandExists arch returns 0' {
    run zpwrCommandExists arch
    assert $state equals 0
}

@test 'zpwrCommandExists ssh returns 0' {
    run zpwrCommandExists ssh
    assert $state equals 0
}

@test 'zpwrCommandExists scp returns 0' {
    run zpwrCommandExists scp
    assert $state equals 0
}

@test 'zpwrCommandExists rsync returns 0' {
    run zpwrCommandExists rsync
    assert $state equals 0
}

@test 'zpwrCommandExists ping returns 0' {
    run zpwrCommandExists ping
    assert $state equals 0
}

#--------------------------------------------------------------
# Networking / DNS helpers (often present on dev + CI images)
#--------------------------------------------------------------
@test 'zpwrCommandExists hostname returns 0' {
    run zpwrCommandExists hostname
    assert $state equals 0
}

#--------------------------------------------------------------
# Editors (CI installs vim; vi is typically the vim alternative)
#--------------------------------------------------------------
@test 'zpwrCommandExists vi returns 0' {
    run zpwrCommandExists vi
    assert $state equals 0
}

#--------------------------------------------------------------
# Shell builtins exposed as externals on some systems — skip; use file ops
#--------------------------------------------------------------
@test 'zpwrCommandExists ln returns 0' {
    run zpwrCommandExists ln
    assert $state equals 0
}

@test 'zpwrCommandExists rmdir returns 0' {
    run zpwrCommandExists rmdir
    assert $state equals 0
}

#--------------------------------------------------------------
# Time / locale
#--------------------------------------------------------------
@test 'zpwrCommandExists locale returns 0' {
    run zpwrCommandExists locale
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrStdinExists / zpwrPrettyPrint round-trip
#--------------------------------------------------------------
@test 'zpwrStdinExists echoes piped line' {
    local out
    out=$(printf 'pipemoreuniq001\n' | zpwrStdinExists arglbl)
    assert "$out" contains pipemoreuniq001
}

@test 'zpwrPrettyPrint single token contains token' {
    run zpwrPrettyPrint "ppmoreuniq002" 2>&1
    assert $state equals 0
    assert "$output" contains ppmoreuniq002
}

#--------------------------------------------------------------
# zpwrIsGitDir / git
#--------------------------------------------------------------
@test 'git command exists' {
    run zpwrCommandExists git
    assert $state equals 0
}

@test 'zpwrIsGitDir in loaded tree returns 0' {
    run zpwrIsGitDir
    assert $state equals 0
}

#--------------------------------------------------------------
# bash lib smoke (subset)
#--------------------------------------------------------------
@test 'bash zpwrHumanReadable via pipe' {
    run bash -c "source $ZPWR_LIB; echo 2048 | zpwrHumanReadable"
    assert $state equals 0
}

@test 'bash zpwrIsZsh is false' {
    run bash -c "source $ZPWR_LIB; zpwrIsZsh"
    assert $state equals 1
}

#--------------------------------------------------------------
# ZPWR_VERBS spot checks (subset of t-new-verbs)
#--------------------------------------------------------------
@test 'ZPWR_VERBS bench key set' {
    run test -n "${ZPWR_VERBS[bench]+x}"
    assert $state equals 0
}

@test 'ZPWR_VERBS wizard key set' {
    run test -n "${ZPWR_VERBS[wizard]+x}"
    assert $state equals 0
}

@test 'ZPWR_VERBS doctor key set' {
    run test -n "${ZPWR_VERBS[doctor]+x}"
    assert $state equals 0
}

@test 'ZPWR_VERBS top key set' {
    run test -n "${ZPWR_VERBS[top]+x}"
    assert $state equals 0
}

@test 'ZPWR_VERBS flame key set' {
    run test -n "${ZPWR_VERBS[flame]+x}"
    assert $state equals 0
}

@test 'ZPWR_VERBS trace key set' {
    run test -n "${ZPWR_VERBS[trace]+x}"
    assert $state equals 0
}

@test 'ZPWR_VERBS deps key set' {
    run test -n "${ZPWR_VERBS[deps]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# fpath / autoload sanity
#--------------------------------------------------------------
@test 'zpwr exists as callable' {
    run zpwrExists zpwr
    assert $state equals 0
}

@test 'zpwrBindVerbs is defined' {
    run zpwrExists zpwrBindVerbs
    assert $state equals 0
}

#--------------------------------------------------------------
# Common pipeline utilities (POSIX / ubiquitous)
#--------------------------------------------------------------
@test 'zpwrCommandExists awk returns 0' {
    run zpwrCommandExists awk
    assert $state equals 0
}

@test 'zpwrCommandExists sed returns 0' {
    run zpwrCommandExists sed
    assert $state equals 0
}

@test 'zpwrCommandExists grep returns 0' {
    run zpwrCommandExists grep
    assert $state equals 0
}

@test 'zpwrCommandExists egrep returns 0' {
    run zpwrCommandExists egrep
    assert $state equals 0
}

@test 'zpwrCommandExists fgrep returns 0' {
    run zpwrCommandExists fgrep
    assert $state equals 0
}

@test 'zpwrCommandExists cut returns 0' {
    run zpwrCommandExists cut
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

@test 'zpwrCommandExists xargs returns 0' {
    run zpwrCommandExists xargs
    assert $state equals 0
}

@test 'zpwrCommandExists find returns 0' {
    run zpwrCommandExists find
    assert $state equals 0
}

@test 'zpwrCommandExists sync returns 0' {
    run zpwrCommandExists sync
    assert $state equals 0
}

@test 'zpwrCommandExists true returns 0' {
    run zpwrCommandExists true
    assert $state equals 0
}

@test 'zpwrCommandExists false returns 0' {
    run zpwrCommandExists false
    assert $state equals 0
}
