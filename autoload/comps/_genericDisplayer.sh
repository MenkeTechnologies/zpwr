#compdef genericDisplayer.sh
# Source: script source ~/.zpwr/scripts/genericDisplayer.sh

local -a arguments

arguments=(
  '*::command line to eval:_normal'
)

_arguments -s -S $arguments
