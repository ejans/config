#!/bin/bash

sudo killall -9 TeamViewer.exe
sudo killall -9 teamviewerd
sleep 8
sudo teamviewer --start daemon
