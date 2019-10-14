#!/bin/bash
# Start the Kodi UI

# Start all the bits needed by Kodi
for service in no-blanking \
               slow-dvd \
               xboxdrv
do
    ${SBG_HOME}/scripts/${service}.sh
done

# Add VNC
#${SBG_HOME}/scripts/vnc.sh

# Start kodi/xbmc
exec kodi
