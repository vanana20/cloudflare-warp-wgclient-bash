#!/bin/bash
# CloudFlare WARP Client Config generator for WireGuard
# Script by Bon-chan
clear

echo -e ""
termux-setup-storage
echo -e "To continue configuring, press \e[1;32mAllow\e[0m\n"
sleep 3

cd
apt update && apt upgrade -y
apt install python wireguard-tools git nano curl wget -y
pip install --upgrade pip
pip install requests
cd storage/shared
rm -rf WireGuard && mkdir -p WireGuard
cd WireGuard
curl -4sO 'https://raw.githubusercontent.com/Bonveio/cloudflare-warp-wgclient-bash/master/wgcf.py'
python wgcf.py
cp wgcf-profile.conf ImportThis.conf
clear
echo -e "\n\nYour Cloudflare WARP client is Successfully Configured\nYour config is located at /storage/emulated/0/WireGuard/ImportThis.conf\nNow Open your WireGuard App then click the plus sign and then tap/click the 'Create from file or Archive'\nThen locate the WireGuard folder on your phone internal storage and click or tap the ImportThis.conf file\nAnd lastly tap/click the switch to run the VPN\n\n Enjoy Surfing!"
cd
exit 1
