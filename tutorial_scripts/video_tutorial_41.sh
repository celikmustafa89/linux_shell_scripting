#!/usr/bin/env bash
# Shell_scripting_tutorial_41: The 'for' Loop
# for loop in action
#
# 1. display folders in the directory not the files
#
# run the following command before the script:
# just run the script


# list the directories
echo "\ndirectories: "
for item in * # asterics means all the items in the current directory
do
    if [ -d $item ]
    then
        echo "$item"
    fi
done

# list the files
echo "\nfiles:"
for item in * # asterics means all the items in the current directory
do
    if [ -f $item ]
    then
        echo "$item"
    fi
done