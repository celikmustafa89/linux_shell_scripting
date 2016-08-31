#!/usr/bin/env bash
# Shell_scripting_tutorial_54: The 'continue' Statement
# continue in action
#
# 1. generate 10 number using while loop
#
# run the following command before the script:
# just run the script

count=0
while [ $count -le 9 ]
do
    count=`expr $count + 1`
    if [ $count -eq 5 ]
    then
        continue
    fi
    echo $count
done

echo "End of the loop"