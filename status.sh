#!/bin/bash

cd $HOME/git
repos=$(ls)
arr=( $repos )
for item in "${arr[@]}"
do
	cd $item
	echo $item: && git fetch && git status
	cd ..
done
