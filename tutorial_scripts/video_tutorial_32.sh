#!/usr/bin/env bash
# Shell_scripting_tutorial_32: Append Text to a File Through Shell Script
#
# 1. script ask users to enter a name.
# 2. check the folder exist or not
# 3. if file exists check the user has write permission.
# 4. if the user has write permission, presents append option to user.
# 5. if the user has not write permission, display message show not permitted.
#
# run the following command before the script:
# just run the script

echo "Enter file name:\c"
read fname
if [ -f $fname ]
then
    if [ -w $fname ]
    then
        echo "Type matter to append. To quit press ctrl+d."
        cat >> $fname
    else
        echo "You do not have permission to write."
    fi
fi