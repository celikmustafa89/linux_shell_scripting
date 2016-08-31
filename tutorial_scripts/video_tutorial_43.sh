#!/usr/bin/env bash
# Shell_scripting_tutorial_43: Search Patterns Using 'grep'
# grep in action
#
# 1. search text in file text_tutorial_43
#
# run the following command before the script:
# grep money text_tutorial_43

echo "Search money in the file with case sensitivity:"
grep money text_tutorial_43

echo "\nSearch money in the file without case sensitivity:"
grep -i money text_tutorial_43

echo "\nSearch money in the file with case sensitivity and line numbers:"
grep -i -n money text_tutorial_43

echo "\nSearch money in the file with case sensitivity, line numbers and shows count:"
grep -i -n -c money text_tutorial_43

echo "\nSearch money in the file with case sensitivity, line numbers and shows count of money does not exist:"
grep -i -n -c -v money text_tutorial_43