# https://robofoundry.medium.com/oak-d-lite-camera-ros2-setup-1e74ed03350d
# https://docs-beta.luxonis.com/software/ros/depthai-ros/intro/

# Flash the RPi with the RPi_64bit_OS.xz image:
# https://docs.luxonis.com/projects/hardware/en/latest/pages/guides/raspberrypi.html

# Install DepthAi Viewer
# Note: The depthai-viewer did not work for me
# https://github.com/luxonis/depthai-viewer

# Core Electronics Youtube Vid
# https://core-electronics.com.au/guides/raspberry-pi/oak-d-lite-raspberry-pi/

git-dir := '~/work/repos'

default:
  just --list

oak-examples:
    cd {{git-dir}} && source envDepthAI/bin/activate
    cd {{git-dir}} && python3 depthai/depthai_demo.py
    # cd {{git-dir}} && python3 depthai-python/examples/MobileNet/rgb_mobilenet.py