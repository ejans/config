#!/bin/bash

# get dwm build dep
sudo apt-get build-dep dwm -y
# get dunst
sudo apt-get install dunst -y

# get sources
mkdir ~/Documents/source
cd ~/Documents/source
git clone git://git.suckless.org/dwm
git clone git://git.suckless.org/dmenu
git clone git://git.suckless.org/tabbed
git clone git://git.suckless.org/slock

# copy config headers
cp -frv ~/Documents/config/dwm/* ~/Documents/source/dwm/
cp -frv ~/Documents/config/dmenu/* ~/Documents/source/dmenu/
cp -frv ~/Documents/config/tabbed/* ~/Documents/source/tabbed/
cp -frv ~/Documents/config/slock/* ~/Documents/source/slock/

# Get zpaq source
git clone https://github.com/ejans/zpaq

# Get screenfetch
git clone https://github.com/KittyKatt/screenFetch screenfetch

# Get colored-adb-logcat
git clone https://github.com/haonan/colored-adb-logcat
