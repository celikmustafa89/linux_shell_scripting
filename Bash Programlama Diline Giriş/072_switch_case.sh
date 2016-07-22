#!/bin/bash

echo -n "1 ile 3 arasinda bir sayi giriniz: "
read sayi
case $sayi in
  1 ) echo "bir girildi";;
  2 ) echo "iki girildi";;
  3 ) echo "uc girildi";;
  * ) echo "1 ile 3 arasinda bir sayi degil"
esac
