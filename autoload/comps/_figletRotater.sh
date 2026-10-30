#compdef figletRotater.sh
# Source: script source ~/.zpwr/scripts/macOnly/figletRotater.sh

local -a arguments

arguments=(
  '1:text to display:'
  '2::filter command:_command_names -e'
)

_arguments -s -S $arguments
