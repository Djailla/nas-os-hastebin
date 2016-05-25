#!/bin/bash

mkdir -m 755 -p /opt/hastebin/

install -m 755 /home/source/rc.local /etc

# Add nodejs repo
apt-get update
apt-get install -y -q curl git
curl -sL https://deb.nodesource.com/setup_5.x | bash -

# Install nodejs components
apt-get install -y -q nodejs npm hastebin

# # Checkout sources in /tmp
# cd /opt/linux_dash/
# git clone https://github.com/afaqurk/linux-dash.git

# # Checkout last tag
# cd linux-dash

# # Install the component
# npm install

exit 0
