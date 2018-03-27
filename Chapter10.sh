#!/bin/bash

echo "For our first order of the day we are going to telnet into pornhu....errr, Google."
echo "Press enter to forward the script"
read
telnet www.google.com 80

GET /HTTP/1.0
echo "This tells us that the remote host has a process that listens in on port 80"
echo "telnet can be a rather insecure means of remote login though so be aware of that."
read

echo "Let's try a couple flag options for netstat now. The first being the -l flag for ports listening."
netstat -l | tail
read
echo "And -t for tcp port information"
netstat -t
read

echo "for a complete list of ports listening or being used we can use the lsof -i command."
lsof -i
echo "This one may come up empty."
read
echo "so we can run as sudo to get a more comprehensive list of processes and users."
sudo lsof -i
read

echo "You can get a more exact idea of what is passing through your network with a tcp dump. Let's try this with the tcp option. Try opening your browser while this command is running and see what it outputs."
read
sudo tcpdump tcp
read

echo "nmap is great for scanning  ports on all networks. Not only does it not come standard, at least not on ubuntu, but it can be rather invasive, so we will not run this incase you have a little brother that likes to surf the net with his door closed. Some things are better left unknown."

