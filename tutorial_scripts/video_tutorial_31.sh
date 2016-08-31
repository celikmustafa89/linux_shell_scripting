#!/usr/bin/env bash
# Shell_scripting_tutorial_31: Run Checks on Files

echo "Enter a name: \c"
read fname
if [ -f $fname ] # checks file
then
    echo "You indeed entered a file name."
fi

if [ -d $fname ] # checks directory
then
    echo "You indeed entered a folder name."
fi

if [ -c $fname ] # checks character space file
then
    echo "You indeed entered a character space(text) file name."
fi

if [ -b $fname ] # checks block space file
then
    echo "You indeed entered a block space(image,videp) file name."
fi

if [ -r $fname ] # checks read permission
then
    echo "File has read permission."
fi

if [ -w $fname ] # checks write permission
then
    echo "File has write permission."
fi

if [ -x $fname ] # checks execute permission
then
    echo "File has execute permission."
fi

if [ -s $fname ] # checks size is greater than 0 or not
then
    echo "File size is gretaer than zero."
fi