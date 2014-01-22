#!/bin/bash

# Copy dotfiles, screenfetch and shortcuts folders
cd ~/Documents/config
cp dotfiles/.* ~/
sudo rm -fv ~/.viminfo
touch ~/.viminfo
cp -frv screenfetch ~/Documents/Source/
cp -frv shortcuts/ ~/Documents/.Shortcuts/

cd files_to_copy/

# Copy custom xorg configuration
sudo cp -frv xorg.conf /etc/X11/

# Copy binary links/files
sudo cp -frv ~/Documents/Source/zpaq/zpaq /usr/local/bin

# Replace original failsafe to shorten boot time
sudo cp -frv failsafe.conf /etc/init/

# Replace keyboard layout
sudo cp -frv us /usr/share/X11/xkb/symbols/

# Move eduroam template to wicd and add to active templates
sudo cp -frv eduroam /etc/wicd/encryption/templates/
sudo echo "eduroam" >> /etc/wicd/encryption/active
#sudo cp -frv trim /etc/cron.daily/
#sudo chmod +x /etc/cron.daily/trim
