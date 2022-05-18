#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Sep 18 15:53:09 EDT 2019
##### Purpose: bash script to run zpwr subcommands
##### Notes: escape $ in comments for perl subs
#}}}***********************************************************

if ! (( $+ZPWR_VERBS )) || [[ ${parameters[ZPWR_VERBS]} != association ]]; then

    declare -Ag ZPWR_VERBS
fi

if ! (( $+ZPWR_VARS )) || [[ ${parameters[ZPWR_VARS]} != association ]]; then
    declare -Ag ZPWR_VARS
fi

ZPWR_VARS[VERB_0]="$0"

() {
    local k v verb cmd found ret exp
    emulate -L zsh
    setopt nullglob globdots extendedglob


    ZPWR_VERBS[about]='zpwrAbout=show $ZPWR_REPO_NAME banner'
    ZPWR_VERBS[a]='zpwrCleanRefreshCountsTestUpdate=banner, counts, clean, refresh zwc, test and update deps'
    ZPWR_VERBS[alacritty]='zpwrAlacritty=edit $ZPWR_ALACRITTY_CFG'
    ZPWR_VERBS[all]='zpwrCleanRefreshCountsTestUpdate=banner, counts, clean, refresh zwc, test and update deps'
    ZPWR_VERBS[allsearch]='zpwrFzfAllKeybind=search all keybindings'
    ZPWR_VERBS[altprettyprint]='zpwrAlternatingPrettyPrint=pretty with alternating color'
    ZPWR_VERBS[attach]='tmux attach-session=attach to tmux session'
    ZPWR_VERBS[autoload]='zal=cd to autoload directory'
    ZPWR_VERBS[autoloadcount]='zpwrAutoloadCount=total number of autoloads in $ZPWR'
    ZPWR_VERBS[autoloadlist]='zpwrAutoloadList=total list of autoloads in $ZPWR'
    ZPWR_VERBS[background]='b=run arg in background'
    ZPWR_VERBS[backup]='zpwrBackup=backup files'
    ZPWR_VERBS[backuphistory]='zpwrBackupHistfile=backup $HISTFILE'
    ZPWR_VERBS[banner]='zpwrAbout=show $ZPWR_REPO_NAME banner'
    ZPWR_VERBS[bannercounts]='zpwrBannerCounts=show $ZPWR_REPO_NAME banner and env counts'
    ZPWR_VERBS[brc]='brc=shell aliases file vim session'
    ZPWR_VERBS[c]='zpwrCat=zpwr cat args'
    ZPWR_VERBS[cat]='zpwrCat=zpwr cat args'
    ZPWR_VERBS[catcd]='cca=cat and cd to first dir'
    ZPWR_VERBS[catviminfo]='zpwrCatNvimOrVimInfo=cat custom vim info file'
    ZPWR_VERBS[catrecentfviminfo]='zpwrRecentfThenNvim=cat recentf then custom vim info file'
    ZPWR_VERBS[catnviminforecentf]='zpwrNvimThenRecentf=cat custom vim info file then recentf'
    ZPWR_VERBS[cd]='zpwrCd=cd to directory arg'
    ZPWR_VERBS[cdup]='zpwrCdUp=cd up tree to directory arg'
    ZPWR_VERBS[cfasd]='zpwrFasdFListVerb=c the fasd frecency ranked file'
    ZPWR_VERBS[changenamezpwr]='zpwrChangeNameZpwr=mv into zpwr namespace and sed sub all occurrences'
    ZPWR_VERBS[changename]='zpwrChangeName=mv dir into a namespace and sed sub all occurrences'
    ZPWR_VERBS[cleandirs]='zpwrCleanDirs=clear all $ZPWR_DIRS_CLEAN'
    ZPWR_VERBS[cleandirsandtemp]='zpwrCleanDirsAndTemp=clear all $ZPWR_DIRS_CLEAN and temp'
    ZPWR_VERBS[cleanall]='zpwrCleanAll=clear all $ZPWR_DIRS_CLEAN, temp and cache'
    ZPWR_VERBS[cleanlog]='zpwrCleanLog=clear $ZPWR_LOGFILE'
    ZPWR_VERBS[cleancache]='zpwrCleanCache=clean all zpwr cache files'
    ZPWR_VERBS[cleangitcache]='zpwrCleanGitRepoCache=clean all git repo cache files'
    ZPWR_VERBS[cleangitdirtycache]='zpwrCleanGitRepoDirtyCache=clean all git repo dirty cache files'
    ZPWR_VERBS[cleancompcache]='zpwrCleanCompCache=clean all zpwr compsys cache files'
    ZPWR_VERBS[cleanrefreshupdate]='zpwrCleanRefreshUpdate=clean, refresh zwc and update deps'
    ZPWR_VERBS[cleanupdatedeps]='zpwrCleanUpdateDeps=clean and update deps'
    ZPWR_VERBS[cleantemp]='zpwrCleanTemp=clean all zpwr temp files'
    ZPWR_VERBS[clearls]='zpwrClearList=clear and list the files with no args'
    ZPWR_VERBS[clearlist]='zpwrClearList=clear and list the files with no args'
    ZPWR_VERBS[clone]='gcl=clone and cd to arg'
    ZPWR_VERBS[colortest]='zpwrColorTest=test colors'
    ZPWR_VERBS[colortest256]='zpwr256ColorTest=test 256 colors'
    ZPWR_VERBS[zpwrCloneToForked]='zpwrCloneToForked=clone $ZPWR_REPO_NAME to $ZPWR_FORKED_DIR'
    ZPWR_VERBS[colorsdiff]='gsdc=colorized side diff'
    ZPWR_VERBS[color2]='color2=turn on stderr filter'
    ZPWR_VERBS[compile]='zpwrRecompile=recompile all cache comps'
    ZPWR_VERBS[compilefpath]='zpwrRecompileFpath=recompile all fpath cache comps'
    ZPWR_VERBS[compilefiles]='zpwrRecompileFiles=recompile all files cache comps'
    ZPWR_VERBS[comps]='zco=cd to completion directory'
    ZPWR_VERBS[completions]='zco=cd to completion directory'
    ZPWR_VERBS[copycommand]='zpwrGetCopyCommand=get the command to copy with system'
    ZPWR_VERBS[decompile]='zpwrUncompile=delete all cache comps'
    ZPWR_VERBS[detach]='zpwrDetachall=detach from all tmux sessions'
    ZPWR_VERBS[digs]='digs=run series on networking commands on arg'
    ZPWR_VERBS[dirsearch]='zpwrFzfDirsearchVerb=cd to a sub dir'
    ZPWR_VERBS[dfimage]='zpwrDfimage=cat Dockerfile from IMAGE_ID'
    ZPWR_VERBS[exercism]='zpwrOpenExercism=go to Exercism home page'
    ZPWR_VERBS[homeexercism]='cd $HOME/Exercism=cd to $HOME/Exercism'
    ZPWR_VERBS[exercismdownload]='zpwrExercismDownloadAll=download all for track'
    ZPWR_VERBS[exists]='zpwrExists=check if identifier is valid'
    ZPWR_VERBS[existscommand]='zpwrCommandExists=check if command is valid'
    ZPWR_VERBS[emacstokens]='etok=emacs the .tokens.sh file'
    ZPWR_VERBS[emacsconfig]='econf=emacs all zpwr configs'
    ZPWR_VERBS[emacsall]='zpwrEmacsAll=emacs all zpwr files for :argdo'
    ZPWR_VERBS[emacsallserver]='zpwrEmacsAllServer=emacs all zpwr files for :argdo'
    ZPWR_VERBS[emacsalledit]='zpwrEmacsAllEdit=emacs edit 1 or more configs'
    ZPWR_VERBS[emacsautoload]='zpwrEmacsAutoload=emacs all autoloads :argdo'
    ZPWR_VERBS[emacscd]='ce=emacs edit and cd to first dir'
    ZPWR_VERBS[emacsplugincount]='zpwrEmacsPluginCount=total number of emacs plugins in $ZPWR'
    ZPWR_VERBS[emacspluginlist]='zpwrEmacsPluginList=total list of emacs plugins in $ZPWR'
    ZPWR_VERBS[emacsrecent]='zpwrEmacsRecent=emacs edit most recent editor files'
    ZPWR_VERBS[emacsrecentsudo]='zpwrSudoEmacsRecent=sudo emacs edit most recent editor files'
    ZPWR_VERBS[emacsrecentcd]='zpwrEmacsRecentCd=cd and emacs edit most recent editor files'
    ZPWR_VERBS[emacsrecentsudocd]='zpwrSudoEmacsRecentCd=cd and sudo emacs edit most recent editor files'
    ZPWR_VERBS[emacszpwr]='zpwrEmacsZpwr=emacs zpwr dir'
    ZPWR_VERBS[emacsemacsconfig]='zpwrEmacsEmacsConfig=emacs edit emacs zpwr configs'
    ZPWR_VERBS[emacsscripts]='zpwrEmacsScripts=emacs all zpwr scripts for :argdo'
    ZPWR_VERBS[emacsscriptedit]='zpwrEmacsScriptEdit=emacs edit 1 or more scripts'
    ZPWR_VERBS[emacsctags]='zpwrEmacsZpwrCtags=emacs zpwr ctags tags'
    ZPWR_VERBS[emacsfilesearch]='zpwrEmacsFzfFilesearchVerb=emacs a file in a sub dir'
    ZPWR_VERBS[emacsfilesearchedit]='zpwrEmacsFzfFilesearchVerbEdit=edit emacs a file in a sub dir'
    ZPWR_VERBS[emacsfindsearch]='zpwrFindFzfNoZLEEmacs=emacs find drive for file'
    ZPWR_VERBS[emacsfindsearchedit]='zpwrFindFzfEditNoZLEEmacs=emacs edit find drive for file'
    ZPWR_VERBS[emacsgtags]='zpwrEmacsZpwrGtags=emacs zpwr GNU global tags'
    ZPWR_VERBS[emacsgtagsedit]='zpwrEmacsZpwrGtagsEdit=emacs edit zpwr GNU global tags'
    ZPWR_VERBS[emacslocatesearch]='zpwrLocateFzfNoZLEEmacs=emacs accept locate drive for file'
    ZPWR_VERBS[emacslocatesearchedit]='zpwrLocateFzfEditNoZLEEmacs=emacs edit locate drive for file'
    ZPWR_VERBS[emacswordsearch]='zpwrEmacsFzfWordsearchVerb=emacs a file in a sub dir by word'
    ZPWR_VERBS[emacswordsearchedit]='zpwrEmacsFzfWordsearchVerbEdit=edit emacs a file in a sub dir by word'
    ZPWR_VERBS[emacstests]='zet=emacs edit all zpwr tests'
    ZPWR_VERBS[envaccept]='zpwrFzfEnvVerbAccept=accept from fzf env'
    ZPWR_VERBS[envedit]='zpwrFzfEnvVerbEdit=edit from fzf env'
    ZPWR_VERBS[envvars]='zpwrEnvVars=list all zpwr env vars'
    ZPWR_VERBS[ev]='zpwrEnvVars=list all zpwr env vars'
    ZPWR_VERBS[environmentvars]='zpwrEnvVars=list all zpwr env vars'
    ZPWR_VERBS[environmentvariables]='zpwrEnvVars=list all zpwr env vars'
    ZPWR_VERBS[envvarsall]='zpwrEnvVarsAll=list all env vars'
    ZPWR_VERBS[environmentvarsall]='zpwrEnvVarsAll=list all env vars'
    ZPWR_VERBS[environmentvariablesall]='zpwrEnvVarsAll=list all env vars'
    ZPWR_VERBS[eva]='zpwrEnvVarsAll=list all env vars'
    ZPWR_VERBS[e]='zpwrEnvCounts=count all zpwr env'
    ZPWR_VERBS[envcounts]='zpwrEnvCounts=count all zpwr env'
    ZPWR_VERBS[execglob]='zpwrExecGlob=exec on globbed files'
    ZPWR_VERBS[execglobparallel]='zpwrExecGlobParallel=parallell exec on globbed files'
    ZPWR_VERBS[environmentcounts]='zpwrEnvCounts=count all zpwr env'
    ZPWR_VERBS[envcachesearch]='zpwrFzfEnv=search all cached aliases, parameters, builtins, keywords and functions'
    ZPWR_VERBS[environmentcachesearch]='zpwrFzfEnv=search all cached aliases, parameters, builtins, keywords and functions'
    ZPWR_VERBS[figletfonts]='zpwrFigletfonts=show all figlet fonts'
    ZPWR_VERBS[findsearch]='zpwrFindFzfNoZLEC=c find drive for file'
    ZPWR_VERBS[findsearchedit]='zpwrFindFzfEditNoZLEC=c edit find drive for file'
    ZPWR_VERBS[fordir]='zpwrFordir=run first arg in following dirs'
    ZPWR_VERBS[fordirupdate]='zpwrFordirUpdate=run git updaters in following dirs'
    ZPWR_VERBS[forgitadd]='forgit::add=forgit fzf add'
    ZPWR_VERBS[forgitclean]='forgit::clean=forgit fzf clean'
    ZPWR_VERBS[forgitdiff]='forgit::diff=forgit fzf diff'
    ZPWR_VERBS[forgitignore]='forgit::ignore=forgit fzf ignore'
    ZPWR_VERBS[forgitignoreclean]='forgit::ignore::clean=forgit fzf ignore clean'
    ZPWR_VERBS[forgitignoreget]='forgit::ignore::get=forgit fzf ignore get'
    ZPWR_VERBS[forgitignorelist]='forgit::ignore::list=forgit fzf ignore list'
    ZPWR_VERBS[forgitignoreupdate]='forgit::ignore::update=forgit fzf ignoreupdate'
    ZPWR_VERBS[forgitinfo]='forgit::info=forgit fzf info'
    ZPWR_VERBS[forgitlog]='forgit::log=forgit fzf log'
    ZPWR_VERBS[forgitreset]='forgit::reset::head=forgit fzf reset'
    ZPWR_VERBS[forgitrestore]='forgit::restore=forgit fzf restore'
    ZPWR_VERBS[forgitstash]='forgit::stash::show=forgit fzf stash'
    ZPWR_VERBS[forgitwarn]='forgit::warn=forgit fzf warn'
    ZPWR_VERBS[for]='fff=run first arg times for command'
    ZPWR_VERBS[for10]='ff=run 10 times for command'
    ZPWR_VERBS[forked]='fp=cd to $ZPWR_FORKED_DIR'
    ZPWR_VERBS[fp]='fp=cd to $ZPWR_FORKED_DIR'
    ZPWR_VERBS[ghcontribcount]='cgh=count of github contribs in last year'
    ZPWR_VERBS[gitemail]='zpwrChangeGitEmail=change email with git filter-brancch'
    ZPWR_VERBS[gitcemail]='zpwrChangeGitCommitterEmail=change committer email with git filter-brancch'
    ZPWR_VERBS[gitaemail]='zpwrChangeGitAuthorEmail=change author email with git filter-brancch'
    ZPWR_VERBS[gitcommit]='zsh-gacp-CommitAndPush=commit and push with arg message'
    ZPWR_VERBS[gitcommitcount]='zsh-gacp-CommitCount=count commits'
    ZPWR_VERBS[gitcommits]='zpwrCommits=search git commits with fzf'
    ZPWR_VERBS[gitcontribcount]='zpwrContribCount=count of git contributions by author'
    ZPWR_VERBS[gitcontribcountdirs]='zpwrContribCountDirs=count of git contributions by author for list of dirs'
    ZPWR_VERBS[gitcontribcountlines]='zpwrContribCountLines=count of lines contributed by author'
    ZPWR_VERBS[gitclearcommit]='zpwrClearGitCommit=remove matching git commits from history'
    ZPWR_VERBS[gitclearcache]='zpwrClearGitCache=clear old git refs and objects'
    ZPWR_VERBS[gitclearfile]='zpwrClearGitFile=rm file from all git refs and objects'
    ZPWR_VERBS[gitdir]='zpwrIsGitDir=check if pwd is git dir'
    ZPWR_VERBS[gitupdatetag]='lcm=print tag and latest msg to $BUFFER'
    ZPWR_VERBS[gitedittag]='zpwrEditTag=print tag to $BUFFER'
    ZPWR_VERBS[gitfordirdevelop]='zfgdw=run git wipe to develop branch in git dirs in $PWD'
    ZPWR_VERBS[gitfordirmaster]='zfgmw=run git wipe to master branch in git dirs in $PWD'
    ZPWR_VERBS[gitforalldir]='zpwrForAllGitDirs=run cmd in all git dirs'
    ZPWR_VERBS[github]='zpwrOpenmygh=open github profile'
    ZPWR_VERBS[githubcreate]='hc=create remote github repo'
    ZPWR_VERBS[githubdelete]='hd=delete remote github repo'
    ZPWR_VERBS[githubzpwr]='zpwrgh=open zpwr github repo'
    ZPWR_VERBS[hc]='hc=create remote github repo'
    ZPWR_VERBS[gh]='zpwrOpenmygh=open github profile'
    ZPWR_VERBS[hd]='hd=delete remote github repo'
    ZPWR_VERBS[ghz]='zpwrgh=open zpwr github repo'
    ZPWR_VERBS[gitignore]='gil=$EDITOR ~/.git/info/exclude'
    ZPWR_VERBS[gitlargest]='zpwrLargestGitFiles=show largest files stored by git in descending order'
    ZPWR_VERBS[gitremotes]='zpwrAllRemotes=list all git remotes'
    ZPWR_VERBS[gitreposexec]='zpwrForAllGitDirs=run cmd in cached git dirs'
    ZPWR_VERBS[gitreposcleanexec]='zpwrForAllGitDirsRefreshClean=refresh clean cache and run cmd in clean git dirs'
    ZPWR_VERBS[gitreposcleancacheexec]='zpwrForAllGitDirsClean=run cmd in clean dirty dirs'
    ZPWR_VERBS[gitreposdirtyexec]='zpwrForAllGitDirsRefreshDirty=refresh dirty cache and run cmd in dirty git dirs'
    ZPWR_VERBS[gitreposdirtycacheexec]='zpwrForAllGitDirsDirty=run cmd in cached dirty dirs'
    ZPWR_VERBS[gitsearch]='gse=search for regex in git log'
    ZPWR_VERBS[gitupdatefordir]='zpwrUpdateAllGitDirs=run git updates in all git dirs'
    ZPWR_VERBS[gitzfordir]='zg=run git wipe on any branch $1 in git dirs in $PWD and z $2 if present'
    ZPWR_VERBS[gitzfordirdevelop]='zd=z $1 if present and run git wipe to develop branch in git dirs in $PWD'
    ZPWR_VERBS[gitzfordirmaster]='zm=z $1 if present and run git wipe to master branch in git dirs in $PWD'
    ZPWR_VERBS[gittotallines]='zpwrTotalLines=count of total line count of git files'
    ZPWR_VERBS[grep]='zpwrAgIntoFzf=grep through pwd with ag into fzf'
    ZPWR_VERBS[hidden]='cd $ZPWR_HIDDEN_DIR=go to zpwr $ZPWR_HIDDEN_DIR'
    ZPWR_VERBS[hist]='zpwrHistoryVerbAccept=exec history command'
    ZPWR_VERBS[histedit]='zpwrHistoryVerbEdit=edit history command'
    ZPWR_VERBS[home]='cd $ZPWR=go to zpwr $ZPWR'
    ZPWR_VERBS[homeautoload]='cd $ZPWR_AUTOLOAD=go to zpwr $ZPWR_AUTOLOAD'
    ZPWR_VERBS[homeautoloadcommon]='cd $ZPWR_AUTOLOAD_COMMON=go to zpwr $ZPWR_AUTOLOAD_COMMON'
    ZPWR_VERBS[homecomps]='cd $ZPWR_COMPS=go to zpwr $ZPWR_COMPS'
    ZPWR_VERBS[homeenv]='cd $ZPWR_ENV=go to zpwr $ZPWR_ENV'
    ZPWR_VERBS[homeinstall]='cd $ZPWR_INSTALL=go to zpwr $ZPWR_INSTALL'
    ZPWR_VERBS[homelocal]='cd $ZPWR_LOCAL=go to zpwr $ZPWR_LOCAL'
    ZPWR_VERBS[homescripts]='cd $ZPWR_SCRIPTS=go to zpwr $ZPWR_SCRIPTS'
    ZPWR_VERBS[hometest]='cd $ZPWR_TEST=go to zpwr $ZPWR_TEST'
    ZPWR_VERBS[hometests]='cd $ZPWR_TEST=go to zpwr $ZPWR_TEST'
    ZPWR_VERBS[hometmux]='cd $ZPWR_TMUX=go to zpwr $ZPWR_TMUX'
    ZPWR_VERBS[info]='zpwrClearList=get info on command type with args'
    ZPWR_VERBS[install]='inst=run configure, make and make install'
    ZPWR_VERBS[kill]='zpwrKillPSVerbAccept=kill from ps output'
    ZPWR_VERBS[killedit]='zpwrKillPSVerbEdit=edit kill from ps output'
    ZPWR_VERBS[killmux]='tmux kill-server=kill tmux server'
    ZPWR_VERBS[killremote]='zpwrKillRemote=kill tmux server and ssh'
    ZPWR_VERBS[linecount]='zpwrLineCount=get line count of search term from command'
    ZPWR_VERBS[list]='zpwrListNoClear=list the files with no args'
    ZPWR_VERBS[loadjenv]='zpwrLoadJenv=lazy load jenv, calls jenv $@'
    ZPWR_VERBS[locatesearch]='zpwrLocateFzfNoZLEC=accept locate drive for file'
    ZPWR_VERBS[locatesearchedit]='zpwrLocateFzfEditNoZLEC=edit locate drive for file'
    ZPWR_VERBS[logdebug]='zpwrLogDebug=log debug to $ZPWR_LOGFILE'
    ZPWR_VERBS[logerror]='zpwrLogError=log error to $ZPWR_LOGFILE'
    ZPWR_VERBS[loginfo]='zpwrLogInfo=log info to $ZPWR_LOGFILE'
    ZPWR_VERBS[logtrace]='zpwrLogTrace=log trace to $ZPWR_LOGFILE'
    ZPWR_VERBS[logerrorconsole]='zpwrLogConsoleErr=log error to console'
    ZPWR_VERBS[logdebugconsole]='zpwrLogConsoleDebug=log debug to console'
    ZPWR_VERBS[loginfoconsole]='zpwrLogConsoleInfo=log info to console'
    ZPWR_VERBS[logtraceconsole]='zpwrLogConsoleTrace=log trace to console'
    ZPWR_VERBS[logincount]='zpwrLoginCount=count of logins by user'
    ZPWR_VERBS[lsof]='zpwrKillLsofVerbAccept=kill from lsof output'
    ZPWR_VERBS[lsofedit]='zpwrKillLsofVerbEdit=edit kill from lsof output'
    ZPWR_VERBS[ls]='zpwrListNoClear=list the files with no args'
    ZPWR_VERBS[makedir]='jd=make a dir tree'
    ZPWR_VERBS[makefile]='j=make a dir tree with file at end'
    ZPWR_VERBS[man]='fm=fzf through man pages'
    ZPWR_VERBS[modules]='zpwrModulesFZF=show zsh modules'
    ZPWR_VERBS[mygithub]='zpwrOpenmygh=open github profile'
    ZPWR_VERBS[open]='o=open with system'
    ZPWR_VERBS[opencommand]='zpwrGetOpenCommand=get the command to open with system'
    ZPWR_VERBS[options]='zpwrOptionsFZF=show zsh options'
    ZPWR_VERBS[pastecommand]='zpwrGetPasteCommand=get the command to paste with system'
    ZPWR_VERBS[pastebuffer]='zpwrPasteToBuffer=paste clipboard to $BUFFER'
    ZPWR_VERBS[pastestring]='zpwrPasteToStdout=paste clipboard to stdout'
    ZPWR_VERBS[pir]='pir=run command on all devices'
    ZPWR_VERBS[plugins]='zpl=cd to $ZSH_CUSTOM/plugins'
    ZPWR_VERBS[poll]='zpwrPoll=poll git remote and run command'
    ZPWR_VERBS[post]='post=postfix all output'
    ZPWR_VERBS[pre]='pre=prefix all output'
    ZPWR_VERBS[prettyprint]='zpwrPrettyPrint=pretty print with color'
    ZPWR_VERBS[printmap]='zpwrPrintMap=pretty print maps'
    ZPWR_VERBS[ps]='p=ps -ef | grep arg'
    ZPWR_VERBS[pygmentcolors]='zpwrPygmentcolors=show all pygment colors'
    ZPWR_VERBS[recompile]='zpwrRecompile=recompile all cache comps'
    ZPWR_VERBS[recompilefpath]='zpwrRecompileFpath=recompile all fpath cache comps'
    ZPWR_VERBS[recompilefiles]='zpwrRecompileFiles=recompile all files cache comps'
    ZPWR_VERBS[refreshzwc]='zpwrRefreshZwc=delete then regen compiled zsh word code'
    ZPWR_VERBS[regen]='zpwrRegenMost=regen caches except git drive search'
    ZPWR_VERBS[regenall]='zpwrRegenAll=regen all caches'
    ZPWR_VERBS[regenenvcache]='zpwrRegenSearchEnv=regen search env to $ZPWR/zpwrEnv{Key,Value}.txt'
    ZPWR_VERBS[regengitrepocache]='zsh-git-repo-regenAllGitRepos=regen list of all git repos to $ZPWR_ALL_GIT_DIRS'
    ZPWR_VERBS[regengitdirtyrepocache]='zsh-git-repo-regenAllGitReposDirty=regen list of all dirty git repos to $ZPWR_ALL_GIT_DIRS'
    ZPWR_VERBS[regenhistory]='zpwrRegenHistory=regen $HISTFILE'
    ZPWR_VERBS[restorehistory]='zpwrRestoreHistfile=restore $HISTFILE'
    ZPWR_VERBS[regenkeybindings]='zpwrRegenAllKeybindingsCache=regen all keybindings cache to $ZPWR/zpwr{All,Vim}Keybindings.txt'
    ZPWR_VERBS[rmconfiglinks]='zpwrUnlinkConf=remove sym links from $ZPWR_INSTALL to \$HOME'
    ZPWR_VERBS[regenconfiglinks]='zpwrRegenConfigLinks=regen sym links from $ZPWR_INSTALL to $HOME'
    ZPWR_VERBS[regenpowerline]='zpwrRegenPowerlineLink=regen powerline sym link to $HOME/.tmux/powerline'
    ZPWR_VERBS[regengtags]='zpwrRegenGtagsCtags=regen gtags files to $HOME'
    ZPWR_VERBS[regenctags]='zpwrRegenCtags=regen ctags files to $HOME'
    ZPWR_VERBS[regenzsh]='zpwrRegenZshCompCache=regen compsys cache to $ZSH_COMPDUMP'
    ZPWR_VERBS[rename]='zpwrRename=rename files'
    ZPWR_VERBS[reload]='zpwrReload=reparse env'
    ZPWR_VERBS[repo]='zp=cd to $ZPWR_REPO_NAME'
    ZPWR_VERBS[return2]='return2=turn off stderr filter'
    ZPWR_VERBS[reveal]='reveal=show remote repo in browser'
    ZPWR_VERBS[scriptcount]='zpwrScriptCount=total number of scripts in $ZPWR'
    ZPWR_VERBS[scriptlist]='zpwrScriptList=total list of scripts in $ZPWR'
    ZPWR_VERBS[scripts]='zs=cd to scripts directory'
    ZPWR_VERBS[scripttopdf]='zpwrScriptToPDF=convert script to PDF'
    ZPWR_VERBS[search]='s=search google for args'
    ZPWR_VERBS[startsend]='zpwrStartSend=dup some keys to pane'
    ZPWR_VERBS[startsendfull]='zpwrStartSendFull=dup all keys to pane'
    ZPWR_VERBS[stopsend]='zpwrStopSend=stop dup keys to pane'
    ZPWR_VERBS[startauto]='zpwrStartAutoComplete=start autocomplete'
    ZPWR_VERBS[stopauto]='zpwrStopAutoComplete=stop autocomplete'
    ZPWR_VERBS[subcommands]='zpwrVerbsNoZLE=run the subcommands for zpwr <tab>'
    ZPWR_VERBS[subcommandsedit]='zpwrVerbsEditNoZLE=edit the subcommands for zpwr <tab>'
    ZPWR_VERBS[subcommandsfzf]='zpwrVerbsFZF=fzf the subcommands for zpwr <tab>'
    ZPWR_VERBS[subcommandslist]='zpwrListVerbs=the subcommands for zpwr <tab>'
    ZPWR_VERBS[subcommandscount]='zpwrNumVerbs=number of choice for zpwr <tab>'
    ZPWR_VERBS[taillog]='lo=tail -F $ZPWR_LOGFILE'
    ZPWR_VERBS[test]='zpwrTest=run all zpwr tests'
    ZPWR_VERBS[tests]='zpwrTest=run all zpwr tests'
    ZPWR_VERBS[testsall]='zpwrTestAll=run all env tests'
    ZPWR_VERBS[testall]='zpwrTestAll=run all env tests'
    ZPWR_VERBS[timer]='zpwrTimer=timer one or more commands'
    ZPWR_VERBS[to]='to=toggle external ip'
    ZPWR_VERBS[tokens]='tok=vim the .tokens.sh file'
    ZPWR_VERBS[toggle]='to=toggle external ip'
    ZPWR_VERBS[travis]='trav-git=open current travis project in browser'
    ZPWR_VERBS[travisbuild]='trav-git-build=open current travis builds in browser'
    ZPWR_VERBS[travisbranch]='trav-git-br=open current travis branches in browser'
    ZPWR_VERBS[travispr]='trav-git-pr=open current travis PRs in browser'
    ZPWR_VERBS[trc]='trc=tmux.conf vim session'
    ZPWR_VERBS[tty]='print "$ZPWR_TTY"=print current tty'
    ZPWR_VERBS[uninstall]='zpwrUninstall=uninstall all zpwr configs'
    ZPWR_VERBS[uncompile]='zpwrUncompile=delete all cache comps'
    ZPWR_VERBS[update]='zpwrGetrc=update zpwr custom configs'
    ZPWR_VERBS[updateall]='zpwrAllUpdates=update zpwr custom configs and deps'
    ZPWR_VERBS[updatedeps]='zpwrUpdateDeps=update all dependencies'
    ZPWR_VERBS[updatedepsclean]='zpwrUpdateDepsClean=update all dependencies then clean'
    ZPWR_VERBS[updatezinit]='zpwrZinitUpdates=update zinit dependencies'
    ZPWR_VERBS[upload]='zpwrUpload=upload with curl'
    ZPWR_VERBS[urlsafe]='zpwrUrlSafe=base64 encode'
    ZPWR_VERBS[verbs]='zpwrVerbsNoZLE=run the subcommands for zpwr <tab>'
    ZPWR_VERBS[verbsedit]='zpwrVerbsEditNoZLE=edit the subcommands for zpwr <tab>'
    ZPWR_VERBS[verbsfzf]='zpwrVerbsFZF=fzf the subcommands for zpwr <tab>'
    ZPWR_VERBS[verbslist]='zpwrListVerbs=list the subcommands for zpwr <tab>'
    ZPWR_VERBS[verbscount]='zpwrNumVerbs=number of choice for zpwr <tab>'
    ZPWR_VERBS[vimall]='zpwrVimAll=vim all zpwr files for :argdo'
    ZPWR_VERBS[vimconfig]='conf=edit all zpwr configs'
    ZPWR_VERBS[vimemacsconfig]='zpwrVimEmacsConfig=vim edit emacs zpwr configs'
    ZPWR_VERBS[vimscripts]='zpwrVimScripts=vim all zpwr scripts for :argdo'
    ZPWR_VERBS[vimscriptedit]='zpwrVimScriptEdit=vim edit 1 or more scripts'
    ZPWR_VERBS[vimalledit]='zpwrVimAllEdit=vim edit 1 or more configs'
    ZPWR_VERBS[vimautoload]='zpwrVimAutoload=vim all autoloads :argdo'
    ZPWR_VERBS[vimcd]='cv=vim edit and cd to first dir'
    ZPWR_VERBS[vimrecent]='zpwrVimRecent=vim edit most recent editor files'
    ZPWR_VERBS[vimrecentsudo]='zpwrSudoVimRecent=sudo vim edit most recent editor files'
    ZPWR_VERBS[vimrecentcd]='zpwrVimRecentCd=cd and vim edit most recent editor files'
    ZPWR_VERBS[vimrecentsudocd]='zpwrSudoVimRecentCd=cd and sudo vim edit most recent editor files'
    ZPWR_VERBS[vimsearch]='zpwrFzfVimKeybind=search vim keybindings'
    ZPWR_VERBS[vimtests]='zvt=edit all zpwr tests'
    ZPWR_VERBS[vimtokens]='tok=vim the .tokens.sh file'
    ZPWR_VERBS[vimctags]='zpwrVimZpwrCtags=vim zpwr ctags tags'
    ZPWR_VERBS[vimgtags]='zpwrVimZpwrGtags=vim zpwr GNU global tags'
    ZPWR_VERBS[vimgtagsedit]='zpwrVimZpwrGtagsEdit=vim edit zpwr GNU global tags'
    ZPWR_VERBS[vimfindsearch]='zpwrFindFzfNoZLEVim=vim accept find drive for file'
    ZPWR_VERBS[vimfindsearchedit]='zpwrFindFzfEditNoZLEVim=vim edit find drive for file'
    ZPWR_VERBS[vimlocatesearch]='zpwrLocateFzfNoZLEVim=vim accept locate drive for file'
    ZPWR_VERBS[vimlocatesearchedit]='zpwrLocateFzfEditNoZLEVim=vim edit locate drive for file'
    ZPWR_VERBS[vimwordsearch]='zpwrVimFzfWordsearchVerb=vim a file in a sub dir by word'
    ZPWR_VERBS[vimwordsearchedit]='zpwrVimFzfWordsearchVerbEdit=edit vim a file in a sub dir by word'
    ZPWR_VERBS[vimfilesearch]='zpwrVimFzfFilesearchVerb=vim a file in a sub dir'
    ZPWR_VERBS[vimfilesearchedit]='zpwrVimFzfFilesearchVerbEdit=edit vim a file in a sub dir'
    ZPWR_VERBS[vimplugincount]='zpwrVimPluginCount=total number of vim plugins in $ZPWR'
    ZPWR_VERBS[vimpluginlist]='zpwrVimPluginList=total list of vim plugins in $ZPWR'
    ZPWR_VERBS[vrc]='vrc=vimrc vim session'
    ZPWR_VERBS[whiletrue]='ww=run command forever'
    ZPWR_VERBS[whilesleep]='www=run command and sleep first arg seconds'
    ZPWR_VERBS[web]='we=cd to web dir'
    ZPWR_VERBS[zp]='zp=cd to $ZPWR_REPO_NAME'
    ZPWR_VERBS[zpwr]='zp=cd to $ZPWR_REPO_NAME'
    ZPWR_VERBS[zpwrgithub]='zpgh=open zpwr github'
    ZPWR_VERBS[zpz]='zpz=cd to $ZPWR_REPO_NAME and git checkout other branch, rebase and push'
    ZPWR_VERBS[zrc]='zrc=zshrc vim session'
    ZPWR_VERBS[zshplugincount]='zpwrZshPluginCount=total number of zsh plugins in $ZPWR'
    ZPWR_VERBS[zshpluginlist]='zpwrZshPluginList=total list of zsh plugins in $ZPWR'
    ZPWR_VERBS[zshsearch]='zpwrZshrcSearch=search zshrc for arg'
    ZPWR_VERBS[zstyle]='zpwrZstyle=fuzzy search zstyle'
    ZPWR_VERBS[zcd]='zpwrFzfZListVerb=list then cd to z frecency ranked dir'
    ZPWR_VERBS[z]='z=cd to z frecency ranked dir'

    if zpwrCommandExists systemctl; then
        ZPWR_VERBS[restart]='restart=restart zpwr systemd service'
        ZPWR_VERBS[serviceup]='ssu=start and enable systemd service'
        ZPWR_VERBS[servicedown]='ssd=stop and disable systemd service'
    fi

    if zpwrExists pi; then
        ZPWR_VERBS[pi]='pi=ping all LAN devices'
        ZPWR_VERBS[ping]='pi=ping all LAN devices'
    fi

    if [[ -d "$ZPWR_PYSCRIPTS" ]]; then
        ZPWR_VERBS[start]='tmm_notabs=start with no tabs'
        ZPWR_VERBS[starttabs]='tmm_full=start all tabs'
    fi

    verb="$1"

    if [[ -n "$verb" ]]; then

        shift
        if [[ $verb =~ '-V|--version' ]]; then
            zpwrAbout | less
            return 0
        fi

        if [[ $verb =~ '-h|--help' ]]; then
            zpwrListVerbs | less
            return 0
        fi

        while [[ $verb == '--' ]]; do
            verb="$1"
            shift
        done

        if [[ $(basename -- $verb) == $(basename -- ${ZPWR_VARS[VERB_0]}) ]]; then
            #zunit does this
            return 0
        fi

        found=false

        for k v in ${(kv)ZPWR_VERBS[@]};do

            if [[ $k == $verb ]]; then
                found=true
                cmd=${v%%=*}
                for exp in ${(s%;%)cmd}; do
                    if alias $exp 1>/dev/null 2>&1;then
                        zpwrLogDebug "Eval subcommand '$exp'"
                        eval "$exp"
                        ret=$?
                    else
                        zpwrLogDebug "Eval subcommand '$exp'"
                        eval "$exp " ${(q)@}
                        ret=$?
                    fi
                done
                break
            fi
        done

        if [[ $found == false ]]; then
            zpwrLogConsoleErr "Unknown subcommand: '$verb'"
            return 1
        fi

        return $ret
    fi
} "$@"

