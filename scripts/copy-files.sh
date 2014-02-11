#!/bin/bash

# Copy dotfiles, screenfetch and shortcuts folders
cd ~/Documents/config
cp dotfiles/.* ~/
# give .viminfo right user to use previous mark position
sudo rm -fv ~/.viminfo
touch ~/.viminfo
cp -frv screenfetch ~/Documents/Source/
cp -frv shortcuts/ ~/Documents/.Shortcuts/

cd files_to_copy/

# Copy custom xorg configuration
sudo cp -frv xorg.conf /etc/X11/

# Link binary files
sudo ln -vs ~/Documents/Source/zpaq/zpaq /usr/local/bin/zpaq

# Replace original failsafe to shorten boot time
sudo cp -frv failsafe.conf /etc/init/

# Replace keyboard layout
sudo cp -frv us /usr/share/X11/xkb/symbols/

# Move eduroam template to wicd and add to active templates
sudo cp -frv eduroam /etc/wicd/encryption/templates/
sudo echo "eduroam" >> /etc/wicd/encryption/active
