#!/bin/bash

sudo apt-update -y
sudo apt install zsh -y
chsh -s $(which zsh)
cd ..
make install
scripts/defaults.sh
