#compdef allPanesSwap.zsh
# Source: script source ~/.zpwr/scripts/allPanesSwap.zsh

local -a arguments

arguments=(
  '1:tmux session id:'
  '2:tmux window id:'
  '3:selection type:(single multi)'
  '4:socket path:_files'
)

_arguments -s -S $arguments
