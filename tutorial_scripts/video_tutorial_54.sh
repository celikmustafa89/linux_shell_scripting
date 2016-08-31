#!/usr/bin/env bash
# Shell_scripting_tutorial_54:  More on Metacharacters
# metacharacters
#
# run the following command before the script:
# create file text_tutorial_54 with some text
# run the script

ls ; cal ; banner "mustafa celik"

grep -i money text_tutorial_54 > pattern && echo "Task was completed."

cat pattern