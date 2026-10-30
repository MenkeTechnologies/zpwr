#compdef say.sh
# Source: script source ~/.zpwr/scripts/macOnly/say.sh

function _say.sh(){

    local -a arguments

    arguments=(
        '*:message to speak:'
    )

    _arguments -s -S $arguments
}

_say.sh "$@"
