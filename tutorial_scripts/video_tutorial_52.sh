#!/usr/bin/env bash
# Shell_scripting_tutorial_52: The 'break' Statement
# break in action
#
# 1. generate 10 number using while loop
#
# run the following command before the script:
# just run the script

count=1
while [ $count -le 10 ]
do
    if [ $count -eq 6 ]
    then
        break
    fi
    echo $count
    count=`expr $count + 1`
done

echo "We are out of the loop"
