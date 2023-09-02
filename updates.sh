#!/bin/bash

teleport version
read -p "Update teleport? y/n" teleupdate

if [ "$teleupgrade" = "y" ]; then
  echo "Upgrading teleport binary..."
  curl https://goteleport.com/static/install.sh | bash -s 13.3.7
fi

apt update
apt upgrade -y
