#!/bin/bash

REL=$(lsb_release -rs)

case $REL in
12.04)
    sudo apt-get pip install -y; sudo pip install flake8
    ;;
14.04)
    sudo apt-get install python-flake8 -y
    ;;
*)
    echo "Not 12.04 or 14.04!!!"
    ;;
esac
mkdir ~/.vim/bundle -p
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
