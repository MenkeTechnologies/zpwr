#compdef help2comp.py
# Source: script source ~/.zpwr/scripts/help2comp.py

local -a arguments

arguments=(
  '1:program name:_command_names -e'
)

_arguments -s -S $arguments
