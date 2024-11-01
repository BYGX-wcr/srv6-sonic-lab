#!/bin/bash -e

ip addr add 2001:db8:1::1/64 dev lo
ip addr add 2001:db8:11:a1::2/64 dev eth1

ip -6 route add default via 2001:db8:11:a1::1