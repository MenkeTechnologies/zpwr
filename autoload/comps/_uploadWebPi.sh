#compdef uploadWebPi.sh
# Source: script source ~/.zpwr/scripts/uploadWebPi.sh

function _uploadWebPi.sh(){

    local -a arguments

    arguments=(
        '*:file to upload:_files'
    )

    _arguments -s -S $arguments
}

_uploadWebPi.sh "$@"
