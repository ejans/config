#!/bin/bash

#sudo mount -t smbfs -o username=casalo,password=$mypass //casalopc/Series /media/casalopc/Series
#sudo mount -t smbfs -o username=casalo,password=$mypass //casalopc/Movies /media/casalopc/Movies
#sudo mount -t smbfs -o username=casalo,password=$mypass //casalopc/Temp /media/casalopc/Temp
#sudo mount -t smbfs -o username=casalo,password=$mypass //casalopc/Music /media/casalopc/Music
#sudo mount -t smbfs -o username=casalo,password=$mypass //casalopc/Downloads /media/casalopc/Downloads
 
read -s -p "Enter Password: " mypass

#echo "$mypass"

sudo mount -t smbfs -o username=casalo,password=$mypass //192.168.1.100/Series /media/casalopc/Series
sudo mount -t smbfs -o username=casalo,password=$mypass //192.168.1.100/Movies /media/casalopc/Movies
sudo mount -t smbfs -o username=casalo,password=$mypass //192.168.1.100/Temp /media/casalopc/Temp
sudo mount -t smbfs -o username=casalo,password=$mypass //192.168.1.100/Music /media/casalopc/Music
sudo mount -t smbfs -o username=casalo,password=$mypass //192.168.1.100/Downloads /media/casalopc/Downloads
