#compdef rsyncr.sh
# Source: script source ~/.zpwr/scripts/macOnly/rsyncr.sh

function _rsyncr.sh(){

    local -a arguments

    arguments=(
        '1:local directory:_files -/'
        '2:remote directory:'
    )

    _arguments -s -S $arguments
}

_rsyncr.sh "$@"
