#!/usr/bin/env bash
#very dangerous way to stress your system
for (( i = 0; i < 10; i++ )); do
	#launch yes in the background in subshell disowning it
	#send all output to /dev/null
	( yes &> /dev/null &)
done
