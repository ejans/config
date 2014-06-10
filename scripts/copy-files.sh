#!/bin/bash

# link dotfiles, screenfetch and shortcuts folders
cd ~/
ln -sv Documents/config/dotfiles/.bashrc
ln -sv Documents/config/dotfiles/.bash_aliases
ln -sv Documents/config/dotfiles/.bash_functions
ln -sv Documents/config/dotfiles/.conkyrc
ln -sv Documents/config/dotfiles/.config
ln -sv Documents/config/dotfiles/.gitconfig
ln -sv Documents/config/dotfiles/.mcabber
ln -sv Documents/config/dotfiles/.mplayer
ln -sv Documents/config/dotfiles/.profile
ln -sv Documents/config/dotfiles/.vimrc
ln -sv Documents/config/dotfiles/.Xdefaults
ln -sv Documents/config/dotfiles/.xinitrc
# give .viminfo right user to use previous mark position
sudo rm -fv ~/.viminfo
touch ~/.viminfo
#cp -frv screenfetch ~/Documents/Source/
ln -sv screenfetch Documents/Source/screenfetch 
#cp -frv shortcuts/ ~/Documents/.Shortcuts/
ln -sv shortcuts Documents/.Shortcuts/

cd files_to_copy/

# Copy custom xorg configuration
#sudo cp -frv xorg.conf /etc/X11/

# Link binary files
sudo ln -sv ~/Documents/Source/zpaq/zpaq /usr/local/bin/zpaq

# Replace original failsafe to shorten boot time
sudo cp -frv failsafe.conf /etc/init/

# Replace keyboard layout
sudo cp -frv us /usr/share/X11/xkb/symbols/

# Move eduroam template to wicd and add to active templates
#sudo cp -frv eduroam /etc/wicd/encryption/templates/
#sudo echo "eduroam" >> /etc/wicd/encryption/active
