# OS: Ubuntu 23.10

# Update remotes
sudo apt update && sudo apt upgrade
# Configure all packages
sudo dpkg --configure -a

# Enable SSH
# https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-20-04/
sudo apt install openssh-server -Y
# Enable VNC
# https://serverastra.com/docs/Tutorials/Setting-Up-and-Securing-SSH-on-Ubuntu-22.04%3A-A-Comprehensive-Guide

# Virtual environment
apt install virtualenv
# Python

