#!/bin/bash

# link dotfiles, screenfetch and shortcuts folders
cd ~/

# move current files
mv -v .bashrc .bashrc.old
mv -v .profile .profile.old

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
ln -sv Documents/config/dotfiles/.xinitrc
ln -sv Documents/config/dotfiles/.asoundrc

# replace original failsafe to shorten boot time
#sudo cp -frv /etc/init/failsafe.conf /etc/init/failsafe.conf.old
sudo cp -frv ~/Documents/config/files_to_copy/failsafe.conf /etc/init/

# replace keyboard layout
sudo cp -frv /usr/share/X11/xkb/symbols/us /usr/share/X11/xkb/symbols/us.old
sudo cp -frv ~/Documents/config/files_to_copy/us /usr/share/X11/xkb/symbols/

# remove suspend on lidswitch
echo 'HandleLidSwitch=ignore' | sudo tee -a /etc/systemd/logind.conf
sudo restart systemd-logind

# add crontab to monitor battery
echo '*/10 * * * * env DISPLAY=:0 '$HOME'/Documents/config/shortcuts/notify-battery-low.sh' | crontab -
