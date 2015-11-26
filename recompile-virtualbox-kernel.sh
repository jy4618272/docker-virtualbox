#!/bin/bash

# copy needed stuffs from container
docker cp virtualbox:/usr/lib/virtualbox/vboxdrv.sh .
sudo docker cp virtualbox:/usr/share/virtualbox /usr/share

# recompile virtualbox kernel
sudo apt-get install make gcc
sudo ./vboxdrv.sh setup

# clean up unneeded stuffs
sudo rm -rf /usr/src/vboxhost*
sudo rm -rf /usr/share/virtualbox
rm vboxdrv.sh
