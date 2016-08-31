#!/usr/bin/env bash
# Shell_scripting_tutorial_45: The Internal Field Separator
# usage of IFS
#
# 1. change the value of the IFS and set will be changed.
#
# run the following command before the script:
# just run the script

# usage of default IFS
echo "default IFS usage:"
line="Shell scripting is fun."
set $line
echo $1
echo $2
echo $3
echo $4

echo "\nIFS is changed to ':' and the result is:"
IFS=: # IFS is changed to :
set $line
echo $1
echo $2
echo $3
echo $4

echo "\ntext is separated using column character and IFS is column:"
line="Shell:scripting:is:fun."
set $line
echo $1
echo $2
echo $3
echo $4