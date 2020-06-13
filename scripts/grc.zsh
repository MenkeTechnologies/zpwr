#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Jun 13 17:37:15 EDT 2020
##### Purpose: zsh script to overalias with grc
##### Notes:
#}}}***********************************************************

if [[ "$TERM" != dumb ]] && (( $+commands[grc] )) ; then
  # Prevent grc aliases from overriding zsh completions.
  setopt COMPLETE_ALIASES

  # Supported commands
  cmds=(
    cc \
    configure \
    cvs \
    df \
    diff \
    dig \
    gcc \
    gmake \
    ifconfig \
    last \
    ldap \
    ls \
    make \
    mount \
    mtr \
    netstat \
    ping \
    ping6 \
    ps \
    traceroute \
    traceroute6 \
    wdiff \
    whois \
  );

  # Set alias for available commands.
  for cmd in $cmds ; do
    if (( $+commands[$cmd] )) ; then
      alias $cmd="grc --colour=on $cmd"
    fi
  done

  # Clean up variables
  unset cmds cmd
fi
