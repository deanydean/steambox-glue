#!/bin/bash
# Start xboxdrv

echo "Starting xboxdrv"
sudo xboxdrv --detach-kernel-driver --silent --mimic-xpad \
             --daemon --detach --dbus disabled \
             --wid 0 --next-controller \
             --wid 1 --next-controller \
             --wid 2 --next-controller \
             --wid 3 &

# Start xboxdrvs
#sudo xboxdrv --detach-kernel-driver --silent --wid 0 &
#sudo xboxdrv --silent --wid 1 &
#sudo xboxdrv --silent --wid 2 &
#sudo xboxdrv --silent --wid 3 &