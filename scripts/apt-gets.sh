#!/bin/bash

# basic
sudo apt-get install alsa-tools conky vim xfonts-terminus* xorg -y

# media stuff
sudo apt-get install eog zathura rox-filer firefox geany flashplugin-installer \
mplayer unetbootin thunderbird keepassx -y

#power
sudo apt-get install disper pm-utils -y

# laptop
sudo apt-get install wicd wicd-curses rfkill pcsc-tools pcscd -y

# programming
sudo apt-get install eclipse mercurial make cmake cmake-curses-gui subversion \
mercurial virtualbox wireshark texlive texlive-latex3 latex-beamer apache2 gcc \
g++ ant -y

# nvidia
sudo apt-get install nvidia-common nvidia-current nvidia-settings -y

# zips
sudo apt-get install pbzip2 file-roller lrzip -y

# Iron
mkdir ~/Downloads/
cd ~/Downloads/
wget http://www.srware.net/downloads/iron64.deb
sudo dpkg -i iron64.deb

# Iron dependents
cd /lib/x86_64-linux-gnu/
sudo apt-get install libxss1 -y
sudo ln -s libudev.so.0 libudev.so.1

# Add user to audio and vbox
sudo usermod -a -G audio $USER
sudo usermod -G vboxusers -a $USER

# Get dwm source
sudo apt-get build-dep dwm -y
mkdir ~/Documents/Source
cd ~/Documents/Source
git clone git://git.suckless.org/dwm
git clone git://git.suckless.org/dmenu
git clone git://git.suckless.org/tabbed
git clone git://git.suckless.org/slock
cp -frv ~/Documents/config/dwm/* ~/Documents/Source/dwm/*
cp -frv ~/Documents/config/dmenu/* ~/Documents/Source/dmenu/*
cp -frv ~/Documents/config/tabbed/* ~/Documents/Source/tabbed/*
cp -frv ~/Documents/config/slock/* ~/Documents/Source/slock/*

# Copy files
cd ~/Documents/config
cp dotfiles/.* ~/
cp -frv screenfetch ~/Documents/Source/
cp -frv Shortcuts/ ~/Documents/.Shortcuts/
cd files_to_copy/
sudo cp -frv xorg.conf /etc/X11/
sudo cp -frv iron /bin/
sudo cp -frv failsafe.conf /etc/init/

./MakeAll.sh

echo done!
sleep 3
