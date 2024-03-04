#!/bin/bash

cd ~/drone-project/catkin_ws/src
git clone https://github.com/HKUST-Aerial-Robotics/VINS-Fusion.git
cd ../

# Here I changed the Ceres_DIR:
#   cmake -DCeres_DIR=~/drone-project/ceres-bin ..
catkin_make
source ~/drone-project/catkin_ws/devel/setup.bash