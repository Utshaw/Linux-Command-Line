#!/bin/bash
netstat -ie # all interface informatin on the device
netstat -r # routing table 
netstat -c # continuous output of information
netstat -a # all active connections
netstat -l # listening connections
netstat -p # programs with port no
netstat -t # TCP connections
netstat -u # UDP connections
netstat -utln | grep -Ev '^Active|^Proto' | awk '{print $4}' | awk -F ':' '{print $NF}' # prints all open ports
netstat -4utln | grep -Ev '^Active|^Proto' | awk '{print $4}' | awk -F ':' '{print $NF}' # only tcpv4
