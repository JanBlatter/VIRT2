#!/bin/bash
                                                                                                                                                                  apt-get update -y > /dev/null
apt-get upgrade -y
apt-get install -y nmap
echo "nmap installé"
echo "installation de netdiscover ..."
apt-get install -y netdiscover
echo "netdiscover installé"
echo "installation de slqmap ..."
apt-get install -y sqlmap
echo "slqmap installé"
echo "installation de patator ..."
apt-get install -y patator
echo "patator installé"
echo "installation de crunch ..."
apt-get install -y crunch
echo "crunch installé"
echo "installation de weevely ..."
apt-get install -y weevely
echo "weevely installé"
echo "installation de lynx ..."
apt-get install -y lynx 
echo " lynx installé"
apt-get install -y cowsay
echo " Le container Kali et les services ont été installés ! "
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config