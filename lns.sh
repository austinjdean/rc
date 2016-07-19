#!/bin/bash

# $1 = target
# $2 = link location

if [[ -d $2 ]]; then # directory exists
	# place in directory with same name as target executable
	pants=${1##*/}
	# thanks: http://stackoverflow.com/questions/3162385/how-to-split-a-string-in-shell-and-get-the-last-field
	ln -s $(readlink -f $1) $(readlink -f $2)/$pants
elif [[ -a $2 ]]; then # file exists
	# fail - don't overwrite file
	echo Target file exists - exiting to prevent overwrite.
	exit 0
else # file doesn't exist
	# create symlink with given name since it's safe
	ln -s $(readlink -f $1) $(readlink -f $2)
fi
