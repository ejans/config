#!/bin/bash

# Add user to audio and vbox
sudo usermod -a -G audio $USER
sudo usermod -G vboxusers -a $USER
