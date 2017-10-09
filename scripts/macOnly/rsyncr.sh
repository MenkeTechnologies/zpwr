#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:24:04 EDT 2017
#####   Purpose: bash script to rsync to RPi and upload to Tomcat
#####   Notes: 
#}}}***********************************************************


if [[ -z "$1" || -z "$2" ]]; then
    echo "Need two args local and remote dirs....." >&2
    exit 1
fi

localDIR="$1"
remoteDIR="$2"
host="r"
rsync -vvruhaE --progress --exclude="build.xml" -e ssh "$localDIR" "$host":"$remoteDIR" --delete-after

ssh "$host" '/home/pi/Downloads/apache-ant-1.9.7/bin/ant -buildfile "/home/pi/Downloads/apache-tomcat-8.5.5/apps/JH2_jmenke"'
ssh "$host" '/home/pi/Downloads/apache-tomcat-8.5.5/bin/shutdown.sh'
ssh "$host" '/home/pi/Downloads/apache-tomcat-8.5.5/bin/startup.sh'
