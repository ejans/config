#!/bin/bash
mplayer -cookies -cache 20000 -cache-min 10 -cookies-file /tmp/cookies.txt $(youtube-dl -g --cookies=/tmp/cookies.txt $1)
