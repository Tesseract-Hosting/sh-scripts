# curl https://raw.githubusercontent.com/Kotto01/tesseract-ind/main/updates-tele1500.sh --output updates.sh && sh updates.sh
#!/bin/bash

echo "\n"
teleport version
echo "\n"
read -p "Upgrade by major version? (y) " teleupdate

if [ "$teleupdate" = "y" ]; then
  echo "\nUpgrading teleport binary...\n"
  curl https://goteleport.com/static/install.sh | bash -s 15.0.0
else
  echo "\nSkipping teleport upgrade...\n"
fi

apt update
apt upgrade -y
