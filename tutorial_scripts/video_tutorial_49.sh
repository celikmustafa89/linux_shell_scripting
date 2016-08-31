#!/usr/bin/env bash
# Shell_scripting_tutorial_49: Count the number of words & sentences in a text file without using 'wc'
# shows the number of sentences word  without using wc
#
# 1. counts line number and word number
#
# run the following command before the script:
# use text file name text_tutorial_49

echo "Enter a file name(text_tutorial_49):\c"
read fname 

terminal=`tty`

exec < $fname

nol=0 # number of lines
now=0 # number of words

while read line
do
	nol=`expr $nol + 1`
	set $line
	now=`expr $now + $#`
	# for word in $line
	# do 
	# 	now=`expr $now + 1`
	# done
done

echo "number of lines: $nol"
echo "number of words: $now"

exec < $terminal