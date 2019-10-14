#!/bin/bash
# Start ZSNES

# Start all the bits needed by ZSNES
for service in no-blanking slow-dvd xboxdrv
do
    ${SBG_HOME}/scripts/${service}.sh
done

# Start zsnes
exec /usr/bin/zsnes