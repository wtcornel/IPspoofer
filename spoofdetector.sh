#!/usr/bin/env bash
#IP Spoofing Detector v1.0
#BY: Will Cornell 
#wtcornel@mtu.edu
#FOR: UP Cyber Range
#11/04/2024

# Define the interface and the FLAG to search for
INTERFACE="wlp4s0"
TARGET_IP="192.168.1.3"
FLAG=""

echo "Beep Boop Beep Boop Im working"

# Use tcpdump to listen for packets from the target IP that contain the FLAG
#sudo tcpdump -i "$INTERFACE" -A src "$TARGET_IP" and 'tcp' | grep 123
#v2?
sudo tcpdump -i any 'src host 192.168.1.3 and dst host 192.168.1.2 and tcp dst port 333 and tcp[tcpflags] & tcp-syn != 0'


