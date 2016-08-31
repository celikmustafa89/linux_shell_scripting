#!/usr/bin/env bash
# Shell_scripting_tutorial_48: Sleep While You are at Work
# sleep command
#
# 1. ask user to enter a sentence
# 2. display one word at a time and use time delay
#
# run the following command before the script:
# just run the script

echo "Enter a sentence:\c"
read str
for word in $str
do
    echo "$word"
    sleep 2
done