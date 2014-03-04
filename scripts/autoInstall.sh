#!/bin/bash

./apt-gets.sh
./add-users.sh
./source-gets.sh
./copy-files.sh
./source-makes.sh
./create-media-folders.sh
./set-bash-editor.sh

echo -e "\033[37mdone!\033[0m"
sleep 5
