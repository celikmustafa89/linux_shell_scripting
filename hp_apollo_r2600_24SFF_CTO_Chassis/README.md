- network interface configuration of "HP ProLiant XL170r Gen9 CTO Svr" servers of "HP Apollo r2600 24SFF CTO Chassis".
- network card configuration of "HP ProLiant XL170r Gen9 CTO Svr" servers of "HP Apollo r2600 24SFF CTO Chassis".
- /etc/network/interfaces configuration of "HP ProLiant XL170r Gen9 CTO Svr" servers of "HP Apollo r2600 24SFF CTO Chassis".



# ifconfig p1p2 up
# ethtool p1p2
- "Link detected" should be "yes"

# ifconfig p1p2 down

# vim /etc/network/interfaces
---
auto p1p2
iface p1p2 inet static
	address XX.X.XX.X (in my case: 10.1.39.18)
	netmask XX.X.XX.X (in my case: 255.255.255.0)
	gateway XX.X.XX.X (in my case: 10.1.39.1)
	dns-nameservers	XX.X.XX.X (in my case: 10.1.34.4)
--

# ifup p1p2
# ifconfig
- check p1p2 is running
