#!/usr/bin/env bash
# Shell_scripting_tutorial_30: Run Checks on Numbers

echo "Enter a number between 10 and 20: \c"
read num

if [ $num -lt 10 ]
then 
	echo "That was under the belt partner."
elif [ $num -gt 20 ]
then
	echo "That went over my head."
elif [ $num -eq 10 ]
then
	echo "That is equal to 10."
elif [ $num -le 10 ]
then
	echo "That is less than and equal to 10."
elif [ $num -ge 10 ]
then
	echo "That is greater than and equal to 10."
elif [ $num -ne 10 ]
then
	echo "That is not equal to 10."
else
	echo "Now you are making sense."
fi
