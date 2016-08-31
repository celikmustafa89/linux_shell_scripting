#!/usr/bin/env bash
# Shell_scripting_tutorial_24: Operator Precedence
# Arithmetic Operation Precedence

a=30 b=15 c=2 d=5
echo `expr $a \* \( $b + $c \) / $d`