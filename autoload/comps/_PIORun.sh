#compdef PIORun.sh
# Source: script source ~/.zpwr/scripts/macOnly/PIORun.sh

function _PIORun.sh(){

    local -a arguments

    arguments=(
        '1:platformio project directory:_files -/'
    )

    _arguments -s -S $arguments
}

_PIORun.sh "$@"
