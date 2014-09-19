#!/bin/bash

sudo killall -9 TeamViewer.exe
sudo killall -9 teamviewerd
sleep 4
sudo teamviewer --start daemon
