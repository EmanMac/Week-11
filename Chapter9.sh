#!/bin/bash

echo "The easiest way to see what your IP address is is by using the ifconfig command"
echo "(use 'enter' to move forward in the script)"
read
ifconfig
read

echo "We can now catch a glimpse into your routing table, that can help you determine things like the gateway add. The flag U means it is active and the G means it is the gateway."
read
route -n
read

echo "Now let's ping ourselves, press ctrlC to stop this"
read
ping 127.0.0.1
read

echo "We can use traceroute to see what path  the packets take to get to a remote host. Let's try this with google. (the package may not be preinstaled on your computer)"
read
traceroute google.com
read

echo "We can now check their IP addresss with the host command."
read
host google.com
read

echo "Next let's look at our TCP ports and connections"
echo "The -n option disables hostnames and -t limits the output so we aren't spammed"
read
netstat -nt
read

echo "You can see where well known port numbers are in the etc services. Let's just grab a small portion."
read
cat /etc/services | tail
read

echo "The iptables command will let you see what your current settings are for your firewall. This is most likely an empty set of commands"
read 
sudo iptables -L
echo "Let's not mess with that one too much, it can seriously mess with your network."
read

echo "arp will check our address table that checks for MACS, mostly likely only your modem will show up if you haven't had your computer running long."
read
arp
read


