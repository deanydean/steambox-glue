#!/bin/bash
# Script that starts an xserver that can be connected from any host

#
# Allow any hosts launch xclients
echo "Allowing connections from any host to ${DISPLAY}"
echo "Display is $DISPLAY" > openx.display
xhost +