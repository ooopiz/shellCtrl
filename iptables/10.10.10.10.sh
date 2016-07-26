#!/bin/bash

#########################
# 
#  Example
# 
#########################

#--------------------------------------------------------
# clear rule
#--------------------------------------------------------
/sbin/iptables -F
/sbin/iptables -X
/sbin/iptables -Z

#--------------------------------------------------------
# Chain
#-------------------------------------------
/sbin/iptables -P INPUT DROP
/sbin/iptables -P OUTPUT ACCEPT
/sbin/iptables -P FORWARD ACCEPT

#--------------------------------------------------------
# define
#--------------------------------------------------------
/sbin/iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
/sbin/iptables -A INPUT -i lo -j ACCEPT
/sbin/iptables -A INPUT -p icmp -j DROP
/sbin/iptables -A INPUT -p tcp -m state --state NEW -m tcp --dport 922 -j ACCEPT

/sbin/iptables -A FORWARD -j REJECT --reject-with icmp-host-prohibited

#--------------------------------------------------------
# save
#--------------------------------------------------------
service iptables save

