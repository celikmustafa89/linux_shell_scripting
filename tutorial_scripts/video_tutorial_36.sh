#!/usr/bin/env bash
# Shell_scripting_tutorial_36: The 'OR' Logical Operator
#
# 1. script ask users to enter a character
# 2. check if one character is entered or more than character
# 3. if one character is input, check if it is vowel or not
#
# run the following command before the script:
# just run the script

echo "Enter a lowercase character:\c"
read var

if [ `echo $var | wc -c` -eq 2 ] # check if there is one character or not. 2 because of enter character.
then
    if [ $var  = a -o $var  = e -o $var  = i -o $var  = u -o $var  = o ]
    then
        echo "You entered a vowel."
    else
        echo "You did not enter a vowel."
    fi
else
    echo "Invalid input."
fi