#!/bin/bash

for i in 1 2 3 4 5 6
do 
  echo $i
done

# 1'den 99'a kadar ekrana 1 saniye araliklarla sayi yazdirma.
for i in {1..99}
do
  echo $i
  # sleep 1
done

#1'den 99'a kadar isimle dosya olusturma.
for i in {1..99}
do
  # touch /root/mustafa/mustafa$i.txt
  echo ""
done
echo "islem tamam, dosyalar olusturuldu."


