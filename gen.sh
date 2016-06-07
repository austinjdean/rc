echo scp $(whoami)@$(ifconfig eth0 | perl -nle 's/dr:(\S+)/print $1/e'):$(pwd)/* .
