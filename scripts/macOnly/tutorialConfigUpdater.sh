#!/usr/bin/env bash
#{{{                    MARK:Header
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
ZPWR_DIR_INSTALL_GTAGS="$ZPWR/install/g-tags"

shopt -s dotglob

source="${BASH_SOURCE[0]}"
while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
  dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
  source="$(readlink "$source")"
  [[ $source != /* ]] && source="$dir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

if ! source "$dir/init.sh"; then
    if ! source "$dir/../init.sh"; then
        echo "could not source dir '$dir/../init.sh'"
    fi
fi

[[ -n "$1" ]] && commitMessage="$1" || commitMessage="update"

#{{{ MARK:installer
#**************************************************************
cd "$ZPWR_DIR" || exit 1
git checkout dev

logg "Copying scripts to custom Installer Repo $ZPWR_DIR"
cp "$HOME/.gitignore_global" "$ZPWR_DIR_INSTALL"

type=ctags

if exists gtags; then
    logg "Regen GNU gtags to $HOME/GTAGS with $type parser"
    (
    builtin cd "$HOME"
    command rm GPATH GRTAGS GTAGS 2>/dev/null
    for file in \
        "$ZPWR_INSTALL/"* \
        "$ZPWR/"* \
        "$ZPWR_SCRIPTS"/* \
        "$ZPWR_SCRIPTS_MAC/"*; do
        if [[ -f "$file" ]]; then
            echo "$file"
        fi
    done | gtags --accept-dotfiles --gtagslabel=$type -f -

    logg "gtags size: $(global -x ".*" | wc -l)"

    )
else
    loggErr "gtags does not exist"
fi

logg "Copying gtag => $HOME/"{GTAGS,GPATH,GRTAGS}
echo cp "$HOME/"{GTAGS,GPATH,GRTAGS} \
    "$tutorialDir"
cp "$HOME/"{GTAGS,GPATH,GRTAGS} \
    "$ZPWR_DIR_INSTALL_GTAGS"

logg "Updating vim plugins list"
bash "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh" "$HOME/.vim/bundle/"* >"$ZPWR_DIR_INSTALL/.vimbundle"
logg "Updating zsh plugins list"
printf "" > "$ZPWR_DIR_INSTALL/.zshplugins"
for dir in "$HOME/.oh-my-zsh/custom/plugins/"*; do
    if basename "$dir" | grep -sq "example";then
        logg "not adding zsh plugin $dir"
        continue;
    else
        logg "adding zsh plugin $dir"
    fi

    bash "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh" "$dir" >>"$ZPWR_DIR_INSTALL/.zshplugins"
done

git add .
git commit -m "$commitMessage"
logg "Status"
git status
logg "Pushing..."
git push origin dev
#}}}***********************************************************

#{{{ MARK:tutorialDir
#**************************************************************
logg "Copying zshrc"
cp "$ZPWR_DIR_INSTALL/.zshrc" "$tutorialDir/zsh"
logg "Copying vimrc"
cp "$ZPWR_DIR_INSTALL/.vimrc" "$tutorialDir/vim"
logg "Copying minimal minvimrc"
cp "$ZPWR/.minvimrc" "$tutorialDir/vim"

logg "Copying gtag => $HOME/"{GTAGS,GPATH,GRTAGS}
echo cp "$HOME/"{GTAGS,GPATH,GRTAGS} \
    "$tutorialDir"
cp "$HOME/"{GTAGS,GPATH,GRTAGS} \
    "$tutorialDir"

logg "Copying tmux.conf"
rm -rf "$tutorialDir/tmux/"*
cp "$ZPWR_DIR_INSTALL/.tmux.conf" "$tutorialDir/tmux"
cp -R "$ZPWR_TMUX/"* "$tutorialDir/tmux/.tmux" 2>/dev/null

logg "Copying shell_aliases_functions to $tutorialDir"
cp "$ZPWR/.shell_aliases_functions.sh" "$tutorialDir/aliases"

logg "Copying shell scripts"
#clear out old scripts, dbl quotes escape asterisk
rm -rf "$tutorialDir/shell/"*
cp "$ZPWR_SCRIPTS"/*.{sh,zsh,pl,py} "$tutorialDir/shell"
cp -R "$ZPWR_SCRIPTS/macOnly" "$tutorialDir/shell"
cp -R "$HOME/.vim/UltiSnips" "$tutorialDir"
#README="$tutorialDir/shell/README.md"
#echo "# Mac and Linux Scripts" > "$README"
#bash "$ZPWR_SCRIPTS/headerSummarizer.sh" "$ZPWR_SCRIPTS/"*.sh >> "$README"
#echo "# Mac Only Scripts" >> "$README"
#bash "$ZPWR_SCRIPTS/headerSummarizer.sh" "$ZPWR_SCRIPTS/"macOnly/*.sh >> "$README"

#logg "Copying tags file"
#cp "$ZPWR_SCRIPTS/tags" "$tutorialDir/shell"

#logg "Copying $HOME/.ctags"
#cp "$HOME/.ctags" "$tutorialDir/ctags"

logg "Copying vis ncmpcpp mpd"
cp -R "$HOME/.config/vis" "$tutorialDir/ncmpcpp-mpd-vis"

logg "Emptying mpd log"
echo >"$tutorialDir/ncmpcpp-mpd-vis/.mpd/mpd.log"

echo >"$HOME/Documents/tutorialsRepo/ncmpcpp-mpd-vis/.mpd/mpd.log"
cp -R "$HOME/.config/ncmpcpp" "$tutorialDir/ncmpcpp-mpd-vis"
cp -R "$HOME/.mpd" "$tutorialDir/ncmpcpp-mpd-vis"

logg "Copying powerlevel config"
cp "$ZPWR/.powerlevel9kconfig.sh" "$tutorialDir"

#logg "Copying vim plugins"

#sudo cp -R "$HOME/.vim" "$tutorialDir/vim"

cd "$tutorialDir" || exit 1

#logg "Removing .git dirs..."

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

logg "Updating Tutorial Files Repo"
git add .
git commit -m "$commitMessage"
logg "Status..."
git status
logg "Pushing..."
git push

#}}}***********************************************************

#{{{ MARK:websiteDir
#**************************************************************

dotdir="$websiteDir/downloads/dotfiles"

[[ ! -d "$dotdir" ]] && mkdir -p "$dotdir"

logg "Copying config files to websiteDir"
cp "$ZPWR_DIR_INSTALL/.vimrc" "$dotdir/.."
cp "$ZPWR_DIR_INSTALL/.tmux.conf" "$dotdir/.."
cp "$ZPWR/.shell_aliases_functions.sh" "$dotdir/.."
cp "$ZPWR_DIR_INSTALL/.zshrc" "$dotdir/.."

cp "$ZPWR_DIR_INSTALL/.vimrc" "$dotdir"
cp "$ZPWR_DIR_INSTALL/.tmux.conf" "$dotdir"
cp "$ZPWR/.shell_aliases_functions.sh" "$dotdir"
cp "$ZPWR_DIR_INSTALL/.zshrc" "$dotdir"

logg "Copying scripts to $websiteDir"
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
logg "Status..."
git status
logg "Pushing..."
git push
#}}}***********************************************************
