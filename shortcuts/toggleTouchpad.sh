#!/bin/bash

if [ "$1" == on ]; then
	xinput --enable "SynPS/2 Synaptics TouchPad"
fi

if [ "$1" == off ]; then
	xinput --disable "SynPS/2 Synaptics TouchPad"
fi

if [ $# -eq 0 ]; then
	echo "use with on or off!";
fi
