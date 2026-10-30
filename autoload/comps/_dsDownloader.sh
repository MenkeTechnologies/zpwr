#compdef dsDownloader.sh
# Source: script source ~/.zpwr/scripts/dsDownloader.sh

local -a arguments

arguments=(
  '*:file to copy:_files'
)

_arguments -s -S $arguments
