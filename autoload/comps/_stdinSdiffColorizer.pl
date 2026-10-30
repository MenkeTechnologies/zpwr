#compdef stdinSdiffColorizer.pl
# Source: script source ~/.zpwr/scripts/stdinSdiffColorizer.pl

function _stdinSdiffColorizer.pl(){

    local -a arguments

    arguments=(
        '1:number of columns (default tput cols):'
    )

    _arguments -s -S $arguments
}

_stdinSdiffColorizer.pl "$@"
