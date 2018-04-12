#!/bin/bash

# link dotfiles, screenfetch and shortcuts folders
cd ~/

# move current files
mv -v .bashrc .bashrc.old
mv -v .profile .profile.old

ln -sv Documents/config/dotfiles/.bashrc
ln -sv Documents/config/dotfiles/.bash_aliases
ln -sv Documents/config/dotfiles/.bash_functions
#ln -sv Documents/config/dotfiles/.conkyrc
#ln -sv Documents/config/dotfiles/.config
ln -sv Documents/config/dotfiles/.config/dunst
ln -sv Documents/config/dotfiles/.gitconfig
#ln -sv Documents/config/dotfiles/.mcabber
#ln -sv Documents/config/dotfiles/.mplayer
#ln -sv Documents/config/dotfiles/.profile
ln -sv Documents/config/dotfiles/.vimrc
#ln -sv Documents/config/dotfiles/.xinitrc
ln -sv Documents/config/dotfiles/.xsessionrc
#ln -sv Documents/config/dotfiles/.asoundrc

#sudo ln -sv /home/evert/Documents/config/files_to_copy/icedove /usr/local/bin

# replace original failsafe to shorten boot time
#sudo cp -frv /etc/init/failsafe.conf /etc/init/failsafe.conf.old
#sudo cp -frv ~/Documents/config/files_to_copy/failsafe.conf /etc/init/

# add keyboard layout
cat ~/Documents/config/files_to_copy/intl-cust | sudo tee -a /usr/share/X11/xkb/symbols/us
#setxkbmap -variant intl-cust
sudo sed -i '/  intl            us: English (US, international with dead keys)/a  intl-cust	us: English (US, international with dead keys customized)' /usr/share/X11/xkb/rules/base.lst
sudo sed -i '/  intl            us: English (US, international with dead keys)/a  intl-cust	us: English (US, international with dead keys customized)' /usr/share/X11/xkb/rules/evdev.lst
# TODO
#xmllint --xpath '//variant/configItem/description[English (US, international with dead keys)]' /urs/share/X11/xkb/rules/base.xml
#xmllint --xpath '//variant/configItem/description[English (US, international with dead keys)]' /urs/share/X11/xkb/rules/evdev.xml
sudo sed -i 'XKBVARIANT=/c\XKBVARIANT="intl-cust"' /etc/default/keyboard

# remove suspend on lidswitch
#echo 'HandleLidSwitch=ignore' | sudo tee -a /etc/systemd/logind.conf
#sudo restart systemd-logind

# add crontab to monitor battery
echo '*/10 * * * * env DISPLAY=:0 '$HOME'/Documents/config/shortcuts/notify-battery-low.sh' | crontab -

# enable horizontal scrolling and more on touchpad
sudo mkdir -v /etc/X11/xorg.conf.d
sudo cp -frv ~/Documents/config/files_to_copy/50-synaptics.conf /etc/X11/xorg.conf.d/
#sudo ln -sv ~/Documents/config/files_to_copy/50-synaptics.conf /etc/X11/xorg.conf.d

# add dwm to xsessions (lightdm)
#sudo ln -sv  ~/Documents/config/files_to_copy/dwm.desktop /usr/share/xsessions/
sudo cp -frv ~/Documents/config/files_to_copy/dwm.desktop /usr/share/xsessions/
#sudo cp -frv ~/Documents/config/files_to_copy/dwm.png /usr/share/xsessions/

# set up fstrim (ssd)
sudo cp /usr/share/doc/util-linux/examples/fstrim.{service,timer} /etc/systemd/system
sudo systemctl enable fstrim.timer

# setup 50% charge on battery
sudo cp -frv ~/Documents/config/files_to_copy/smapi.conf /etc/modules-load.d/
sudo cp -frv ~/Documents/config/files_to_copy/bat80.service /etc/systemd/system/
sudo systemctl enable bat80.service
