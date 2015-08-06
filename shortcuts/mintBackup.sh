#!/bin/bash

cd ~/Documents
sudo mount -o umask=0 /dev/mmcblk0p1 /media/mmcblk0p1/
zpaq a /media/mmcblk0p1/Mint_Consulting/Mint_Consulting.zpaq Mint_Consulting -m 4
echo -e "\033[37mdone compressing...\033[0m"
sudo umount /media/mmcblk0p1/
echo -e "\033[37mdone!\033[0m"
