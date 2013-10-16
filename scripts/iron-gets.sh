#!/bin/bash

# Iron
mkdir ~/Downloads/
cd ~/Downloads/
wget http://www.srware.net/downloads/iron64.deb
sudo dpkg -i iron64.deb

# Iron dependents
cd /lib/x86_64-linux-gnu/
sudo apt-get install libxss1 -y
sudo ln -s libudev.so.0 libudev.so.1

# Copy iron executer to /bin
cd ~/Documents/config/files_to_copy/
sudo cp -frv iron /bin/
