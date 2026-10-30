#compdef rpiDownloader.sh
# Source: script source ~/.zpwr/scripts/rpiDownloader.sh

function _rpiDownloader.sh(){

    local -a arguments

    arguments=(
        '*:file to copy:_files'
    )

    _arguments -s -S $arguments
}

_rpiDownloader.sh "$@"
