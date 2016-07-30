#!/bin/bash

case $1 in
	--uninstall) sudo rm -r /usr/lib/wich; sudo rm /usr/sbin/wich; exit 0;;
	--nodeb) read -p "'libc6 python2.7 perl net-tools hostapd hostapd-utils' is necessary for wich to run ... install them through your repository .. if you already have them installed enter yes :> " REPLY
	if [ $REPLY == 'yes' ]; then
		sudo mkdir /usr/lib/wich; sudo cp -f ./usr/lib/wich/* /usr/lib/wich/; sudo chmod +x /usr/lib/wich/*; sudo cp -f ./usr/sbin/wich /usr/sbin/; tput bold; echo "Successfully Installed  ---  HaVe FuN :D"; exit 0;
	fi;;
	--install) sudo apt-get update; sudo apt-get install libc6 hostapd hostap-utils net-tools perl python2.7 bash -y --force-yes;
	if [ $? == 0 ];	then
		sudo mkdir /usr/lib/wich; sudo cp -f ./usr/lib/wich/* /usr/lib/wich/; sudo chmod +x /usr/lib/wich/*; sudo cp -f ./usr/sbin/wich /usr/sbin/; echo "Successfully Installed  ---  HaVe FuN :D"; exit 0;
	else
		tput bold;
		echo "Error: You Must Be Connecected To The Internet To Install Dependencies!!";
		echo "PS. If you already have libc6 python2.7 perl net-tools hostapd hostapd-utils installed ... TRY ./install.sh --nodeb";
		exit 125;
	fi;;
	*) echo "Usage: ./install.sh [--install|--uninstall|--nodeb]";;
esac
