#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (autoload/autoloadcount/autoloadlist/background/backup); wizard_pages; zpwrBannerLolcat..zpwrBindVerbs zsh -n; bind-cluster zpwrExists
##### Notes: Continues batch62; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (autoload + backup)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[autoload]' {
    run grep -Fq 'ZPWR_VERBS[autoload]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[autoloadcount]' {
    run grep -Fq 'ZPWR_VERBS[autoloadcount]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[autoloadlist]' {
    run grep -Fq 'ZPWR_VERBS[autoloadlist]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[background]' {
    run grep -Fq 'ZPWR_VERBS[background]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[backup]' {
    run grep -Fq 'ZPWR_VERBS[backup]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch63 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_021.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_021.zsh"
    assert $state equals 0
}

@test 'wizard page_051.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_051.zsh"
    assert $state equals 0
}

@test 'wizard page_069.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_069.zsh"
    assert $state equals 0
}

@test 'wizard page_089.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_089.zsh"
    assert $state equals 0
}

@test 'wizard page_109.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_109.zsh"
    assert $state equals 0
}

@test 'wizard page_130.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_130.zsh"
    assert $state equals 0
}

@test 'wizard page_151.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_151.zsh"
    assert $state equals 0
}

@test 'wizard page_182.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_182.zsh"
    assert $state equals 0
}

@test 'wizard page_195.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_195.zsh"
    assert $state equals 0
}

@test 'wizard page_204.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_204.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrBannerLolcat through zpwrBindVerbs (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrBannerLolcat passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBannerLolcat"
    assert $state equals 0
}

@test 'autoload common zpwrBench passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBench"
    assert $state equals 0
}

@test 'autoload common zpwrBindAliasesLate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindAliasesLate"
    assert $state equals 0
}

@test 'autoload common zpwrBindAliasesZshLate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindAliasesZshLate"
    assert $state equals 0
}

@test 'autoload common zpwrBindDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindDirs"
    assert $state equals 0
}

@test 'autoload common zpwrBindFZFLate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindFZFLate"
    assert $state equals 0
}

@test 'autoload common zpwrBindFinal passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindFinal"
    assert $state equals 0
}

@test 'autoload common zpwrBindForGit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindForGit"
    assert $state equals 0
}

@test 'autoload common zpwrBindHistorySubstring passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindHistorySubstring"
    assert $state equals 0
}

@test 'autoload common zpwrBindInterceptSurround passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindInterceptSurround"
    assert $state equals 0
}

@test 'autoload common zpwrBindOverrideAutoComplete passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindOverrideAutoComplete"
    assert $state equals 0
}

@test 'autoload common zpwrBindOverrideOMZ passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindOverrideOMZ"
    assert $state equals 0
}

@test 'autoload common zpwrBindOverrideOMZCompdefs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindOverrideOMZCompdefs"
    assert $state equals 0
}

@test 'autoload common zpwrBindOverrideZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindOverrideZLE"
    assert $state equals 0
}

@test 'autoload common zpwrBindPenultimate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPenultimate"
    assert $state equals 0
}

@test 'autoload common zpwrBindPowerline passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPowerline"
    assert $state equals 0
}

@test 'autoload common zpwrBindPowerlineTmux passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPowerlineTmux"
    assert $state equals 0
}

@test 'autoload common zpwrBindPrecmd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPrecmd"
    assert $state equals 0
}

@test 'autoload common zpwrBindPreexecChpwd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPreexecChpwd"
    assert $state equals 0
}

@test 'autoload common zpwrBindVerbs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindVerbs"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch63 (banner/bench/bind override cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrBannerLolcat returns 0' {
    run zpwrExists zpwrBannerLolcat
    assert $state equals 0
}

@test 'zpwrExists zpwrBench returns 0' {
    run zpwrExists zpwrBench
    assert $state equals 0
}

@test 'zpwrExists zpwrBindAliasesZshLate returns 0' {
    run zpwrExists zpwrBindAliasesZshLate
    assert $state equals 0
}

@test 'zpwrExists zpwrBindFinal returns 0' {
    run zpwrExists zpwrBindFinal
    assert $state equals 0
}

@test 'zpwrExists zpwrBindHistorySubstring returns 0' {
    run zpwrExists zpwrBindHistorySubstring
    assert $state equals 0
}

@test 'zpwrExists zpwrBindInterceptSurround returns 0' {
    run zpwrExists zpwrBindInterceptSurround
    assert $state equals 0
}

@test 'zpwrExists zpwrBindOverrideAutoComplete returns 0' {
    run zpwrExists zpwrBindOverrideAutoComplete
    assert $state equals 0
}

@test 'zpwrExists zpwrBindOverrideOMZ returns 0' {
    run zpwrExists zpwrBindOverrideOMZ
    assert $state equals 0
}

@test 'zpwrExists zpwrBindOverrideOMZCompdefs returns 0' {
    run zpwrExists zpwrBindOverrideOMZCompdefs
    assert $state equals 0
}

@test 'zpwrExists zpwrBindOverrideZLE returns 0' {
    run zpwrExists zpwrBindOverrideZLE
    assert $state equals 0
}

@test 'zpwrExists zpwrBindPenultimate returns 0' {
    run zpwrExists zpwrBindPenultimate
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists cat tee returns 0' {
    run zpwrCommandExists cat tee
    assert $state equals 0
}

@test 'zpwrCommandExists sort uniq returns 0' {
    run zpwrCommandExists sort uniq
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'ci.yml workflow exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'tests test_lib.zsh exists' {
    run test -f "$ZPWR/tests/test_lib.zsh"
    assert $state equals 0
}

@test 'install zpwr.yml exists' {
    run test -f "$ZPWR/install/zpwr.yml"
    assert $state equals 0
}
