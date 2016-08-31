#!/usr/bin/env bash
# Shell_scripting_tutorial_57:  Know when users log in Part Two
#
# 1. checks every minute the user login or not
# 
# run the following command before the script:
# just run the script

echo "Enter username:\c"
read logname

grep "$logname" /etc/passwd > /dev/null
if [ $? -eq 0 ]
then
	echo "Wait..."
else
	echo "User not found."
fi	

time=0

while true
do
	who | grep "$logname" > /dev/null
	if [ $? -eq 0 ]
	then
		echo "$logname has logged in."
		if [ $time -ne 0 ]
		then
			echo "$logname was $time minutes late in logging in."
		fi
		exit
	else
		time=`expr $time + 1`
		sleep 60
	fi
done