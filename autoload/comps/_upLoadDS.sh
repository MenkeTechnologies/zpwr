#compdef upLoadDS.sh
# Source: script source ~/.zpwr/scripts/upLoadDS.sh

function _upLoadDS.sh(){

    local -a arguments

    arguments=(
        '*:file to upload:_files'
    )

    _arguments -s -S $arguments
}

_upLoadDS.sh "$@"
