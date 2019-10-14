#!/bin/bash
# Start a VNC server

echo "Starting VNC server...."
/usr/bin/x11vnc -xkb -forever \
    -rfbauth ${SBG_CONFIG_PATH}/vnc_pwd -rfbport 5900 -bg -o ${SBG_CONFIG_PATH}/x11vnc.log &