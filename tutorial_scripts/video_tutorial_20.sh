#!/usr/bin/env bash
# Shell_scripting_tutorial_20: More on Positional Parameters

chmod 744 $1
ls -l $1

set word1 word2 word3
echo $*
