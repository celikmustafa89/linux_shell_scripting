#!/usr/bin/env bash
# Shell_scripting_tutorial_21: Reverse Quotes & Accent Graves
# Renames a file to file.name
# Where name is the login name of the user executing the script
#
# run following commands before the script:
# cat > test
# my neighbour's dog is annoying.
#
# set cat test
# echo $*
# set `cat test`
# echo $*

name=$1
set `who am i`
mv $name $name.$1
