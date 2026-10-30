#compdef menkeTechRandomFont.sh
# Source: script source ~/.zpwr/scripts/macOnly/menkeTechRandomFont.sh

function _menkeTechRandomFont.sh(){

    local -a arguments

    arguments=(
        '1:filter command to pipe output through:_command_names -e'
    )

    _arguments -s -S $arguments
}

_menkeTechRandomFont.sh "$@"
