#!/usr/bin/env bash
# Shell_scripting_tutorial_47: Reading From a File
# reading file
#
# 1. script shows the line numbers of the text with the text
#
#
# run the following command before the script:
# create text file name text_tutorial_47

echo "Enter a file name(text_tutorial_47):\c"
read fname

if [ -z "$name" ]
then
    echo "exit"
fi

echo "\ntty contains info about terminal setting."
terminal=`tty`

exec < $fname

count=1
while read line
do
    echo $count.$line
    count=`expr $count + 1`
done

exec < $terminal