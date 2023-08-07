
#!/bin/bash
iptables -N LOGGING
iptables -A INPUT -j LOGGING
iptables -A OUTPUT -j LOGGING
iptables -A LOGGING -m limit -j LOG --log-level 4 --log-prefix 'IPTables:'
#iptables -A LOGGING -j DROP
iptables -A LOGGING -j ACCEPT

