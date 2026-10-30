#compdef upLoadPi2.sh
# Source: script source ~/.zpwr/scripts/upLoadPi2.sh

function _upLoadPi2.sh(){

    local -a arguments

    arguments=(
        '*:file to upload:_files'
    )

    _arguments -s -S $arguments
}

_upLoadPi2.sh "$@"
