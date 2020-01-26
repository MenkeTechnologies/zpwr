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
ZPWR_DIR="$ZPWR"
ZPWR_DIR_INSTALL="$ZPWR/install"
if [[ -z $ZPWR_SCRIPTS ]]; then
    ZPWR_SCRIPTS="$ZPWR/scripts"
fi

prettyPrint() {
    printf "\x1b[1;4m$1\n\x1b[0m"
}

[[ -n "$1" ]] && commitMessage="$1" || commitMessage="update"

#{{{ MARK:installer
#**************************************************************
cd "$ZPWR_DIR" || exit 1
git checkout dev

prettyPrint "Copying scripts to custom Installer Repo $ZPWR_DIR"
#rm -rf "$ZPWR_DIR/scripts/"*
#cp "$ZPWR_SCRIPTS"/*.{sh,zsh,pl,py} "$ZPWR_DIR/scripts" 2>/dev/null
#cp -R "$ZPWR_SCRIPTS/macOnly" "$ZPWR_DIR/scripts"
#cp "$ZPWR/.powerlevel9kconfig.sh" "$ZPWR_DIR"
#cp "$HOME/.zpwr/.minvimrc" "$ZPWR_DIR"
#cp -R "$HOME/.zpwr/.tmux/"* "$ZPWR_DIR/.tmux" 2>/dev/null
#cp "$HOME/.zpwr/.shell_aliases_functions.sh" "$ZPWR_DIR"

cp "$HOME/.vimrc" "$ZPWR_DIR_INSTALL"
cp "$HOME/.tmux.conf" "$ZPWR_DIR_INSTALL"
cp "$HOME/.zshrc" "$ZPWR_DIR_INSTALL"
cp "$HOME/conf.gls" "$ZPWR_DIR_INSTALL"
cp "$HOME/conf.df" "$ZPWR_DIR_INSTALL"
cp "$HOME/conf.mount" "$ZPWR_DIR_INSTALL"
cp "$HOME/conf.whois" "$ZPWR_DIR_INSTALL"
cp "$HOME/.ideavimrc" "$ZPWR_DIR_INSTALL"
cp "$HOME/.inputrc" "$ZPWR_DIR_INSTALL"
cp "$HOME/grc.zsh" "$ZPWR_DIR_INSTALL"
cp "$HOME/.gitignore_global" "$ZPWR_DIR_INSTALL"
cp -R "$HOME/.vim/Ultisnips" "$ZPWR_DIR_INSTALL"

prettyPrint "Updating vim plugins list"
bash "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh" "$HOME/.vim/bundle/"* >"$ZPWR_DIR_INSTALL/.vimbundle"
prettyPrint "Updating zsh plugins list"
printf "" > "$ZPWR_DIR_INSTALL/.zshplugins"
for dir in "$HOME/.oh-my-zsh/custom/plugins/"*; do
    if basename "$dir" | grep -sq "example";then
        continue;
    fi
        
    bash "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh" "$dir" >>"$ZPWR_DIR_INSTALL/.zshplugins"
done

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
cp "$ZPWR/.shell_aliases_functions.sh" "$tutorialDir/aliases"

prettyPrint "Copying shell scripts"
#clear out old scripts, dbl quotes escape asterisk
rm -rf "$tutorialDir/shell/"*
cp "$ZPWR_SCRIPTS"/*.{sh,zsh,pl,py} "$tutorialDir/shell"
cp -R "$ZPWR_SCRIPTS/macOnly" "$tutorialDir/shell"
cp -R "$HOME/.vim/Ultisnips" "$tutorialDir"
#README="$tutorialDir/shell/README.md"
#echo "# Mac and Linux Scripts" > "$README"
#bash "$ZPWR_SCRIPTS/headerSummarizer.sh" "$ZPWR_SCRIPTS/"*.sh >> "$README"
#echo "# Mac Only Scripts" >> "$README"
#bash "$ZPWR_SCRIPTS/headerSummarizer.sh" "$ZPWR_SCRIPTS/"macOnly/*.sh >> "$README"

#prettyPrint "Copying tags file"
#cp "$ZPWR_SCRIPTS/tags" "$tutorialDir/shell"

#prettyPrint "Copying $HOME/.ctags"
#cp "$HOME/.ctags" "$tutorialDir/ctags"

prettyPrint "Copying vis ncmpcpp mpd"
cp -R "$HOME/.config/vis" "$tutorialDir/ncmpcpp-mpd-vis"

prettyPrint "Emptying mpd log"
echo >"$tutorialDir/ncmpcpp-mpd-vis/.mpd/mpd.log"

echo >"$HOME/Documents/tutorialsRepo/ncmpcpp-mpd-vis/.mpd/mpd.log"
cp -R "$HOME/.config/ncmpcpp" "$tutorialDir/ncmpcpp-mpd-vis"
cp -R "$HOME/.mpd" "$tutorialDir/ncmpcpp-mpd-vis"

prettyPrint "Copying powerlevel config"
cp "$ZPWR/.powerlevel9kconfig.sh" "$tutorialDir"

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

bash "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh" "$HOME/.vim/bundle/"* >"$tutorialDir/vim/.vimbundle"

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
cp "$ZPWR/.shell_aliases_functions.sh" "$dotdir/.."
cp "$HOME/.zshrc" "$dotdir/.."

cp "$HOME/.vimrc" "$dotdir"
cp "$HOME/.tmux.conf" "$dotdir"
cp "$ZPWR/.shell_aliases_functions.sh" "$dotdir"
cp "$HOME/.zshrc" "$dotdir"

prettyPrint "Copying scripts to $websiteDir"
rm -rf "$websiteDir/downloads/scripts/"*
if [[ ! -d "$websiteDir"/downloads/scripts ]]; then
    mkdir -p "$websiteDir/downloads/scripts"
fi

cp "$ZPWR_SCRIPTS"/*.{sh,zsh,pl,py} "$websiteDir/downloads/scripts" 2>/dev/null
cp -R "$ZPWR_SCRIPTS/macOnly" "$websiteDir/downloads/scripts"

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
