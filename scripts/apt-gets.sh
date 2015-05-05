#!/bin/bash

# basic
sudo apt-get install alsa-tools alsa-utils conky vim xfonts-terminus* xorg \
openssh-server xsel libxft-dev libxrandr-dev xinit htop nfs-common tree -y

# libs: TODO

# media stuff
sudo apt-get install eog zathura evince rox-filer firefox geany \
flashplugin-installer mplayer unetbootin thunderbird keepassx youtube-dl -y

# printer
sudo apt-get install cups -y

# cmus a foobar2000 style player
sudo apt-get install cmus cmus-plugin-ffmpeg -y

#power
sudo apt-get install disper pm-utils -y

# laptop
sudo apt-get install wicd wicd-curses rfkill acpi -y

# T430
#sudo apt-get install fprint_demo guvcview -y

# T450s
# Bluetooth
#sudo apt-get install blueman -y

# programming1
sudo apt-get install mercurial make cmake cmake-curses-gui subversion \
mercurial gcc g++ ant rlwrap colormake colordiff lftp ccze wkhtmltopdf gitk \
rdesktop nmap openvpn -y

# programming2
sudo apt-get install virtualbox wireshark texlive texlive-latex3 \
texlive-latex-extra latex-beamer apache2 pandoc discount latexmk inkscape \
gimp pdfmod -y

# programming3
sudo apt-get install avrdude avr-libc gcc-avr -y

# zips
sudo apt-get install unzip pbzip2 file-roller -y

# nvidia
#sudo apt-get install nvidia-common nvidia-current nvidia-settings libvdpau1 -y

# intel hd
#sudo apt-get install intel-gpu-tools -y
