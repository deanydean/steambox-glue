#!/bin/bash
# Start xboxdrv

echo "Starting xboxdrv"
sudo xboxdrv --detach-kernel-driver --silent --mimic-xpad \
             --daemon --detach --dbus disabled \
             --wid 0 --next-controller \
             --wid 1 --next-controller \
             --wid 2 --next-controller \
             --wid 3
