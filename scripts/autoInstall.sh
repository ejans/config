#!/bin/bash

./apt-gets.sh
./add-users.sh
./source-gets.sh
./copy-files.sh
./source-makes.sh
./create-media-folders.sh
./set-bash-editor.sh

echo -e "\033[35m==========================\033[0m"
echo -e "\033[36mdone!\033[0m"
sleep 5
