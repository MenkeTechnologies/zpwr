#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 11:59:28 EDT 2017
##### Purpose:  script to update multiple Github repos
##### Notes:TutorialFiles, PersonalWebsite, zpwr
#}}}***********************************************************

tutorialDir="$HOME/Documents/tutorialsRepo"
websiteDir="$HOME/WebstormProjects/PersonalWebsite"
installerDir="$ZPWR_HIDDEN_DIR/scripts/$ZPWR_REPO_NAME"
SCRIPTS="$ZPWR_HIDDEN_DIR/scripts"

prettyPrint() {
    printf "\x1b[1;4m$1\n\x1b[0m"
}

[[ -n "$1" ]] && commitMessage="$1" || commitMessage="update"

#{{{ MARK:installer
#**************************************************************
cd "$installerDir" || exit 1
git checkout dev

prettyPrint "Copying scripts to custom Installer Repo $installerDir"
rm -rf "$installerDir/scripts/"*
cp "$SCRIPTS"/*.{sh,zsh,pl,py} "$installerDir/scripts" 2>/dev/null
cp -R "$SCRIPTS/macOnly" "$installerDir/scripts"
cp "$HOME/.vimrc" "$installerDir"
cp "$HOME/.zpwr/.minvimrc" "$installerDir"
cp "$HOME/.tmux.conf" "$installerDir"
cp -R "$HOME/.zpwr/.tmux/"* "$installerDir/.tmux" 2>/dev/null
cp "$HOME/.zpwr/.shell_aliases_functions.sh" "$installerDir"
cp "$HOME/.zshrc" "$installerDir"
cp "$HOME/conf.gls" "$installerDir"
cp "$HOME/conf.df" "$installerDir"
cp "$HOME/conf.mount" "$installerDir"
cp "$HOME/conf.whois" "$installerDir"
cp "$HOME/.ideavimrc" "$installerDir"
cp "$HOME/.inputrc" "$installerDir"
cp "$HOME/grc.zsh" "$installerDir"
cp "$ZPWR_HIDDEN_DIR/.powerlevel9kconfig.sh" "$installerDir"
cp "$HOME/.gitignore_global" "$installerDir"
cp -R "$HOME/.vim/Ultisnips" "$installerDir"

prettyPrint "Updating vim plugins list"
bash "$SCRIPTS/gitRemoteRepoInformation.sh" "$HOME/.vim/bundle/"* >"$installerDir/.vimbundle"
prettyPrint "Updating zsh plugins list"
bash "$SCRIPTS/gitRemoteRepoInformation.sh" "$HOME/.oh-my-zsh/custom/plugins/"* >"$installerDir/.zshplugins"

git add .
git commit -m "$commitMessage"
prettyPrint "Status"
git status
prettyPrint "Pushing..."
git push origin dev
#}}}***********************************************************

#{{{ MARK:tutorialDir
#**************************************************************
prettyPrint "Copying zshrc"
cp "$HOME/.zshrc" "$tutorialDir/zsh"
prettyPrint "Copying vimrc"
cp "$HOME/.vimrc" "$tutorialDir/vim"
prettyPrint "Copying minimal minvimrc"
cp "$HOME/.zpwr/.minvimrc" "$tutorialDir/vim"

prettyPrint "Copying tmux.conf"
rm -rf "$tutorialDir/tmux/"*
cp "$HOME/.tmux.conf" "$tutorialDir/tmux"
cp -R "$HOME/.zpwr/.tmux/"* "$tutorialDir/tmux/.tmux" 2>/dev/null

prettyPrint "Copying shell_aliases_functions to $tutorialDir"
cp "$ZPWR_HIDDEN_DIR/.shell_aliases_functions.sh" "$tutorialDir/aliases"

prettyPrint "Copying shell scripts"
#clear out old scripts, dbl quotes escape asterisk
rm -rf "$tutorialDir/shell/"*
cp "$SCRIPTS"/*.{sh,zsh,pl,py} "$tutorialDir/shell"
cp -R "$SCRIPTS/macOnly" "$tutorialDir/shell"
cp -R "$HOME/.vim/Ultisnips" "$tutorialDir"
#README="$tutorialDir/shell/README.md"
#echo "# Mac and Linux Scripts" > "$README"
#bash "$SCRIPTS/headerSummarizer.sh" "$SCRIPTS/"*.sh >> "$README"
#echo "# Mac Only Scripts" >> "$README"
#bash "$SCRIPTS/headerSummarizer.sh" "$SCRIPTS/"macOnly/*.sh >> "$README"

prettyPrint "Copying tags file"
cp "$SCRIPTS/tags" "$tutorialDir/shell"

prettyPrint "Copying $HOME/.ctags"
cp "$HOME/.ctags" "$tutorialDir/ctags"

prettyPrint "Copying vis ncmpcpp mpd"
cp -R "$HOME/.config/vis" "$tutorialDir/ncmpcpp-mpd-vis"

prettyPrint "Emptying mpd log"
echo >"$tutorialDir/ncmpcpp-mpd-vis/.mpd/mpd.log"

echo >"$HOME/Documents/tutorialsRepo/ncmpcpp-mpd-vis/.mpd/mpd.log"
cp -R "$HOME/.config/ncmpcpp" "$tutorialDir/ncmpcpp-mpd-vis"
cp -R "$HOME/.mpd" "$tutorialDir/ncmpcpp-mpd-vis"

prettyPrint "Copying powerlevel config"
cp "$ZPWR_HIDDEN_DIR/.powerlevel9kconfig.sh" "$tutorialDir"

#prettyPrint "Copying vim plugins"

#sudo cp -R "$HOME/.vim" "$tutorialDir/vim"

cd "$tutorialDir" || exit 1

#prettyPrint "Removing .git dirs..."

#while read -r file; do
#if [[ -d "$file" ]]; then
#if [[ "$file" = .*\.git.* ]]; then
#sudo rm -rf "$file"
#else
#:
#fi
#fi
#done < <(find ./vim)

bash "$SCRIPTS/gitRemoteRepoInformation.sh" "$HOME/.vim/bundle/"* >"$tutorialDir/vim/.vimbundle"

prettyPrint "Updating Tutorial Files Repo"
git add .
git commit -m "$commitMessage"
prettyPrint "Status..."
git status
prettyPrint "Pushing..."
git push

#}}}***********************************************************

#{{{ MARK:websiteDir
#**************************************************************

dotdir="$websiteDir/downloads/dotfiles"

[[ ! -d "$dotdir" ]] && mkdir -p "$dotdir"

prettyPrint "Copying config files to websiteDir"
cp "$HOME/.vimrc" "$dotdir/.."
cp "$HOME/.tmux.conf" "$dotdir/.."
cp "$ZPWR_HIDDEN_DIR/.shell_aliases_functions.sh" "$dotdir/.."
cp "$HOME/.zshrc" "$dotdir/.."

cp "$HOME/.vimrc" "$dotdir"
cp "$HOME/.tmux.conf" "$dotdir"
cp "$ZPWR_HIDDEN_DIR/.shell_aliases_functions.sh" "$dotdir"
cp "$HOME/.zshrc" "$dotdir"

prettyPrint "Copying scripts to $websiteDir"
rm -rf "$websiteDir/downloads/scripts/"*
if [[ ! -d "$websiteDir"/downloads/scripts ]]; then
    mkdir -p "$websiteDir/downloads/scripts"
fi

cp "$SCRIPTS"/*.{sh,zsh,pl,py} "$websiteDir/downloads/scripts" 2>/dev/null
cp -R "$SCRIPTS/macOnly" "$websiteDir/downloads/scripts"

cd "$websiteDir/downloads" || exit 1
tar cfz MenkeTechnologiesShellScripts.tgz scripts
tar cfz dotfiles.tgz dotfiles
cd ..

git add .
git commit -m "$commitMessage"
prettyPrint "Status..."
git status
prettyPrint "Pushing..."
git push
#}}}***********************************************************
