#!/bin/bash

# Enable Source Code in Software & Updates
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s  https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install -y ros-noetic-desktop-full
# Automatically source ros setup on shell launch
echo ". /opt/ros/noetic/setup.bash" >> ~/.bashrc
. ~/.bashrc
# Install rosinstall
sudo apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
# Initialize rosdep
sudo rosdep init
rosdep update