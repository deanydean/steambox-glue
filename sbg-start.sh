#!/bin/bash
# Run the steambox display

: ${SBG_HOME:="${HOME}/src/steambox-glue"}
: ${SBG_DISPLAY_SCRIPT="${SBG_HOME}/scripts/start-display.sh"}
: ${SBG_CONFIG_PATH:="${HOME}/.steambox-glue"}
: ${SBG_LOG="${SBG_CONFIG_PATH}/sbg.log"}

function start_steambox_display()
{
    while [ -n "${SBG_DISPLAY_SCRIPT}" ] && \
          [ ! -e "${SBG_CONFIG_PATH}/.NO_DISPLAY" ]
    do
        echo "Starting display ${SBG_DISPLAY_SCRIPT}...."
        startx ${SBG_DISPLAY_SCRIPT}
        echo "Display stopped"
        sleep 10
    done

    echo "Not displaying ${DISPLAY_SCRIPT}, starting terminal...."
    ${SBG_HOME}/scripts/tmux.sh
}

mkdir -p "$(dirname ${SBG_CONFIG_PATH})"

start_steambox_display 1>>${SBG_LOG} 2>>${SBG_LOG}
echo "Complete, exiting session."
exit
