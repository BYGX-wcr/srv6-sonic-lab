#!/bin/bash -e

apt-get update
apt-get install -y tcpdump
apt-get install -y iperf
apt-get install -y ethtool

echo 0 > /proc/sys/net/ipv6/conf/eth1/disable_ipv6
ip link set dev eth1 down
ip link set dev eth1 up
ethtool -K eth1 tx off

ip addr add 2001:db8:1::1/64 dev eth1
ip -6 route del default
ip -6 route add default via 2001:db8:1::2
