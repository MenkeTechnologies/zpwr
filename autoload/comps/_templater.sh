#compdef templater.sh
# Source: script source ~/.zpwr/scripts/templater.sh

function _templater.sh(){

    local -a arguments

    arguments=(
        '1:new script file (.zsh .sh .pl .stk .rb .py):_files'
    )

    _arguments -s -S $arguments
}

_templater.sh "$@"
