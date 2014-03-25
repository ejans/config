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
cd ../dunst
make

# Make lrzip
cd ../lrzip
./autogen.sh
make

# Make zpaq
cd ../zpaq
make

# Make discount
cd ../discount
./configure.sh
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
cd ../dunst
sudo make install
cd ..

# Install lrzip
cd lrzip
sudo make install

# Install zpaq
cd ../zpaq
sudo make install

# Install discount
cd ../discount
sudo make install
cd ..
