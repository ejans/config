#!/bin/bash

# basic
sudo apt-get install alsa-tools alsa-utils conky vim xfonts-terminus* xorg -y

# media stuff
sudo apt-get install eog zathura rox-filer firefox geany flashplugin-installer \
mplayer unetbootin thunderbird keepassx youtube-dl -y

#power
sudo apt-get install disper pm-utils -y

# laptop
sudo apt-get install wicd wicd-curses rfkill pcsc-tools pcscd -y

# programming1
sudo apt-get install mercurial make cmake cmake-curses-gui subversion \
mercurial gcc g++ ant -y

# programming2
sudo apt-get install eclipse virtualbox wireshark texlive texlive-latex3 \
latex-beamer apache2 -y

# nvidia
sudo apt-get install nvidia-common nvidia-current nvidia-settings -y

# zips
sudo apt-get install unzip pbzip2 file-roller lrzip -y
