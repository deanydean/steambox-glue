#!/bin/bash
# Script that starts steam

# Start all the bits that steam needs
for service in no-blanking \
               slow-dvd \
               pulseaudio \
               openbox
do
    ${SBG_HOME}/scripts/${service}.sh
done

# Add VNC
#${SBG_HOME}/scripts/vnc.sh

# Start steam
/usr/games/steam ${SBG_STEAM_ARGS} &

# Exec an xterm to control the session
# This is useful to allow remote control over the display
exec ${SBG_HOME}/scripts/xterm.sh