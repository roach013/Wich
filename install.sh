#!/bin/bash

case $1 in
	--uninstall) sudo rm /usr/sbin/cread /usr/sbin/creds /usr/sbin/hostap /usr/sbin/macspoof /usr/sbin/wich /usr/sbin/wich_bak /usr/sbin/wifijam; exit 1;;
	*) sudo apt-get update; sudo apt-get install libc6 dpkg hostapd hostap-utils net-tools perl python2.7 bash; sudo cp ./usr/sbin/cread /usr/sbin/; sudo cp ./usr/sbin/creds /usr/sbin/; sudo cp ./usr/sbin/hostap /usr/sbin/; sudo cp ./usr/sbin/macspoof /usr/sbin/; sudo cp ./usr/sbin/wich /usr/sbin/; sudo cp ./usr/sbin/wich_bak /usr/sbin/; sudo cp ./usr/sbin/wifijam /usr/sbin/; sudo chmod +x /usr/sbin/cread /usr/sbin/creds /usr/sbin/macspoof /usr/sbin/wich /usr/sbin/wich_bak /usr/sbin/wifijam; exit 1;;
esac