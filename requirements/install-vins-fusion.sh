#!/bin/bash

# Clone VINS
cd ~/drone-project/catkin_ws/src
git clone https://github.com/HKUST-Aerial-Robotics/VINS-Fusion.git
cd ~/drone-project


# Choose -> BUILD or PULL
# PULL
docker login
docker pull michaelthamm/autonomous-drone:vins-fusion

# BUILD (If remote image doesn"t exist)
# Warning: Building on Pi with low CPU requires Dockerfile changes!
# Change 1:
# export USE_PROC=1
# Change 2:
# make -j1 install

# Warning limited RAM might require swap memory
# sudo fallocate -l 10G /swapfile
# sudo chmod 600 /swapfile
# sudo mkswap /swapfile
# sudo swapon /swapfile

# docker build -t michaelthamm/autonomous-drone:vins-fusion ./catkin_ws/src/VINS-Fusion/docker/


# Some things to look at for next time
# I Should use ROS 2
# https://docs.openvins.com/pages.html -> Should be better than HKUST VINS-Fusion
# https://www.youtube.com/watch?v=b1-lKmUttzc
# https://www.youtube.com/watch?v=4GrbbyUhM2g
# I might need to tag the image to make it ros:vins-fusion since its referenced in the run.sh file
# sudo apt-get update && sudo apt-get install ros-${ROS_DISTRO}-rviz
# Should I be running run.sh from host or container?
# I might need to mount the docker socket
# I need to copy in the .bag file upon container creation