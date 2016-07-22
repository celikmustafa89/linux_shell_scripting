#!/bin/bash
a=$1
b=$2
[[ $a == $b ]]
echo "esit $?"
[[ $a != $b ]]
echo "esit degil $?"

