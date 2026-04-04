#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrDfimage–zpwrEmacsPluginList autoload zsh -n
##### Notes: Continues batch34 after zpwrDetachall; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after startsend)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[startsendfull]' {
    run grep -Fq 'ZPWR_VERBS[startsendfull]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[stopsend]' {
    run grep -Fq 'ZPWR_VERBS[stopsend]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[startauto]' {
    run grep -Fq 'ZPWR_VERBS[startauto]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[stopauto]' {
    run grep -Fq 'ZPWR_VERBS[stopauto]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[subcommands]' {
    run grep -Fq 'ZPWR_VERBS[subcommands]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch35 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_006.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_006.zsh"
    assert $state equals 0
}

@test 'wizard page_013.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_013.zsh"
    assert $state equals 0
}

@test 'wizard page_022.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_022.zsh"
    assert $state equals 0
}

@test 'wizard page_055.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_055.zsh"
    assert $state equals 0
}

@test 'wizard page_068.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_068.zsh"
    assert $state equals 0
}

@test 'wizard page_092.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_092.zsh"
    assert $state equals 0
}

@test 'wizard page_108.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_108.zsh"
    assert $state equals 0
}

@test 'wizard page_132.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_132.zsh"
    assert $state equals 0
}

@test 'wizard page_160.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_160.zsh"
    assert $state equals 0
}

@test 'wizard page_195.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_195.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrDfimage through zpwrEmacsPluginList)
#--------------------------------------------------------------
@test 'autoload common zpwrDfimage passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDfimage"
    assert $state equals 0
}

@test 'autoload common zpwrDockerWipe passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDockerWipe"
    assert $state equals 0
}

@test 'autoload common zpwrDoctor passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDoctor"
    assert $state equals 0
}

@test 'autoload common zpwrEditExercism passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditExercism"
    assert $state equals 0
}

@test 'autoload common zpwrEditor passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditor"
    assert $state equals 0
}

@test 'autoload common zpwrEditorRecent passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditorRecent"
    assert $state equals 0
}

@test 'autoload common zpwrEditorRecentCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditorRecentCd"
    assert $state equals 0
}

@test 'autoload common zpwrEditTag passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditTag"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAll"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsAllEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAllEdit"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsAllServer passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAllServer"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsAutoload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAutoload"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsEmacsConfig passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsEmacsConfig"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzf"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzfFilesearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfFilesearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzfFilesearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzfWordsearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfWordsearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzfWordsearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsPluginCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsPluginCount"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsPluginList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsPluginList"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch35 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrDfimage returns 0' {
    run zpwrExists zpwrDfimage
    assert $state equals 0
}

@test 'zpwrExists zpwrDockerWipe returns 0' {
    run zpwrExists zpwrDockerWipe
    assert $state equals 0
}

@test 'zpwrExists zpwrDoctor returns 0' {
    run zpwrExists zpwrDoctor
    assert $state equals 0
}

@test 'zpwrExists zpwrEditor returns 0' {
    run zpwrExists zpwrEditor
    assert $state equals 0
}

@test 'zpwrExists zpwrEditTag returns 0' {
    run zpwrExists zpwrEditTag
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsAll returns 0' {
    run zpwrExists zpwrEmacsAll
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsFzf returns 0' {
    run zpwrExists zpwrEmacsFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsPluginCount returns 0' {
    run zpwrExists zpwrEmacsPluginCount
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsPluginList returns 0' {
    run zpwrExists zpwrEmacsPluginList
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsRecent returns 0' {
    run zpwrExists zpwrEmacsRecent
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsScripts returns 0' {
    run zpwrExists zpwrEmacsScripts
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists sort uniq returns 0' {
    run zpwrCommandExists sort uniq
    assert $state equals 0
}

@test 'zpwrCommandExists xargs printf returns 0' {
    run zpwrCommandExists xargs printf
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
