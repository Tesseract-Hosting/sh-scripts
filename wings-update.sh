# curl https://raw.githubusercontent.com/Kotto01/tesseract-ind/main/wings-update.sh --output wings-update.sh && sh wings-update.sh
#!/bin/bash

# Begin update process for wings binary
systemctl stop wings
echo "Stopped wings"
curl -L -o /usr/local/bin/wings "https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")"
echo "New binary downloaded"
chmod u+x /usr/local/bin/wings
echo "New binary properties changed"

# Restart wings to apply update
systemctl restart wings
echo "Wings restarted"