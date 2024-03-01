# OS: Ubuntu 20.04.5 LTS
# https://askubuntu.com/questions/1348560/is-ubuntu-20-04-desktop-for-raspberry-pi-4-no-longer-available

# Update Indexes and Packages
sudo apt update && sudo apt upgrade
# Install Ubuntu Desktop
sudo apt-get install ubuntu-desktop
# Install Other Packages
sudo apt install -y curl ssh git virtualenv
# Enable RDP in Sharing settings

# Git
git config --global user.name "Michael Thamm"
git config --global user.email "mikethamm44@gmail.com"

# ROS
## Enable Source Code in Software & Updates
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s  https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install -y ros-noetic-desktop-full
## Automatically source ros setup on shell launch
echo ". /opt/ros/noetic/setup.bash" >> ~/.bashrc
. ~/.bashrc
## Install rosinstall
sudo apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
## Initialize rosdep
sudo rosdep init
rosdep update

# DroneKit
