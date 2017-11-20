#!/bin/bash

sudo apt-update
sudo apt install zsh
chsh -s $(which zsh)
cd ..
make install
scripts/defaults.sh
