#/bin/bash

if [ -z "$1" ]; then
	echo "gen e for ethernet, gen w for wireless"
	exit 1
else
	if [ $1 = "e" ]; then
		echo scp -r $(whoami)@$(ifconfig eth0 | perl -nle 's/dr:(\S+)/print $1/e'):$(pwd)/* .
	elif [ $1 = "w" ]; then
		echo scp -r $(whoami)@$(ifconfig wlan0 | perl -nle 's/dr:(\S+)/print $1/e'):$(pwd)/* .
	else
		echo "gen e for ethernet, gen w for wireless"
		exit 1
	fi
fi
