#!/usr/bin/env bash
#Sample IP Spoofer v1.1
#BY: Will Cornell 
#wtcornel@mtu.edu
#FOR: UP Cyber Range
#11/04/2024

#Variables:
target_server_IP=192.168.1.3
Destination_port=333
victim_IP=192.168.1.2

sudo hping3 -a $target_server_IP -S -p $Destination_port -c 20 --data 123 $victim_IP 

# sudo		“Switch User” to run as root (prompts password)
# hping3	 A network tool able to send custom ICMP/UDP/TCP packets
# -a		Changes the packets the source IP
# -S		sets the SYN flag, which mimics a TCP connection attempt.
# -p		specifies the port on the victim machine you want to send the packet to.
# -c		Tells Hping3 to send 20 packets
# --d		40404040 adds the hex 40404040 ( ASCII @@@) to the packet to signal challenge complete
# ip.src == 192.168.1.3 && tcp contains 58