#!/bin/bash

# experimental

cd $HOME/git
repos=$(ls)
repoArr=( $repos )
for repo in "${repoArr[@]}"
do
	echo $repo:
	branches=$(git branch)
	branchArr=( $branches )
	for blah in "${branchArr[@]}"
	do
		echo $blah
	done
done

#############################

cd $HOME/git/pls
originalBranch=$(git branch | grep \* | cut -c 3-)
branches=$(git branch | cut -c 3-)
branchArr=( $branches )
for branch in "${branchArr[@]}"
do
	git checkout $branch
	git pull
done
git checkout $originalBranch
