#compdef colorLogger.sh
# Source: script source ~/.zpwr/scripts/colorLogger.sh

local -a arguments

arguments=(
  '1::any value disables zcolorizer:'
)

_arguments -s -S $arguments
