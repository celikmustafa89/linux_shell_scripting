#!/bin/bash

if [ -d /home/joker/mustafa ];then
  echo "klasor var."
else
  echo "klasor yok!"
  mkdir -p /home/joker/mustafa
  echo "klasor olusturuldu..."
fi

echo "-d -> klasor mu?"
echo "-f -> file mi?"
echo "-r -> okunabilir mi?"
echo "-w -> yazilabilir mi?"
echo "-x -> calistirilabilir mi?"
echo "-a -> and"
echo "-o -> or"

