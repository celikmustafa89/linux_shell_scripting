#!/bin/bash
a=$1
islem=$(($a+3))
echo "\$((\$a+3)) = $islem"
((islem++))
echo "((islem++)) = $islem"
((islem--))
echo "((islem--)) = $islem"

