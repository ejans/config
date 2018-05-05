#!/bin/bash

docker build -t mpsyt .

#docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --device /dev/snd --name mpsyt mpsyt
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --device /dev/snd --name mpsyt mpsyt
