#!/bin/bash

defaultDirectories=(Desktop Documents Downloads Music Pictures Public Templates Videos)

exitStatus=1

for dir in ${defaultDirectories[@]}; do
	mkdir -p $HOME/defaults/$dir
	if [[ "$@" == "-v" ]]; then
		echo Moving $dir
	fi
	mv $HOME/$dir/* $HOME/defaults/$dir 2> /dev/null
	if [[ $? == 0 ]]; then
		exitStatus=0
	fi
	rmdir $dir 2> /dev/null
	if [[ $? == 0 ]]; then
		exitStatus=0
	fi
done

cp modified-user-dirs.dirs $HOME/.config/user-dirs.dirs

exit $exitStatus
