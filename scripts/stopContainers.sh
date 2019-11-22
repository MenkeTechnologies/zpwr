#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Nov 22 12:09:38 EST 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

sudo docker-compose -f $HOME/docker/zabbix-docker/docker-compose_v3_ubuntu_pgsql_latest.yaml down
sudo docker-compose -f $HOME/docker/docker-elk/docker-compose.yml down
