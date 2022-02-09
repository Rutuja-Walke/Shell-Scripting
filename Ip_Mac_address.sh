#!/bin/bash

#To find ipv4 address
ip_address=%(ifconfig|grep "inet "|awk '{print $2}' )

#To find MAC address
m_address=%(ifconfig|grep "Link "|awk '{print $4}' )

echo "IP of system is : $ip_address"
echo "MAC Address of system is: $m_address"