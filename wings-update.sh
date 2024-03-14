# curl -s -L https://raw.githubusercontent.com/Kotto01/tesseract-ind/main/wings-update.sh | bash
#!/bin/bash

# Preettyyyyy...
REDFRG="\e[41m"
ENDCLR="\e[0m"
WHTBKG="\e[97m"

# Begin update process for wings binary
systemctl stop wings
echo -e "${WHTBKG}${REDFRG}[TI Wings Update]${ENDCLR}   Stopped wings"
curl -L -o /usr/local/bin/wings "https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")"
echo -e "${WHTBKG}${REDFRG}[TI Wings Update]${ENDCLR}   New binary downloaded"
chmod u+x /usr/local/bin/wings
echo -e "${WHTBKG}${REDFRG}[TI Wings Update]${ENDCLR}   New binary properties changed"

# Restart wings to apply update
systemctl restart wings
echo -e "${WHTBKG}${REDFRG}[TI Wings Update]${ENDCLR}   Wings restarted"