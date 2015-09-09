#!/bin/bash

cd $HOME/git
repos=$(ls)
repoArr=( $repos )
for repo in "${repoArr[@]}"
do
	cd $repo
	echo $repo:
	originalBranch=$(git branch | grep \* | cut -c 3-)
	branches=$(git branch | cut -c 3-)
	branchArr=( $branches )
	for branch in "${branchArr[@]}"
	do
		git checkout $branch > /dev/null 2>&1
		git fetch
		git status
	done
	git checkout $originalBranch > /dev/null 2>&1
	cd ..
	echo
	echo -----------------------------------------------
	echo
done
