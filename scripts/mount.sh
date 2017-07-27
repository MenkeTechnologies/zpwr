#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Jul 26 22:41:51 EDT 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

#mount_afp afp://pi:drmenke9@localhost:50000/Pi1 ~/mnt/PI/Pi1
#mount_afp afp://pi:drmenke9@localhost:50000/www ~/mnt/PI/www
#mount_afp afp://pi:drmenke9@localhost:50000/dlPi1 ~/mnt/PI/dlPi1
#mount_afp afp://pi:drmenke9@localhost:50001/Pi2 ~/mnt/PI/Pi2
#mount_afp afp://pi:drmenke9@localhost:50001/www2 ~/mnt/PI/www2

mount_smbfs 'smb://jacobmenke@localhost:50002/homes' ~/mnt/ds
