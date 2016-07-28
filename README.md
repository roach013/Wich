# Wich
Linux Networking Scripts And To Do Some Cool Stuffs Too :D

Functionalities:

  ~~Turn Wireless Managed Interface into Monitor Mode and vise-versa.

  ~~Create Hosted Wireless Network.

  ~~Capture Credentials on LAN.

  ~~Jam Wireless Network Within Range.

  ~~Recontruct Information From Pcap Dump 


Installation:

  ~~on Debian based distro:
  
    git clone https://github.com/roach013/Wich.git
    sudo apt-get update
    sudo dpkg-deb --build Wich
    sudo dpkg -i Wich.deb
    sudo apt-get install -f

  ~~on *.nix based distro:
  
    git clone https://github.com/roach013/Wich.git
    cd Wich/
    sudo chmod +x ./install.sh
    sudo sh ./install.sh
    
Uninstallation:

    cd Wich/
    sudo ./install.sh --uninstall

Usage of Wich by Roach Reznov:

	Usage wich [OPTIONS] {PERAMETERS}
		-1 or --man :	Put Given Interface Into Managed Mode
		-2 or --mon :	Put Given Interface Into Monitor Mode
		-3 or --host :	Start Hosted AP ('Wich --mas --help' For More Info)
		-4 or --stop :	Stop Hosted AP ('wich --mas --help' For More Info)
		-5 or --creds : To Capture Credentials On LAN ('wich --creds --help' For More Info)
		-6 or --wifijam : To Jam All Wifi Signals In Range ('wich --wifijam --help' For More Info)
		-7 or --cread :	Recontruct Information From Pcap Dump ('wich --cread --help' For More Info)
		-h or --help :	To Show This Help Test
	Examples :
		To put into managed mode ...wich -1 'interface name'
		To put into monitor mode ...wich -2 'interface name'
		To put into master mode ...wich -3 'interface name' 'interface name' 'essid' 'password'
		To stop hosted AP ...wich -4 'hosted interface name'
		To capture credentials ...wich -5 -i 'interface name'
		To jam wifi networks ...wich -6 -i 'interface name'
		
Thanks:

~~To https://github.com/brendangregg/Chaosreader for Chaosreader

~~To https://github.com/oblique/create_ap for Create_ap

!!!!!THIS IS FOR EDUCATION PURPOSE ONLY!!!!!
