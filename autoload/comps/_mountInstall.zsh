#compdef mountInstall.zsh
# Source: script source ~/.zpwr/scripts/macOnly/mountInstall.zsh

function _mountInstall.zsh(){

    local -a arguments

    arguments=(
        '(- *)-h[show usage and exit]'
        '-n[dry run, print install commands without running them]'
        '*:directory to scan for dmg/pkg/mpkg/vst/vst3/component:_files -/'
    )

    _arguments -s -S $arguments
}

_mountInstall.zsh "$@"
