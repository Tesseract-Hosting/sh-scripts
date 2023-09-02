# curl https://raw.githubusercontent.com/Kotto01/tesseract-ind/main/updates.sh --output updates.sh && sh updates.sh
#!/bin/bash

echo "\n"
teleport version
read -p "\nUpgrade by major version? (y) " teleupdate

if [ "$teleupdate" = "y" ]; then
  echo "\nUpgrading teleport binary...\n"
  curl https://goteleport.com/static/install.sh | bash -s 13.3.7
else
  echo "\nSkipping teleport upgrade...\n"

apt update
apt upgrade -y
