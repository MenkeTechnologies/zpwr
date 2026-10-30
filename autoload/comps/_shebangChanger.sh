#compdef shebangChanger.sh
# Source: script source ~/.zpwr/scripts/shebangChanger.sh

function _shebangChanger.sh(){

    local -a arguments

    arguments=(
        '1:interpreter for #!/usr/bin/env:_command_names -e'
        '*:file to rewrite:_files'
    )

    _arguments -s -S $arguments
}

_shebangChanger.sh "$@"
