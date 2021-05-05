#!/bin/sh
set -ex

local=`dirname $(readlink -f $0)`

# clean previous artifacts
sudo rm -rf "$local"/local-install/usr/local/sbin
sudo rm -rf "$local"/local-install/usr/local/bin
sudo -k

# build pvpgn in a container into the local-install output folder
sudo docker-compose run pvpgn-build
sudo -k

# make only the var folder writable by the pvpgn group that is mapped into the server container
sudo groupadd pvpgn || true
sudo -k
sudo chgrp -R pvpgn "$local"/local-install/usr/local/var
sudo -k
sudo chmod -R 755 "$local"/local-install/usr/
sudo -k
sudo chmod -R g+w "$local"/local-install/usr/local/var
sudo -k
sudo docker-compose build --build-arg pvpgngid=`id -g pvpgn` pvpgn-server

