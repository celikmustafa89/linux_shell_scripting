#!/usr/bin/env bash
# Shell_scripting_tutorial_35: Count the Number of Characters in User's Input in Your Script
#
# 1. script ask users to enter a character
# 2. check if one character is entered or not
# 3. if not print invalid input
#
# run the following command before the script:
# just run the script

echo "Enter  a character:\c"
read var

if [ `echo $var | wc -c` -eq 2 ] # check if there is one character or not. 2 because of enter character.
then
    echo "You entered a character."
else
    echo "Invalid input."
fi
