#compdef saygoogle.sh
# Source: script source ~/.zpwr/scripts/saygoogle.sh

function _saygoogle.sh(){

    local -a arguments

    arguments=(
        '*:text to speak:'
    )

    _arguments -s -S $arguments
}

_saygoogle.sh "$@"
