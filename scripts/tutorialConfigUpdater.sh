#!/usr/bin/env bash
#created by JACOBMENKE at Mon Jun 12 17:33:50 EDT 2017

tutorialDir="$HOME/Documents/tutorialsRepo"
websiteDir="$HOME/WebstormProjects/PersonalWebsite"

boldAndUnderlinedPrint(){
    printf "\e[1;4m$1\n\e[0m"
}

boldAndUnderlinedPrint "Copying zshrc"
cp ~/.zshrc "$tutorialDir/zsh"
boldAndUnderlinedPrint "Copying vimrc"
cp ~/.vimrc "$tutorialDir/vim"

boldAndUnderlinedPrint "Copying tmux.conf"
cp ~/.tmux.conf "$tutorialDir/tmux"

boldAndUnderlinedPrint "Copying shell_aliases_functions"
cp ~/.shell_aliases_functions.sh "$tutorialDir/aliases"

boldAndUnderlinedPrint "Copying shellScripts"
#clear out old scripts, dbl quotes escape asterisk
rm -f "$tutorialDir/shell/"*.sh
cp "$HOME/Documents/shellScripts/"*.sh "$tutorialDir/shell"

boldAndUnderlinedPrint "Copying tags file"
cp "$HOME/Documents/shellScripts/tags" "$tutorialDir/shell"

boldAndUnderlinedPrint "Copying ~/.ctags" 
cp "$HOME/.ctags" "$tutorialDir/ctags"

boldAndUnderlinedPrint "Copying vis ncmpcpp mpd"
cp -R ~/.config/vis "$tutorialDir/ncmpcpp-mpd-vis"

boldAndUnderlinedPrint "Emptying mpd log"
echo > "$tutorialDir/ncmpcpp-mpd-vis/.mpd/mpd.log"

echo > "$HOME/Documents/tutorialsRepo/ncmpcpp-mpd-vis/.mpd/mpd.log"
cp -R ~/.config/ncmpcpp "$tutorialDir/ncmpcpp-mpd-vis"
cp -R ~/.mpd "$tutorialDir/ncmpcpp-mpd-vis"

boldAndUnderlinedPrint "Copying iterm Colors"
cp "$HOME/Documents/iterm-jm-colors.itermcolors" "$tutorialDir"

boldAndUnderlinedPrint "Copying vim plugins"

cp -R "$HOME/.vim" "$tutorialDir/vim"

cd "$tutorialDir" || exit

boldAndUnderlinedPrint "Removing .git dirs...)"

while read -r file; do
    if [[ -d "$file" ]]; then
        if [[ "$file" =~ .*\.git.* ]]; then
            rm -rf "$file"
        else
            :
        fi
    fi
done < <(find ./vim)

boldAndUnderlinedPrint "Status..."
git status
boldAndUnderlinedPrint "Pushing..."
git add .
git commit -m "update"
git push

boldAndUnderlinedPrint "Copying config files to websiteDir"
cp ~/.vimrc "$websiteDir/downloads"
cp ~/.vim/colors/bluewolf.vim "$websiteDir/downloads"
cp ~/.tmux.conf "$websiteDir/downloads"
cp ~/.shell_aliases_functions.sh "$websiteDir/downloads"
cp ~/.zshrc "$websiteDir/downloads"

cd "$websiteDir" || exit

boldAndUnderlinedPrint "Status..."
git status
boldAndUnderlinedPrint "Pushing..."
git add .
git commit -m "update"
git push
