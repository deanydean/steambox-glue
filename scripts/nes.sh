#!/bin/bash
# Start the NES emulator

# Start all the bits needed by NES
for service in no-blanking slow-dvd xboxdrv
do
    ${SBG_HOME}/scripts/${service}.sh
done

# Start zsnes
exec /usr/bin/nes --fullscreen 1