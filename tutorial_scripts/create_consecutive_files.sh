#!/bin/bash
#
# this script create consecutive files.
# EX:
# Following files can be created with this scripts. [file1.txt file2.txt file3.txt ..... file32.txt]
# bash command is as follow:
# $ bash create_consecutive_files.sh file .txt 1 32
# 
# positional parameters:
# $1 -> file name
# $2 -> file extension
# $3 -> starting index of the files
# $4 -> ending index of the files


filename=$1
fileextension=$2
END=$4
START=$3

for (( i=$START; i <= $END; i++ ))
do
   touch $filename$i$fileextension
done
