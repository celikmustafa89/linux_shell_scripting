#!/usr/bin/env bash
# Shell_scripting_tutorial_40: The 'until' Loop
# until loop in action
#
# 1. display number 1 to 10.
#
# run the following command before the script:
# just run the script

count=1
until [ $count -ge 10 ]
do
    echo "$count"
    count=`expr $count + 1`
done
