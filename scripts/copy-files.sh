#!/bin/bash

# Copy files
cd ~/Documents/config
cp dotfiles/.* ~/
cp -frv screenfetch ~/Documents/Source/
cp -frv Shortcuts/ ~/Documents/.Shortcuts/
cd files_to_copy/
sudo cp -frv xorg.conf /etc/X11/
sudo cp -frv iron /bin/
sudo cp -frv failsafe.conf /etc/init/
