Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
Set-NetFirewallProfile -Name Domain -LogBlocked True
Set-NetFirewallProfile -Name Domain -LogAlloweded True
Set-NetFirewallProfile -Name Domain -LogIgnored True
New-NetFirewallRule -DisplayName "~ Stealth SCIP 51294" -Direction Inbound -Action Allow -LocalPort 51294 -Protocol UDP
New-NetFirewallRule -DisplayName "~ Stealth SCIP 51295" -Direction Inbound -Action Allow -LocalPort 51295 -Protocol UDP
New-NetFirewallRule -DisplayName "~ Stealth IKE v4" -Direction Inbound -Action Allow -LocalPort 500 -Protocol UDP
New-NetFirewallRule -DisplayName "~ Stealth IPSEC NAT-PAT" -Direction Inbound -Action Allow -LocalPort 4500 -Protocol UDP
New-NetFirewallRule -DisplayName "~ Stealth IPSEC protocol 50" -Direction Inbound -Action Allow -Protocol 50
New-NetFirewallRule -DisplayName "~ Stealth ICMP" -Direction Inbound -Action Allow -Protocol 1
#  Uncomment for SSD Server
# New-NetFirewallRule -DisplayName "~ Stealth SSD WFP Logs 5099" -Direction Inbound -Action Allow -LocalPort 5099 -Protocol TCP
# New-NetFirewallRule -DisplayName "~ Stealth SSD iptables Logs 5098" -Direction Inbound -Action Allow -LocalPort 5098 -Protocol TCP
