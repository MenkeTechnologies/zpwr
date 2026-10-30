#compdef figletRandomFont.sh
# Source: script source ~/.zpwr/scripts/macOnly/figletRandomFont.sh

local -a arguments

arguments=(
  '1:text to display:'
  '2::filter command:_command_names -e'
  '3::seconds between fonts:'
)

_arguments -s -S $arguments
