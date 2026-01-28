#!/bin/bash

clear
echo "🔧 Crypto Tool Setup" 
echo "Author : Dhanush A" 
echo "GitHub : https://github.com/dhanush-404" 
echo

# Install OpenSSL if not present
if ! command -v openssl &> /dev/null; then
    echo "[*] Installing OpenSSL..." 
    sudo apt update
    sudo apt install openssl -y
else
    echo "[✓] OpenSSL already installed" 
fi

# Install lolcat if not present
if ! command -v lolcat &> /dev/null; then
    echo "[*] Installing lolcat..." 
    sudo apt install lolcat -y
else
    echo "[✓] lolcat already installed" 
fi

# Permissions
chmod +x crypto_tool.sh

echo
echo "✅ Setup Completed Successfully" | lolcat
echo "🚀 Launching Crypto Tool..." | lolcat
sleep 1

chmod +x crypto_tool.sh *
./crypto_tool.sh

