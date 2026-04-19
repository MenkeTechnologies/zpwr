if [[ "$TERM" != dumb ]] && (( $+commands[grc] )); then

  (){
    local cmd cmds
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

    for cmd in $cmds ; do
        if (( $+commands[$cmd] )); then
            alias $cmd="grc --colour=on $cmd"
        fi
    done
  }

fi
