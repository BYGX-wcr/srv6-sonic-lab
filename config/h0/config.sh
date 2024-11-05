#!/bin/bash -e

sudo apt-get install -y tcpdump
sudo apt-get install -y iperf

ip addr add 2001:db8:0::1/64 dev eth1

ip -6 route add default via 2001:db8:0::2