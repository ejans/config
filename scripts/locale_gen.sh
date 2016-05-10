#!/bin/bash

sudo sed -i '/en_DK.UTF-8/s/^#//g' /etc/locale.gen
sudo locale-gen
