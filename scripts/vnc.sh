#!/bin/bash
# Start a VNC server

echo "Starting VNC server...."
/usr/bin/vncserver -rfbauth ${SBG_CONFIG_PATH}/vnc_pwd -rfbport 5900 -autokill &