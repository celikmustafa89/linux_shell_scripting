#!/usr/bin/env bash
# Shell_scripting_tutorial_50: Fetch & Redirect Man Pages of commands using 'for loop'
# for loop usage
#
# 1. use the command in the commandlist_tutorial_50
# 2. iterate the commands using for loop
#
# run the following command before the script:
# create a file name commandlist_tutorial_50
# run the script

for cmd in `cat commandlist_tutorial_50`
do
    man $cmd >> helpfile
done