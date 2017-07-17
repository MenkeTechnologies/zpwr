alias get='bash $SCRIPTS/rpiDownloader.sh'
alias cam="raspistill -vf -hf -rot 270 -o cam.jpg"
alias vid="raspivid -vf -hf -rot 270 -t 10000 -o cam.h264"
alias web="f /var/www/html/"
alias pbcopy="xsel --clipboard --input"
alias pbpaste="xsel --clipboard --output"
alias vnc="vncserver -geometry 1920x1080 :1"
alias vnck="vncserver -kill :1"

alias tom="cd $HOME/Downloads/apache-tomcat-8.5.5"
alias procs="ps -ef | grep tomcat"

alias tomstart="/home/pi/Downloads/apache-tomcat-8.5.5/bin/startup.sh"
alias tomstop="/home/pi/Downloads/apache-tomcat-8.5.5/bin/shutdown.sh"

export PATH="$PATH:/home/pi/Downloads/apache-ant-1.9.7/bin:$SCRIPTS:."
export CLASSPATH="/home/pi/Java/:/home/pi/Desktop:/home/pi/jars/*:."
export JAVA_RUNTIME="/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/bin/java"
