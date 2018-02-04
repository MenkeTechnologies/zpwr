#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Oct 23 02:35:16 EDT 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD***********************************************************
#          .                                                      .
#        .n                   .                 .                  n.
#  .   .dP                  dP                   9b                 9b.    .
# 4    qXb         .       dX                     Xb       .        dXp     t
#dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
#9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
# 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
#  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
#    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'
#        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
#                        )b.  .dbo.dP'`v'`9b.odb.  .dX(
#                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
#                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
#                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
#                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
#                     `'      9XXXXXX(   )XXXXXXP      `'
#                              XXXX X.`v'.X XXXX
#                              XP^X'`b   d'`X^XX
#                              X. 9  `   '  P )X
#                              `b  `       '  d'

x=5

if [[ x > 50 ]]; then
    echo "the dogs are coll"
fi

ls
pwd

echo "my name is dogs"

x=50

while (( x > 10)); do
    echo "its $x"
    let x--
done

say "bash scripting is cool"

echo -n "what is your name: "

read name

echo "your name is $name"

