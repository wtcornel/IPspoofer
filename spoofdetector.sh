#!/usr/bin/env bash
#IP Spoofing Detector v1.0
#BY: Will Cornell 
#wtcornel@mtu.edu
#FOR: UP Cyber Range
#11/04/2024

# Define the interface and the FLAG to search for
INTERFACE=$(ip -o -4 route show to default | awk '{print $5}')
#depreciated
#INTERFACE="wlp4s0"
TARGET_IP="192.168.1.3"
FLAG=""

#for testing
echo "Beep Boop Beep Boop Im working"

#look for rhe packet
sudo tcpdump -i any 'dst port 333 and tcp[tcpflags] & tcp-syn != 0'
