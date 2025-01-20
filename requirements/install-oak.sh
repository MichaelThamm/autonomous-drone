#!/bin/bash

# https://robofoundry.medium.com/oak-d-lite-camera-ros2-setup-1e74ed03350d
# https://docs-beta.luxonis.com/software/ros/depthai-ros/intro/

# Flash the RPi with the RPi_64bit_OS.xz image:
# https://docs.luxonis.com/projects/hardware/en/latest/pages/guides/raspberrypi.html

# For SSH from host to RPi
ssh pi@luxonis.local -X
# On Windows OS with PuTTY an X client is required
# https://kb.iu.edu/d/bdnt

# 1) Navigate to luxonis
cd ~/Desktop/luxonis
# 2) Activate environment
source envDepthAI/bin/activate
# 3) Run example to test
python depthai-python/examples/MobileNet/rgb_mobilenet.py

# Install DepthAi Viewer
# Note: The depthai-viewer did not work for me
# https://github.com/luxonis/depthai-viewer

# Core Electronics Youtube Vid
# https://core-electronics.com.au/guides/raspberry-pi/oak-d-lite-raspberry-pi/
# 1. In terminal (or thonny) set the interpreter to /home/pi/Desktop/luxonis/envDepthAI/bin/python3
# 2. Run the ~/Desktop/luxonis/depthai/depthai_demo.py