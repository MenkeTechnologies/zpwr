#compdef allPanes.zsh
# Source: script source ~/.zpwr/scripts/allPanes.zsh

local -a arguments

arguments=(
  '1:selection type:(single multi)'
  '2::action after selection:(open google)'
)

_arguments -s -S $arguments
