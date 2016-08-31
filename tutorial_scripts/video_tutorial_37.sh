#!/usr/bin/env bash
# Shell_scripting_tutorial_37: The 'case' Statement
#
# 1. script ask users to enter a character
# 2. check whether the character is lowercase or uppercase or digit or special character
#
# run the following command before the script:
# just run the script

echo "Enter a character:\c"
read var

case $var in
[a-z])
    echo "You entered a lowercase character."
    ;;
[A-Z])
    echo "You entered an uppercase character."
    ;;
[0-9])
    echo "You entered a digit."
    ;;
?)
    echo "You entered a special character."
    ;;
*)
    echo "You entered more than one character."
    ;;
esac
