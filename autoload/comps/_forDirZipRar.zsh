#compdef forDirZipRar.zsh
# Source: script source ~/.zpwr/scripts/forDirZipRar.zsh

local -a arguments

arguments=(
  '-z[command to run on each zip file]:command:'
  '-r[command to run on each rar file]:command:'
  '*:directory:_files -/'
)

_arguments -s -S $arguments
