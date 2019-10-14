#!/bin/bash
# Shell snippet that can enable sbg

: ${SBG_HOME:="${HOME}/src/steambox-glue"}
: ${SBG_ON_ALL_SHELLS:="true"}

if [ "${SBG_ON_ALL_SHELLS}" == "true" -o "$(tty)" == "/dev/tty1" ]
then
    # Start the steambox display
    export SBG_HOME
    ${SBG_HOME}/sbg-start.sh
fi