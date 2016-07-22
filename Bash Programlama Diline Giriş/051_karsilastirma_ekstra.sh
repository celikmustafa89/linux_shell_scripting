#!/bin/bash
[[ -z $1 ]]
echo "[-z kullanimi] - birinci parametre var(1) yok(0) : $?"
[[ -n $1 ]]
echo "[-n kullanimi] - birinci parametre var(0) yok(1) : $?"

