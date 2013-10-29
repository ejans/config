#!/bin/bash

# Make dwm source
cd ~/Documents/Source/dwm
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

# Install dwm
cd ../dwm
sudo make install
cd ../slock
sudo make install
cd ../dmenu
sudo make install
cd ../tabbed
sudo make install
cd ..

# Make zpaq
cd zpaq
make
make install
