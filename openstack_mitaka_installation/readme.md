Openstack Mitaka Kurulum Notları
--------------------------------

1. Ubuntu 14.04 kurulu 2 sunucu (compute, controller) temin edilir.
2. Bu sunuculara normal network interface'leri haricinde bir tane daha interface eklenmelidir.
3. Eklenen interface'in konfigurasyon ayarları yapılmalıdır.
     $ vim /etc/network/interfaces.d/eth1.cfg
         # The primary network interface
         auto eth1
         iface eth1 inet dhcp

     interface ayağı kaldırılır.
     $ ifup eth1

4. /etc/hosts dosyasına ilgili sunucuların bilgileri yazilmalidir(benim kurulum için gereken ayarlar).
   $ vim /etc/hosts
   XXX.XXX.X.XXX controller
   XXX.XXX.X.XXX compute01