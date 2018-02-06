#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 11:59:28 EDT 2017
#####   Purpose:  script to update multiple Github repos
#####   Notes:TutorialFiles, PersonalWebsite, customTerminalInstaller 
#}}}***********************************************************

tutorialDir="$HOME/Documents/tutorialsRepo"
websiteDir="$HOME/WebstormProjects/PersonalWebsite"
installerDir="$HOME/Documents/shellScripts/customTerminalInstaller"
SCRIPTS="$HOME/Documents/shellScripts"

boldAndUnderlinedPrint(){
    printf "\e[1;4m$1\n\e[0m"
}


if [[ "$1" ]]; then
    commitMessage="$1"
else
    commitMessage="update"
fi

#{{{                    MARK:tutorialDir
#**************************************************************
boldAndUnderlinedPrint "Copying zshrc"
cp $HOME/.zshrc "$tutorialDir/zsh"
boldAndUnderlinedPrint "Copying vimrc"
cp $HOME/.vimrc "$tutorialDir/vim"

boldAndUnderlinedPrint "Copying tmux.conf"
cp $HOME/.tmux.conf "$tutorialDir/tmux"
cp $HOME/.tmux.conf.rpi "$tutorialDir/tmux"
cp $HOME/.tmux/* "$tutorialDir/.tmux"

boldAndUnderlinedPrint "Copying shell_aliases_functions"
cp $HOME/.shell_aliases_functions.sh "$tutorialDir/aliases"
cp $HOME/.rpitokens.sh "$tutorialDir/aliases"

boldAndUnderlinedPrint "Copying shellScripts"
#clear out old scripts, dbl quotes escape asterisk
rm -rf "$tutorialDir/shell/*"
cp "$SCRIPTS"/*.sh "$tutorialDir/shell"
cp -R "$SCRIPTS"/macOnly "$tutorialDir/shell"
#README="$tutorialDir/shell/README.md"
#echo "# Mac and Linux Scripts" > "$README"
#bash "$SCRIPTS/headerSummarizer.sh" "$SCRIPTS/"*.sh >> "$README" 
#echo "# Mac Only Scripts" >> "$README"
#bash "$SCRIPTS/headerSummarizer.sh" "$SCRIPTS/"macOnly/*.sh >> "$README"

boldAndUnderlinedPrint "Copying tags file"
cp "$HOME/Documents/shellScripts/tags" "$tutorialDir/shell"

boldAndUnderlinedPrint "Copying $HOME/.ctags" 
cp "$HOME/.ctags" "$tutorialDir/ctags"

boldAndUnderlinedPrint "Copying vis ncmpcpp mpd"
cp -R $HOME/.config/vis "$tutorialDir/ncmpcpp-mpd-vis"

boldAndUnderlinedPrint "Emptying mpd log"
echo > "$tutorialDir/ncmpcpp-mpd-vis/.mpd/mpd.log"

echo > "$HOME/Documents/tutorialsRepo/ncmpcpp-mpd-vis/.mpd/mpd.log"
cp -R $HOME/.config/ncmpcpp "$tutorialDir/ncmpcpp-mpd-vis"
cp -R $HOME/.mpd "$tutorialDir/ncmpcpp-mpd-vis"

boldAndUnderlinedPrint "Copying iterm Colors"
cp "$HOME/Documents/iterm-jm-colors.itermcolors" "$tutorialDir"

boldAndUnderlinedPrint "Copying vim plugins"

sudo cp -R "$HOME/.vim" "$tutorialDir/vim"

cd "$tutorialDir" || exit 1

boldAndUnderlinedPrint "Removing .git dirs...)"

while read -r file; do
    if [[ -d "$file" ]]; then
        if [[ "$file" = .*\.git.* ]]; then
            rm -rf "$file"
        else
            :
        fi
    fi
done < <(find ./vim)
boldAndUnderlinedPrint "Updating Tutorial Files Repo"
boldAndUnderlinedPrint "Status..."
git status
boldAndUnderlinedPrint "Pushing..."
git add .
git commit -m "$commitMessage"
git push
#}}}***********************************************************


#{{{                    MARK:websiteDir
#**************************************************************
boldAndUnderlinedPrint "Copying config files to websiteDir"
cp $HOME/.vimrc "$websiteDir/downloads"
cp $HOME/.vim/colors/bluewolf.vim "$websiteDir/downloads"
cp $HOME/.tmux.conf "$websiteDir/downloads"
cp $HOME/.shell_aliases_functions.sh "$websiteDir/downloads"
cp $HOME/.zshrc "$websiteDir/downloads"

boldAndUnderlinedPrint "Copying scripts to $websiteDir"
rm -rf $websiteDir/downloads/scripts/*
if [[ ! -d "$websiteDir"/downloads/scripts ]]; then
    mkdir -P "$websiteDir/downloads/scripts"
fi
cp $SCRIPTS/*.sh "$websiteDir/downloads/scripts"
cp -R $SCRIPTS/macOnly "$websiteDir/downloads/scripts"

cd "$websiteDir/downloads" || exit 1
tar cvfz MenkeTechnologiesShellScripts.tgz scripts
cd ..

boldAndUnderlinedPrint "Status..."
git status
boldAndUnderlinedPrint "Pushing..."
git add .
git commit -m "$commitMessage"
git push
#}}}***********************************************************

#{{{                    MARK:installer
#**************************************************************
boldAndUnderlinedPrint "Copying scripts to custom Installer Repo"
rm -rf $SCRIPTS/customTerminalInstaller/scripts/*
cp "$SCRIPTS"/*.sh "$installerDir/scripts"
cp -R "$SCRIPTS"/macOnly "$installerDir/scripts"
cp $HOME/.vimrc "$installerDir"
cp $HOME/.tmux.conf "$installerDir"
cp -R $HOME/.tmux/* "$installerDir/.tmux"
cp $HOME/.shell_aliases_functions.sh "$installerDir" 
cp $HOME/.zshrc "$installerDir"
cp $HOME/.rpitokens.sh "$installerDir"
cp $HOME/conf.gls "$installerDir"
cp $HOME/conf.df"$installerDir"

boldAndUnderlinedPrint "Updating vim plugins list"
bash "$SCRIPTS/gitRemoteRepoInformation.sh "$HOME/.vim/bundle/"* > "$installerDir/.vimbundle"
boldAndUnderlinedPrint "Updating zsh plugins list"
bash "$SCRIPTS/gitRemoteRepoInformation.sh "$HOME/.oh-my-zsh/custom/plugins"* > "$installerDir/.zshplugins"

cd "$installerDir" || exit 1
boldAndUnderlinedPrint "Status"
git status
boldAndUnderlinedPrint "Pushing..."
git add .
git commit -m "$commitMessage"
git push
#}}}***********************************************************
