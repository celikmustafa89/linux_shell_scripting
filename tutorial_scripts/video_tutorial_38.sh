#!/usr/bin/env bash
# Shell_scripting_tutorial_38: Another Date with 'case' Statement
#
# 1. script ask users to enter a word
# 2. 1 check if word starts a vowel character or not
# 3. 2 check if the word starts with a digit
# 4. 3 check if the word ends with a digit
# 5. 4 check if the word s 3-letter word
#
# run the following command before the script:
# just run the script

echo "Enter a word:\c"
read word

case $word in
[aeiou]* | [AEIOU]*)
    echo "The words begins with a vowel."
    ;;
[0-9]*)
    echo "The words begins with a digit."
    ;;
*[0-9])
    echo "The words ends with a digit."
    ;;
???)
    echo "The words is a 3-letter word."
    ;;
*)
    echo "Something else."
    ;;
esac