#!/bin/bash

mkdir -m 755 -p /opt/hastebin/
install -m 755 /home/source/rc.local /etc

# Install nodejs components
apt-get update
apt-get install -y -q curl
if [ $RAINBOW_ARCHITECTURE = "x86_64" ]
then
    # Install nodejs components
    curl -sL https://deb.nodesource.com/setup_5.x | bash -
    apt-get install -y -q nodejs npm
else
	curl -O  http://node-arm.herokuapp.com/node_latest_armhf.deb
	dpkg -i node_latest_armhf.deb
fi

# Install the component
npm install haste-server

# Cleanup env
apt-get remove -y -q curl
apt-get clean

exit 0
