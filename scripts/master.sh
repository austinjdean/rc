#!/bin/bash

sudo apt-update -y
sudo apt install zsh -y
chsh -s $(which zsh)
./defaults.sh
cd ..
make install
