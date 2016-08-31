#!/usr/bin/env bash
# Shell_scripting_tutorial_39: The 'while' Loop
# while loop in action
#
# 1. display number 1 to 10.
#
# run the following command before the script:
# just run the script

count=1
while [ $count -le 10 ]
do
    echo $count
    count=`expr $count + 1`
done