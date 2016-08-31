#!/usr/bin/env bash
# Shell_scripting_tutorial_26: Escape Sequences
# Escape Sequences

echo "Hey World, \nwhat's up?" # new line
echo "Hey World, \rwhat's" # starts from beginning and prints on the previos one
echo "Hey World, \twhat's up?"
echo "Hey World, \b\b\b\b\b\b\bwhat's up?" # comes back one character
echo "\033[1mHey World, what's up?\033[0m" # writes the text in bold format
echo "\033[7mHey World, what's up?\033[0m" # writes the text with black background