#!/bin/bash

# Enable RDP by adding user in certficicate 
sudo adduser xrdp ssl-cert
# Get IP address to RDP firewall allow list
ifconfig
ip_address=$(ifconfig wlan0 | awk '/inet / {print $2}' | cut -d ":" -f 2)
sudo ufw allow from "$ip_address"/24 to any port 3389
sudo ufw reload
sudo ufw status
sudo systemctl status xrdp
# Note: Only one user can be logged in for RDP