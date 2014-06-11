#!/bin/bash

# make dwm source
cd ~/Documents/source/dwm
cp patch/dwm-6.0-smfact.diff .
git apply dwm-6.0-smfact.diff
rm dwm-6.0-smfact.diff
make
cd ../dmenu
make
cd ../slock
make
cd ../tabbed
make

# make zpaq
cd ../zpaq
make

# install dwm
cd ../dwm
sudo make install
cd ../slock
sudo make install
cd ../dmenu
sudo make install
cd ../tabbed
sudo make install

# install zpaq
cd ../zpaq
sudo make install

cd ..
