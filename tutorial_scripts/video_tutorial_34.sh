#!/usr/bin/env bash
# Shell_scripting_tutorial_34: Run Checks on StringThe 'AND' Logical Operator
#
# 1. script ask users to enter a number between 50-100
# 2. store input
# 3. check the input between 50-100
#
# run the following command before the script:
# just run the script

echo "Enter a number between 50 and 100:\c"
read num

if [ $num -le 100 -a $num -ge 50 ]
then
    echo "The number is between 50 and 100."
else
    echo "The number is not between 50 and 100."
fi
