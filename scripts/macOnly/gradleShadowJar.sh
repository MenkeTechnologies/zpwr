#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Thu Oct 12 07:28:22 EDT 2017
##### Purpose: bash script to facilitate running fat jars from gradle
##### Notes: run from shell script from intellij with bash support plugin
#}}}***********************************************************

#first arg is Project Name
cd "$HOME/IdeaProjects/$1" && gradle shadowJar && java -jar build/libs/*.jar

