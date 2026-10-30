#compdef forDirMain.sh
# Source: script source ~/.zpwr/scripts/forDirMain.sh

local -a arguments

arguments=(
  '1:parent directory of git repos:_files -/'
)

_arguments -s -S $arguments
