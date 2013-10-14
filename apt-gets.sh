#!/bin/sh

# laptop
sudo apt-get install alsa-tools conky disper eclipse eog zathura file-roller firefox geany git flashplugin-installer mercurial \
mplayer nvidia-common nvidia-current nvidia-settings pbzip2 pm-utils rox-filer vim virtualbox wicd wicd-curses rfkill wireshark \
xfonts-terminus* xorg lrzip

# desktop
sudo apt-get install alsa-tools conky disper eclipse eog zathura file-roller firefox geany git flashplugin-installer mercurial \
mplayer nvidia-common nvidia-current nvidia-settings pbzip2 rox-filer vim virtualbox wireshark \
xfonts-terminus* xorg

sudo apt-get build-dep dwm

wget http://www.srware.net/downloads/iron64.deb

# Iron dependents
cd /lib/x86_64-linux-gnu/

sudo apt-get install libxss1
sudo ln -s libudev.so.0 libudev.so.1

# Iron dependents
#sudo apt-get install libxss1
#wget -c www.mirrorservice.org/sites/archive.ubuntu.com/ubuntu//pool/main/u/udev/libudev0_175-0ubuntu13_amd64.deb
#sudo dpkg -i libudev0*.deb

# Old
#sudo apt-get install alsa-tools ant-contrib apache2 arduino calibre conky disper eclipse eog evolution evince file-rottler \
#firefox geany flashplugin-installer git gnumeric keepassx kpat latex-beamer mercurial mplayer nvidia-cg-toolkit nvidia-common \
#nvidia-experimental-310 nvidia-settings-experimental-310 obconf openbox pbzip2 pcsc-tools pcscd php5 pm-utils qemu-common \
#rox-filer smbfs subversion texlive transmission transmission-cli unetbootin vim virtualbox wicd wicd-cli wicd-gtk \
#wireshark xfonts-terminus* xorg sane sane-utils

#echo 'export CLASSPATH=/usr/share/java/ant-contrib.jar' >> ~/.bashrc

sudo usermod -a -G audio $USER
sudo usermod -G vboxusers -a $USER

mkdir ~/Documents/Source
cd ~/Documents/Source
git clone git://git.suckless.org/{dwm, dmenu, slock, tabbed}
cp -f ~/Documents/config/* ~/Documents/Source/

echo done
sleep 3
