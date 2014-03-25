#!/bin/bash

# Get dwm source
sudo apt-get build-dep dwm -y
# Stuff needed for dunst
sudo apt-get install libdbus-1-dev libxinerama-dev libxft-dev libxss-dev libxdg-basedir-dev libglib2.0-dev libpango1.0-dev -y
mkdir ~/Documents/Source
cd ~/Documents/Source
git clone git://git.suckless.org/dwm
git clone git://git.suckless.org/dmenu
git clone git://git.suckless.org/tabbed
git clone git://git.suckless.org/slock
git clone https://github.com/knopwob/dunst
cp -frv ~/Documents/config/dwm/* ~/Documents/Source/dwm/
cp -frv ~/Documents/config/dmenu/* ~/Documents/Source/dmenu/
cp -frv ~/Documents/config/tabbed/* ~/Documents/Source/tabbed/
cp -frv ~/Documents/config/slock/* ~/Documents/Source/slock/
cp -frv ~/Documents/config/dunst/* ~/Documents/Source/dunst/

# Get zpaq source
git clone https://github.com/nemequ/zpaq

# Get lrzip source
sudo apt-get install libbz2-dev liblzo2-dev
git clone https://github.com/ckolivas/lrzip

# Get screenfetch
git clone https://github.com/KittyKatt/screenFetch screenfetch

# Get colored-adb-logcat
git clone https://github.com/haonan/colored-adb-logcat

# Get discount (markdown)
git clone https://github.com/Orc/discount
