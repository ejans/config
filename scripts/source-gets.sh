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

# Get lrzip source
sudo apt-get install libbz2-dev liblzo2-dev
cd ..
git clone https://github.com/ckolivas/lrzip
cd lrzip
./autogen.sh
make
sudo make install

# Get screenfetch
cd ~/Documents/Source
git clone https://github.com/KittyKat/screenFetch screenfetch

# Get colored-adb-logcat
git clone https://github.com/haonan/colored-adb-logcat
