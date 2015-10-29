#!/bin/bash

LAYOUT="us"
DEVICE="$(xinput -list | grep "komar GH60" | awk -F'=' '{print $2}' | cut -c 1-2 | head -1)"
setxkbmap -device "$DEVICE" -layout "$LAYOUT"
#setxkbmap -device "$DEVICE" -layout "$LAYOUT" -variant intl
