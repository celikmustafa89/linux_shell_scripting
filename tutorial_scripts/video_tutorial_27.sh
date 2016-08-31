#!/usr/bin/env bash
# Shell_scripting_tutorial_27: Do Cool Things with 'tput'
# tput-in action

tput clear
echo "Total number of rows on screen=\c"
tput lines
echo "Total number of columns on screen=\c"
tput cols
tput cup 15 20 # cursor position row, column
tput bold
echo "This is a bold text"
echo "\033[0mbye bye"
