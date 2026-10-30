#compdef upLoadPi.sh
# Source: script source ~/.zpwr/scripts/upLoadPi.sh

function _upLoadPi.sh(){

    local -a arguments

    arguments=(
        '*:file to upload:_files'
    )

    _arguments -s -S $arguments
}

_upLoadPi.sh "$@"
