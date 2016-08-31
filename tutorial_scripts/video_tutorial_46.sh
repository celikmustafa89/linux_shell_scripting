#!/usr/bin/env bash
# Shell_scripting_tutorial_46: 'passwd' File Revisited
# example using /etc/passwd file
#
# 1. shows some information from passwd file to users.
# 2. IFS is used.
#
# run the following command before the script:
# just run the script

echo "Enter Username:\c"
read logname

# takes the line that is associated with the username
line=`grep $logname /etc/passwd`

IFS=: # the separator is : in passwd file
set $line

echo "Username:$1"
echo "User ID: $3"
echo "Group ID: $4"
echo "Comment Field: $5"
echo "Home Folder: $6"
echo "Default shell: $7"
