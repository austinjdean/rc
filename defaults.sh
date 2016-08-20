#!/bin/bash

defaultDirectories=(Desktop Documents Downloads Music Pictures Public Templates Videos)

for dir in ${defaultDirectories[@]}; do
	mkdir -p $HOME/defaults/$dir
	mv -v -- $HOME/$dir/* $HOME/defaults/$dir 2> /dev/null
	rmdir $dir 2> /dev/null
done
