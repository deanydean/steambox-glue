#!/bin/bash
# Script that starts steam

# Start all the bits that steam needs
for service in no-blanking \
               slow-dvd \
               xboxdrv \
               pulseaudio
do
    ${SBG_HOME}/scripts/${service}.sh
done

# Add VNC
#${SBG_HOME}/scripts/vnc.sh

# Start steam
exec /usr/games/steam ${SBG_STEAM_ARGS}
