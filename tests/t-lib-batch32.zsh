#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrBind*–zpwrCd autoload zsh -n
##### Notes: Continues batch31 zpwr* cluster; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[regen]' {
    run grep -Fq 'ZPWR_VERBS[regen]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[reveal]' {
    run grep -Fq 'ZPWR_VERBS[reveal]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[replacer]' {
    run grep -Fq 'ZPWR_VERBS[replacer]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[revealrecurse]' {
    run grep -Fq 'ZPWR_VERBS[revealrecurse]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[recompilefpath]' {
    run grep -Fq 'ZPWR_VERBS[recompilefpath]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch32 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_003.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_003.zsh"
    assert $state equals 0
}

@test 'wizard page_015.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_015.zsh"
    assert $state equals 0
}

@test 'wizard page_040.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_040.zsh"
    assert $state equals 0
}

@test 'wizard page_065.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_065.zsh"
    assert $state equals 0
}

@test 'wizard page_095.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_095.zsh"
    assert $state equals 0
}

@test 'wizard page_110.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_110.zsh"
    assert $state equals 0
}

@test 'wizard page_135.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_135.zsh"
    assert $state equals 0
}

@test 'wizard page_155.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_155.zsh"
    assert $state equals 0
}

@test 'wizard page_180.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_180.zsh"
    assert $state equals 0
}

@test 'wizard page_195.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_195.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrBindFZFLate through zpwrCd)
#--------------------------------------------------------------
@test 'autoload common zpwrBindFZFLate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindFZFLate"
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

@test 'autoload common zpwrPrecmdAsync passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPrecmdAsync"
    assert $state equals 0
}

@test 'zpwrBindPrecmd keeps hooks synchronous under stock zsh' {
    local out
    out=$(zsh -fc 'fpath=('"$ZPWR"'/autoload/common $fpath); autoload -Uz zpwrBindPrecmd; precmd_functions=(_p9k_do_nothing _p9k_precmd); zpwrBindPrecmd; print "${(j:,:)precmd_functions}|${(j:,:)async_precmd_functions}"')
    assert "$out" same_as 'zpwrPrecmd,_p9k_do_nothing,_p9k_precmd|'
}

@test 'zpwrBindPrecmd defers only ZPWR_PRECMD_ASYNC_HOOKS under zshrs' {
    local out
    out=$(zsh -fc 'fpath=('"$ZPWR"'/autoload/common $fpath); autoload -Uz zpwrBindPrecmd zpwrPrecmdAsync; ZSHRS_VERSION=0.0.0; ZPWR_PRECMD_ASYNC_HOOKS=zpwrPrecmd; precmd_functions=(_zshz_precmd __zbrowse_precmd); zpwrBindPrecmd; print "${(j:,:)precmd_functions}|${(j:,:)async_precmd_functions}"')
    assert "$out" same_as 'zpwrPrecmdAsync,_zshz_precmd,__zbrowse_precmd|zpwrPrecmd'
}

@test 'zpwrPrecmdAsync returns an unlisted hook to precmd_functions' {
    local out
    out=$(zsh -fc 'fpath=('"$ZPWR"'/autoload/common $fpath); autoload -Uz zpwrPrecmdAsync; ZPWR_PRECMD_ASYNC_HOOKS=zpwrPrecmd; precmd_functions=(zpwrPrecmdAsync _jenv_export_hook); async_precmd_functions=(zpwrPrecmd __zbrowse_precmd); zpwrPrecmdAsync; zpwrPrecmdAsync; print "${(j:,:)precmd_functions}|${(j:,:)async_precmd_functions}"')
    assert "$out" same_as 'zpwrPrecmdAsync,_jenv_export_hook,__zbrowse_precmd|zpwrPrecmd'
}

@test 'zpwrPrecmdAsync defers a hook opted in after the initial bind' {
    local out
    out=$(zsh -fc 'fpath=('"$ZPWR"'/autoload/common $fpath); autoload -Uz zpwrBindPrecmd zpwrPrecmdAsync; ZSHRS_VERSION=0.0.0; ZPWR_PRECMD_ASYNC_HOOKS=zpwrPrecmd; precmd_functions=(_zshz_precmd); zpwrBindPrecmd; ZPWR_PRECMD_ASYNC_HOOKS="zpwrPrecmd _zshz_precmd"; zpwrPrecmdAsync; zpwrPrecmdAsync; print "${(j:,:)precmd_functions}|${(j:,:)async_precmd_functions}"')
    assert "$out" same_as 'zpwrPrecmdAsync|zpwrPrecmd,_zshz_precmd'
}


@test 'autoload common zpwrBindPreexecChpwd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPreexecChpwd"
    assert $state equals 0
}

@test 'autoload common zpwrBindVerbs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindVerbs"
    assert $state equals 0
}

@test 'autoload common zpwrBindZdharma passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZdharma"
    assert $state equals 0
}

@test 'autoload common zpwrBindZdharmaPost passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZdharmaPost"
    assert $state equals 0
}

@test 'autoload common zpwrBindZstyle passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZstyle"
    assert $state equals 0
}

@test 'autoload common zpwrCat passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCat"
    assert $state equals 0
}

@test 'autoload common zpwrCatNvimOrVimInfo passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCatNvimOrVimInfo"
    assert $state equals 0
}

@test 'autoload common zpwrCCommon passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCCommon"
    assert $state equals 0
}

@test 'autoload common zpwrCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCd"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch32 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrBindFZFLate returns 0' {
    run zpwrExists zpwrBindFZFLate
    assert $state equals 0
}

@test 'zpwrExists zpwrBindPowerline returns 0' {
    run zpwrExists zpwrBindPowerline
    assert $state equals 0
}

@test 'zpwrExists zpwrBindVerbs returns 0' {
    run zpwrExists zpwrBindVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrBindZdharma returns 0' {
    run zpwrExists zpwrBindZdharma
    assert $state equals 0
}

@test 'zpwrExists zpwrBindPrecmd returns 0' {
    run zpwrExists zpwrBindPrecmd
    assert $state equals 0
}

@test 'zpwrExists zpwrBindOverrideOMZ returns 0' {
    run zpwrExists zpwrBindOverrideOMZ
    assert $state equals 0
}

@test 'zpwrExists zpwrCat returns 0' {
    run zpwrExists zpwrCat
    assert $state equals 0
}

@test 'zpwrExists zpwrCd returns 0' {
    run zpwrExists zpwrCd
    assert $state equals 0
}

@test 'zpwrExists zpwrCatNvimOrVimInfo returns 0' {
    run zpwrExists zpwrCatNvimOrVimInfo
    assert $state equals 0
}

@test 'zpwrExists zpwrCCommon returns 0' {
    run zpwrExists zpwrCCommon
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists df du returns 0' {
    run zpwrCommandExists df du
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'repo .zpwr_root marker exists' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'ci workflow file exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'license.md exists' {
    run test -f "$ZPWR/license.md"
    assert $state equals 0
}
