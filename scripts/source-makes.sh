#!/bin/bash

# make dwm source
cd ~/Documents/source/dwm
# Checkout last commit before font screwup
git checkout 35db6d8
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
cd ../st
cp patch/st-scrollback-shift-mouse.diff .
git apply st-scrollback-shift-mouse.diff
rm st-scrollback-shift-mouse.diff
make

# make zpaq
cd ../zpaq
make

# install dwm, slock, dmenu, tabbed, st
cd ../dwm
sudo make install
cd ../slock
sudo make install
cd ../dmenu
sudo make install
cd ../tabbed
sudo make install
cd ../st
sudo make install

# install zpaq
cd ../zpaq
git apply fix_makefile.patch
sudo make install

cd ..
