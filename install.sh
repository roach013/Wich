#!/bin/bash

case $1 in
	--uninstall) sudo rm /usr/sbin/cread /usr/sbin/creds /usr/sbin/hostap /usr/sbin/macspoof /usr/sbin/wich /usr/sbin/wich_bak /usr/sbin/wifijam; exit 1;;
	*) sudo apt-get update; sudo apt-get install libc6 dpkg hostapd hostap-utils net-tools perl python2.7 bash; sudo mv ./usr/sbin/cread /usr/sbin/; sudo mv ./usr/sbin/creds /usr/sbin/; sudo mv ./usr/sbin/hostap /usr/sbin/; sudo mv ./usr/sbin/macspoof /usr/sbin/; sudo mv ./usr/sbin/wich /usr/sbin/; sudo mv ./usr/sbin/wich_bak /usr/sbin/; sudo mv ./usr/sbin/wifijam /usr/sbin/; chmod +x /usr/sbin/cread /usr/sbin/creds /usr/sbin/macspoof /usr/sbin/wich /usr/sbin/wich_bak /usr/sbin/wifijam; exit 1;;
esac