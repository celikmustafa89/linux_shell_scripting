#!/usr/bin/env bash

cat > players
# Name-Sport-Age
# Roger-Tennis-30
# Rafel-Tennis-25
# Tiger-Golf-27
# Michael-Swimmer-27
# Kobe-Basketball-34

cut -d"-" -f 1,3 players # prints 1 and 3 column of players file using - delimeter
