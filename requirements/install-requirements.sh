#!/bin/bash

# OS: Ubuntu 22.04 LTS
# Note: Make sure to install from Raspberry Pi Imager

# Update Indexes and Packages
sudo apt update && sudo apt upgrade

# Create the drone directory and make default
mkdir drone-project
cd drone-project
echo "cd ~/drone-project" >> ~/.bashrc

# Setup RDP
# 1. Update to Ubuntu Desktop sharing settings
# 2. To enable RDP even on reboot:
     # WARNING: This will leave passwords unencrypted and not safe for Production
     # 1. https://askubuntu.com/questions/1403943/22-04-remote-desktop-sharing-authentication-password-changes-every-reboot
# 3. Connect to the Remote Address on another host

# Setup SSH
sudo apt install openssh-server
sudo systemctl enable --now ssh
sudo systemctl status ssh

# Clone Git Repo
git clone https://www.github.com/MichaelThamm/autonomous-drone

# Install Other Packages
sudo apt install -y curl ssh virtualenv net-tools

# Add user to docker group
sudo usermod -aG docker michaelthamm

# Install Order
# WARNING: Be careful running these scripts as is, use as a guide
# 1. install-depthai.sh
# 2. install-ros.sh
# 3. install-ceres.sh
# 4. install-dronekit.sh
