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
    echo "ARM"
fi

apt-get install -y -q nodejs npm

# # Install the component
npm install haste-server

exit 0
