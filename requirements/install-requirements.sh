# OS: Ubuntu 20.04.5 Server LTS
# https://askubuntu.com/questions/1348560/is-ubuntu-20-04-desktop-for-raspberry-pi-4-no-longer-available

# Update remotes
sudo apt update && sudo apt upgrade
sudo apt-get install ubuntu-desktop

# SSH
sudo apt install -y ssh

# Enable RDP in Sharing settings

# Git
# NOTE: the rest of this code can be executed after git clone
sudo apt install -y git

# Virtual environment
sudo apt install -y virtualenv

# Python
