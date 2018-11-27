#!/bin/bash

# Creates absolute symlinks with relative pathnames

# $1 = target
# $2 = link location

# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html

if [[ "$@" == "-h" ]] || [[ -z "$@" ]]; then
	echo "\$1 = target"
	echo "\$2 = link name"
	exit 0
fi

if [[ -d $2 ]]; then # directory exists
	# create symlink in directory with same name as target executable
	pants=${1##*/}
	# thanks: http://stackoverflow.com/questions/3162385/how-to-split-a-string-in-shell-and-get-the-last-field
	sudo ln -sf $(readlink -f $1) $(readlink -f $2)/$pants
elif [[ -a $2 ]]; then # file exists
	# fail - don't overwrite file
	echo Target file exists - exiting to prevent overwrite.
	exit 0
else # file doesn't exist
	# create symlink with given path/name since it's safe
	sudo ln -sf $(readlink -f $1) $(readlink -f $2)
fi
