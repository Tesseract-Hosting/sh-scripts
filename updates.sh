#!/bin/bash

teleport version
read -p "Upgrade teleport? y/n" teleupdate

if [ "$teleupdate" = "y" ]; then
  echo "Upgrading teleport binary..."
  curl https://goteleport.com/static/install.sh | bash -s 13.3.7
fi

apt update
apt upgrade -y
