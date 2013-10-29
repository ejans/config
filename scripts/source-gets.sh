#!/bin/bash

# Get dwm source
sudo apt-get build-dep dwm -y
mkdir ~/Documents/Source
cd ~/Documents/Source
git clone git://git.suckless.org/dwm
git clone git://git.suckless.org/dmenu
git clone git://git.suckless.org/tabbed
git clone git://git.suckless.org/slock
cp -frv ~/Documents/config/dwm/* ~/Documents/Source/dwm/
cp -frv ~/Documents/config/dmenu/* ~/Documents/Source/dmenu/
cp -frv ~/Documents/config/tabbed/* ~/Documents/Source/tabbed/
cp -frv ~/Documents/config/slock/* ~/Documents/Source/slock/

# Get zpaq source
#git clone https://github.com/zpaq/zpaq.git
git clone https://github.com/nemequ/zpaq
cd zpaq
make
