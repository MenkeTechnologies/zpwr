#compdef commandToColors.sh
# Source: script source ~/.zpwr/scripts/macOnly/commandToColors.sh

local -a arguments

arguments=(
  '*::command line:_normal'
)

_arguments -s -S $arguments
