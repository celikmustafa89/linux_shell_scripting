#!/usr/bin/env bash
# Shell_scripting_tutorial_25: Math on Real Numbers
# Floating Point Arithmetic Operations

a=10.5
b=3.5

c=`echo $a + $b | bc`
d=`echo $a - $b | bc`
e=`echo $a \* $b | bc`
f=`echo $a / $b | bc`

echo $c $d $e $f