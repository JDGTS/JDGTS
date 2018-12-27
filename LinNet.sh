#!/bin/bash
echo "network adapter info:" >> /tmp/network.txt
ifconfig -a >> /tmp/network.txt
echo " " >> /tmp/network.txt
echo "ping test result:" >> /tmp/network.txt
ping -c 10 www.baidu.com>> /tmp/network.txt
echo " " >> /tmp/network.txt
echo "network route info:" >> /tmp/network.txt
netstat -rn >> /tmp/network.txt
echo " " >> /tmp/network.txt
echo "network adapter config files:" >> /tmp/network.txt
ls -al /etc/sysconfig/network-scripts/|grep ifcfg >> /tmp/network.txt
echo " " >> /tmp/network.txt
echo "cat /etc/udev/rules.d/70-persistent-net.rules:" >> /tmp/network.txt
cat /etc/udev/rules.d/70-persistent-net.rules >> /tmp/network.txt
