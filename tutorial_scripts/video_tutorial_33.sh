#!/usr/bin/env bash
# Shell_scripting_tutorial_33: Run Checks on Strings
# comparison of the strings (string checks)
#

str1="Hey You!"
str2="What's up?"
str3="" # null variable
str3=   # null variable

echo "str1: $str1"
echo "str2: $str2"
echo "str3: $str3"


[ "$str1" = "$str2" ] # equal
echo "str1 = str2 \t-> $?"

[ "$str1" != "$str2" ] # not equal
echo "str1 != str2 \t-> $?"

[ -n "$str1" ] # greater than zero
echo "[ -n str1 ] \t-> $?"

[ -n "$str3" ] # greater than zero
echo "[ -n str3 ] \t-> $?"

[ -z "$str1" ] # length of string is zero or not?
echo "[ -z str1 ] \t-> $?"