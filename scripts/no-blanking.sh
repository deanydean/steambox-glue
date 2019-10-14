#!/bin/bash
# Disable screen blanking

echo "Disabling screen blanking...."
xset s off      # don't use screensaver
xset -dpms      # disable dpms (energy star) features
xset s noblank  # don't blank video device