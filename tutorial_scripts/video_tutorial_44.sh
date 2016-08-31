#!/usr/bin/env bash
# Shell_scripting_tutorial_44: The 'passwd' File Explained
# usage of file passwd
#
# run the following command before the script:
# just run the script

cat /etc/passwd

echo "\n\nfiled 1 -> **joker**: user name
field 2 -> **x**: password is encrypted for the user
field 3 -> **1000**: uid (userid). from 1 to 99 id are reserved for predefined accounts
field 4 -> **1000**: group id.
field 5 -> **joker,,,**: the name of the computer
field 6 -> **/home/joker**: home folder
field 7 -> **/bin/bash**: shell "