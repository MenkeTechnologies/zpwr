#compdef keyboardMaestro.sh
# Source: script source ~/.zpwr/scripts/macOnly/keyboardMaestro.sh

local -a arguments

arguments=(
  '*::command line to eval:_normal'
)

_arguments -s -S $arguments
