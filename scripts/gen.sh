#/bin/bash

# if [ -z "$1" ]; then
# 	echo "gen e for ethernet, gen w for wireless"
# 	exit 1
# else
# 	if [ $1 = "e" ]; then
# 		echo scp -r $(whoami)@$(ifconfig ens33 | perl -nle 's/dr:(\S+)/print $1/e'):$(pwd)/* .
# 	elif [ $1 = "w" ]; then
# 		echo scp -r $(whoami)@$(ifconfig wlan0 | perl -nle 's/dr:(\S+)/print $1/e'):$(pwd)/* .
# 	else
# 		echo "gen e for ethernet, gen w for wireless"
# 		exit 1
# 	fi
# fi

if [ -z "$1" ]; then
	echo "usage: gen <interface>"
	echo "(ifconfig for list of interfaces)"
	exit 1
else
	echo scp -r $(whoami)@$(ifconfig $1 | perl -nle 's/dr:(\S+)/print $1/e'):$(pwd)/* .
fi
