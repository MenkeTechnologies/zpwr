#compdef forever.sh
# Source: script source ~/.zpwr/scripts/forever.sh

local -a arguments

arguments=(
  '1:command to eval repeatedly:'
)

_arguments -s -S $arguments
