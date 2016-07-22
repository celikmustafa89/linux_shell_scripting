#!/bin/bash
load=$(cat /proc/loadavg | awk {'print $1'})
echo makinenin yuku: $load

mem=$(free -m | grep Mem: | awk {'print $3'})
echo Kullanilan bellek miktari: $mem 
