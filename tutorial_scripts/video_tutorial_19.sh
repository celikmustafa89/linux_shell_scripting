#!/usr/bin/env bash
# Shell_scripting_tutorial_19: Positional Parameters
# This file takes a file name as an argument and renames it.
# run following commands for the script:
# cat > test
# this is a test file.
# ctrl+d
# sh video_tutorial_19.sh test new_name

echo "provide a file name to change: "
read name
mv $1 $name
cat $name


