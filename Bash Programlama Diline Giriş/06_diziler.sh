#!/bin/bash
hafta=(pazartesi sali carsamba persembe cuma cumartesi pazar)
echo "haftanin ucuncu gunu: ${hafta[2]}"

echo ${#hafta[*]}

echo ${hafta[@]}

