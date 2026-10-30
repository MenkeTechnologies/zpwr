#compdef uploadWebDS.sh
# Source: script source ~/.zpwr/scripts/uploadWebDS.sh

function _uploadWebDS.sh(){

    local -a arguments

    arguments=(
        '*:file to upload:_files'
    )

    _arguments -s -S $arguments
}

_uploadWebDS.sh "$@"
