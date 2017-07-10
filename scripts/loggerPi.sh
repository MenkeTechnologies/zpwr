#!/usr/bin/env bash
colortail -k /home/pi/.colortailconf -f /var/log/*.out /var/log/*.log /var/log/{dmesg,wtmp,debug,lastlog,messages} /var/log/*.err
