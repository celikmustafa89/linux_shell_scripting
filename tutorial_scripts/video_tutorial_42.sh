#!/usr/bin/env bash
# Shell_scripting_tutorial_42: Rant & Little Work
# real number comparison
#
# 1. comparison of the real numbers
#
# run the following command before the script:
# just run the script

echo "following method is for integers and not working for real numbers: "
echo "a=4.5
b=4.5
[ a -eq b ]
echo ?
"

echo "change real numbers to string to compare"
echo "a=4.5
b=4.5
[ "a" = "b" ]
echo ?
"

a=4.5
b=4.5
[ "$a" = "$b" ]
echo $?

# another comparison example
echo "\nanother comparison example:"
echo "min=12.45
val=10.35

if [ 1 -eq (echo {val} < {min}| bc) ]
then
    min={val}
fi

echo min"

min=12.45
val=10.35

if [ 1 -eq "$(echo "${val} < ${min}" | bc)" ]
then
    min=${val}
fi

echo "$min"