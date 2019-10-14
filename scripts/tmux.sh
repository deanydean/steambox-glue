#!/bin/bash
# Start a terminal multiplexer

if [ -z "${TMUX}" ]
then
    echo "Starting terminal multiplexer"
    exec tmux
else
    echo "Already running in tmux, continuing...."
fi