#!/usr/bin/env bash
local="$1"
remote="$2"
host="r"
rsync -vruhaE --progress --exclude="build.xml" -e ssh "$local" "$host":"$remote" --delete-after

ssh "$host" '/home/pi/Downloads/apache-ant-1.9.7/bin/ant -buildfile "/home/pi/Downloads/apache-tomcat-8.5.5/apps/JH2_jmenke"'
ssh "$host" '/home/pi/Downloads/apache-tomcat-8.5.5/bin/shutdown.sh'
ssh "$host" '/home/pi/Downloads/apache-tomcat-8.5.5/bin/startup.sh'
