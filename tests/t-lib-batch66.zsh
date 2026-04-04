#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (catrecentfviminfo/catnviminforecentf/cd/edit/editor); wizard_pages; zpwrContribCountDirs..zpwrEmacsAllServer zsh -n; contrib/deps/emacs zpwrExists
##### Notes: Continues batch65; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (cat* tail + cd + editor)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[catrecentfviminfo]' {
    run grep -Fq 'ZPWR_VERBS[catrecentfviminfo]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[catnviminforecentf]' {
    run grep -Fq 'ZPWR_VERBS[catnviminforecentf]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cd]' {
    run grep -Fq 'ZPWR_VERBS[cd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[edit]' {
    run grep -Fq 'ZPWR_VERBS[edit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[editor]' {
    run grep -Fq 'ZPWR_VERBS[editor]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch66 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_024.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_024.zsh"
    assert $state equals 0
}

@test 'wizard page_054.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_054.zsh"
    assert $state equals 0
}

@test 'wizard page_072.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_072.zsh"
    assert $state equals 0
}

@test 'wizard page_092.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_092.zsh"
    assert $state equals 0
}

@test 'wizard page_112.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_112.zsh"
    assert $state equals 0
}

@test 'wizard page_133.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_133.zsh"
    assert $state equals 0
}

@test 'wizard page_154.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_154.zsh"
    assert $state equals 0
}

@test 'wizard page_185.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_185.zsh"
    assert $state equals 0
}

@test 'wizard page_198.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_198.zsh"
    assert $state equals 0
}

@test 'wizard page_207.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_207.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrContribCountDirs through zpwrEmacsAllServer (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrContribCountDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrContribCountDirs"
    assert $state equals 0
}

@test 'autoload common zpwrContribCountLines passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrContribCountLines"
    assert $state equals 0
}

@test 'autoload common zpwrCreateAliasCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCreateAliasCache"
    assert $state equals 0
}

@test 'autoload common zpwrCreategif passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCreategif"
    assert $state equals 0
}

@test 'autoload common zpwrDedupPaths passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDedupPaths"
    assert $state equals 0
}

@test 'autoload common zpwrDeleteLastWord passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDeleteLastWord"
    assert $state equals 0
}

@test 'autoload common zpwrDeps passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDeps"
    assert $state equals 0
}

@test 'autoload common zpwrDetachall passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDetachall"
    assert $state equals 0
}

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

@test 'autoload common zpwrEOLorNextTabStop passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEOLorNextTabStop"
    assert $state equals 0
}

@test 'autoload common zpwrEditExercism passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditExercism"
    assert $state equals 0
}

@test 'autoload common zpwrEditTag passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditTag"
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

#--------------------------------------------------------------
# zpwrExists — batch66 (contrib / deps / doctor / editor / emacs cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrContribCountDirs returns 0' {
    run zpwrExists zpwrContribCountDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrContribCountLines returns 0' {
    run zpwrExists zpwrContribCountLines
    assert $state equals 0
}

@test 'zpwrExists zpwrCreateAliasCache returns 0' {
    run zpwrExists zpwrCreateAliasCache
    assert $state equals 0
}

@test 'zpwrExists zpwrDedupPaths returns 0' {
    run zpwrExists zpwrDedupPaths
    assert $state equals 0
}

@test 'zpwrExists zpwrDeps returns 0' {
    run zpwrExists zpwrDeps
    assert $state equals 0
}

@test 'zpwrExists zpwrDetachall returns 0' {
    run zpwrExists zpwrDetachall
    assert $state equals 0
}

@test 'zpwrExists zpwrDfimage returns 0' {
    run zpwrExists zpwrDfimage
    assert $state equals 0
}

@test 'zpwrExists zpwrDoctor returns 0' {
    run zpwrExists zpwrDoctor
    assert $state equals 0
}

@test 'zpwrExists zpwrEditTag returns 0' {
    run zpwrExists zpwrEditTag
    assert $state equals 0
}

@test 'zpwrExists zpwrEditor returns 0' {
    run zpwrExists zpwrEditor
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsAllServer returns 0' {
    run zpwrExists zpwrEmacsAllServer
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists expr seq returns 0' {
    run zpwrCommandExists expr seq
    assert $state equals 0
}

@test 'zpwrCommandExists join comm returns 0' {
    run zpwrCommandExists join comm
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
