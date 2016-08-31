#!/usr/bin/env bash
# Shell_scripting_tutorial_29: 'if-then-else' Statement
# if-then-else statement in action
#
# run the following command before the script:
# touch test
# sh video_tutorial_29.sh test new_name
# sh video_tutorial_29.sh test new_name1

echo "Enter source and target file names."
read source target
if mv $source $target
then
echo "Your file has been successfully renamed."
else
echo "Your file has NOT been successfully renamed."
fi