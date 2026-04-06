#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (cleandirs/cleandirsandtemp/cleanall/cleanlog/cleancache); wizard_pages; zpwrFlame..zpwrFzfFilesearchVerbEdit zsh -n; flame/fordir/fzf zpwrExists
##### Notes: Continues batch68; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (clean* cluster)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[cleandirs]' {
    run grep -Fq 'ZPWR_VERBS[cleandirs]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleandirsandtemp]' {
    run grep -Fq 'ZPWR_VERBS[cleandirsandtemp]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleanall]' {
    run grep -Fq 'ZPWR_VERBS[cleanall]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleanlog]' {
    run grep -Fq 'ZPWR_VERBS[cleanlog]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleancache]' {
    run grep -Fq 'ZPWR_VERBS[cleancache]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch69 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_027.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_027.zsh"
    assert $state equals 0
}

@test 'wizard page_057.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_057.zsh"
    assert $state equals 0
}

@test 'wizard page_075.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_075.zsh"
    assert $state equals 0
}

@test 'wizard page_095.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_095.zsh"
    assert $state equals 0
}

@test 'wizard page_115.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_115.zsh"
    assert $state equals 0
}

@test 'wizard page_136.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_136.zsh"
    assert $state equals 0
}

@test 'wizard page_157.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_157.zsh"
    assert $state equals 0
}

@test 'wizard page_188.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_188.zsh"
    assert $state equals 0
}

@test 'wizard page_201.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_201.zsh"
    assert $state equals 0
}

@test 'wizard page_206.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_206.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrFlame through zpwrFzfFilesearchVerbEdit (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrFlame passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFlame"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirs"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirsClean passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsClean"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirsDirty passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsDirty"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirsRefreshClean passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsRefreshClean"
    assert $state equals 0
}

@test 'autoload common zpwrForAllGitDirsRefreshDirty passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsRefreshDirty"
    assert $state equals 0
}

@test 'autoload common zpwrFordir passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFordir"
    assert $state equals 0
}

@test 'autoload common zpwrFordirUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFordirUpdate"
    assert $state equals 0
}

@test 'autoload common zpwrFortune passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFortune"
    assert $state equals 0
}

@test 'autoload common zpwrFuncRank passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFuncRank"
    assert $state equals 0
}

@test 'autoload common zpwrFzfAllKeybind passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfAllKeybind"
    assert $state equals 0
}

@test 'autoload common zpwrFzfCommits passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfCommits"
    assert $state equals 0
}

@test 'autoload common zpwrFzfDirSearch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfDirSearch"
    assert $state equals 0
}

@test 'autoload common zpwrFzfDirsearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfDirsearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFzfEnv passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnv"
    assert $state equals 0
}

@test 'autoload common zpwrFzfEnvVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnvVerbAccept"
    assert $state equals 0
}

@test 'autoload common zpwrFzfEnvVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnvVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrFzfFileSearch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFileSearch"
    assert $state equals 0
}

@test 'autoload common zpwrFzfFilesearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFilesearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFzfFilesearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFilesearchVerbEdit"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch69 (flame / for-all-git-dirs / fordir / fortune / fzf cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrFlame returns 0' {
    run zpwrExists zpwrFlame
    assert $state equals 0
}

@test 'zpwrExists zpwrForAllGitDirs returns 0' {
    run zpwrExists zpwrForAllGitDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrForAllGitDirsClean returns 0' {
    run zpwrExists zpwrForAllGitDirsClean
    assert $state equals 0
}

@test 'zpwrExists zpwrForAllGitDirsDirty returns 0' {
    run zpwrExists zpwrForAllGitDirsDirty
    assert $state equals 0
}

@test 'zpwrExists zpwrFordir returns 0' {
    run zpwrExists zpwrFordir
    assert $state equals 0
}

@test 'zpwrExists zpwrFortune returns 0' {
    run zpwrExists zpwrFortune
    assert $state equals 0
}

@test 'zpwrExists zpwrFuncRank returns 0' {
    run zpwrExists zpwrFuncRank
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfAllKeybind returns 0' {
    run zpwrExists zpwrFzfAllKeybind
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfCommits returns 0' {
    run zpwrExists zpwrFzfCommits
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfEnv returns 0' {
    run zpwrExists zpwrFzfEnv
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfFilesearchVerb returns 0' {
    run zpwrExists zpwrFzfFilesearchVerb
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists uname arch returns 0' {
    run zpwrCommandExists uname arch
    assert $state equals 0
}

@test 'zpwrCommandExists id groups returns 0' {
    run zpwrCommandExists id groups
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
