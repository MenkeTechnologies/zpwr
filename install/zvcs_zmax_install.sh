#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Oct  3 2026
##### Purpose: bash script to install zvcs and zmax
##### Notes: neither is on crates.io; macOS uses the menketech brew tap,
##### Linux the GitHub release tarballs the tap formulae are built from
#}}}***********************************************************
if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh

# install the latest GitHub release tarball of MenkeTechnologies/$1 under
# ~/.local/share/$1, linking its binary $2 as ~/.local/bin/$1 -- the same
# libexec + bin symlink layout the brew formulae use (zmax finds its
# runtime/ dir beside the resolved binary)
function zpwrReleaseInstall() {
    local repo="$1" exe="$2" arch libc tag asset dir tmp src

    case "$(uname -m)" in
        x86_64|amd64) arch=x86_64 ;;
        aarch64|arm64) arch=aarch64 ;;
        *)
            zpwrPrettyPrintBox "No $repo release for $(uname -m)" >&2
            return 1
            ;;
    esac

    tag="$(curl -fsSL "https://api.github.com/repos/MenkeTechnologies/$repo/releases/latest" |
        perl -ne 'print $1 if /"tag_name":\s*"([^"]+)"/')"
    if [[ -z "$tag" ]]; then
        zpwrPrettyPrintBox "Could not resolve latest $repo release" >&2
        return 1
    fi

    # alpine has no glibc: take the static musl build when one is published
    libc=gnu
    if [[ "$ZPWR_DISTRO_FAMILY" == alpine ]]; then
        libc=musl
    fi

    asset="$repo-$tag-$arch-unknown-linux-$libc.tar.gz"
    zpwrPrettyPrintBox "Installing $asset"
    tmp="$(mktemp -d)"
    if ! curl -fsSL -o "$tmp/$asset" "https://github.com/MenkeTechnologies/$repo/releases/download/$tag/$asset" ||
        ! tar xzf "$tmp/$asset" -C "$tmp"; then
        zpwrPrettyPrintBox "Failed to install $asset" >&2
        command rm -rf "$tmp"
        return 1
    fi
    command rm -f "$tmp/$asset"

    # strip a single top-level directory the way brew does (zmax has one,
    # zvcs ships its binary at the archive root)
    src="$tmp"
    set -- "$tmp"/*
    if [[ $# -eq 1 && -d "$1" ]]; then
        src="$1"
    fi

    dir="$HOME/.local/share/$repo"
    command rm -rf "$dir"
    mkdir -p "$HOME/.local/share" "$HOME/.local/bin"
    mv "$src" "$dir"
    command rm -rf "$tmp"
    ln -sfn "$dir/$exe" "$HOME/.local/bin/$repo"
}

if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    zpwrPrettyPrintBox "Installing zvcs and zmax from the menketech tap"
    brew tap menketechnologies/menketech
    brew install menketechnologies/menketech/zvcs menketechnologies/menketech/zmax
else
    # zvcs ships its binary as `git`; it is linked as `zvcs` so it never
    # clobbers stock git until `zvcs zshadow` below opts in
    zpwrReleaseInstall zvcs git
    zpwrReleaseInstall zmax zmax
    export PATH="$HOME/.local/bin:$PATH"
fi

# ~/.zvcs/bin/git and the git-<verb> links, man pages and completion;
# .shell_aliases_functions.sh puts ~/.zvcs/bin first on PATH when present
if zpwrCommandExists zvcs; then
    zpwrPrettyPrintBox "Installing the zvcs git shadow in $HOME/.zvcs"
    zvcs zshadow >/dev/null
fi
