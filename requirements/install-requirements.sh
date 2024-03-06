#!/bin/bash

# OS: Ubuntu 20.04.5 LTS
# https://askubuntu.com/questions/1348560/is-ubuntu-20-04-desktop-for-raspberry-pi-4-no-longer-available

# Update Indexes and Packages
sudo apt update && sudo apt upgrade
# Install Ubuntu Desktop
sudo apt-get install ubuntu-desktop

# Create the drone directory and make default
mkdir drone-project
cd drone-project
echo "cd ~/drone-project" >> ~/.bashrc

# Install Other Packages
sudo apt install -y curl ssh virtualenv net-tools xrdp

# Add user to docker group
sudo usermod -aG docker michaelthamm

# Install Order
# WARNING: Be careful running these scripts as is, use as a guide
# 1. install-depthai.sh
# 2. install-ros.sh
# 3. install-ceres.sh
# 4. install-dronekit.sh
