#!/usr/bin/env bash
# Shell_scripting_tutorial_59:  Communicate with other users using 'write'
#
# 1. checks every minute the user login or not
# 
# run the following command before the script:
# both users must be logged in different terminal.

write newuser2

# on the other terminal following command shoul be ran.
mesg y

# shows the terminal list of users to communicate.
finger