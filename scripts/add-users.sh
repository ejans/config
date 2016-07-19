#!/bin/bash

# add user to audio and vbox
sudo usermod -a -G audio $USER
sudo usermod -a -G vboxusers $USER
sudo usermod -a -G video $USER
sudo usermod -a -G lpadmin $USER
