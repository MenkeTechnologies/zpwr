#compdef boxPrint.pl
# Source: script source ~/.zpwr/scripts/boxPrint.pl

local -a arguments

arguments=(
  '(- *)'{-h,--help}'[show usage and exit]'
  {-f,--full}'[center box across width of terminal]'
  '*:text:'
)

_arguments -s -S $arguments
