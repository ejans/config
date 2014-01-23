#!/bin/bash

read -s -p "Enter Password: " mypass

#echo "$mypass"
sudo mount -t cifs -o username=casalo,password=$mypass //192.168.1.100/multimedia/series /media/casalopc/series
sudo mount -t cifs -o username=casalo,password=$mypass //192.168.1.100/multimedia/movies /media/casalopc/movies
sudo mount -t cifs -o username=casalo,password=$mypass //192.168.1.100/multimedia/temp /media/casalopc/temp
sudo mount -t cifs -o username=casalo,password=$mypass //192.168.1.100/multimedia/music /media/casalopc/music
sudo mount -t cifs -o username=casalo,password=$mypass //192.168.1.100/multimedia/downloads /media/casalopc/downloads
