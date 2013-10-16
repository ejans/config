#!/bin/bash

# Old
#cd ~/Documents
#tar -I pbzip2 -cf ~/Documents/KULeuven_Backup_$(date +%Y_%m_%d).tar.bz2 KULeuven
#sudo mount /dev/mmcblk0p1 /media/mmcblk0p1/
#sudo cp KULeuven_Backup_$(date +%Y_%m_%d).tar.bz2 /media/mmcblk0p1/KULeuven/ 
#sudo umount /media/mmcblk0p1
#echo "done!"

cd ~/Documents
lrztar -l KULeuven
mv KULeuven.tar.lrz KULeuven_Backup_$(date +%Y_%m_%d).tar.lrz
echo "\033[37mdone compressing...\033[0m"
sudo mount /dev/mmcblk0p1 /media/mmcblk0p1/
sudo rm /media/mmcblk0p1/KULeuven/KULeuven_Backup*.tar.lrz
sudo cp KULeuven_Backup_$(date +%Y_%m_%d).tar.lrz /media/mmcblk0p1/KULeuven/ 
sudo umount /media/mmcblk0p1
echo "\033[37mdone!\033[0m"
